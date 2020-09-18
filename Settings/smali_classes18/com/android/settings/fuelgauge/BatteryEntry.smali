.class public Lcom/android/settings/fuelgauge/BatteryEntry;
.super Ljava/lang/Object;
.source "BatteryEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;,
        Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;
    }
.end annotation


# static fields
.field public static final MSG_REPORT_FULLY_DRAWN:I = 0x2

.field public static final MSG_UPDATE_NAME_ICON:I = 0x1

.field private static final PACKAGE_SYSTEM:Ljava/lang/String; = "android"

.field private static final TAG:Ljava/lang/String; = "BatteryEntry"

.field static final mRequestQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/fuelgauge/BatteryEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static mRequestThread:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

.field static sCurrentLocale:Ljava/util/Locale;

.field static sHandler:Landroid/os/Handler;

.field static final sUidCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final context:Landroid/content/Context;

.field public defaultPackageName:Ljava/lang/String;

.field public icon:Landroid/graphics/drawable/Drawable;

.field public iconId:I

.field public name:Ljava/lang/String;

.field public final sipper:Lcom/android/internal/os/BatterySipper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sUidCache:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sCurrentLocale:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p2, Lcom/android/settings/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry$1;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    iget-object v1, p4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const v1, 0x7f0801a2

    const v2, 0x7f080348

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120125

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    const v0, 0x7f080336

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1211a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    const v0, 0x7f08033d

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1211b7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    iput v1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1211c7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    iput v1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    goto/16 :goto_2

    :pswitch_4
    iget v0, p4, Lcom/android/internal/os/BatterySipper;->userId:I

    invoke-virtual {p3, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1, p3, v0}, Lcom/android/settingslib/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getUserLabel(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121319

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    :goto_0
    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p4, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p4, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    iget-object v1, p4, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p4, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p4, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PackageManager failed to retrieve ApplicationInfo for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BatteryEntry"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    goto/16 :goto_2

    :cond_2
    :goto_1
    iget-object v1, p4, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1211b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    iput v2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    goto :goto_2

    :pswitch_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1211c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    iput v2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    goto :goto_2

    :pswitch_8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1211a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    const v0, 0x108050d

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    goto :goto_2

    :pswitch_9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1211cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    const v0, 0x7f080367

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    goto :goto_2

    :pswitch_a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1211b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    const v0, 0x7f080365

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    goto :goto_2

    :pswitch_b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1211a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    const v0, 0x7f0801c3

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    goto :goto_2

    :pswitch_c
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1211b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    const v0, 0x7f08051c

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    nop

    :goto_2
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    if-lez v0, :cond_3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    :cond_3
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatteryEntry;->getQuickNameIconForUid(I)V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static clearUidCache()V
    .locals 1

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sUidCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public static startRequestQueue()V
    .locals 3

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;->abort()V

    :cond_0
    new-instance v1, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    invoke-direct {v1}, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;-><init>()V

    sput-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;->setPriority(I)V

    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;->start()V

    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_0
    return-void
.end method

.method public static stopRequestQueue()V
    .locals 2

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;->abort()V

    const/4 v1, 0x0

    sput-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    sput-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method extractPackagesFromSipper(Lcom/android/internal/os/BatterySipper;)[Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    const-string v0, "android"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method getQuickNameIconForUid(I)V
    .locals 7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->sCurrentLocale:Ljava/util/Locale;

    if-eq v1, v0, :cond_0

    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->clearUidCache()V

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sCurrentLocale:Ljava/util/Locale;

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/settings/fuelgauge/BatteryEntry;->sUidCache:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const v4, 0x7f06032b

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/settings/fuelgauge/BatteryEntry;->sUidCache:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;

    iget-object v5, v3, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;->packageName:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;->name:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v5, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    if-nez p1, :cond_3

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f121236

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    const-string v5, "mediaserver"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f121237

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    const-string v5, "dex2oat"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f121234

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    :cond_5
    :goto_0
    const v3, 0x7f080322

    iput v3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    iget v5, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_6
    sget-object v3, Lcom/android/settings/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    if-eqz v3, :cond_7

    sget-object v3, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_7
    :goto_1
    return-void
.end method

.method public loadNameAndIcon()V
    .locals 16

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v1, Lcom/android/settings/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v0, v1, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    iget-object v0, v1, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    :cond_1
    iget-object v0, v1, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v1, v0}, Lcom/android/settings/fuelgauge/BatteryEntry;->extractPackagesFromSipper(Lcom/android/internal/os/BatterySipper;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_a

    array-length v0, v4

    new-array v6, v0, [Ljava/lang/String;

    array-length v0, v4

    const/4 v7, 0x0

    invoke-static {v4, v7, v6, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    array-length v0, v6

    const-string v11, ", user "

    const-string v12, "BatteryEntry"

    if-ge v10, v0, :cond_5

    :try_start_0
    aget-object v0, v6, v10

    invoke-interface {v8, v0, v7, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Retrieving null app info for package "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v6, v10

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    if-eqz v13, :cond_3

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v6, v10

    :cond_3
    iget v14, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v14, :cond_4

    aget-object v14, v4, v10

    iput-object v14, v1, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v1, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_4
    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error while retrieving app info for package "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v6, v10

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    array-length v0, v6

    if-ne v0, v5, :cond_6

    aget-object v0, v6, v7

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    goto :goto_5

    :cond_6
    array-length v10, v4

    move v13, v7

    :goto_3
    if-ge v13, v10, :cond_a

    aget-object v14, v4, v13

    :try_start_1
    invoke-interface {v8, v14, v7, v9}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_7

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retrieving null package info for package "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    iget v7, v0, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v7, :cond_9

    iget v7, v0, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v15, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v14, v7, v15}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    iget-object v15, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v15, :cond_8

    iput-object v14, v1, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    iget-object v15, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v15, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    iput-object v15, v1, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_8
    goto :goto_5

    :cond_9
    goto :goto_4

    :catch_1
    move-exception v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error while retrieving package info for package "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    add-int/lit8 v13, v13, 0x1

    const/4 v7, 0x0

    goto :goto_3

    :cond_a
    :goto_5
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v6, v1, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    if-nez v6, :cond_b

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    :cond_b
    iget-object v6, v1, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_c

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    :cond_c
    new-instance v6, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;

    invoke-direct {v6}, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;-><init>()V

    iget-object v7, v1, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;->name:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v7, v6, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v7, v1, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;->packageName:Ljava/lang/String;

    sget-object v7, Lcom/android/settings/fuelgauge/BatteryEntry;->sUidCache:Ljava/util/HashMap;

    invoke-virtual {v7, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/settings/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    if-eqz v7, :cond_d

    invoke-virtual {v7, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_d
    return-void
.end method
