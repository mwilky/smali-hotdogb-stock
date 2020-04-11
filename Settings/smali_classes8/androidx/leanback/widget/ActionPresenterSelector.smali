.class Landroidx/leanback/widget/ActionPresenterSelector;
.super Landroidx/leanback/widget/PresenterSelector;
.source "ActionPresenterSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/ActionPresenterSelector$TwoLineActionPresenter;,
        Landroidx/leanback/widget/ActionPresenterSelector$OneLineActionPresenter;,
        Landroidx/leanback/widget/ActionPresenterSelector$ActionPresenter;,
        Landroidx/leanback/widget/ActionPresenterSelector$ActionViewHolder;
    }
.end annotation


# instance fields
.field private final mOneLineActionPresenter:Landroidx/leanback/widget/Presenter;

.field private final mPresenters:[Landroidx/leanback/widget/Presenter;

.field private final mTwoLineActionPresenter:Landroidx/leanback/widget/Presenter;


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/leanback/widget/PresenterSelector;-><init>()V

    new-instance v0, Landroidx/leanback/widget/ActionPresenterSelector$OneLineActionPresenter;

    invoke-direct {v0}, Landroidx/leanback/widget/ActionPresenterSelector$OneLineActionPresenter;-><init>()V

    iput-object v0, p0, Landroidx/leanback/widget/ActionPresenterSelector;->mOneLineActionPresenter:Landroidx/leanback/widget/Presenter;

    new-instance v0, Landroidx/leanback/widget/ActionPresenterSelector$TwoLineActionPresenter;

    invoke-direct {v0}, Landroidx/leanback/widget/ActionPresenterSelector$TwoLineActionPresenter;-><init>()V

    iput-object v0, p0, Landroidx/leanback/widget/ActionPresenterSelector;->mTwoLineActionPresenter:Landroidx/leanback/widget/Presenter;

    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/leanback/widget/Presenter;

    iget-object v1, p0, Landroidx/leanback/widget/ActionPresenterSelector;->mOneLineActionPresenter:Landroidx/leanback/widget/Presenter;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroidx/leanback/widget/ActionPresenterSelector;->mTwoLineActionPresenter:Landroidx/leanback/widget/Presenter;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Landroidx/leanback/widget/ActionPresenterSelector;->mPresenters:[Landroidx/leanback/widget/Presenter;

    return-void
.end method


# virtual methods
.method public getPresenter(Ljava/lang/Object;)Landroidx/leanback/widget/Presenter;
    .locals 2

    move-object v0, p1

    check-cast v0, Landroidx/leanback/widget/Action;

    invoke-virtual {v0}, Landroidx/leanback/widget/Action;->getLabel2()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/leanback/widget/ActionPresenterSelector;->mOneLineActionPresenter:Landroidx/leanback/widget/Presenter;

    return-object v1

    :cond_0
    iget-object v1, p0, Landroidx/leanback/widget/ActionPresenterSelector;->mTwoLineActionPresenter:Landroidx/leanback/widget/Presenter;

    return-object v1
.end method

.method public getPresenters()[Landroidx/leanback/widget/Presenter;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ActionPresenterSelector;->mPresenters:[Landroidx/leanback/widget/Presenter;

    return-object v0
.end method
