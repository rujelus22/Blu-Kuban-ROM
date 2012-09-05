.class public Lcom/google/android/youtube/core/player/DefaultBrandingOverlay;
.super Landroid/widget/ImageView;
.source "DefaultBrandingOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/youtube/core/player/BrandingOverlay;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .parameter "context"
    .parameter "imageResource"

    .prologue
    const/4 v1, -0x2

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-virtual {p0, p2}, Lcom/google/android/youtube/core/player/DefaultBrandingOverlay;->setImageResource(I)V

    .line 25
    invoke-virtual {p0, p0}, Lcom/google/android/youtube/core/player/DefaultBrandingOverlay;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 29
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 30
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 31
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/DefaultBrandingOverlay;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultBrandingOverlay;->hide()V

    .line 34
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .registers 1

    .prologue
    .line 37
    return-object p0
.end method

.method public hide()V
    .registers 2

    .prologue
    .line 41
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/DefaultBrandingOverlay;->setVisibility(I)V

    .line 42
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultBrandingOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "http://www.vevo.com"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/ExternalIntents;->viewUri(Landroid/content/Context;Landroid/net/Uri;)V

    .line 50
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/DefaultBrandingOverlay;->setVisibility(I)V

    .line 46
    return-void
.end method
