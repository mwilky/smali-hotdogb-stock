.class Landroidx/leanback/widget/RecyclerViewParallax$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "RecyclerViewParallax.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/RecyclerViewParallax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/widget/RecyclerViewParallax;


# direct methods
.method constructor <init>(Landroidx/leanback/widget/RecyclerViewParallax;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/RecyclerViewParallax$1;->this$0:Landroidx/leanback/widget/RecyclerViewParallax;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/RecyclerViewParallax$1;->this$0:Landroidx/leanback/widget/RecyclerViewParallax;

    invoke-virtual {v0}, Landroidx/leanback/widget/RecyclerViewParallax;->updateValues()V

    return-void
.end method
