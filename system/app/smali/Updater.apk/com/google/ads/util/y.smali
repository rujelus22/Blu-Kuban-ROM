.class public final Lcom/google/ads/util/y;
.super Lcom/google/ads/util/p;


# direct methods
.method public constructor <init>(Lcom/google/ads/am;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/ads/util/p;-><init>(Lcom/google/ads/am;)V

    return-void
.end method


# virtual methods
.method public final onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 4

    invoke-interface {p3}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    return-void
.end method
