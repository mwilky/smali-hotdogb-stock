.class public final Lcom/google/zxing/common/BitSource;
.super Ljava/lang/Object;
.source "BitSource.java"


# instance fields
.field private bitOffset:I

.field private byteOffset:I

.field private final bytes:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/common/BitSource;->bytes:[B

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    iget-object v0, p0, Lcom/google/zxing/common/BitSource;->bytes:[B

    array-length v0, v0

    iget v1, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getBitOffset()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    return v0
.end method

.method public getByteOffset()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    return v0
.end method

.method public readBits(I)I
    .locals 10

    const/4 v0, 0x1

    if-lt p1, v0, :cond_4

    const/16 v1, 0x20

    if-gt p1, v1, :cond_4

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    if-gt p1, v1, :cond_4

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    const/16 v3, 0xff

    const/16 v4, 0x8

    if-lez v2, :cond_1

    rsub-int/lit8 v2, v2, 0x8

    if-ge p1, v2, :cond_0

    move v5, p1

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    sub-int v6, v2, v5

    rsub-int/lit8 v7, v5, 0x8

    shr-int v7, v3, v7

    shl-int/2addr v7, v6

    iget-object v8, p0, Lcom/google/zxing/common/BitSource;->bytes:[B

    iget v9, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    aget-byte v8, v8, v9

    and-int/2addr v8, v7

    shr-int v1, v8, v6

    sub-int/2addr p1, v5

    iget v8, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    add-int/2addr v8, v5

    iput v8, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    iget v8, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    if-ne v8, v4, :cond_1

    const/4 v8, 0x0

    iput v8, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    add-int/2addr v9, v0

    iput v9, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    :cond_1
    if-lez p1, :cond_3

    :goto_1
    if-lt p1, v4, :cond_2

    shl-int/lit8 v2, v1, 0x8

    iget-object v5, p0, Lcom/google/zxing/common/BitSource;->bytes:[B

    iget v6, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    aget-byte v5, v5, v6

    and-int/2addr v5, v3

    or-int v1, v2, v5

    add-int/2addr v6, v0

    iput v6, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    add-int/lit8 p1, p1, -0x8

    goto :goto_1

    :cond_2
    if-lez p1, :cond_3

    sub-int/2addr v4, p1

    shr-int v0, v3, v4

    shl-int/2addr v0, v4

    shl-int v2, v1, p1

    iget-object v3, p0, Lcom/google/zxing/common/BitSource;->bytes:[B

    iget v5, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    aget-byte v3, v3, v5

    and-int/2addr v3, v0

    shr-int/2addr v3, v4

    or-int v1, v2, v3

    iget v2, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    :cond_3
    return v1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
