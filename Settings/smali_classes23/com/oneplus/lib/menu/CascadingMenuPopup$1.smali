.class Lcom/oneplus/lib/menu/CascadingMenuPopup$1;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/menu/CascadingMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/menu/CascadingMenuPopup;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/menu/CascadingMenuPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$1;->this$0:Lcom/oneplus/lib/menu/CascadingMenuPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$1;->this$0:Lcom/oneplus/lib/menu/CascadingMenuPopup;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$1;->this$0:Lcom/oneplus/lib/menu/CascadingMenuPopup;

    iget-object v0, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$1;->this$0:Lcom/oneplus/lib/menu/CascadingMenuPopup;

    iget-object v0, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v0, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuPopupWindow;->isModal()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$1;->this$0:Lcom/oneplus/lib/menu/CascadingMenuPopup;

    iget-object v0, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$1;->this$0:Lcom/oneplus/lib/menu/CascadingMenuPopup;

    iget-object v1, v1, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v3, v2, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v3}, Lcom/oneplus/lib/menu/MenuPopupWindow;->show()V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$1;->this$0:Lcom/oneplus/lib/menu/CascadingMenuPopup;

    invoke-virtual {v1}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->dismiss()V

    :cond_2
    return-void
.end method