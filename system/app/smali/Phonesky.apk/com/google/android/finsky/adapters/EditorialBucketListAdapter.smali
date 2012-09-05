.class public Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;
.super Lcom/google/android/finsky/adapters/BucketedListAdapter;
.source "EditorialBucketListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$1;,
        Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;
    }
.end annotation


# instance fields
.field private final mBucket:Lcom/google/android/finsky/model/Bucket;

.field mDetailsTextViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

.field private final mInitialRestoreState:Landroid/os/Bundle;

.field private final mUseWideHeaderImage:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/model/Bucket;Lcom/google/android/finsky/api/model/BucketedList;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 20
    .parameter "context"
    .parameter "navManager"
    .parameter "loader"
    .parameter "toc"
    .parameter "bucket"
    .parameter
    .parameter "currentPageUrl"
    .parameter "savedState"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/finsky/navigationmanager/NavigationManager;",
            "Lcom/google/android/finsky/utils/BitmapLoader;",
            "Lcom/google/android/finsky/api/model/DfeToc;",
            "Lcom/google/android/finsky/model/Bucket;",
            "Lcom/google/android/finsky/api/model/BucketedList",
            "<*>;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    .local p6, listData:Lcom/google/android/finsky/api/model/BucketedList;,"Lcom/google/android/finsky/api/model/BucketedList<*>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    const/4 v8, 0x1

    const v9, 0x7f04005f

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p6

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/google/android/finsky/adapters/BucketedListAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/model/BucketedList;IIILjava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mUseWideHeaderImage:Z

    .line 54
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mBucket:Lcom/google/android/finsky/model/Bucket;

    .line 55
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mInitialRestoreState:Landroid/os/Bundle;

    .line 56
    return-void
.end method

.method private bindEditorialDocument(Lcom/google/android/finsky/api/model/Document;Landroid/view/ViewGroup;I)V
    .registers 11
    .parameter "doc"
    .parameter "docEntry"
    .parameter "itemIndex"

    .prologue
    const/4 v2, 0x1

    .line 147
    invoke-direct {p0, p2}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->getConvertView(Landroid/view/ViewGroup;)Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;

    move-result-object v0

    .line 149
    .local v0, holder:Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;
    iget-object v3, v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;->editorialEntry:Lcom/google/android/finsky/layout/EditorialBucketEntry;

    iget-object v4, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v5, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mCurrentPageUrl:Ljava/lang/String;

    invoke-virtual {v4, p1, v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getClickListener(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/layout/EditorialBucketEntry;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v3, v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;->editorialContent:Lcom/google/android/finsky/layout/EditorialBucketContent;

    iget-object v4, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v5, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v6, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mCurrentPageUrl:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, p1, v6}, Lcom/google/android/finsky/layout/EditorialBucketContent;->setDocument(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, title:Ljava/lang/String;
    iget-object v3, v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;->editorialContent:Lcom/google/android/finsky/layout/EditorialBucketContent;

    invoke-virtual {v3, v1}, Lcom/google/android/finsky/layout/EditorialBucketContent;->setTitle(Ljava/lang/String;)V

    .line 157
    iget-object v3, v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;->editorialContent:Lcom/google/android/finsky/layout/EditorialBucketContent;

    iget-object v4, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mTitleForeground:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/layout/EditorialBucketContent;->setTitleColor(Landroid/content/res/ColorStateList;)V

    .line 158
    iget v3, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mColumnCount:I

    if-le v3, v2, :cond_3e

    add-int/lit8 v3, p3, 0x1

    iget v4, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mColumnCount:I

    rem-int/2addr v3, v4

    if-nez v3, :cond_3e

    .line 159
    .local v2, toShowLeftSeparator:Z
    :goto_38
    iget-object v3, v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;->editorialEntry:Lcom/google/android/finsky/layout/EditorialBucketEntry;

    invoke-virtual {v3, v2}, Lcom/google/android/finsky/layout/EditorialBucketEntry;->setLeftSeparatorVisibility(Z)V

    .line 160
    return-void

    .line 158
    .end local v2           #toShowLeftSeparator:Z
    :cond_3e
    const/4 v2, 0x0

    goto :goto_38
.end method

.method private bindMockEditorialDocument(Lcom/google/android/finsky/model/Bucket;Landroid/view/ViewGroup;)V
    .registers 6
    .parameter "bucket"
    .parameter "view"

    .prologue
    .line 138
    invoke-direct {p0, p2}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->getConvertView(Landroid/view/ViewGroup;)Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;

    move-result-object v0

    .line 139
    .local v0, holder:Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;
    iget-object v1, v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;->editorialContent:Lcom/google/android/finsky/layout/EditorialBucketContent;

    invoke-virtual {p1}, Lcom/google/android/finsky/model/Bucket;->getBackend()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/EditorialBucketContent;->setMockDocument(I)V

    .line 140
    iget-object v1, v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;->editorialContent:Lcom/google/android/finsky/layout/EditorialBucketContent;

    iget v2, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mLoadingForeground:I

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/EditorialBucketContent;->setTitleColor(I)V

    .line 141
    return-void
.end method

.method private getConvertView(Landroid/view/ViewGroup;)Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;
    .registers 4
    .parameter "docEntry"

    .prologue
    .line 168
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_25

    .line 169
    new-instance v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;-><init>(Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$1;)V

    .line 170
    .local v0, holder:Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;
    const v1, 0x7f0800f0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/EditorialBucketEntry;

    iput-object v1, v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;->editorialEntry:Lcom/google/android/finsky/layout/EditorialBucketEntry;

    .line 172
    const v1, 0x7f0800f1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/EditorialBucketContent;

    iput-object v1, v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;->editorialContent:Lcom/google/android/finsky/layout/EditorialBucketContent;

    .line 175
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 177
    .end local v0           #holder:Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;
    :cond_25
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;

    return-object v1
.end method

.method private getEditorialHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 91
    iget-object v0, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mDetailsTextViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    if-eqz v0, :cond_7

    move-object v7, p1

    .line 117
    .end local p1
    .local v7, convertView:Landroid/view/View;
    :goto_6
    return-object v7

    .line 95
    .end local v7           #convertView:Landroid/view/View;
    .restart local p1
    :cond_7
    const v0, 0x7f040063

    invoke-virtual {p0, v0, p2, v5}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 97
    const v0, 0x7f0800f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/layout/DescriptionEditorialHeader;

    .line 99
    .local v6, antennaEpisodeHeader:Lcom/google/android/finsky/layout/DescriptionEditorialHeader;
    iget-object v0, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mBucket:Lcom/google/android/finsky/model/Bucket;

    invoke-virtual {v0}, Lcom/google/android/finsky/model/Bucket;->getEditorialSeriesContainer()Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;

    move-result-object v9

    .line 100
    .local v9, templateData:Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;
    invoke-virtual {v9}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->getEpisodeTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->getEpisodeSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/google/android/finsky/layout/DescriptionEditorialHeader;->showEpisodeInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const v0, 0x7f0800f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/finsky/layout/HeroGraphicView;

    .line 105
    .local v8, headerHero:Lcom/google/android/finsky/layout/HeroGraphicView;
    iget-object v0, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mBucket:Lcom/google/android/finsky/model/Bucket;

    invoke-virtual {v1}, Lcom/google/android/finsky/model/Bucket;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mUseWideHeaderImage:Z

    invoke-static {v1, v2, v5, v5}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getPageHeaderBannerUrlFromDocument(Lcom/google/android/finsky/api/model/Document;ZII)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v8, v0, v1, v2}, Lcom/google/android/finsky/layout/HeroGraphicView;->load(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;Z)V

    .line 109
    new-instance v0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mDetailsTextViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    .line 110
    iget-object v0, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mDetailsTextViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v10, 0x7f0c0013

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;IZ)V

    .line 113
    iget-object v0, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mDetailsTextViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    const v1, 0x7f0800d7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mBucket:Lcom/google/android/finsky/model/Bucket;

    invoke-virtual {v2}, Lcom/google/android/finsky/model/Bucket;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v2

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mBucket:Lcom/google/android/finsky/model/Bucket;

    invoke-virtual {v4}, Lcom/google/android/finsky/model/Bucket;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDescription()Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mInitialRestoreState:Landroid/os/Bundle;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;ILjava/lang/CharSequence;Landroid/os/Bundle;)V

    .line 116
    iget-object v0, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mDetailsTextViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->hideHeader()V

    move-object v7, p1

    .line 117
    .end local p1
    .restart local v7       #convertView:Landroid/view/View;
    goto :goto_6
