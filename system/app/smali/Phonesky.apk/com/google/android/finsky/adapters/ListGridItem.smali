.class public Lcom/google/android/finsky/adapters/ListGridItem;
.super Ljava/lang/Object;
.source "ListGridItem.java"

# interfaces
.implements Lcom/google/android/finsky/adapters/UnevenGridAdapter$UnevenGridItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;
    }
.end annotation


# instance fields
.field private final mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private final mBucket:Lcom/google/android/finsky/model/Bucket;

.field private final mColumns:I

.field private final mContext:Landroid/content/Context;

.field private final mHeight:I

.field private mMaxRowCount:I

.field private final mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private final mReferrerUrl:Ljava/lang/String;

.field private final mRows:I

.field private final mToc:Lcom/google/android/finsky/api/model/DfeToc;

.field private final mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;IIIILcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)V
    .registers 12
    .parameter "context"
    .parameter "doc"
    .parameter "itemWidth"
    .parameter "itemHeight"
    .parameter "rows"
    .parameter "columns"
    .parameter "bitmapLoader"
    .parameter "navigationManager"
    .parameter "referrerUrl"
    .parameter "toc"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mContext:Landroid/content/Context;

    .line 89
    invoke-static {p2}, Lcom/google/android/finsky/api/model/Document;->convertToBucket(Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/model/Bucket;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mBucket:Lcom/google/android/finsky/model/Bucket;

    .line 90
    iput-object p8, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 91
    iput-object p10, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    .line 92
    iput-object p7, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 93
    iput-object p9, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mReferrerUrl:Ljava/lang/String;

    .line 94
    iput p3, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mWidth:I

    .line 95
    iput p4, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mHeight:I

    .line 96
    iput p5, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mRows:I

    .line 97
    iput p6, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mColumns:I

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)V
    .registers 18
    .parameter "context"
    .parameter "doc"
    .parameter "bitmapLoader"
    .parameter "navigationManager"
    .parameter "referrerUrl"
    .parameter "toc"

    .prologue
    .line 74
    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/google/android/finsky/adapters/ListGridItem;-><init>(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;IIIILcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/adapters/ListGridItem;)Lcom/google/android/finsky/model/Bucket;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mBucket:Lcom/google/android/finsky/model/Bucket;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/adapters/ListGridItem;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mReferrerUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/adapters/ListGridItem;)Lcom/google/android/finsky/api/model/DfeToc;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/adapters/ListGridItem;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method private bindBucketEntry(Lcom/google/android/finsky/model/Bucket;IILandroid/view/ViewGroup;)V
    .registers 18
    .parameter "bucket"
    .parameter "row"
    .parameter "column"
    .parameter "docEntry"

    .prologue
    .line 187
    iget v1, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mColumns:I

    mul-int/2addr v1, p2

    add-int v11, v1, p3

    .line 188
    .local v11, itemIndex:I
    invoke-virtual {p1}, Lcom/google/android/finsky/model/Bucket;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/finsky/api/model/Document;

    .line 189
    .local v9, doc:Lcom/google/android/finsky/api/model/Document;
    invoke-virtual/range {p4 .. p4}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;

    .line 190
    .local v10, holder:Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;
    if-nez v10, :cond_75

    .line 191
    new-instance v10, Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;

    .end local v10           #holder:Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;
    const/4 v1, 0x0

    invoke-direct {v10, v1}, Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;-><init>(Lcom/google/android/finsky/adapters/ListGridItem$1;)V

    .line 192
    .restart local v10       #holder:Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;
    const v1, 0x7f080013

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v10, Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;->bitmapView:Landroid/widget/ImageView;

    .line 193
    const v1, 0x7f080017

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v10, Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;->title:Landroid/widget/TextView;

    .line 194
    const v1, 0x7f080018

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/DecoratedTextView;

    iput-object v1, v10, Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;->creator:Lcom/google/android/finsky/layout/DecoratedTextView;

    .line 195
    const v1, 0x7f0800ef

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v10, Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;->bottomSeparator:Landroid/view/View;

    .line 196
    const v1, 0x7f080111

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v10, Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;->leftSeparator:Landroid/view/View;

    .line 197
    const v1, 0x7f080131

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v10, Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;->rightSeparator:Landroid/view/View;

    .line 198
    const v1, 0x7f080011

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v10, Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;->accessibilityOverlay:Landroid/view/View;

    .line 199
    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 202
    :cond_75
    iget-object v1, v10, Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;->accessibilityOverlay:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v3, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mReferrerUrl:Ljava/lang/String;

    invoke-virtual {v2, v9, v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getClickListener(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    invoke-virtual {v9}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v12

    .line 207
    .local v12, title:Ljava/lang/String;
    iget-object v1, v10, Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v1, v10, Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;->creator:Lcom/google/android/finsky/layout/DecoratedTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/DecoratedTextView;->setVisibility(I)V

    .line 210
    iget-object v1, v10, Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;->creator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v9}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/DecoratedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v1, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v2, v10, Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;->creator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-static {v9, v1, v2}, Lcom/google/android/finsky/utils/BadgeUtils;->configureCreatorBadge(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/DecoratedTextView;)V

    .line 214
    iget-object v2, v10, Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;->bottomSeparator:Landroid/view/View;

    iget v1, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mMaxRowCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne p2, v1, :cond_10e

    const/16 v1, 0x8

    :goto_ab
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 216
    iget-object v2, v10, Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;->leftSeparator:Landroid/view/View;

    if-nez p3, :cond_110

    const/16 v1, 0x8

    :goto_b4
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iget-object v2, v10, Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;->rightSeparator:Landroid/view/View;

    iget v1, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mColumns:I

    add-int/lit8 v1, v1, -0x1

    move/from16 v0, p3

    if-ne v0, v1, :cond_112

    const/16 v1, 0x8

    :goto_c3
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 221
    invoke-virtual {v9}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusCellContentDescriptionResource(I)I

    move-result v8

    .line 223
    .local v8, descriptionStringId:I
    iget-object v1, v10, Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;->accessibilityOverlay:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v9}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v9}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {v2, v8, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v1, v10, Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;->bitmapView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 227
    .local v5, iconWidth:I
    iget-object v2, v10, Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;->bitmapView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {v9, v5, v1}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getIconUrlFromDocument(Lcom/google/android/finsky/api/model/Document;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    iget-object v4, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getPlaceholderIcon(ILandroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/finsky/adapters/ListGridItem;->bindImage(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;IIZ)V

    .line 230
    return-void

    .line 214
    .end local v5           #iconWidth:I
    .end local v8           #descriptionStringId:I
    :cond_10e
    const/4 v1, 0x0

    goto :goto_ab

    .line 216
    :cond_110
    const/4 v1, 0x0

    goto :goto_b4

    .line 218
    :cond_112
    const/4 v1, 0x0

    goto :goto_c3
.end method

.method private getDisplayedColumns(Lcom/google/android/finsky/model/Bucket;I)I
    .registers 5
    .parameter "bucket"
    .parameter "row"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/google/android/finsky/adapters/ListGridItem;->getDisplayedRows(Lcom/google/android/finsky/model/Bucket;)I

    move-result v0

    if-ge p2, v0, :cond_15

    invoke-virtual {p1}, Lcom/google/android/finsky/model/Bucket;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mColumns:I

    mul-int/2addr v1, p2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mColumns:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private getDisplayedRows(Lcom/google/android/finsky/model/Bucket;)I
    .registers 6
    .parameter "bucket"

    .prologue
    .line 112
    invoke-virtual {p1}, Lcom/google/android/finsky/model/Bucket;->getChildCount()I

    move-result v0

    int-to-double v0, v0

    iget v2, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mColumns:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mRows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public bind(Landroid/view/ViewGroup;Z)V
    .registers 16
    .parameter "view"
    .parameter "showCorpusStrip"

    .prologue
    const/4 v12, 0x0

    .line 122
    iget-object v10, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 123
    .local v6, inflater:Landroid/view/LayoutInflater;
    const v10, 0x7f080053

    invoke-virtual {p1, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 124
    .local v0, bucketHeader:Landroid/widget/LinearLayout;
    new-instance v10, Lcom/google/android/finsky/adapters/ListGridItem$1;

    invoke-direct {v10, p0}, Lcom/google/android/finsky/adapters/ListGridItem$1;-><init>(Lcom/google/android/finsky/adapters/ListGridItem;)V

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    const v10, 0x7f080056

    invoke-virtual {p1, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 133
    .local v5, headerText:Landroid/widget/TextView;
    iget-object v10, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mBucket:Lcom/google/android/finsky/model/Bucket;

    invoke-virtual {v10}, Lcom/google/android/finsky/model/Bucket;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v10, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mBucket:Lcom/google/android/finsky/model/Bucket;

    invoke-virtual {v11}, Lcom/google/android/finsky/model/Bucket;->getBackend()I

    move-result v11

    invoke-static {v10, v11}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendForegroundColor(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    const v10, 0x7f08005c

    invoke-virtual {p1, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 138
    .local v1, bucketRowHolder:Landroid/widget/LinearLayout;
    const/4 v7, 0x0

    .local v7, row:I
    :goto_47
    iget v10, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mRows:I

    if-ge v7, v10, :cond_b4

    .line 139
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 141
    .local v9, rowOfBucketEntries:Landroid/widget/LinearLayout;
    iget-object v10, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mBucket:Lcom/google/android/finsky/model/Bucket;

    invoke-direct {p0, v10}, Lcom/google/android/finsky/adapters/ListGridItem;->getDisplayedRows(Lcom/google/android/finsky/model/Bucket;)I

    move-result v10

    iput v10, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mMaxRowCount:I

    .line 142
    iget v10, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mMaxRowCount:I

    if-ge v7, v10, :cond_aa

    .line 143
    if-nez v9, :cond_77

    .line 144
    const v10, 0x7f04001a

    invoke-virtual {v6, v10, v1, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .end local v9           #rowOfBucketEntries:Landroid/widget/LinearLayout;
    check-cast v9, Landroid/widget/LinearLayout;

    .line 146
    .restart local v9       #rowOfBucketEntries:Landroid/widget/LinearLayout;
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 148
    .local v8, rowLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    iput v12, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 149
    const/high16 v10, 0x3f80

    iput v10, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 150
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 152
    .end local v8           #rowLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_77
    invoke-virtual {v9, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 153
    iget-object v10, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mBucket:Lcom/google/android/finsky/model/Bucket;

    invoke-direct {p0, v10, v7}, Lcom/google/android/finsky/adapters/ListGridItem;->getDisplayedColumns(Lcom/google/android/finsky/model/Bucket;I)I

    move-result v3

    .line 154
    .local v3, displayedColumns:I
    const/4 v2, 0x0

    .local v2, column:I
    :goto_81
    iget v10, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mColumns:I

    if-ge v2, v10, :cond_b1

    .line 155
    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 156
    .local v4, docEntry:Landroid/view/View;
    if-nez v4, :cond_95

    .line 157
    const v10, 0x7f040084

    invoke-virtual {v6, v10, v9, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 159
    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 162
    :cond_95
    if-ge v2, v3, :cond_a5

    .line 163
    iget-object v11, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mBucket:Lcom/google/android/finsky/model/Bucket;

    move-object v10, v4

    check-cast v10, Landroid/view/ViewGroup;

    invoke-direct {p0, v11, v7, v2, v10}, Lcom/google/android/finsky/adapters/ListGridItem;->bindBucketEntry(Lcom/google/android/finsky/model/Bucket;IILandroid/view/ViewGroup;)V

    .line 164
    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    .line 154
    :goto_a2
    add-int/lit8 v2, v2, 0x1

    goto :goto_81

    .line 166
    :cond_a5
    const/4 v10, 0x4

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a2

    .line 170
    .end local v2           #column:I
    .end local v3           #displayedColumns:I
    .end local v4           #docEntry:Landroid/view/View;
    :cond_aa
    if-eqz v9, :cond_b1

    .line 171
    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 138
    :cond_b1
    add-int/lit8 v7, v7, 0x1

    goto :goto_47

    .line 174
    .end local v9           #rowOfBucketEntries:Landroid/widget/LinearLayout;
    :cond_b4
    return-void
.end method

.method protected bindImage(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;IIZ)V
    .registers 15
    .parameter "safeView"
    .parameter "urlToLoad"
    .parameter "temporaryDisplay"
    .parameter "maxWidth"
    .parameter "maxHeight"
    .parameter "resizeView"

    .prologue
    .line 258
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .line 260
    .local v7, oldContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    if-eqz v7, :cond_1c

    invoke-virtual {v7}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 261
    invoke-virtual {v7}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 288
    :goto_18
    return-void

    .line 264
    :cond_19
    invoke-virtual {v7}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->cancelRequest()V

    .line 268
    :cond_1c
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    new-instance v3, Lcom/google/android/finsky/adapters/ListGridItem$2;

    invoke-direct {v3, p0, p1}, Lcom/google/android/finsky/adapters/ListGridItem$2;-><init>(Lcom/google/android/finsky/adapters/ListGridItem;Landroid/widget/ImageView;)V

    move-object v1, p2

    move-object v2, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v6

    .line 277
    .local v6, newContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    if-eqz p6, :cond_33

    .line 280
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 282
    :cond_33
    invoke-virtual {v6}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 283
    invoke-virtual {v6}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 286
    :cond_40
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 287
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_18
.end method

.method public getCellHeight()I
    .registers 2

    .prologue
    .line 297
    iget v0, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mHeight:I

    return v0
.end method

.method public getCellWidth()I
    .registers 2

    .prologue
    .line 292
    iget v0, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mWidth:I

    return v0
.end method

.method public getGridItemType()Lcom/google/android/finsky/adapters/UnevenGridItemType;
    .registers 2

    .prologue
    .line 107
    sget-object v0, Lcom/google/android/finsky/adapters/UnevenGridItemType;->LIST_FOUR_BLOCK_4x2:Lcom/google/android/finsky/adapters/UnevenGridItemType;

    return-object v0
.end method

.method public getLayoutId()I
    .registers 2

    .prologue
    .line 102
    const v0, 0x7f040083

    return v0
.end method
