.class public Lcom/google/android/finsky/adapters/SearchAdapter;
.super Lcom/google/android/finsky/adapters/BucketedListAdapter;
.source "SearchAdapter.java"


# instance fields
.field private mDfeSearch:Lcom/google/android/finsky/api/model/DfeSearch;

.field private mSpinner:Landroid/widget/Spinner;

.field private mSpinnerAdapter:Lcom/google/android/finsky/adapters/SearchSpinnerAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/model/DfeSearch;IIILjava/lang/String;)V
    .registers 10
    .parameter "context"
    .parameter "navManager"
    .parameter "loader"
    .parameter "toc"
    .parameter "dfeSearch"
    .parameter "columnCount"
    .parameter "rowCount"
    .parameter "cellLayoutId"
    .parameter "currentPageUrl"

    .prologue
    .line 61
    invoke-direct/range {p0 .. p9}, Lcom/google/android/finsky/adapters/BucketedListAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/model/BucketedList;IIILjava/lang/String;)V

    .line 63
    iput-object p5, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mDfeSearch:Lcom/google/android/finsky/api/model/DfeSearch;

    .line 64
    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/SearchAdapter;->ignoreCustomTiles()V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/adapters/SearchAdapter;)Lcom/google/android/finsky/api/model/DfeSearch;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mDfeSearch:Lcom/google/android/finsky/api/model/DfeSearch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/adapters/SearchAdapter;)Landroid/widget/Spinner;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method private bindSuggestionHeader(Lcom/google/android/finsky/layout/SuggestionBarLayout;)V
    .registers 7
    .parameter "headerView"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 231
    iget-object v2, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mDfeSearch:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeSearch;->getSuggestedQuery()Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, suggestionQuery:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->bind(Ljava/lang/String;)V

    .line 234
    invoke-direct {p0, v1}, Lcom/google/android/finsky/adapters/SearchAdapter;->makeSuggestionClickListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 236
    .local v0, suggestionClickHandler:Landroid/view/View$OnClickListener;
    invoke-virtual {p1, v0}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    if-eqz v0, :cond_1e

    move v2, v3

    :goto_15
    invoke-virtual {p1, v2}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->setClickable(Z)V

    .line 238
    if-eqz v0, :cond_20

    :goto_1a
    invoke-virtual {p1, v3}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->setFocusable(Z)V

    .line 239
    return-void

    :cond_1e
    move v2, v4

    .line 237
    goto :goto_15

    :cond_20
    move v3, v4

    .line 238
    goto :goto_1a
.end method

.method private getSuggestionHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 254
    if-nez p1, :cond_11

    const v1, 0x7f040102

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2}, Lcom/google/android/finsky/adapters/SearchAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .local v0, headerView:Landroid/view/View;
    :goto_a
    move-object v1, v0

    .line 256
    check-cast v1, Lcom/google/android/finsky/layout/SuggestionBarLayout;

    invoke-direct {p0, v1}, Lcom/google/android/finsky/adapters/SearchAdapter;->bindSuggestionHeader(Lcom/google/android/finsky/layout/SuggestionBarLayout;)V

    .line 257
    return-object v0

    .end local v0           #headerView:Landroid/view/View;
    :cond_11
    move-object v0, p1

    .line 254
    goto :goto_a
.end method

