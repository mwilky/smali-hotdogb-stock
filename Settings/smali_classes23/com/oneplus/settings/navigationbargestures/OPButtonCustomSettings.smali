.class public Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPButtonCustomSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field private static final DEFAULT_LONGPRESS_ON_HOME:I = 0x3

.field public static final GSM_PACKAGE:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field private static final KEY_BACK_DOUBLE_TAP:Ljava/lang/String; = "hardware_keys_back_double_tap"

.field private static final KEY_BACK_LONG_PRESS:Ljava/lang/String; = "hardware_keys_back_long_press"

.field private static final KEY_BUTTONS_SWAP_NAVKEYS:Ljava/lang/String; = "buttons_swap_navkeys"

.field private static final KEY_HIDE_NAVKEYS:Ljava/lang/String; = "hide_navkeys"

.field private static final KEY_HOME_DOUBLE_TAP:Ljava/lang/String; = "hardware_keys_home_double_tap"

.field private static final KEY_HOME_LONG_PRESS:Ljava/lang/String; = "hardware_keys_home_long_press"

.field private static final KEY_MENU_DOUBLE_TAP:Ljava/lang/String; = "hardware_keys_menu_double_tap"

.field private static final KEY_MENU_LONG_PRESS:Ljava/lang/String; = "hardware_keys_menu_long_press"

.field private static final KEY_OP_NAVIGATION_BAR_TYPE:Ljava/lang/String; = "op_navigation_bar_type"

.field public static final QUICKPAY_VALUE:Ljava/lang/String; = "11"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static final TYPE_BACK_HOME:I = 0x2


# instance fields
.field private mBackDoubleTapAction:Landroidx/preference/ListPreference;

.field private mBackLongPressAction:Landroidx/preference/ListPreference;

.field private mContext:Landroid/content/Context;

.field private mHideNavkeys:Landroidx/preference/SwitchPreference;

.field private mHomeDoubleTapAction:Landroidx/preference/ListPreference;

.field private mHomeLongPressAction:Landroidx/preference/ListPreference;

.field private mMenuDoubleTapAction:Landroidx/preference/ListPreference;

.field private mMenuLongPressAction:Landroidx/preference/ListPreference;

