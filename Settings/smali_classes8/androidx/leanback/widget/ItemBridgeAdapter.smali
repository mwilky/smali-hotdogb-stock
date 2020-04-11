.class public Landroidx/leanback/widget/ItemBridgeAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ItemBridgeAdapter.java"

# interfaces
.implements Landroidx/leanback/widget/FacetProviderAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;,
        Landroidx/leanback/widget/ItemBridgeAdapter$ChainingFocusChangeListener;,
        Landroidx/leanback/widget/ItemBridgeAdapter$Wrapper;,
        Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "ItemBridgeAdapter"


# instance fields
.field private mAdapter:Landroidx/leanback/widget/ObjectAdapter;

.field private mAdapterListener:Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;

.field private mDataObserver:Landroidx/leanback/widget/ObjectAdapter$DataObserver;

.field mFocusHighlight:Landroidx/leanback/widget/FocusHighlightHandler;

.field private mPresenterSelector:Landroidx/leanback/widget/PresenterSelector;

.field private mPresenters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/leanback/widget/Presenter;",
            ">;"
        }
    .end annotation
.end field

.field mWrapper:Landroidx/leanback/widget/ItemBridgeAdapter$Wrapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mPresenters:Ljava/util/ArrayList;

    new-instance v0, Landroidx/leanback/widget/ItemBridgeAdapter$1;

    invoke-direct {v0, p0}, Landroidx/leanback/widget/ItemBridgeAdapter$1;-><init>(Landroidx/leanback/widget/ItemBridgeAdapter;)V

    iput-object v0, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mDataObserver:Landroidx/leanback/widget/ObjectAdapter$DataObserver;

    return-void
.end method