.method private getSwitcherHeader(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    .line 164
    iget-object v6, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mDfeSearch:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/DfeSearch;->getBackendId()I

    move-result v0

    .line 166
    .local v0, backendId:I
    if-nez p1, :cond_18

    .line 170
    iget-object v6, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mDfeSearch:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/DfeSearch;->isAggregateResult()Z

    move-result v6

    if-eqz v6, :cond_9a

    .line 172
    const v6, 0x7f04001d

    invoke-virtual {p0, v6, p2, v8}, Lcom/google/android/finsky/adapters/SearchAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 178
    :cond_18
    :goto_18
    iget-object v6, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mSpinnerAdapter:Lcom/google/android/finsky/adapters/SearchSpinnerAdapter;

    if-nez v6, :cond_2d

    .line 179
    iget-object v6, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mDfeSearch:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/DfeSearch;->getRelatedSearches()Ljava/util/List;

    move-result-object v3

    .line 180
    .local v3, relatedList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;>;"
    new-instance v6, Lcom/google/android/finsky/adapters/SearchSpinnerAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Lcom/google/android/finsky/adapters/SearchSpinnerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v6, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mSpinnerAdapter:Lcom/google/android/finsky/adapters/SearchSpinnerAdapter;

    .line 183
    .end local v3           #relatedList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;>;"
    :cond_2d
    iget-object v6, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mSpinner:Landroid/widget/Spinner;

    if-nez v6, :cond_99

    .line 184
    const v6, 0x7f080059

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mSpinner:Landroid/widget/Spinner;

    .line 185
    iget-object v6, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v8}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 186
    iget-object v6, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mSpinner:Landroid/widget/Spinner;

    iget-object v7, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mSpinnerAdapter:Lcom/google/android/finsky/adapters/SearchSpinnerAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 187
    iget-object v6, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mDfeSearch:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/DfeSearch;->getRelatedSearches()Ljava/util/List;

    move-result-object v4

    .line 188
    .local v4, relatedSearches:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_66

    .line 189
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;

    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->getCurrent()Z

    move-result v6

    if-eqz v6, :cond_a3

    .line 190
    iget-object v6, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 194
    :cond_66
    iget-object v6, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mSpinner:Landroid/widget/Spinner;

    invoke-static {v0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusSpinnerDrawable(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    .line 196
    iget-object v6, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mSpinner:Landroid/widget/Spinner;

    new-instance v7, Lcom/google/android/finsky/adapters/SearchAdapter$2;

    invoke-direct {v7, p0}, Lcom/google/android/finsky/adapters/SearchAdapter$2;-><init>(Lcom/google/android/finsky/adapters/SearchAdapter;)V

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 215
    const v6, 0x7f08005c

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 216
    .local v1, corpusHeaderStrip:Landroid/view/View;
    if-eqz v1, :cond_8b

    .line 217
    iget-object v6, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 221
    :cond_8b
    const v6, 0x7f08005b

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 222
    .local v5, sectionResults:Landroid/view/View;
    if-eqz v5, :cond_99

    .line 223
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 226
    .end local v1           #corpusHeaderStrip:Landroid/view/View;
    .end local v2           #i:I
    .end local v4           #relatedSearches:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;>;"
    .end local v5           #sectionResults:Landroid/view/View;
    :cond_99
    return-object p1

    .line 174
    :cond_9a
    const v6, 0x7f04001c

    invoke-virtual {p0, v6, p2, v8}, Lcom/google/android/finsky/adapters/SearchAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto/16 :goto_18

    .line 188
    .restart local v2       #i:I
    .restart local v4       #relatedSearches:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;>;"
    :cond_a3
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f
.end method

.method private makeSuggestionClickListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .registers 3
    .parameter "suggestionString"

    .prologue
    .line 242
    new-instance v0, Lcom/google/android/finsky/adapters/SearchAdapter$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/adapters/SearchAdapter$3;-><init>(Lcom/google/android/finsky/adapters/SearchAdapter;Ljava/lang/String;)V

    return-object v0
.end method

.method private shouldShowSuggestionHeader()Z
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mDfeSearch:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeSearch;->getSuggestedQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private shouldShowSwitcher()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 150
    iget-object v1, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mDfeSearch:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeSearch;->getBucketCount()I

    move-result v1

    if-eq v1, v0, :cond_11

    iget-object v1, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mDfeSearch:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeSearch;->getBackendId()I

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method protected getBucketHeaderLayoutId(Lcom/google/android/finsky/api/model/Bucket;)I
    .registers 3
    .parameter "bucket"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mDfeSearch:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeSearch;->isAggregateResult()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 157
    const v0, 0x7f04001c

    .line 159
    :goto_b
    return v0

    :cond_c
    const v0, 0x7f04001d

    goto :goto_b
.end method

.method public getCount()I
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 117
    invoke-super {p0}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getCount()I

    move-result v3

    invoke-direct {p0}, Lcom/google/android/finsky/adapters/SearchAdapter;->shouldShowSwitcher()Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v1

    :goto_d
    add-int/2addr v0, v3

    invoke-direct {p0}, Lcom/google/android/finsky/adapters/SearchAdapter;->shouldShowSuggestionHeader()Z

    move-result v3

    if-eqz v3, :cond_18

    :goto_14
    add-int/2addr v0, v1

    return v0

    :cond_16
    move v0, v2

    goto :goto_d

    :cond_18
    move v1, v2

    goto :goto_14
.end method

.method public getItemViewType(I)I
    .registers 8
    .parameter "position"

    .prologue
    const/4 v4, 0x6

    const/4 v1, 0x5

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 87
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/SearchAdapter;->shouldShowSwitcher()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-direct {p0}, Lcom/google/android/finsky/adapters/SearchAdapter;->shouldShowSuggestionHeader()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 88
    if-nez p1, :cond_13

    .line 107
    :cond_12
    :goto_12
    return v1

    .line 90
    :cond_13
    if-ne p1, v2, :cond_1f

    move v1, v4

    .line 91
    goto :goto_12

    .line 93
    :cond_17
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/SearchAdapter;->shouldShowSuggestionHeader()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 94
    if-eqz p1, :cond_12

    .line 104
    :cond_1f
    move v0, p1

    .line 105
    .local v0, offsetPosition:I
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/SearchAdapter;->shouldShowSwitcher()Z

    move-result v1

    if-eqz v1, :cond_3e

    move v1, v2

    :goto_27
    sub-int/2addr v0, v1

    .line 106
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/SearchAdapter;->shouldShowSuggestionHeader()Z

    move-result v1

    if-eqz v1, :cond_40

    :goto_2e
    sub-int/2addr v0, v2

    .line 107
    invoke-super {p0, v0}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getItemViewType(I)I

    move-result v1

    goto :goto_12

    .line 97
    .end local v0           #offsetPosition:I
    :cond_34
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/SearchAdapter;->shouldShowSwitcher()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 98
    if-nez p1, :cond_1f

    move v1, v4

    .line 99
    goto :goto_12

    .restart local v0       #offsetPosition:I
    :cond_3e
    move v1, v3

    .line 105
    goto :goto_27

    :cond_40
    move v2, v3

    .line 106
    goto :goto_2e
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 69
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/SearchAdapter;->getItemViewType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_5c

    .line 75
    move v0, p1

    .line 76
    .local v0, offsetPosition:I
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/SearchAdapter;->shouldShowSwitcher()Z

    move-result v1

    if-eqz v1, :cond_2a

    move v1, v2

    :goto_11
    sub-int/2addr v0, v1

    .line 77
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/SearchAdapter;->shouldShowSuggestionHeader()Z

    move-result v1

    if-eqz v1, :cond_2c

    :goto_18
    sub-int/2addr v0, v2

    .line 78
    if-ltz v0, :cond_2e

    .line 79
    invoke-super {p0, v0, p2, p3}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .end local v0           #offsetPosition:I
    :goto_1f
    return-object v1

    .line 71
    :pswitch_20
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/adapters/SearchAdapter;->getSuggestionHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_1f

    .line 73
    :pswitch_25
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/adapters/SearchAdapter;->getSwitcherHeader(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_1f

    .restart local v0       #offsetPosition:I
    :cond_2a
    move v1, v3

    .line 76
    goto :goto_11

    :cond_2c
    move v2, v3

    .line 77
    goto :goto_18

    .line 81
    :cond_2e
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uncaught view type=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/SearchAdapter;->getItemViewType(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] position=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    nop

    :pswitch_data_5c
    .packed-switch 0x5
        :pswitch_20
        :pswitch_25
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 112
    const/4 v0, 0x7

    return v0
.end method

.method public isEmpty()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 124
    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/SearchAdapter;->getCount()I

    move-result v0

    .line 125
    .local v0, count:I
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/SearchAdapter;->shouldShowSwitcher()Z

    move-result v1

    if-eqz v1, :cond_19

    move v1, v2

    :goto_d
    sub-int/2addr v0, v1

    .line 126
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/SearchAdapter;->shouldShowSuggestionHeader()Z

    move-result v1

    if-eqz v1, :cond_1b

    move v1, v2

    :goto_15
    sub-int/2addr v0, v1

    .line 127
    if-nez v0, :cond_1d

    :goto_18
    return v2

    :cond_19
    move v1, v3

    .line 125
    goto :goto_d

    :cond_1b
    move v1, v3

    .line 126
    goto :goto_15

    :cond_1d
    move v2, v3

    .line 127
    goto :goto_18
.end method

.method protected makeHeaderClickListener(Lcom/google/android/finsky/api/model/Bucket;)Landroid/view/View$OnClickListener;
    .registers 3
    .parameter "bucket"

    .prologue
    .line 133
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Bucket;->getBrowseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 134
    new-instance v0, Lcom/google/android/finsky/adapters/SearchAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/adapters/SearchAdapter$1;-><init>(Lcom/google/android/finsky/adapters/SearchAdapter;Lcom/google/android/finsky/api/model/Bucket;)V

    .line 142
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
