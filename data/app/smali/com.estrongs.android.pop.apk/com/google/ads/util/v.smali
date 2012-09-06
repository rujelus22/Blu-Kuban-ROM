.class public Lcom/google/ads/util/v;
.super Lcom/google/ads/util/m;


# direct methods
.method public constructor <init>(Lcom/google/ads/ah;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/ads/util/m;-><init>(Lcom/google/ads/ah;)V

    return-void
.end method


# virtual methods
.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 4

    invoke-interface {p3}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    return-void
.end method
