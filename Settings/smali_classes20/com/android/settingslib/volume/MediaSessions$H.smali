.class final Lcom/android/settingslib/volume/MediaSessions$H;
.super Landroid/os/Handler;
.source "MediaSessions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/volume/MediaSessions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final REMOTE_VOLUME_CHANGED:I = 0x2

.field private static final UPDATE_REMOTE_CONTROLLER:I = 0x3

.field private static final UPDATE_SESSIONS:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/volume/MediaSessions;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/volume/MediaSessions;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/volume/MediaSessions$H;->this$0:Lcom/android/settingslib/volume/MediaSessions;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/volume/MediaSessions;Landroid/os/Looper;Lcom/android/settingslib/volume/MediaSessions$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/volume/MediaSessions$H;-><init>(Lcom/android/settingslib/volume/MediaSessions;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/volume/MediaSessions$H;->this$0:Lcom/android/settingslib/volume/MediaSessions;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/session/MediaSession$Token;

    invoke-static {v0, v1}, Lcom/android/settingslib/volume/MediaSessions;->access$900(Lcom/android/settingslib/volume/MediaSessions;Landroid/media/session/MediaSession$Token;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/volume/MediaSessions$H;->this$0:Lcom/android/settingslib/volume/MediaSessions;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/session/MediaSession$Token;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/volume/MediaSessions;->access$800(Lcom/android/settingslib/volume/MediaSessions;Landroid/media/session/MediaSession$Token;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/volume/MediaSessions$H;->this$0:Lcom/android/settingslib/volume/MediaSessions;

    invoke-static {v0}, Lcom/android/settingslib/volume/MediaSessions;->access$700(Lcom/android/settingslib/volume/MediaSessions;)Landroid/media/session/MediaSessionManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/volume/MediaSessions;->onActiveSessionsUpdatedH(Ljava/util/List;)V

    nop

    :goto_0
    return-void
.end method