.method public constructor <init>(Landroidx/leanback/widget/ObjectAdapter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/leanback/widget/ItemBridgeAdapter;-><init>(Landroidx/leanback/widget/ObjectAdapter;Landroidx/leanback/widget/PresenterSelector;)V

    return-void
.end method

.method public constructor <init>(Landroidx/leanback/widget/ObjectAdapter;Landroidx/leanback/widget/PresenterSelector;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mPresenters:Ljava/util/ArrayList;

    new-instance v0, Landroidx/leanback/widget/ItemBridgeAdapter$1;

    invoke-direct {v0, p0}, Landroidx/leanback/widget/ItemBridgeAdapter$1;-><init>(Landroidx/leanback/widget/ItemBridgeAdapter;)V

    iput-object v0, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mDataObserver:Landroidx/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/ItemBridgeAdapter;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    iput-object p2, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mPresenterSelector:Landroidx/leanback/widget/PresenterSelector;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/ItemBridgeAdapter;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    return-void
.end method

.method public getFacetProvider(I)Landroidx/leanback/widget/FacetProvider;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mPresenters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/FacetProvider;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ObjectAdapter;->getId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 5

    iget-object v0, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mPresenterSelector:Landroidx/leanback/widget/PresenterSelector;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroidx/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroidx/leanback/widget/PresenterSelector;

    move-result-object v0

    :goto_0
    nop

    iget-object v1, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    invoke-virtual {v1, p1}, Landroidx/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/PresenterSelector;->getPresenter(Ljava/lang/Object;)Landroidx/leanback/widget/Presenter;

    move-result-object v2

    iget-object v3, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mPresenters:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_1

    iget-object v4, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mPresenters:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mPresenters:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroidx/leanback/widget/ItemBridgeAdapter;->onAddPresenter(Landroidx/leanback/widget/Presenter;I)V

    iget-object v4, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v2, v3}, Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;->onAddPresenter(Landroidx/leanback/widget/Presenter;I)V

    :cond_1
    return v3
.end method

.method public getPresenterMapper()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/leanback/widget/Presenter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mPresenters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getWrapper()Landroidx/leanback/widget/ItemBridgeAdapter$Wrapper;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mWrapper:Landroidx/leanback/widget/ItemBridgeAdapter$Wrapper;

    return-object v0
.end method

.method protected onAddPresenter(Landroidx/leanback/widget/Presenter;I)V
    .locals 0

    return-void
.end method

.method protected onAttachedToWindow(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 0

    return-void
.end method

.method protected onBind(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    move-object v0, p1

    check-cast v0, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    iget-object v1, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    invoke-virtual {v1, p2}, Landroidx/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->mItem:Ljava/lang/Object;

    iget-object v1, v0, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->mPresenter:Landroidx/leanback/widget/Presenter;

    iget-object v2, v0, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->mHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    iget-object v3, v0, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->mItem:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroidx/leanback/widget/Presenter;->onBindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/ItemBridgeAdapter;->onBind(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    iget-object v1, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;->onBind(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 4

    move-object v0, p1

    check-cast v0, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    iget-object v1, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    invoke-virtual {v1, p2}, Landroidx/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->mItem:Ljava/lang/Object;

    iget-object v1, v0, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->mPresenter:Landroidx/leanback/widget/Presenter;

    iget-object v2, v0, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->mHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    iget-object v3, v0, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->mItem:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, p3}, Landroidx/leanback/widget/Presenter;->onBindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/ItemBridgeAdapter;->onBind(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    iget-object v1, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0, p3}, Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;->onBind(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 10

    iget-object v0, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mPresenters:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/Presenter;

    iget-object v1, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mWrapper:Landroidx/leanback/widget/ItemBridgeAdapter$Wrapper;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroidx/leanback/widget/ItemBridgeAdapter$Wrapper;->createWrapper(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/Presenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object v2

    iget-object v3, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mWrapper:Landroidx/leanback/widget/ItemBridgeAdapter$Wrapper;

    iget-object v4, v2, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v3, v1, v4}, Landroidx/leanback/widget/ItemBridgeAdapter$Wrapper;->wrap(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/Presenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object v2

    iget-object v1, v2, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    :goto_0
    new-instance v3, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    invoke-direct {v3, v0, v1, v2}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;-><init>(Landroidx/leanback/widget/Presenter;Landroid/view/View;Landroidx/leanback/widget/Presenter$ViewHolder;)V

    invoke-virtual {p0, v3}, Landroidx/leanback/widget/ItemBridgeAdapter;->onCreate(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    iget-object v4, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v3}, Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;->onCreate(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    :cond_1
    iget-object v4, v3, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->mHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    iget-object v4, v4, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v5

    iget-object v6, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mFocusHighlight:Landroidx/leanback/widget/FocusHighlightHandler;

    if-eqz v6, :cond_5

    instance-of v6, v5, Landroidx/leanback/widget/ItemBridgeAdapter$ChainingFocusChangeListener;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_3

    move-object v6, v5

    check-cast v6, Landroidx/leanback/widget/ItemBridgeAdapter$ChainingFocusChangeListener;

    iget-object v9, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mWrapper:Landroidx/leanback/widget/ItemBridgeAdapter$Wrapper;

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_2
    move v7, v8

    :goto_1
    iget-object v8, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mFocusHighlight:Landroidx/leanback/widget/FocusHighlightHandler;

    invoke-virtual {v6, v7, v8}, Landroidx/leanback/widget/ItemBridgeAdapter$ChainingFocusChangeListener;->update(ZLandroidx/leanback/widget/FocusHighlightHandler;)V

    goto :goto_3

    :cond_3
    new-instance v6, Landroidx/leanback/widget/ItemBridgeAdapter$ChainingFocusChangeListener;

    iget-object v9, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mWrapper:Landroidx/leanback/widget/ItemBridgeAdapter$Wrapper;

    if-eqz v9, :cond_4

    goto :goto_2

    :cond_4
    move v7, v8

    :goto_2
    iget-object v8, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mFocusHighlight:Landroidx/leanback/widget/FocusHighlightHandler;

    invoke-direct {v6, v5, v7, v8}, Landroidx/leanback/widget/ItemBridgeAdapter$ChainingFocusChangeListener;-><init>(Landroid/view/View$OnFocusChangeListener;ZLandroidx/leanback/widget/FocusHighlightHandler;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :goto_3
    iget-object v6, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mFocusHighlight:Landroidx/leanback/widget/FocusHighlightHandler;

    invoke-interface {v6, v1}, Landroidx/leanback/widget/FocusHighlightHandler;->onInitializeView(Landroid/view/View;)V

    goto :goto_4

    :cond_5
    instance-of v6, v5, Landroidx/leanback/widget/ItemBridgeAdapter$ChainingFocusChangeListener;

    if-eqz v6, :cond_6

    move-object v6, v5

    check-cast v6, Landroidx/leanback/widget/ItemBridgeAdapter$ChainingFocusChangeListener;

    iget-object v6, v6, Landroidx/leanback/widget/ItemBridgeAdapter$ChainingFocusChangeListener;->mChainedListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_6
    :goto_4
    return-object v3
.end method

.method protected onDetachedFromWindow(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public final onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/ItemBridgeAdapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 v0, 0x0

    return v0
.end method

.method protected onUnbind(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public final onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/ItemBridgeAdapter;->onAttachedToWindow(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    iget-object v1, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;->onAttachedToWindow(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    :cond_0
    iget-object v1, v0, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->mPresenter:Landroidx/leanback/widget/Presenter;

    iget-object v2, v0, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->mHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v1, v2}, Landroidx/leanback/widget/Presenter;->onViewAttachedToWindow(Landroidx/leanback/widget/Presenter$ViewHolder;)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    iget-object v1, v0, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->mPresenter:Landroidx/leanback/widget/Presenter;

    iget-object v2, v0, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->mHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v1, v2}, Landroidx/leanback/widget/Presenter;->onViewDetachedFromWindow(Landroidx/leanback/widget/Presenter$ViewHolder;)V

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/ItemBridgeAdapter;->onDetachedFromWindow(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    iget-object v1, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;->onDetachedFromWindow(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public final onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    iget-object v1, v0, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->mPresenter:Landroidx/leanback/widget/Presenter;

    iget-object v2, v0, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->mHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v1, v2}, Landroidx/leanback/widget/Presenter;->onUnbindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)V

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/ItemBridgeAdapter;->onUnbind(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    iget-object v1, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;->onUnbind(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->mItem:Ljava/lang/Object;

    return-void
.end method

.method public setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mDataObserver:Landroidx/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ObjectAdapter;->unregisterObserver(Landroidx/leanback/widget/ObjectAdapter$DataObserver;)V

    :cond_1
    iput-object p1, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    iget-object v0, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/leanback/widget/ItemBridgeAdapter;->notifyDataSetChanged()V

    return-void

    :cond_2
    iget-object v1, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mDataObserver:Landroidx/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ObjectAdapter;->registerObserver(Landroidx/leanback/widget/ObjectAdapter$DataObserver;)V

    invoke-virtual {p0}, Landroidx/leanback/widget/ItemBridgeAdapter;->hasStableIds()Z

    move-result v0

    iget-object v1, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    invoke-virtual {v1}, Landroidx/leanback/widget/ObjectAdapter;->hasStableIds()Z

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroidx/leanback/widget/ObjectAdapter;->hasStableIds()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/ItemBridgeAdapter;->setHasStableIds(Z)V

    :cond_3
    invoke-virtual {p0}, Landroidx/leanback/widget/ItemBridgeAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setAdapterListener(Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;

    return-void
.end method

.method setFocusHighlight(Landroidx/leanback/widget/FocusHighlightHandler;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mFocusHighlight:Landroidx/leanback/widget/FocusHighlightHandler;

    return-void
.end method

.method public setPresenter(Landroidx/leanback/widget/PresenterSelector;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mPresenterSelector:Landroidx/leanback/widget/PresenterSelector;

    invoke-virtual {p0}, Landroidx/leanback/widget/ItemBridgeAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setPresenterMapper(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/leanback/widget/Presenter;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mPresenters:Ljava/util/ArrayList;

    return-void
.end method

.method public setWrapper(Landroidx/leanback/widget/ItemBridgeAdapter$Wrapper;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/ItemBridgeAdapter;->mWrapper:Landroidx/leanback/widget/ItemBridgeAdapter$Wrapper;

    return-void
.end method
