.class public Lcom/google/android/youtube/core/player/DefaultBrandingOverlay;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/youtube/core/player/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, -0x2

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 26
    const v0, 0x7f0201a1

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/DefaultBrandingOverlay;->setImageResource(I)V

    .line 27
    invoke-virtual {p0, p0}, Lcom/google/android/youtube/core/player/DefaultBrandingOverlay;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 31
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 32
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 33
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/DefaultBrandingOverlay;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/DefaultBrandingOverlay;->setVisibility(I)V

    .line 36
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .registers 1

    .prologue
    .line 39
    return-object p0
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/DefaultBrandingOverlay;->setVisibility(I)V

    .line 48
    return-void
.end method

.method public final c()V
    .registers 2

    .prologue
    .line 43
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/DefaultBrandingOverlay;->setVisibility(I)V

    .line 44
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultBrandingOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "http://www.vevo.com"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/i;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 52
    return-void
.end method
