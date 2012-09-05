.class public Lcom/sec/android/touchwiz/widget/TwWoodTabActivity;
.super Landroid/app/ActivityGroup;
.source "TwWoodTabActivity.java"


# instance fields
.field private mDefaultTab:Ljava/lang/String;

.field private mDefaultTabIndex:I

.field private mTabHost:Lcom/sec/android/touchwiz/widget/TwWoodTabHost;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabActivity;->mDefaultTab:Ljava/lang/String;

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabActivity;->mDefaultTabIndex:I

    .line 36
    return-void
.end method

.method private ensureTabHost()V
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwWoodTabHost;

    if-nez v0, :cond_a

    .line 116
    const v0, 0x203001d

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwWoodTabActivity;->setContentView(I)V

    .line 118
    :cond_a
    return-void
.end method


# virtual methods
.method public getTabHost()Lcom/sec/android/touchwiz/widget/TwWoodTabHost;
    .registers 2

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwWoodTabActivity;->ensureTabHost()V

    .line 139
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwWoodTabHost;

    return-object v0
.end method

.method public getTabWidget()Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwWoodTabHost;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->getTabWidget()Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;

    move-result-object v0

    return-object v0
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .registers 5
    .parameter "childActivity"
    .parameter "title"

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwWoodTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-ne v1, p1, :cond_1b

    .line 125
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwWoodTabHost;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v0

    .line 126
    .local v0, tabView:Landroid/view/View;
    if-eqz v0, :cond_1b

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1b

    .line 127
    check-cast v0, Landroid/widget/TextView;

    .end local v0           #tabView:Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    :cond_1b
    return-void
.end method

.method public onContentChanged()V
    .registers 3

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/ActivityGroup;->onContentChanged()V

    .line 104
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwWoodTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwWoodTabHost;

    .line 106
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwWoodTabHost;

    if-nez v0, :cond_1a

    .line 107
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a TabHost whose id attribute is \'android.R.id.tabhost\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwWoodTabHost;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwWoodTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->setup(Landroid/app/LocalActivityManager;)V

    .line 112
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onPostCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwWoodTabActivity;->ensureTabHost()V

    .line 81
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwWoodTabHost;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->getCurrentTab()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    .line 82
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwWoodTabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->setCurrentTab(I)V

    .line 84
    :cond_15
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "state"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 61
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwWoodTabActivity;->ensureTabHost()V

    .line 62
    const-string v1, "currentTab"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, cur:Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 64
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwWoodTabHost;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 66
    :cond_13
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwWoodTabHost;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->getCurrentTab()I

    move-result v1

    if-gez v1, :cond_26

    .line 67
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabActivity;->mDefaultTab:Ljava/lang/String;

    if-eqz v1, :cond_27

    .line 68
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwWoodTabHost;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabActivity;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 73
    :cond_26
    :goto_26
    return-void

    .line 69
    :cond_27
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabActivity;->mDefaultTabIndex:I

    if-ltz v1, :cond_26

    .line 70
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwWoodTabHost;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabActivity;->mDefaultTabIndex:I

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->setCurrentTab(I)V

    goto :goto_26
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 89
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwWoodTabHost;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, currentTabTag:Ljava/lang/String;
    if-eqz v0, :cond_10

    .line 91
    const-string v1, "currentTab"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_10
    return-void
.end method

.method public setDefaultTab(I)V
    .registers 3
    .parameter "index"

    .prologue
    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabActivity;->mDefaultTab:Ljava/lang/String;

    .line 55
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabActivity;->mDefaultTabIndex:I

    .line 56
    return-void
.end method

.method public setDefaultTab(Ljava/lang/String;)V
    .registers 3
    .parameter "tag"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabActivity;->mDefaultTab:Ljava/lang/String;

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabActivity;->mDefaultTabIndex:I

    .line 46
    return-void
.end method
