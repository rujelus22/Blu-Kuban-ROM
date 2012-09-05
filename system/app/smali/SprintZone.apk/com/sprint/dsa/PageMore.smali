.class public Lcom/sprint/dsa/PageMore;
.super Landroid/app/ListActivity;
.source "PageMore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/dsa/PageMore$ContentListAdapter;,
        Lcom/sprint/dsa/PageMore$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SprintZone:PageMore"


# instance fields
.field private mAdapter:Lcom/sprint/dsa/PageMore$ContentListAdapter;

.field private mCategory:Lcom/sprint/dsa/data/CategoryItem;

.field private mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPrefs:Lcom/sprint/dsa/Prefs;

.field private mResources:Lcom/sprint/dsa/res/SzResources;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/sprint/dsa/PageMore;)Lcom/sprint/dsa/data/CategoryItem;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sprint/dsa/PageMore;->mCategory:Lcom/sprint/dsa/data/CategoryItem;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sprint/dsa/PageMore;)Landroid/view/LayoutInflater;
    .registers 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sprint/dsa/PageMore;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private checkInstalled(Lcom/sprint/dsa/data/CategoryItem;)V
    .registers 8
    .parameter "group"

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/sprint/dsa/PageMore;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 86
    .local v1, manager:Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Lcom/sprint/dsa/data/CategoryItem;->getPromos()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_13

    .line 97
    return-void

    .line 86
    :cond_13
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprint/dsa/data/FeatureItem;

    .line 87
    .local v2, promo:Lcom/sprint/dsa/data/FeatureItem;
    invoke-virtual {v2}, Lcom/sprint/dsa/data/FeatureItem;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "app"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 90
    :try_start_25
    invoke-virtual {v2}, Lcom/sprint/dsa/data/FeatureItem;->getUri()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 91
    .local v0, info:Landroid/content/pm/PackageInfo;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/sprint/dsa/data/FeatureItem;->setInstalled(Z)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_32} :catch_33

    goto :goto_c

    .line 92
    .end local v0           #info:Landroid/content/pm/PackageInfo;
    :catch_33
    move-exception v4

    goto :goto_c
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .registers 3

    .prologue
    .line 217
    iget-object v0, p0, Lcom/sprint/dsa/PageMore;->mResources:Lcom/sprint/dsa/res/SzResources;

    if-nez v0, :cond_f

    new-instance v0, Lcom/sprint/dsa/res/SzResources;

    invoke-super {p0}, Landroid/app/ListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sprint/dsa/res/SzResources;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/sprint/dsa/PageMore;->mResources:Lcom/sprint/dsa/res/SzResources;

    .line 218
    :cond_f
    iget-object v0, p0, Lcom/sprint/dsa/PageMore;->mResources:Lcom/sprint/dsa/res/SzResources;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 42
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0, v9}, Lcom/sprint/dsa/PageMore;->requestWindowFeature(I)Z

    .line 46
    new-instance v6, Lcom/sprint/dsa/Prefs;

    invoke-direct {v6, p0}, Lcom/sprint/dsa/Prefs;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/sprint/dsa/PageMore;->mPrefs:Lcom/sprint/dsa/Prefs;

    .line 50
    :try_start_f
    iget-object v6, p0, Lcom/sprint/dsa/PageMore;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    if-nez v6, :cond_1a

    new-instance v6, Lcom/sprint/dsa/data/DbAdapter;

    invoke-direct {v6, p0}, Lcom/sprint/dsa/data/DbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/sprint/dsa/PageMore;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    .line 51
    :cond_1a
    iget-object v6, p0, Lcom/sprint/dsa/PageMore;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    invoke-virtual {v6}, Lcom/sprint/dsa/data/DbAdapter;->isOpen()Z

    move-result v6

    if-nez v6, :cond_27

    iget-object v6, p0, Lcom/sprint/dsa/PageMore;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    invoke-virtual {v6}, Lcom/sprint/dsa/data/DbAdapter;->open()Lcom/sprint/dsa/data/DbAdapter;
    :try_end_27
    .catch Landroid/database/SQLException; {:try_start_f .. :try_end_27} :catch_82

    .line 56
    :cond_27
    :goto_27
    invoke-virtual {p0}, Lcom/sprint/dsa/PageMore;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 57
    .local v1, extras:Landroid/os/Bundle;
    const-string v6, "id"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, groupId:Ljava/lang/String;
    const-string v6, "title"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, groupTitle:Ljava/lang/String;
    const-string v6, "SPRINT_ZONE_PAGE"

    invoke-virtual {v1, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 61
    .local v5, pageId:I
    invoke-virtual {p0, v3}, Lcom/sprint/dsa/PageMore;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    const/4 v4, 0x0

    .line 65
    .local v4, packId:Ljava/lang/String;
    iget-object v6, p0, Lcom/sprint/dsa/PageMore;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    invoke-virtual {v6, v5, v4}, Lcom/sprint/dsa/data/DbAdapter;->getPageContent(ILjava/lang/String;)Lcom/sprint/dsa/data/PageContent;

    move-result-object v0

    .line 66
    .local v0, allPromos:Lcom/sprint/dsa/data/PageContent;
    invoke-virtual {v0, v2}, Lcom/sprint/dsa/data/PageContent;->getCategory(Ljava/lang/String;)Lcom/sprint/dsa/data/CategoryItem;

    move-result-object v6

    iput-object v6, p0, Lcom/sprint/dsa/PageMore;->mCategory:Lcom/sprint/dsa/data/CategoryItem;

    .line 70
    iget-object v6, p0, Lcom/sprint/dsa/PageMore;->mCategory:Lcom/sprint/dsa/data/CategoryItem;

    invoke-direct {p0, v6}, Lcom/sprint/dsa/PageMore;->checkInstalled(Lcom/sprint/dsa/data/CategoryItem;)V

    .line 73
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/sprint/dsa/PageMore;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    iput-object v6, p0, Lcom/sprint/dsa/PageMore;->mInflater:Landroid/view/LayoutInflater;

    .line 75
    new-instance v6, Lcom/sprint/dsa/PageMore$ContentListAdapter;

    invoke-direct {v6, p0}, Lcom/sprint/dsa/PageMore$ContentListAdapter;-><init>(Lcom/sprint/dsa/PageMore;)V

    iput-object v6, p0, Lcom/sprint/dsa/PageMore;->mAdapter:Lcom/sprint/dsa/PageMore$ContentListAdapter;

    .line 76
    iget-object v6, p0, Lcom/sprint/dsa/PageMore;->mAdapter:Lcom/sprint/dsa/PageMore$ContentListAdapter;

    invoke-virtual {p0, v6}, Lcom/sprint/dsa/PageMore;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    invoke-virtual {p0}, Lcom/sprint/dsa/PageMore;->getListView()Landroid/widget/ListView;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 78
    invoke-virtual {p0}, Lcom/sprint/dsa/PageMore;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 80
    const v6, 0x7f020014

    invoke-virtual {p0, v9, v6}, Lcom/sprint/dsa/PageMore;->setFeatureDrawableResource(II)V

    .line 81
    return-void

    .line 52
    .end local v0           #allPromos:Lcom/sprint/dsa/data/PageContent;
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v2           #groupId:Ljava/lang/String;
    .end local v3           #groupTitle:Ljava/lang/String;
    .end local v4           #packId:Ljava/lang/String;
    .end local v5           #pageId:I
    :catch_82
    move-exception v6

    goto :goto_27
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 11
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 118
    iget-object v1, p0, Lcom/sprint/dsa/PageMore;->mCategory:Lcom/sprint/dsa/data/CategoryItem;

    invoke-virtual {v1, p3}, Lcom/sprint/dsa/data/CategoryItem;->getPromo(I)Lcom/sprint/dsa/data/FeatureItem;

    move-result-object v0

    .line 119
    .local v0, item:Lcom/sprint/dsa/data/FeatureItem;
    if-nez v0, :cond_9

    .line 128
    :goto_8
    return-void

    .line 125
    :cond_9
    iget-object v1, p0, Lcom/sprint/dsa/PageMore;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    invoke-virtual {v0}, Lcom/sprint/dsa/data/FeatureItem;->getCampaign()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, p3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sprint/dsa/Reporting;->reportPromoClick(Lcom/sprint/dsa/data/DbAdapter;Ljava/lang/String;I)V

    .line 127
    invoke-virtual {v0}, Lcom/sprint/dsa/data/FeatureItem;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sprint/dsa/data/FeatureItem;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sprint/dsa/data/FeatureItem;->getExtra()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Lcom/sprint/dsa/Action;->doAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_8
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 111
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 113
    iget-object v0, p0, Lcom/sprint/dsa/PageMore;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    invoke-virtual {v0}, Lcom/sprint/dsa/data/DbAdapter;->cleanup()V

    .line 114
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 104
    iget-object v0, p0, Lcom/sprint/dsa/PageMore;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    if-nez v0, :cond_e

    new-instance v0, Lcom/sprint/dsa/data/DbAdapter;

    invoke-direct {v0, p0}, Lcom/sprint/dsa/data/DbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sprint/dsa/PageMore;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    .line 105
    :cond_e
    iget-object v0, p0, Lcom/sprint/dsa/PageMore;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    invoke-virtual {v0}, Lcom/sprint/dsa/data/DbAdapter;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/sprint/dsa/PageMore;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    invoke-virtual {v0}, Lcom/sprint/dsa/data/DbAdapter;->open()Lcom/sprint/dsa/data/DbAdapter;

    .line 106
    :cond_1b
    return-void
.end method
