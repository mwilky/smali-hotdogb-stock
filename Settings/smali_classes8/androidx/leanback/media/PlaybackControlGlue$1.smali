.class Landroidx/leanback/media/PlaybackControlGlue$1;
.super Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter;
.source "PlaybackControlGlue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/media/PlaybackControlGlue;->onCreateControlsRowAndPresenter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/media/PlaybackControlGlue;


# direct methods
.method constructor <init>(Landroidx/leanback/media/PlaybackControlGlue;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/media/PlaybackControlGlue$1;->this$0:Landroidx/leanback/media/PlaybackControlGlue;

    invoke-direct {p0}, Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter;-><init>()V

    return-void
.end method


# virtual methods
.method protected onBindDescription(Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 3

    move-object v0, p2

    check-cast v0, Landroidx/leanback/media/PlaybackControlGlue;

    invoke-virtual {v0}, Landroidx/leanback/media/PlaybackControlGlue;->hasValidMedia()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/leanback/media/PlaybackControlGlue;->getMediaTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->getSubtitle()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/leanback/media/PlaybackControlGlue;->getMediaSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->getSubtitle()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
