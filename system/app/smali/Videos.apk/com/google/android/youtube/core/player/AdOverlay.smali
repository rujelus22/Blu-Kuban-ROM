.class public final Lcom/google/android/youtube/core/player/AdOverlay;
.super Landroid/widget/LinearLayout;
.source "AdOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/player/AdOverlay$Listener;
    }
.end annotation


# instance fields
.field private final advertisementText:Landroid/widget/TextView;

.field private final clickthroughText:Landroid/widget/TextView;

.field private final listener:Lcom/google/android/youtube/core/player/AdOverlay$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/player/AdOverlay$Listener;)V
    .registers 11
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const v5, -0x333334

    const/4 v4, 0x4

    const/4 v3, -0x2

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object p2, p0, Lcom/google/android/youtube/core/player/AdOverlay;->listener:Lcom/google/android/youtube/core/player/AdOverlay$Listener;

    .line 36
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/youtube/core/player/AdOverlay;->advertisementText:Landroid/widget/TextView;

    .line 37
    iget-object v1, p0, Lcom/google/android/youtube/core/player/AdOverlay;->advertisementText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    iget-object v1, p0, Lcom/google/android/youtube/core/player/AdOverlay;->advertisementText:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 39
    iget-object v1, p0, Lcom/google/android/youtube/core/player/AdOverlay;->advertisementText:Landroid/widget/TextView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 40
    iget-object v1, p0, Lcom/google/android/youtube/core/player/AdOverlay;->advertisementText:Landroid/widget/TextView;

    const v2, 0x7f0b0066

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v1, p0, Lcom/google/android/youtube/core/player/AdOverlay;->advertisementText:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/youtube/core/player/AdOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/youtube/core/player/AdOverlay;->clickthroughText:Landroid/widget/TextView;

    .line 45
    iget-object v1, p0, Lcom/google/android/youtube/core/player/AdOverlay;->clickthroughText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    iget-object v1, p0, Lcom/google/android/youtube/core/player/AdOverlay;->clickthroughText:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 47
    iget-object v1, p0, Lcom/google/android/youtube/core/player/AdOverlay;->clickthroughText:Landroid/widget/TextView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 48
    iget-object v1, p0, Lcom/google/android/youtube/core/player/AdOverlay;->clickthroughText:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/youtube/core/player/AdOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    const/high16 v1, -0x7800

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/player/AdOverlay;->setBackgroundColor(I)V

    .line 52
    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/google/android/youtube/core/player/AdOverlay;->setPadding(IIII)V

    .line 54
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 56
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 57
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/AdOverlay;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    invoke-virtual {p0, p0}, Lcom/google/android/youtube/core/player/AdOverlay;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/AdOverlay;->hide()V

    .line 61
    return-void
.end method


# virtual methods
.method public hide()V
    .registers 2

    .prologue
    .line 71
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/AdOverlay;->setVisibility(I)V

    .line 72
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->listener:Lcom/google/android/youtube/core/player/AdOverlay$Listener;

    if-eqz v0, :cond_9

    .line 76
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->listener:Lcom/google/android/youtube/core/player/AdOverlay$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/AdOverlay$Listener;->onAdClickthrough()V

    .line 78
    :cond_9
    return-void
.end method

.method public setAd(Lcom/google/android/youtube/core/model/VastAd;)V
    .registers 5
    .parameter "ad"

    .prologue
    .line 64
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/AdOverlay;->setVisibility(I)V

    .line 66
    iget-object v1, p0, Lcom/google/android/youtube/core/player/AdOverlay;->clickthroughText:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/google/android/youtube/core/model/VastAd;->clickthroughUri:Landroid/net/Uri;

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/AdOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0067

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_18
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    return-void

    .line 66
    :cond_1c
    const/4 v0, 0x0

    goto :goto_18
.end method
