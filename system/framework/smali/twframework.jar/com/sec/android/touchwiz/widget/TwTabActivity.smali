.class public Lcom/sec/android/touchwiz/widget/TwTabActivity;
.super Landroid/app/ActivityGroup;
.source "TwTabActivity.java"


# instance fields
.field private mDefaultTab:Ljava/lang/String;

.field private mDefaultTabIndex:I

.field private mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mDefaultTab:Ljava/lang/String;

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mDefaultTabIndex:I

    .line 44
    return-void
.end method

.method private ensureTwTabHost()V
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    if-nez v0, :cond_a

    .line 124
    const v0, 0x2030008

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->setContentView(I)V

    .line 126
    :cond_a
    return-void
.end method


# virtual methods
.method public getTabHost()Lcom/sec/android/touchwiz/widget/TwTabHost;
    .registers 2

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->ensureTwTabHost()V

    .line 147
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    return-object v0
.end method

.method public getTabWidget()Lcom/sec/android/touchwiz/widget/TwTabWidget;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getTabWidget()Lcom/sec/android/touchwiz/widget/TwTabWidget;

    move-result-object v0

    return-object v0
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .registers 5
    .parameter "childActivity"
    .parameter "title"

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-ne v1, p1, :cond_1b

    .line 133
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v0

    .line 134
    .local v0, tabView:Landroid/view/View;
    if-eqz v0, :cond_1b

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1b

    .line 135
    check-cast v0, Landroid/widget/TextView;

    .end local v0           #tabView:Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :cond_1b
    return-void
.end method

.method public onContentChanged()V
    .registers 3

    .prologue
    .line 111
    invoke-super {p0}, Landroid/app/ActivityGroup;->onContentChanged()V

    .line 112
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwTabHost;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    .line 114
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    if-nez v0, :cond_1a

    .line 115
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a TwTabHost whose id attribute is \'android.R.id.TwTabHost\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setup(Landroid/app/LocalActivityManager;)V

    .line 120
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onPostCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->ensureTwTabHost()V

    .line 89
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTab()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    .line 90
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setCurrentTab(I)V

    .line 92
    :cond_15
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "state"

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 69
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->ensureTwTabHost()V

    .line 70
    const-string v1, "currentTab"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, cur:Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 72
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 74
    :cond_13
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTab()I

    move-result v1

    if-gez v1, :cond_26

    .line 75
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mDefaultTab:Ljava/lang/String;

    if-eqz v1, :cond_27

    .line 76
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 81
    :cond_26
    :goto_26
    return-void

    .line 77
    :cond_27
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mDefaultTabIndex:I

    if-ltz v1, :cond_26

    .line 78
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mDefaultTabIndex:I

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setCurrentTab(I)V

    goto :goto_26
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 97
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, currentTabTag:Ljava/lang/String;
    if-eqz v0, :cond_10

    .line 99
    const-string v1, "currentTab"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_10
    return-void
.end method

.method public setDefaultTab(I)V
    .registers 3
    .parameter "index"

    .prologue
    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mDefaultTab:Ljava/lang/String;

    .line 63
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mDefaultTabIndex:I

    .line 64
    return-void
.end method

.method public setDefaultTab(Ljava/lang/String;)V
    .registers 3
    .parameter "tag"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mDefaultTab:Ljava/lang/String;

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mDefaultTabIndex:I

    .line 54
    return-void
.end method
