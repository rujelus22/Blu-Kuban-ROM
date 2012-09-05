.class public Lcom/google/android/finsky/layout/BadgeSection;
.super Landroid/widget/LinearLayout;
.source "BadgeSection.java"


# instance fields
.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

.field private mDocument:Lcom/google/android/finsky/api/model/Document;

.field private mExpansionState:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private mReferrerUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/BadgeSection;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/finsky/layout/BadgeSection;->expand()V

    return-void
.end method

.method private createOverviewRow()V
    .registers 3

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BadgeSection;->removeAllViews()V

    .line 83
    invoke-direct {p0}, Lcom/google/android/finsky/layout/BadgeSection;->createPrimaryBadgeRow()Lcom/google/android/finsky/layout/BadgeRow;

    move-result-object v0

    .line 84
    .local v0, primaryBadgeRow:Lcom/google/android/finsky/layout/BadgeRow;
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/BadgeSection;->addView(Landroid/view/View;)V

    .line 85
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/finsky/layout/BadgeSection;->mExpansionState:I

    .line 86
    return-void
.end method

.method private createPrimaryBadgeRow()Lcom/google/android/finsky/layout/BadgeRow;
    .registers 13

    .prologue
    const/4 v11, 0x6

    .line 107
    iget-object v1, p0, Lcom/google/android/finsky/layout/BadgeSection;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04000c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/BadgeRow;

    .line 109
    .local v0, result:Lcom/google/android/finsky/layout/BadgeRow;
    iget-object v1, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->hasItemBadges()Z

    move-result v1

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getFirstItemBadge()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    move-result-object v6

    .line 111
    .local v6, primaryBadge:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    :goto_1b
    iget-object v1, p0, Lcom/google/android/finsky/layout/BadgeSection;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v2, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    iget-object v3, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/layout/BadgeSection;->mReferrerUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/finsky/layout/BadgeSection;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/layout/BadgeRow;->setPrimaryBadge(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/DfeToc;ILjava/lang/String;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;)V

    .line 114
    const/4 v8, 0x0

    .line 116
    .local v8, hasExtraBadges:Z
    iget-object v1, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getCreatorBadges()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_37
    :goto_37
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    .line 117
    .local v7, creatorBadge:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    if-eq v7, v6, :cond_37

    .line 120
    iget-object v1, p0, Lcom/google/android/finsky/layout/BadgeSection;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-static {v7, v11}, Lcom/google/android/finsky/utils/BadgeUtils;->getImageUrl(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/layout/BadgeRow;->addExtraBadge(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;)V

    .line 122
    const/4 v8, 0x1

    goto :goto_37

    .line 109
    .end local v6           #primaryBadge:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    .end local v7           #creatorBadge:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    .end local v8           #hasExtraBadges:Z
    .end local v9           #i$:Ljava/util/Iterator;
    :cond_50
    iget-object v1, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getFirstCreatorBadge()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    move-result-object v6

    goto :goto_1b

    .line 126
    .restart local v6       #primaryBadge:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    .restart local v8       #hasExtraBadges:Z
    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_57
    iget-object v1, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getItemBadges()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_61
    :goto_61
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    .line 127
    .local v10, itemBadge:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    if-eq v10, v6, :cond_61

    .line 130
    iget-object v1, p0, Lcom/google/android/finsky/layout/BadgeSection;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-static {v10, v11}, Lcom/google/android/finsky/utils/BadgeUtils;->getImageUrl(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/layout/BadgeRow;->addExtraBadge(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;)V

    .line 132
    const/4 v8, 0x1

    goto :goto_61

    .line 135
    .end local v10           #itemBadge:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    :cond_7a
    if-eqz v8, :cond_84

    .line 136
    new-instance v1, Lcom/google/android/finsky/layout/BadgeSection$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/BadgeSection$1;-><init>(Lcom/google/android/finsky/layout/BadgeSection;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/BadgeRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    :cond_84
    return-object v0
.end method

.method private createSecondaryBadgeRow(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;)Lcom/google/android/finsky/layout/BadgeRow;
    .registers 9
    .parameter "badge"

    .prologue
    .line 148
    iget-object v1, p0, Lcom/google/android/finsky/layout/BadgeSection;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04000c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/BadgeRow;

    .line 150
    .local v0, result:Lcom/google/android/finsky/layout/BadgeRow;
    iget-object v1, p0, Lcom/google/android/finsky/layout/BadgeSection;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v2, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    iget-object v3, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/layout/BadgeSection;->mReferrerUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/finsky/layout/BadgeSection;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/layout/BadgeRow;->setPrimaryBadge(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/DfeToc;ILjava/lang/String;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;)V

    .line 153
    return-object v0
.end method

.method private expand()V
    .registers 7

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BadgeSection;->removeAllViews()V

    .line 92
    iget-object v5, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getCreatorBadges()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    .line 93
    .local v0, creatorBadge:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/BadgeSection;->createSecondaryBadgeRow(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;)Lcom/google/android/finsky/layout/BadgeRow;

    move-result-object v1

    .line 94
    .local v1, creatorRow:Lcom/google/android/finsky/layout/BadgeRow;
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/BadgeSection;->addView(Landroid/view/View;)V

    goto :goto_d

    .line 98
    .end local v0           #creatorBadge:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    .end local v1           #creatorRow:Lcom/google/android/finsky/layout/BadgeRow;
    :cond_21
    iget-object v5, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getItemBadges()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    .line 99
    .local v3, itemBadge:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    invoke-direct {p0, v3}, Lcom/google/android/finsky/layout/BadgeSection;->createSecondaryBadgeRow(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;)Lcom/google/android/finsky/layout/BadgeRow;

    move-result-object v4

    .line 100
    .local v4, itemRow:Lcom/google/android/finsky/layout/BadgeRow;
    invoke-virtual {p0, v4}, Lcom/google/android/finsky/layout/BadgeSection;->addView(Landroid/view/View;)V

    goto :goto_2b

    .line 103
    .end local v3           #itemBadge:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    .end local v4           #itemRow:Lcom/google/android/finsky/layout/BadgeRow;
    :cond_3f
    const/4 v5, 0x2

    iput v5, p0, Lcom/google/android/finsky/layout/BadgeSection;->mExpansionState:I

    .line 104
    return-void
.end method


# virtual methods
.method public configure(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Landroid/os/Bundle;)V
    .registers 10
    .parameter "navigationManager"
    .parameter "dfeToc"
    .parameter "referrerUrl"
    .parameter "doc"
    .parameter "bitmapLoader"
    .parameter "savedState"

    .prologue
    const/16 v2, 0x8

    .line 55
    iput-object p4, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDocument:Lcom/google/android/finsky/api/model/Document;

    .line 56
    iput-object p5, p0, Lcom/google/android/finsky/layout/BadgeSection;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 57
    iput-object p1, p0, Lcom/google/android/finsky/layout/BadgeSection;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 58
    iput-object p2, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    .line 59
    iput-object p3, p0, Lcom/google/android/finsky/layout/BadgeSection;->mReferrerUrl:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_19

    .line 62
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/BadgeSection;->setVisibility(I)V

    .line 78
    :goto_18
    return-void

    .line 66
    :cond_19
    iget-object v0, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->hasCreatorBadges()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->hasItemBadges()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 67
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/BadgeSection;->setVisibility(I)V

    goto :goto_18

    .line 71
    :cond_2d
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BadgeSection;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/BadgeSection;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 72
    const-string v0, ""

    invoke-static {p6, v0}, Lcom/google/android/finsky/utils/ExpandableUtils;->getSavedExpansionState(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/layout/BadgeSection;->mExpansionState:I

    .line 73
    iget v0, p0, Lcom/google/android/finsky/layout/BadgeSection;->mExpansionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_48

    .line 74
    invoke-direct {p0}, Lcom/google/android/finsky/layout/BadgeSection;->expand()V

    goto :goto_18

    .line 76
    :cond_48
    invoke-direct {p0}, Lcom/google/android/finsky/layout/BadgeSection;->createOverviewRow()V

    goto :goto_18
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "bundle"

    .prologue
    .line 157
    const-string v0, ""

    iget v1, p0, Lcom/google/android/finsky/layout/BadgeSection;->mExpansionState:I

    invoke-static {p1, v0, v1}, Lcom/google/android/finsky/utils/ExpandableUtils;->saveExpansionState(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 158
    return-void
.end method