.end method


# virtual methods
.method protected bindRowEntry(Lcom/google/android/finsky/model/Bucket;Lcom/google/android/finsky/api/model/Document;ILandroid/view/ViewGroup;)V
    .registers 7
    .parameter "bucket"
    .parameter "document"
    .parameter "itemIndex"
    .parameter "docEntry"

    .prologue
    const/4 v1, 0x0

    .line 123
    if-nez p2, :cond_17

    .line 125
    iget-object v0, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/BucketedList;->getCount()I

    move-result v0

    if-ge p3, v0, :cond_12

    .line 126
    invoke-virtual {p4, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 127
    invoke-direct {p0, p1, p4}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->bindMockEditorialDocument(Lcom/google/android/finsky/model/Bucket;Landroid/view/ViewGroup;)V

    .line 135
    :goto_11
    return-void

    .line 129
    :cond_12
    const/4 v0, 0x4

    invoke-virtual {p4, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_11

    .line 132
    :cond_17
    invoke-virtual {p4, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 133
    invoke-direct {p0, p2, p4, p3}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->bindEditorialDocument(Lcom/google/android/finsky/api/model/Document;Landroid/view/ViewGroup;I)V

    goto :goto_11
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 86
    invoke-super {p0}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 70
    if-nez p1, :cond_4

    .line 71
    const/4 v0, 0x5

    .line 75
    :goto_3
    return v0

    :cond_4
    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_3
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 65
    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0, p2, p3}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_d
    return-object v0

    .line 62
    :pswitch_e
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->getEditorialHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_d

    .line 60
    nop

    :pswitch_data_14
    .packed-switch 0x5
        :pswitch_e
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 80
    const/4 v0, 0x6

    return v0
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mDetailsTextViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    if-eqz v0, :cond_c

    .line 191
    iget-object v0, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mDetailsTextViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->onDestroyView()V

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mDetailsTextViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    .line 194
    :cond_c
    invoke-super {p0}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->onDestroyView()V

    .line 195
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mDetailsTextViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    if-eqz v0, :cond_9

    .line 184
    iget-object v0, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mDetailsTextViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->saveInstanceState(Landroid/os/Bundle;)V

    .line 186
    :cond_9
    return-void
.end method
