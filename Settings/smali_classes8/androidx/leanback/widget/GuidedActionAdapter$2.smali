.class Landroidx/leanback/widget/GuidedActionAdapter$2;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "GuidedActionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/widget/GuidedActionAdapter;->setActions(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/widget/GuidedActionAdapter;

.field final synthetic val$oldActions:Ljava/util/List;


# direct methods
.method constructor <init>(Landroidx/leanback/widget/GuidedActionAdapter;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/GuidedActionAdapter$2;->this$0:Landroidx/leanback/widget/GuidedActionAdapter;

    iput-object p2, p0, Landroidx/leanback/widget/GuidedActionAdapter$2;->val$oldActions:Ljava/util/List;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 3

    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionAdapter$2;->this$0:Landroidx/leanback/widget/GuidedActionAdapter;

    iget-object v0, v0, Landroidx/leanback/widget/GuidedActionAdapter;->mDiffCallback:Landroidx/leanback/widget/DiffCallback;

    iget-object v1, p0, Landroidx/leanback/widget/GuidedActionAdapter$2;->val$oldActions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Landroidx/leanback/widget/GuidedActionAdapter$2;->this$0:Landroidx/leanback/widget/GuidedActionAdapter;

    iget-object v2, v2, Landroidx/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/DiffCallback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public areItemsTheSame(II)Z
    .locals 3

    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionAdapter$2;->this$0:Landroidx/leanback/widget/GuidedActionAdapter;

    iget-object v0, v0, Landroidx/leanback/widget/GuidedActionAdapter;->mDiffCallback:Landroidx/leanback/widget/DiffCallback;

    iget-object v1, p0, Landroidx/leanback/widget/GuidedActionAdapter$2;->val$oldActions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Landroidx/leanback/widget/GuidedActionAdapter$2;->this$0:Landroidx/leanback/widget/GuidedActionAdapter;

    iget-object v2, v2, Landroidx/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/DiffCallback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getChangePayload(II)Ljava/lang/Object;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionAdapter$2;->this$0:Landroidx/leanback/widget/GuidedActionAdapter;

    iget-object v0, v0, Landroidx/leanback/widget/GuidedActionAdapter;->mDiffCallback:Landroidx/leanback/widget/DiffCallback;

    iget-object v1, p0, Landroidx/leanback/widget/GuidedActionAdapter$2;->val$oldActions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Landroidx/leanback/widget/GuidedActionAdapter$2;->this$0:Landroidx/leanback/widget/GuidedActionAdapter;

    iget-object v2, v2, Landroidx/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/DiffCallback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNewListSize()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionAdapter$2;->this$0:Landroidx/leanback/widget/GuidedActionAdapter;

    iget-object v0, v0, Landroidx/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionAdapter$2;->val$oldActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
