.class Lcom/google/android/youtube/core/ui/StatusHelper$ViewStatusHelper;
.super Lcom/google/android/youtube/core/ui/StatusHelper;
.source "StatusHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/ui/StatusHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewStatusHelper"
.end annotation


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/google/android/youtube/core/ui/StatusHelper$OnRetryListener;)V
    .registers 5
    .parameter "context"
    .parameter "statusView"
    .parameter "retryListener"

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/google/android/youtube/core/ui/StatusHelper;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/ui/StatusHelper$OnRetryListener;Lcom/google/android/youtube/core/ui/StatusHelper$1;)V

    .line 170
    iput-object p2, p0, Lcom/google/android/youtube/core/ui/StatusHelper$ViewStatusHelper;->statusView:Landroid/view/View;

    .line 171
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/google/android/youtube/core/ui/StatusHelper$OnRetryListener;Lcom/google/android/youtube/core/ui/StatusHelper$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 167
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/youtube/core/ui/StatusHelper$ViewStatusHelper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/google/android/youtube/core/ui/StatusHelper$OnRetryListener;)V

    return-void
.end method


# virtual methods
.method protected ensureHidden()V
    .registers 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper$ViewStatusHelper;->statusView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 181
    return-void
.end method

.method protected ensureVisible()V
    .registers 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper$ViewStatusHelper;->statusView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    return-void
.end method

.method public init()V
    .registers 1

    .prologue
    .line 190
    invoke-super {p0}, Lcom/google/android/youtube/core/ui/StatusHelper;->init()V

    .line 191
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/StatusHelper$ViewStatusHelper;->ensureHidden()V

    .line 192
    return-void
.end method
