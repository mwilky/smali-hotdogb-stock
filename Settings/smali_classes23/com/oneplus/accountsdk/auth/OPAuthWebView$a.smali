.class final Lcom/oneplus/accountsdk/auth/OPAuthWebView$a;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/accountsdk/auth/OPAuthWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oneplus/accountsdk/auth/OPAuthWebView;


# direct methods
.method constructor <init>(Lcom/oneplus/accountsdk/auth/OPAuthWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/accountsdk/auth/OPAuthWebView$a;->a:Lcom/oneplus/accountsdk/auth/OPAuthWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method
