.class public final synthetic Lcom/android/systemui/qs/-$$Lambda$QSTileHost$w0YHlhMwIm7qnoeEO7kRZCq47o8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/qs/-$$Lambda$QSTileHost$w0YHlhMwIm7qnoeEO7kRZCq47o8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$w0YHlhMwIm7qnoeEO7kRZCq47o8;

    invoke-direct {v0}, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$w0YHlhMwIm7qnoeEO7kRZCq47o8;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$w0YHlhMwIm7qnoeEO7kRZCq47o8;->INSTANCE:Lcom/android/systemui/qs/-$$Lambda$QSTileHost$w0YHlhMwIm7qnoeEO7kRZCq47o8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile;

    invoke-static {p1}, Lcom/android/systemui/qs/QSTileHost;->lambda$dump$6(Lcom/android/systemui/plugins/qs/QSTile;)Z

    move-result p0

    return p0
.end method
