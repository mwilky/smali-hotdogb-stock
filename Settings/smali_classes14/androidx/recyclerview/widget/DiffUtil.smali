.class public Landroidx/recyclerview/widget/DiffUtil;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;,
        Landroidx/recyclerview/widget/DiffUtil$DiffResult;,
        Landroidx/recyclerview/widget/DiffUtil$Range;,
        Landroidx/recyclerview/widget/DiffUtil$Snake;,
        Landroidx/recyclerview/widget/DiffUtil$ItemCallback;,
        Landroidx/recyclerview/widget/DiffUtil$Callback;
    }
.end annotation


# static fields
.field private static final SNAKE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/recyclerview/widget/DiffUtil$Snake;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$1;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DiffUtil$1;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/DiffUtil;->SNAKE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .locals 1
    .param p0    # Landroidx/recyclerview/widget/DiffUtil$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v0

    return-object v0
.end method

.method public static calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .locals 19
    .param p0    # Landroidx/recyclerview/widget/DiffUtil$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getOldListSize()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getNewListSize()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v3

    new-instance v3, Landroidx/recyclerview/widget/DiffUtil$Range;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v4, v1}, Landroidx/recyclerview/widget/DiffUtil$Range;-><init>(IIII)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int v3, v0, v1

    sub-int v4, v0, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int v18, v3, v4

    mul-int/lit8 v3, v18, 0x2

    new-array v8, v3, [I

    mul-int/lit8 v3, v18, 0x2

    new-array v7, v3, [I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v3

    :goto_0
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v9, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/DiffUtil$Range;

    iget v11, v3, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iget v12, v3, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iget v13, v3, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    iget v14, v3, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    move-object/from16 v10, p0

    move-object v15, v8

    move-object/from16 v16, v7

    move/from16 v17, v18

    invoke-static/range {v10 .. v17}, Landroidx/recyclerview/widget/DiffUtil;->diffPartial(Landroidx/recyclerview/widget/DiffUtil$Callback;IIII[I[II)Landroidx/recyclerview/widget/DiffUtil$Snake;

    move-result-object v4

    if-eqz v4, :cond_6

    iget v5, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    if-lez v5, :cond_0

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v5, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iget v10, v3, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    add-int/2addr v5, v10

    iput v5, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iget v5, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    iget v10, v3, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    add-int/2addr v5, v10

    iput v5, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Landroidx/recyclerview/widget/DiffUtil$Range;

    invoke-direct {v5}, Landroidx/recyclerview/widget/DiffUtil$Range;-><init>()V

    goto :goto_1

    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v6, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/DiffUtil$Range;

    :goto_1
    iget v10, v3, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iput v10, v5, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iget v10, v3, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    iput v10, v5, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    iget-boolean v10, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    if-eqz v10, :cond_2

    iget v10, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iput v10, v5, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iget v10, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    iput v10, v5, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    goto :goto_2

    :cond_2
    iget-boolean v10, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->removal:Z

    if-eqz v10, :cond_3

    iget v10, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    add-int/lit8 v10, v10, -0x1

    iput v10, v5, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iget v10, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    iput v10, v5, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    goto :goto_2

    :cond_3
    iget v10, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iput v10, v5, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iget v10, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    add-int/lit8 v10, v10, -0x1

    iput v10, v5, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    :goto_2
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v10, v3

    iget-boolean v11, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    if-eqz v11, :cond_5

    iget-boolean v11, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->removal:Z

    if-eqz v11, :cond_4

    iget v11, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iget v12, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iget v11, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    iget v12, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    add-int/2addr v11, v12

    iput v11, v10, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    goto :goto_3

    :cond_4
    iget v11, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iget v12, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    add-int/2addr v11, v12

    iput v11, v10, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iget v11, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    iget v12, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    goto :goto_3

    :cond_5
    iget v11, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iget v12, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    add-int/2addr v11, v12

    iput v11, v10, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iget v11, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    iget v12, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    add-int/2addr v11, v12

    iput v11, v10, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    :goto_3
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    goto/16 :goto_0

    :cond_7
    sget-object v3, Landroidx/recyclerview/widget/DiffUtil;->SNAKE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v10, Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-object v3, v10

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v11, v6

    move-object v6, v8

    move-object v12, v7

    move-object v13, v8

    move/from16 v8, p1

    invoke-direct/range {v3 .. v8}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;-><init>(Landroidx/recyclerview/widget/DiffUtil$Callback;Ljava/util/List;[I[IZ)V

    return-object v10
.end method

.method private static diffPartial(Landroidx/recyclerview/widget/DiffUtil$Callback;IIII[I[II)Landroidx/recyclerview/widget/DiffUtil$Snake;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    sub-int v3, p2, p1

    sub-int v4, p4, p3

    sub-int v5, p2, p1

    const/4 v6, 0x1

    if-lt v5, v6, :cond_f

    sub-int v5, p4, p3

    if-ge v5, v6, :cond_0

    move/from16 v17, v3

    goto/16 :goto_b

    :cond_0
    sub-int v5, v3, v4

    add-int v7, v3, v4

    add-int/2addr v7, v6

    div-int/lit8 v7, v7, 0x2

    sub-int v8, p7, v7

    sub-int/2addr v8, v6

    add-int v9, p7, v7

    add-int/2addr v9, v6

    const/4 v10, 0x0

    invoke-static {v1, v8, v9, v10}, Ljava/util/Arrays;->fill([IIII)V

    sub-int v8, p7, v7

    sub-int/2addr v8, v6

    add-int/2addr v8, v5

    add-int v9, p7, v7

    add-int/2addr v9, v6

    add-int/2addr v9, v5

    invoke-static {v2, v8, v9, v3}, Ljava/util/Arrays;->fill([IIII)V

    rem-int/lit8 v8, v5, 0x2

    if-eqz v8, :cond_1

    move v8, v6

    goto :goto_0

    :cond_1
    move v8, v10

    :goto_0
    const/4 v9, 0x0

    :goto_1
    if-gt v9, v7, :cond_e

    neg-int v11, v9

    :goto_2
    if-gt v11, v9, :cond_7

    neg-int v12, v9

    if-eq v11, v12, :cond_3

    if-eq v11, v9, :cond_2

    add-int v12, p7, v11

    sub-int/2addr v12, v6

    aget v12, v1, v12

    add-int v13, p7, v11

    add-int/2addr v13, v6

    aget v13, v1, v13

    if-ge v12, v13, :cond_2

    goto :goto_3

    :cond_2
    add-int v12, p7, v11

    sub-int/2addr v12, v6

    aget v12, v1, v12

    add-int/2addr v12, v6

    const/4 v13, 0x1

    goto :goto_4

    :cond_3
    :goto_3
    add-int v12, p7, v11

    add-int/2addr v12, v6

    aget v12, v1, v12

    const/4 v13, 0x0

    :goto_4
    sub-int v14, v12, v11

    :goto_5
    if-ge v12, v3, :cond_4

    if-ge v14, v4, :cond_4

    add-int v15, p1, v12

    add-int v10, p3, v14

    invoke-virtual {v0, v15, v10}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v10

    if-eqz v10, :cond_4

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v14, v14, 0x1

    const/4 v10, 0x0

    goto :goto_5

    :cond_4
    add-int v10, p7, v11

    aput v12, v1, v10

    if-eqz v8, :cond_6

    sub-int v10, v5, v9

    add-int/2addr v10, v6

    if-lt v11, v10, :cond_6

    add-int v10, v5, v9

    sub-int/2addr v10, v6

    if-gt v11, v10, :cond_6

    add-int v10, p7, v11

    aget v10, v1, v10

    add-int v15, p7, v11

    aget v15, v2, v15

    if-lt v10, v15, :cond_5

    new-instance v6, Landroidx/recyclerview/widget/DiffUtil$Snake;

    invoke-direct {v6}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    add-int v10, p7, v11

    aget v10, v2, v10

    iput v10, v6, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iget v10, v6, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    sub-int/2addr v10, v11

    iput v10, v6, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    add-int v10, p7, v11

    aget v10, v1, v10

    add-int v15, p7, v11

    aget v15, v2, v15

    sub-int/2addr v10, v15

    iput v10, v6, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    iput-boolean v13, v6, Landroidx/recyclerview/widget/DiffUtil$Snake;->removal:Z

    const/4 v10, 0x0

    iput-boolean v10, v6, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    return-object v6

    :cond_5
    const/4 v10, 0x0

    goto :goto_6

    :cond_6
    const/4 v10, 0x0

    :goto_6
    add-int/lit8 v11, v11, 0x2

    goto :goto_2

    :cond_7
    neg-int v11, v9

    :goto_7
    if-gt v11, v9, :cond_d

    add-int v12, v11, v5

    add-int v13, v9, v5

    if-eq v12, v13, :cond_9

    neg-int v13, v9

    add-int/2addr v13, v5

    if-eq v12, v13, :cond_8

    add-int v13, p7, v12

    sub-int/2addr v13, v6

    aget v13, v2, v13

    add-int v14, p7, v12

    add-int/2addr v14, v6

    aget v14, v2, v14

    if-ge v13, v14, :cond_8

    goto :goto_8

    :cond_8
    add-int v13, p7, v12

    add-int/2addr v13, v6

    aget v13, v2, v13

    sub-int/2addr v13, v6

    const/4 v14, 0x1

    goto :goto_9

    :cond_9
    :goto_8
    add-int v13, p7, v12

    sub-int/2addr v13, v6

    aget v13, v2, v13

    const/4 v14, 0x0

    :goto_9
    sub-int v15, v13, v12

    :goto_a
    if-lez v13, :cond_a

    if-lez v15, :cond_a

    add-int v16, p1, v13

    add-int/lit8 v10, v16, -0x1

    add-int v16, p3, v15

    move/from16 v17, v3

    add-int/lit8 v3, v16, -0x1

    invoke-virtual {v0, v10, v3}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v3

    if-eqz v3, :cond_b

    add-int/lit8 v13, v13, -0x1

    add-int/lit8 v15, v15, -0x1

    move/from16 v3, v17

    const/4 v10, 0x0

    goto :goto_a

    :cond_a
    move/from16 v17, v3

    :cond_b
    add-int v3, p7, v12

    aput v13, v2, v3

    if-nez v8, :cond_c

    add-int v3, v11, v5

    neg-int v10, v9

    if-lt v3, v10, :cond_c

    add-int v3, v11, v5

    if-gt v3, v9, :cond_c

    add-int v3, p7, v12

    aget v3, v1, v3

    add-int v10, p7, v12

    aget v10, v2, v10

    if-lt v3, v10, :cond_c

    new-instance v3, Landroidx/recyclerview/widget/DiffUtil$Snake;

    invoke-direct {v3}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    add-int v10, p7, v12

    aget v10, v2, v10

    iput v10, v3, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iget v10, v3, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    sub-int/2addr v10, v12

    iput v10, v3, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    add-int v10, p7, v12

    aget v10, v1, v10

    add-int v16, p7, v12

    aget v16, v2, v16

    sub-int v10, v10, v16

    iput v10, v3, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    iput-boolean v14, v3, Landroidx/recyclerview/widget/DiffUtil$Snake;->removal:Z

    iput-boolean v6, v3, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    return-object v3

    :cond_c
    add-int/lit8 v11, v11, 0x2

    move/from16 v3, v17

    const/4 v10, 0x0

    goto/16 :goto_7

    :cond_d
    move/from16 v17, v3

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_e
    move/from16 v17, v3

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v6, "DiffUtil hit an unexpected case while trying to calculate the optimal path. Please make sure your data is not changing during the diff calculation."

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_f
    move/from16 v17, v3

    :goto_b
    const/4 v3, 0x0

    return-object v3
.end method
