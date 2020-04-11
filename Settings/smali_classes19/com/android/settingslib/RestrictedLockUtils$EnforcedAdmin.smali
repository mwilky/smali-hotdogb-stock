.class public Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
.super Ljava/lang/Object;
.source "RestrictedLockUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/RestrictedLockUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnforcedAdmin"
.end annotation


# static fields
.field public static final MULTIPLE_ENFORCED_ADMIN:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;


# instance fields
.field public component:Landroid/content/ComponentName;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public enforcedRestriction:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public user:Landroid/os/UserHandle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {v0}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>()V

    sput-object v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->enforcedRestriction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->user:Landroid/os/UserHandle;

    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->enforcedRestriction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->user:Landroid/os/UserHandle;

    iput-object p1, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    iput-object p2, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->user:Landroid/os/UserHandle;

    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->enforcedRestriction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->user:Landroid/os/UserHandle;

    iput-object p1, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    iput-object p2, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->enforcedRestriction:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->user:Landroid/os/UserHandle;

    return-void
.end method

.method public constructor <init>(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->enforcedRestriction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->user:Landroid/os/UserHandle;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    iget-object v0, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->enforcedRestriction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->enforcedRestriction:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->user:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->user:Landroid/os/UserHandle;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static createDefaultEnforcedAdminWithRestriction(Ljava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 1

    new-instance v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {v0}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>()V

    iput-object p0, v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->enforcedRestriction:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget-object v3, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->user:Landroid/os/UserHandle;

    iget-object v4, v2, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->user:Landroid/os/UserHandle;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    iget-object v4, v2, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->enforcedRestriction:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->enforcedRestriction:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->enforcedRestriction:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->user:Landroid/os/UserHandle;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EnforcedAdmin{component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", enforcedRestriction=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->enforcedRestriction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
