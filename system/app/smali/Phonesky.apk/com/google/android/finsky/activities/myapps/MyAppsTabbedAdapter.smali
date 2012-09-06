.class public Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "MyAppsTabbedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;
    }
.end annotation


# instance fields
.field private final mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private final mContext:Landroid/content/Context;

.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private final mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

.field private final mFragment:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

.field private final mHasSubscriptions:Z

.field private final mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field protected final mTabDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabTitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/utils/BitmapLoader;ZLandroid/os/Bundle;Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)V
    .registers 10
    .parameter "context"
    .parameter "navManager"
    .parameter "dfeApi"
    .parameter "dfeToc"
    .parameter "loader"
    .parameter "enableSubscriptions"
    .parameter "tabRestoreState"
    .parameter "fragment"

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 36
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    .line 76
    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 78
    iput-object p5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 79
    iput-object p3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 80
    iput-object p4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    .line 81
    iput-boolean p6, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mHasSubscriptions:Z

    .line 82
    iput-object p8, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mFragment:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    .line 84
    invoke-direct {p0, p7}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->generateTabList(Landroid/os/Bundle;)V

    .line 85
    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->getTitles()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabTitles:Ljava/util/List;

    .line 86
    return-void
.end method

.method private generateTabList(Landroid/os/Bundle;)V
    .registers 9
    .parameter "restoreBundle"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 230
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->restoreScrollPositions(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v2

    .line 231
    .local v2, scrollPositions:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 233
    iget-boolean v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mHasSubscriptions:Z

    if-eqz v4, :cond_19

    .line 234
    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    new-instance v5, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;

    invoke-direct {v5, v3}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_19
    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    new-instance v5, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;

    invoke-direct {v5, v1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    new-instance v5, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    if-eqz v2, :cond_5b

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_5b

    .line 243
    .local v1, restoreScrollPositions:Z
    :goto_3c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3d
    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5d

    .line 244
    if-eqz v1, :cond_58

    .line 245
    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    #setter for: Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->tabBundle:Landroid/os/Bundle;
    invoke-static {v3, v4}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->access$002(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 243
    :cond_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .end local v0           #i:I
    .end local v1           #restoreScrollPositions:Z
    :cond_5b
    move v1, v3

    .line 241
    goto :goto_3c

    .line 248
    .restart local v0       #i:I
    .restart local v1       #restoreScrollPositions:Z
    :cond_5d
    return-void
.end method

.method private getTabInstanceStates()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 117
    :cond_c
    const/4 v0, 0x0

    .line 127
    :cond_d
    return-object v0

    .line 119
    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v0, bundles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;

    .line 121
    .local v2, tabData:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;
    iget-object v3, v2, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->slidingPanelTab:Lcom/google/android/finsky/activities/ViewPagerTab;

    if-eqz v3, :cond_33

    .line 122
    iget-object v3, v2, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->slidingPanelTab:Lcom/google/android/finsky/activities/ViewPagerTab;

    invoke-interface {v3}, Lcom/google/android/finsky/activities/ViewPagerTab;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 124
    :cond_33
    #getter for: Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->tabBundle:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->access$000(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19
.end method

.method private getTitles()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 184
    .local v0, titles:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mHasSubscriptions:Z

    if-eqz v1, :cond_18

    .line 185
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f070252

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_18
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f070250

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f070251

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    return-object v0
.end method

.method private restoreScrollPositions(Landroid/os/Bundle;)Ljava/util/List;
    .registers 4
    .parameter "bundle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    const/4 v0, 0x0

    .line 252
    .local v0, scrollPositions:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    if-eqz p1, :cond_11

    const-string v1, "MyAppsTabbedAdapter.TabParcels"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 253
    const-string v1, "MyAppsTabbedAdapter.TabParcels"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 255
    :cond_11
    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 7
    .parameter "viewPager"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 90
    move-object v0, p3

    check-cast v0, Lcom/google/android/finsky/activities/ViewPagerTab;

    .line 92
    .local v0, tab:Lcom/google/android/finsky/activities/ViewPagerTab;
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Lcom/google/android/finsky/activities/ViewPagerTab;->getView(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 93
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;

    .line 96
    .local v1, tabType:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;
    iget-object v2, v1, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->slidingPanelTab:Lcom/google/android/finsky/activities/ViewPagerTab;

    invoke-interface {v2}, Lcom/google/android/finsky/activities/ViewPagerTab;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v2

    #setter for: Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->tabBundle:Landroid/os/Bundle;
    invoke-static {v1, v2}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->access$002(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 98
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->slidingPanelTab:Lcom/google/android/finsky/activities/ViewPagerTab;

    .line 100
    invoke-interface {v0}, Lcom/google/android/finsky/activities/ViewPagerTab;->onDestroy()V

    .line 101
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .registers 2
    .parameter "viewPager"

    .prologue
    .line 224
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mHasSubscriptions:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_5
    add-int/lit8 v0, v0, 0x2

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public bridge synthetic getPageTitle(I)Ljava/lang/CharSequence;
    .registers 3
    .parameter "x0"

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->getPageTitle(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabTitles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTabType(I)I
    .registers 3
    .parameter "tabIndex"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;

    iget v0, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->type:I

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 12
    .parameter "viewPager"
    .parameter "position"

    .prologue
    .line 156
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;

    .line 157
    .local v8, tabType:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;
    iget-object v0, v8, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->slidingPanelTab:Lcom/google/android/finsky/activities/ViewPagerTab;

    .line 158
    .local v0, tab:Lcom/google/android/finsky/activities/ViewPagerTab;
    if-nez v0, :cond_18

    .line 159
    iget v1, v8, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->type:I

    packed-switch v1, :pswitch_data_64

    .line 172
    :goto_11
    #getter for: Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->tabBundle:Landroid/os/Bundle;
    invoke-static {v8}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->access$000(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/activities/ViewPagerTab;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 174
    :cond_18
    iput-object v0, v8, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->slidingPanelTab:Lcom/google/android/finsky/activities/ViewPagerTab;

    .line 175
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/google/android/finsky/activities/ViewPagerTab;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 176
    return-object v0

    .line 161
    :pswitch_23
    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;

    .end local v0           #tab:Lcom/google/android/finsky/activities/ViewPagerTab;
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mFragment:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;-><init>(Landroid/content/Context;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;)V

    .line 162
    .restart local v0       #tab:Lcom/google/android/finsky/activities/ViewPagerTab;
    goto :goto_11

    .line 164
    :pswitch_31
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v2}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v7

    .line 166
    .local v7, library:Lcom/google/android/finsky/library/AccountLibrary;
    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;

    .end local v0           #tab:Lcom/google/android/finsky/activities/ViewPagerTab;
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mFragment:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    iget-object v6, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/AccountLibrary;)V

    .line 168
    .restart local v0       #tab:Lcom/google/android/finsky/activities/ViewPagerTab;
    goto :goto_11

    .line 170
    .end local v7           #library:Lcom/google/android/finsky/library/AccountLibrary;
    :pswitch_55
    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;

    .end local v0           #tab:Lcom/google/android/finsky/activities/ViewPagerTab;
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mFragment:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;-><init>(Landroid/content/Context;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;)V

    .restart local v0       #tab:Lcom/google/android/finsky/activities/ViewPagerTab;
    goto :goto_11

    .line 159
    nop

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_55
        :pswitch_23
        :pswitch_31
    .end packed-switch
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4
    .parameter "view"
    .parameter "object"

    .prologue
    .line 208
    check-cast p2, Lcom/google/android/finsky/activities/ViewPagerTab;

    .end local p2
    const/4 v0, 0x3

    invoke-interface {p2, v0}, Lcom/google/android/finsky/activities/ViewPagerTab;->getView(I)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onPageSelected(I)V
    .registers 5
    .parameter "position"

    .prologue
    .line 199
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 200
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;

    iget-object v1, v1, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->slidingPanelTab:Lcom/google/android/finsky/activities/ViewPagerTab;

    if-eqz v1, :cond_25

    .line 201
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;

    iget-object v2, v1, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->slidingPanelTab:Lcom/google/android/finsky/activities/ViewPagerTab;

    if-ne v0, p1, :cond_28

    const/4 v1, 0x1

    :goto_22
    invoke-interface {v2, v1}, Lcom/google/android/finsky/activities/ViewPagerTab;->setTabSelected(Z)V

    .line 199
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 201
    :cond_28
    const/4 v1, 0x0

    goto :goto_22

    .line 204
    :cond_2a
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "bundle"

    .prologue
    .line 105
    const-string v0, "MyAppsTabbedAdapter.TabParcels"

    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->getTabInstanceStates()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 106
    return-void
.end method

.method public refreshAllTabs()V
    .registers 4

    .prologue
    .line 136
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1f

    .line 137
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;

    iget-object v1, v2, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->slidingPanelTab:Lcom/google/android/finsky/activities/ViewPagerTab;

    .line 138
    .local v1, tab:Lcom/google/android/finsky/activities/ViewPagerTab;
    instance-of v2, v1, Lcom/google/android/finsky/activities/myapps/MyAppsTab;

    if-eqz v2, :cond_1c

    .line 139
    check-cast v1, Lcom/google/android/finsky/activities/myapps/MyAppsTab;

    .end local v1           #tab:Lcom/google/android/finsky/activities/ViewPagerTab;
    invoke-virtual {v1}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->requestData()V

    .line 136
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 142
    :cond_1f
    return-void
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .registers 3
    .parameter "state"
    .parameter "loader"

    .prologue
    .line 215
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .registers 2

    .prologue
    .line 218
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .registers 2
    .parameter "container"

    .prologue
    .line 221
    return-void
.end method
