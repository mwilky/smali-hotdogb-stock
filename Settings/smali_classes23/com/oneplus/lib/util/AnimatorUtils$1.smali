.class Lcom/oneplus/lib/util/AnimatorUtils$1;
.super Ljava/lang/Object;
.source "AnimatorUtils.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/util/AnimatorUtils;->onUiReady(Landroid/content/Intent;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/util/AnimatorUtils$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/util/AnimatorUtils$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/oneplus/lib/util/AnimatorUtils$1;->val$view:Landroid/view/View;

    invoke-static {v0}, Lcom/oneplus/lib/util/AnimatorUtils;->access$000(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/lib/util/AnimatorUtils$1;->val$view:Landroid/view/View;

    invoke-static {v0}, Lcom/oneplus/lib/util/AnimatorUtils;->access$100(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method