.field private mSwapNavkeys:Landroidx/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings$1;

    invoke-direct {v0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    invoke-static {}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->isSupportHardwareKeys()Z

    move-result v0

    return v0
.end method

.method public static checkGMS(Landroid/content/Context;)Z
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.google.android.googlequicksearchbox"

    const/16 v2, 0x2000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method private getBackHomeEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5

    instance-of v0, p1, Landroidx/preference/ListPreference;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/preference/ListPreference;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, p3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_0
    instance-of v0, p1, Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    instance-of v1, p2, Ljava/lang/Boolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_1
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_3

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    move v0, v1

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    invoke-static {v1, p3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    :cond_5
    :goto_3
    nop

    :goto_4
    return-void
.end method

.method private initActionList(Ljava/lang/String;I)Landroidx/preference/ListPreference;
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p0}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "hardware_keys_home_long_press"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "key_home_long_press_action"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-object v0
.end method

.method private initListViewPrefs()V
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->checkGMS(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    :goto_0
    nop

    const-string v4, "key_home_long_press_action"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const-string v5, "hardware_keys_home_long_press"

    invoke-direct {v0, v5, v4}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->initActionList(Ljava/lang/String;I)Landroidx/preference/ListPreference;

    move-result-object v5

    iput-object v5, v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0051

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    const-string v6, "key_home_double_tap_action"

    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const-string v7, "hardware_keys_home_double_tap"

    invoke-direct {v0, v7, v6}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->initActionList(Ljava/lang/String;I)Landroidx/preference/ListPreference;

    move-result-object v7

    iput-object v7, v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x5080007

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    const-string v8, "key_app_switch_long_press_action"

    invoke-static {v1, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const-string v9, "hardware_keys_menu_long_press"

    invoke-direct {v0, v9, v8}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->initActionList(Ljava/lang/String;I)Landroidx/preference/ListPreference;

    move-result-object v9

    iput-object v9, v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x5080003

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    const-string v10, "key_app_switch_double_tap_action"

    invoke-static {v1, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const-string v11, "hardware_keys_menu_double_tap"

    invoke-direct {v0, v11, v10}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->initActionList(Ljava/lang/String;I)Landroidx/preference/ListPreference;

    move-result-object v11

    iput-object v11, v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x5080008

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    const-string v12, "key_back_long_press_action"

    invoke-static {v1, v12, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const-string v13, "hardware_keys_back_long_press"

    invoke-direct {v0, v13, v12}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->initActionList(Ljava/lang/String;I)Landroidx/preference/ListPreference;

    move-result-object v13

    iput-object v13, v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x5080004

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    const-string v14, "key_back_double_tap_action"

    invoke-static {v1, v14, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const-string v15, "hardware_keys_back_double_tap"

    invoke-direct {v0, v15, v14}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->initActionList(Ljava/lang/String;I)Landroidx/preference/ListPreference;

    move-result-object v15

    iput-object v15, v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-static {}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->isSupportHardwareKeys()Z

    move-result v15

    if-nez v15, :cond_6

    iget-object v15, v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    move-object/from16 v16, v1

    const v1, 0x7f03009a

    if-eqz v15, :cond_1

    invoke-virtual {v15, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v15, v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    const v1, 0x7f03009e

    invoke-virtual {v15, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_1

    :cond_1
    const v1, 0x7f03009e

    :goto_1
    iget-object v15, v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeDoubleTapAction:Landroidx/preference/ListPreference;

    if-eqz v15, :cond_2

    const v1, 0x7f03009a

    invoke-virtual {v15, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v15, v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeDoubleTapAction:Landroidx/preference/ListPreference;

    const v1, 0x7f03009e

    invoke-virtual {v15, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    :cond_2
    iget-object v15, v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    if-eqz v15, :cond_3

    const v1, 0x7f03009a

    invoke-virtual {v15, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v15, v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    const v1, 0x7f03009e

    invoke-virtual {v15, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    :cond_3
    iget-object v15, v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    if-eqz v15, :cond_4

    const v1, 0x7f03009a

    invoke-virtual {v15, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v15, v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    const v1, 0x7f03009e

    invoke-virtual {v15, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    :cond_4
    iget-object v15, v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    if-eqz v15, :cond_5

    const v1, 0x7f03009a

    invoke-virtual {v15, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v15, v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    const v1, 0x7f03009e

    invoke-virtual {v15, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    :cond_5
    iget-object v15, v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackDoubleTapAction:Landroidx/preference/ListPreference;

    if-eqz v15, :cond_7

    const v1, 0x7f03009a

    invoke-virtual {v15, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v1, v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackDoubleTapAction:Landroidx/preference/ListPreference;

    const v15, 0x7f03009e

    invoke-virtual {v1, v15}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_2

    :cond_6
    move-object/from16 v16, v1

    :cond_7
    :goto_2
    return-void
.end method

.method private initListViewPrefsnogms()V
    .locals 6

    invoke-virtual {p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->canShowQuickPay(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f030088

    const v2, 0x7f030084

    const v3, 0x7f03009f

    const v4, 0x7f03009b

    if-nez v0, :cond_1

    invoke-static {}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    const v5, 0x7f030085

    invoke-virtual {v0, v5}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    const v5, 0x7f030089

    invoke-virtual {v0, v5}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    const v5, 0x7f03009c

    invoke-virtual {v0, v5}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    const v5, 0x7f0300a0

    invoke-virtual {v0, v5}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    :goto_0
    invoke-static {}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    :goto_1
    return-void
.end method

.method private initPrefs()V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->initListViewPrefs()V

    invoke-virtual {p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->checkGMS(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->initListViewPrefsnogms()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->canShowQuickPay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    const v1, 0x7f030083

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    const v1, 0x7f030087

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    const v1, 0x7f03009a

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    const v1, 0x7f03009e

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    const v1, 0x7f030086

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    const v1, 0x7f03008a

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    const v1, 0x7f03009d

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    const v1, 0x7f0300a1

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    :goto_0
    return-void
.end method

.method static isEdgeToEdgeEnabled(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isSupportHardwareKeys()Z
    .locals 2

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static isSwipeUpEnabled(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->isEdgeToEdgeEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e0085

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f160087

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->addPreferencesFromResource(I)V

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iput-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mContext:Landroid/content/Context;

    const-string v0, "buttons_swap_navkeys"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mSwapNavkeys:Landroidx/preference/SwitchPreference;

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mSwapNavkeys:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "hide_navkeys"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHideNavkeys:Landroidx/preference/SwitchPreference;

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHideNavkeys:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "OP_FEATURE_HIDE_NAVBAR"

    invoke-static {v0}, Lcom/oneplus/lib/util/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHideNavkeys:Landroidx/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    instance-of v1, p2, Ljava/lang/Boolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_0
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    move v0, v1

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mSwapNavkeys:Landroidx/preference/SwitchPreference;

    if-ne p1, v1, :cond_4

    const-string v4, "oem_acc_key_define"

    invoke-direct {p0, v1, p2, v4}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    move v2, v3

    :cond_3
    const-string v1, "swap_button"

    invoke-static {v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    return v3

    :cond_4
    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHideNavkeys:Landroidx/preference/SwitchPreference;

    if-ne p1, v1, :cond_6

    const-string v4, "op_gesture_button_enabled"

    invoke-direct {p0, v1, p2, v4}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "op_navigation_bar_type"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_5

    const/4 v1, 0x4

    const-string v2, "nav&gestures_settings"

    invoke-static {v2, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    :cond_5
    return v3

    :cond_6
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_3

    :cond_7
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_9

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_8

    move v1, v3

    goto :goto_2

    :cond_8
    move v1, v2

    :goto_2
    move v0, v1

    :cond_9
    :goto_3
    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    if-ne p1, v1, :cond_b

    const-string v2, "key_home_long_press_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    const-string v2, "11"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->gotoQuickPaySettingsPage(Landroid/content/Context;)V

    :cond_a
    return v3

    :cond_b
    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeDoubleTapAction:Landroidx/preference/ListPreference;

    if-ne p1, v1, :cond_c

    const-string v2, "key_home_double_tap_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return v3

    :cond_c
    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    if-ne p1, v1, :cond_d

    const-string v2, "key_app_switch_long_press_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return v3

    :cond_d
    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    if-ne p1, v1, :cond_e

    const-string v2, "key_app_switch_double_tap_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return v3

    :cond_e
    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    if-ne p1, v1, :cond_f

    const-string v2, "key_back_long_press_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return v3

    :cond_f
    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackDoubleTapAction:Landroidx/preference/ListPreference;

    if-ne p1, v1, :cond_10

    const-string v2, "key_back_double_tap_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return v3

    :cond_10
    return v2
.end method

.method public onResume()V
    .locals 6

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->initPrefs()V

    invoke-virtual {p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "oem_acc_key_define"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mSwapNavkeys:Landroidx/preference/SwitchPreference;

    invoke-virtual {v3, v0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "op_navigation_bar_type"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->isSwipeUpEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHideNavkeys:Landroidx/preference/SwitchPreference;

    invoke-virtual {v4, v1}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v4, v1}, Landroidx/preference/ListPreference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual {v4, v1}, Landroidx/preference/ListPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHideNavkeys:Landroidx/preference/SwitchPreference;

    invoke-virtual {v4, v2}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v4, v2}, Landroidx/preference/ListPreference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual {v4, v2}, Landroidx/preference/ListPreference;->setEnabled(Z)V

    :goto_1
    iget-object v4, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "op_gesture_button_enabled"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHideNavkeys:Landroidx/preference/SwitchPreference;

    if-eqz v4, :cond_3

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v4, v1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    :cond_3
    return-void
.end method
