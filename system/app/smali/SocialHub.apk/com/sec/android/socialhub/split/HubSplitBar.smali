.class public Lcom/sec/android/socialhub/split/HubSplitBar;
.super Landroid/widget/LinearLayout;
.source "HubSplitBar.java"

# interfaces
.implements Lcom/sec/android/socialhub/parent/ISocialHubListView;


# instance fields
.field private mSplitBar:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/split/HubSplitBar;->mSplitBar:Landroid/widget/ImageView;

    .line 22
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/split/HubSplitBar;->mSplitBar:Landroid/widget/ImageView;

    .line 23
    iget-object v0, p0, Lcom/sec/android/socialhub/split/HubSplitBar;->mSplitBar:Landroid/widget/ImageView;

    const v1, 0x7f020157

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 25
    iget-object v0, p0, Lcom/sec/android/socialhub/split/HubSplitBar;->mSplitBar:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/socialhub/split/HubSplitBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 1

    .prologue
    .line 70
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 58
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 46
    return-void
.end method

.method public onRefresh()V
    .registers 1

    .prologue
    .line 52
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 40
    return-void
.end method

.method public requestRefresh()V
    .registers 1

    .prologue
    .line 112
    return-void
.end method

.method public setQueryBuilder(Lcom/sec/android/socialhub/SocialHubQueryBuilder;)V
    .registers 2
    .parameter "builder"

    .prologue
    .line 106
    return-void
.end method

.method public setSelected(Z)V
    .registers 4
    .parameter "bPress"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/android/socialhub/split/HubSplitBar;->mSplitBar:Landroid/widget/ImageView;

    if-eqz v0, :cond_e

    .line 32
    iget-object v1, p0, Lcom/sec/android/socialhub/split/HubSplitBar;->mSplitBar:Landroid/widget/ImageView;

    if-eqz p1, :cond_f

    const v0, 0x7f02015a

    :goto_b
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 34
    :cond_e
    return-void

    .line 32
    :cond_f
    const v0, 0x7f020157

    goto :goto_b
.end method

.method public startQuery()V
    .registers 1

    .prologue
    .line 64
    return-void
.end method
