.class public Lcom/sec/android/socialhub/view/NoAccountView;
.super Landroid/widget/LinearLayout;
.source "NoAccountView.java"

# interfaces
.implements Lcom/sec/android/socialhub/parent/ISocialHubListView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/view/NoAccountView$AddAccountViewWrapper;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mViewWrapper:Lcom/sec/android/socialhub/view/NoAccountView$AddAccountViewWrapper;

.field params:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 7
    .parameter "context"
    .parameter "resource"

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object v3, p0, Lcom/sec/android/socialhub/view/NoAccountView;->mContext:Landroid/content/Context;

    .line 25
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/sec/android/socialhub/view/NoAccountView;->params:Landroid/widget/LinearLayout$LayoutParams;

    .line 27
    iput-object v3, p0, Lcom/sec/android/socialhub/view/NoAccountView;->mViewWrapper:Lcom/sec/android/socialhub/view/NoAccountView$AddAccountViewWrapper;

    .line 38
    iput-object p1, p0, Lcom/sec/android/socialhub/view/NoAccountView;->mContext:Landroid/content/Context;

    .line 40
    iget-object v1, p0, Lcom/sec/android/socialhub/view/NoAccountView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03003f

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 42
    .local v0, layout:Landroid/widget/LinearLayout;
    new-instance v1, Lcom/sec/android/socialhub/view/NoAccountView$AddAccountViewWrapper;

    invoke-direct {v1, p0, v0, p2}, Lcom/sec/android/socialhub/view/NoAccountView$AddAccountViewWrapper;-><init>(Lcom/sec/android/socialhub/view/NoAccountView;Landroid/widget/LinearLayout;I)V

    iput-object v1, p0, Lcom/sec/android/socialhub/view/NoAccountView;->mViewWrapper:Lcom/sec/android/socialhub/view/NoAccountView$AddAccountViewWrapper;

    .line 44
    iget-object v1, p0, Lcom/sec/android/socialhub/view/NoAccountView;->mViewWrapper:Lcom/sec/android/socialhub/view/NoAccountView$AddAccountViewWrapper;

    new-instance v2, Lcom/sec/android/socialhub/view/NoAccountView$1;

    invoke-direct {v2, p0}, Lcom/sec/android/socialhub/view/NoAccountView$1;-><init>(Lcom/sec/android/socialhub/view/NoAccountView;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/socialhub/view/NoAccountView$AddAccountViewWrapper;->setListner(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v1, p0, Lcom/sec/android/socialhub/view/NoAccountView;->params:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/socialhub/view/NoAccountView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/view/NoAccountView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/socialhub/view/NoAccountView;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sec/android/socialhub/view/NoAccountView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    if-eqz v0, :cond_d

    .line 87
    iget-object v0, p0, Lcom/sec/android/socialhub/view/NoAccountView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->backPressed()V

    .line 89
    :cond_d
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/NoAccountView;->removeAllViews()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/view/NoAccountView;->params:Landroid/widget/LinearLayout$LayoutParams;

    .line 76
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 64
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/view/NoAccountView;->setVisibility(I)V

    .line 65
    return-void
.end method

.method public onRefresh()V
    .registers 1

    .prologue
    .line 70
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/view/NoAccountView;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/sec/android/socialhub/view/NoAccountView;->mContext:Landroid/content/Context;

    const/4 v1, 0x5

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;->setInt(Landroid/content/Context;II)Z

    .line 60
    return-void
.end method

.method public requestRefresh()V
    .registers 1

    .prologue
    .line 164
    return-void
.end method

.method public setQueryBuilder(Lcom/sec/android/socialhub/SocialHubQueryBuilder;)V
    .registers 2
    .parameter "builder"

    .prologue
    .line 153
    return-void
.end method

.method public startQuery()V
    .registers 1

    .prologue
    .line 81
    return-void
.end method
