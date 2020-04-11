.class public abstract Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;
.super Ljava/lang/Object;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SpanSizeLookup"
.end annotation


# instance fields
.field private mCacheSpanIndices:Z

.field final mSpanIndexCache:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    return-void
.end method


# virtual methods
.method findReferenceIndexFromCache(I)I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-gt v0, v1, :cond_1

    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    if-ge v3, p1, :cond_0

    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v2, -0x1

    :goto_1
    goto :goto_0

    :cond_1
    add-int/lit8 v2, v0, -0x1

    if-ltz v2, :cond_2

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    return v3

    :cond_2
    const/4 v3, -0x1

    return v3
.end method

.method getCachedSpanIndex(II)I
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    return v1
.end method

.method public getSpanGroupIndex(II)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_2

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v4

    add-int/2addr v0, v4

    if-ne v0, p2, :cond_0

    const/4 v0, 0x0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    if-le v0, p2, :cond_1

    move v0, v4

    add-int/lit8 v1, v1, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    add-int v3, v0, v2

    if-le v3, p2, :cond_3

    add-int/lit8 v1, v1, 0x1

    :cond_3
    return v1
.end method

.method public getSpanIndex(II)I
    .locals 7

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p2, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->findReferenceIndexFromCache(I)I

    move-result v4

    if-ltz v4, :cond_1

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v6

    add-int v2, v5, v6

    add-int/lit8 v3, v4, 0x1

    :cond_1
    move v4, v3

    :goto_0
    if-ge v4, p1, :cond_4

    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v5

    add-int/2addr v2, v5

    if-ne v2, p2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    if-le v2, p2, :cond_3

    move v2, v5

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    add-int v4, v2, v0

    if-gt v4, p2, :cond_5

    return v2

    :cond_5
    return v1
.end method

.method public abstract getSpanSize(I)I
.end method

.method public invalidateSpanIndexCache()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public isSpanIndexCacheEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    return v0
.end method

.method public setSpanIndexCacheEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    return-void
.end method
