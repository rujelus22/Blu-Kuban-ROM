.class public Lcom/sec/android/socialhub/split/HubNoAccountSelectedView;
.super Landroid/widget/LinearLayout;
.source "HubNoAccountSelectedView.java"

# interfaces
.implements Lcom/sec/android/socialhub/parent/ISocialHubListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/split/HubNoAccountSelectedView;->initalize(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method private initalize(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, -0x1

    .line 27
    const v2, 0x7f030041

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lcom/sec/android/socialhub/split/HubNoAccountSelectedView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 29
    .local v0, empty:Landroid/view/View;
    if-eqz v0, :cond_23

    .line 31
    const v2, 0x7f0b0128

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 32
    .local v1, text:Landroid/widget/TextView;
    const v2, 0x7f080126

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 33
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/socialhub/split/HubNoAccountSelectedView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    .end local v1           #text:Landroid/widget/TextView;
    :goto_22
    return-void

    .line 37
    :cond_23
    const-string v2, "HubNoSelectedView"

    const-string v3, "initalize()"

    const-string v4, "empty view is null!!"

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/socialhub/split/HubNoAccountSelectedView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getCurrentTab()Lcom/sec/android/socialhub/state/tab/TabState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/tab/TabState;->onBackPressed()V

    .line 75
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 63
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 50
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/split/HubNoAccountSelectedView;->setVisibility(I)V

    .line 51
    return-void
.end method

.method public onRefresh()V
    .registers 1

    .prologue
    .line 57
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/split/HubNoAccountSelectedView;->setVisibility(I)V

    .line 45
    return-void
.end method

.method public requestRefresh()V
    .registers 1

    .prologue
    .line 117
    return-void
.end method

.method public setQueryBuilder(Lcom/sec/android/socialhub/SocialHubQueryBuilder;)V
    .registers 2
    .parameter "builder"

    .prologue
    .line 111
    return-void
.end method

.method public startQuery()V
    .registers 1

    .prologue
    .line 69
    return-void
.end method
