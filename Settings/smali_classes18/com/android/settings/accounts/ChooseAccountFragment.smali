.class public Lcom/android/settings/accounts/ChooseAccountFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ChooseAccountFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "ChooseAccountFragment"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/accounts/ChooseAccountFragment$1;

    invoke-direct {v0}, Lcom/android/settings/accounts/ChooseAccountFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/accounts/ChooseAccountFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    invoke-static {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->buildControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static buildControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/settings/accounts/EnterpriseDisclosurePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/accounts/EnterpriseDisclosurePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/settings/accounts/ChooseAccountFragment;->buildControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ChooseAccountFragment"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f160011

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "authorities"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "account_types"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v2, v5, v4}, Lcom/android/settings/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v3

    const-class v4, Lcom/android/settings/accounts/ChooseAccountPreferenceController;

    invoke-virtual {p0, v4}, Lcom/android/settings/accounts/ChooseAccountFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v4

    check-cast v4, Lcom/android/settings/accounts/ChooseAccountPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v4, v0, v1, v3, v5}, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->initialize([Ljava/lang/String;[Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/Activity;)V

    const-class v4, Lcom/android/settings/accounts/EnterpriseDisclosurePreferenceController;

    invoke-virtual {p0, v4}, Lcom/android/settings/accounts/ChooseAccountFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v4

    check-cast v4, Lcom/android/settings/accounts/EnterpriseDisclosurePreferenceController;

    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->mFooterPreferenceMixin:Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;

    invoke-virtual {v4, v5}, Lcom/android/settings/accounts/EnterpriseDisclosurePreferenceController;->setFooterPreferenceMixin(Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;)V

    return-void
.end method
