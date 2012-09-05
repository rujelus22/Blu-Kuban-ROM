.class public Lcom/google/android/finsky/adapters/DocumentGridItem;
.super Ljava/lang/Object;
.source "DocumentGridItem.java"

# interfaces
.implements Lcom/google/android/finsky/adapters/UnevenGridAdapter$UnevenGridItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;
    }
.end annotation


# instance fields
.field private final mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentPageUrl:Ljava/lang/String;

.field private mDocument:Lcom/google/android/finsky/api/model/Document;

.field private final mGridItemType:Lcom/google/android/finsky/adapters/UnevenGridItemType;

.field private final mHeightInGridCells:I

.field private final mLayoutId:I

.field private final mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private final mPromoImageWidth:I

.field private final mWidthInGridCells:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;IIILcom/google/android/finsky/adapters/UnevenGridItemType;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V
    .registers 13
    .parameter "context"
    .parameter "navigationManager"
    .parameter "bitmapLoader"
    .parameter "widthInGridCells"
    .parameter "heightInGridCells"
    .parameter "layoutId"
    .parameter "gridItemType"
    .parameter "document"
    .parameter "currentPageUrl"

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mContext:Landroid/content/Context;

    .line 114
    iput-object p2, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 115
    iput-object p3, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 116
    iput p4, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mWidthInGridCells:I

    .line 117
    iput p5, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mHeightInGridCells:I

    .line 118
    iput p6, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mLayoutId:I

    .line 119
    iput-object p7, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mGridItemType:Lcom/google/android/finsky/adapters/UnevenGridItemType;

    .line 120
    iput-object p8, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mDocument:Lcom/google/android/finsky/api/model/Document;

    .line 121
    iput-object p9, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mCurrentPageUrl:Ljava/lang/String;

    .line 122
    iget v0, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mWidthInGridCells:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mPromoImageWidth:I

    .line 124
    return-void
.end method

.method public static create2x1PromoGraphic(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Lcom/google/android/finsky/adapters/DocumentGridItem;
    .registers 15
    .parameter "context"
    .parameter "navManager"
    .parameter "loader"
    .parameter "document"
    .parameter "currentPageUrl"

    .prologue
    .line 77
    new-instance v0, Lcom/google/android/finsky/adapters/DocumentGridItem;

    const/4 v4, 0x2

    const/4 v5, 0x1

    const v6, 0x7f0400ba

    sget-object v7, Lcom/google/android/finsky/adapters/UnevenGridItemType;->GRAPHIC_2x1:Lcom/google/android/finsky/adapters/UnevenGridItemType;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/google/android/finsky/adapters/DocumentGridItem;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;IIILcom/google/android/finsky/adapters/UnevenGridItemType;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V

    return-object v0
.end method

.method public static create4x2PromoGraphic(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Lcom/google/android/finsky/adapters/DocumentGridItem;
    .registers 15
    .parameter "context"
    .parameter "navManager"
    .parameter "loader"
    .parameter "document"
    .parameter "currentPageUrl"

    .prologue
    .line 69
    new-instance v0, Lcom/google/android/finsky/adapters/DocumentGridItem;

    const/4 v4, 0x4

    const/4 v5, 0x2

    const v6, 0x7f0400ba

    sget-object v7, Lcom/google/android/finsky/adapters/UnevenGridItemType;->GRAPHIC_4x2:Lcom/google/android/finsky/adapters/UnevenGridItemType;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/google/android/finsky/adapters/DocumentGridItem;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;IIILcom/google/android/finsky/adapters/UnevenGridItemType;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createSmallPromo(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Lcom/google/android/finsky/adapters/DocumentGridItem;
    .registers 15
    .parameter "context"
    .parameter "navManager"
    .parameter "loader"
    .parameter "document"
    .parameter "currentPageUrl"

    .prologue
    .line 94
    new-instance v0, Lcom/google/android/finsky/adapters/DocumentGridItem;

    const/4 v4, 0x2

    const/4 v5, 0x1

    const v6, 0x7f0400bb

    sget-object v7, Lcom/google/android/finsky/adapters/UnevenGridItemType;->DOCUMENT_2x1:Lcom/google/android/finsky/adapters/UnevenGridItemType;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/google/android/finsky/adapters/DocumentGridItem;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;IIILcom/google/android/finsky/adapters/UnevenGridItemType;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createSquarePromo(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Lcom/google/android/finsky/adapters/DocumentGridItem;
    .registers 15
    .parameter "context"
    .parameter "navManager"
    .parameter "loader"
    .parameter "document"
    .parameter "currentPageUrl"

    .prologue
    const/4 v4, 0x2

    .line 85
    new-instance v0, Lcom/google/android/finsky/adapters/DocumentGridItem;

    const v6, 0x7f0400bc

    sget-object v7, Lcom/google/android/finsky/adapters/UnevenGridItemType;->DOC_DETAILS_WITH_REFLECTED_PROMO_2x2:Lcom/google/android/finsky/adapters/UnevenGridItemType;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, v4

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/google/android/finsky/adapters/DocumentGridItem;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;IIILcom/google/android/finsky/adapters/UnevenGridItemType;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public bind(Landroid/view/ViewGroup;Z)V
    .registers 23
    .parameter "view"
    .parameter "showCorpusStrip"

    .prologue
    .line 150
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_a5

    .line 151
    new-instance v19, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;-><init>(Lcom/google/android/finsky/adapters/DocumentGridItem$1;)V

    .line 152
    .local v19, holder:Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;
    const v2, 0x7f08012d

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RatingBar;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->ratingBar:Landroid/widget/RatingBar;

    .line 153
    const v2, 0x7f080015

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->priceView:Landroid/widget/TextView;

    .line 154
    const v2, 0x7f080013

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->thumbnailBitmapView:Landroid/widget/ImageView;

    .line 155
    const v2, 0x7f08018f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->promoBitmapView:Landroid/widget/ImageView;

    .line 156
    const v2, 0x7f080017

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->title:Landroid/widget/TextView;

    .line 157
    const v2, 0x7f080018

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/DecoratedTextView;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->creator:Lcom/google/android/finsky/layout/DecoratedTextView;

    .line 158
    const v2, 0x7f08012e

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/DecoratedTextView;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->badge:Lcom/google/android/finsky/layout/DecoratedTextView;

    .line 159
    const v2, 0x7f080011

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->accessibilityOverlay:Landroid/view/View;

    .line 160
    const v2, 0x7f08011f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->cellContent:Landroid/view/View;

    .line 161
    const v2, 0x7f080087

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->corpusStrip:Landroid/view/View;

    .line 162
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 165
    .end local v19           #holder:Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;
    :cond_a5
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;

    .line 167
    .restart local v19       #holder:Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->accessibilityOverlay:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mDocument:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mCurrentPageUrl:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getClickListener(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->title:Landroid/widget/TextView;

    if-eqz v2, :cond_d7

    .line 171
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :cond_d7
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->creator:Lcom/google/android/finsky/layout/DecoratedTextView;

    if-eqz v2, :cond_fb

    .line 175
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->creator:Lcom/google/android/finsky/layout/DecoratedTextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/DecoratedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mDocument:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->creator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-static {v2, v3, v4}, Lcom/google/android/finsky/utils/BadgeUtils;->configureCreatorBadge(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/DecoratedTextView;)V

    .line 179
    :cond_fb
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->ratingBar:Landroid/widget/RatingBar;

    if-eqz v2, :cond_114

    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mDocument:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->ratingBar:Landroid/widget/RatingBar;

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->badge:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/finsky/utils/BadgeUtils;->configureRatingItemSection(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Landroid/widget/RatingBar;Lcom/google/android/finsky/layout/DecoratedTextView;)V

    .line 184
    :cond_114
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->priceView:Landroid/widget/TextView;

    if-eqz v2, :cond_126

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mDocument:Lcom/google/android/finsky/api/model/Document;

    const/4 v3, 0x0

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->priceView:Landroid/widget/TextView;

    invoke-static {v2, v3, v4}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->stylePurchaseButton(Lcom/google/android/finsky/api/model/Document;ZLandroid/widget/TextView;)V

    .line 188
    :cond_126
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->thumbnailBitmapView:Landroid/widget/ImageView;

    if-eqz v2, :cond_160

    .line 189
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->thumbnailBitmapView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 190
    .local v7, width:I
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->thumbnailBitmapView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mDocument:Lcom/google/android/finsky/api/model/Document;

    const/4 v3, 0x0

    invoke-static {v2, v7, v3}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getIconUrlFromDocument(Lcom/google/android/finsky/api/model/Document;II)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getPlaceholderIcon(ILandroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/finsky/adapters/DocumentGridItem;->bindImage(Landroid/view/View;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;IIZ)V

    .line 197
    .end local v7           #width:I
    :cond_160
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->promoBitmapView:Landroid/widget/ImageView;

    if-eqz v2, :cond_187

    .line 199
    move-object/from16 v0, v19

    iget-object v9, v0, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->cellContent:Landroid/view/View;

    move-object/from16 v0, v19

    iget-object v10, v0, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->promoBitmapView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mDocument:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mPromoImageWidth:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getPromoBitmapUrlFromDocument(Lcom/google/android/finsky/api/model/Document;II)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mPromoImageWidth:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v15}, Lcom/google/android/finsky/adapters/DocumentGridItem;->bindImage(Landroid/view/View;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;IIZ)V

    .line 204
    :cond_187
    if-eqz p2, :cond_1ab

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->corpusStrip:Landroid/view/View;

    if-eqz v2, :cond_1ab

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v16

    .line 209
    .local v16, backendHintColor:I
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->corpusStrip:Landroid/view/View;

    const v3, -0x3f000001

    and-int v3, v3, v16

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 213
    .end local v16           #backendHintColor:I
    :cond_1ab
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusCellContentDescriptionResource(I)I

    move-result v18

    .line 215
    .local v18, descriptionStringId:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move/from16 v0, v18

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 217
    .local v17, contentDescription:Ljava/lang/String;
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->accessibilityOverlay:Landroid/view/View;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 218
    return-void
.end method

.method protected bindImage(Landroid/view/View;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;IIZ)V
    .registers 24
    .parameter "content"
    .parameter "safeView"
    .parameter "urlToLoad"
    .parameter "temporaryDisplay"
    .parameter "maxWidth"
    .parameter "maxHeight"
    .parameter "resizeView"

    .prologue
    .line 259
    invoke-virtual/range {p2 .. p2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .line 261
    .local v15, oldContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    if-eqz v15, :cond_1e

    invoke-virtual {v15}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 262
    invoke-virtual {v15}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 297
    :goto_1a
    return-void

    .line 265
    :cond_1b
    invoke-virtual {v15}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->cancelRequest()V

    .line 269
    :cond_1e
    invoke-virtual/range {p2 .. p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    .line 272
    .local v6, fadeInAnimation:Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    new-instance v1, Lcom/google/android/finsky/adapters/DocumentGridItem$1;

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/finsky/adapters/DocumentGridItem$1;-><init>(Lcom/google/android/finsky/adapters/DocumentGridItem;Landroid/graphics/Bitmap;Landroid/widget/ImageView;Landroid/view/View;Landroid/view/animation/Animation;)V

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object v10, v1

    move/from16 v11, p5

    move/from16 v12, p6

    invoke-virtual/range {v7 .. v12}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v14

    .line 287
    .local v14, newContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    if-eqz p7, :cond_51

    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move/from16 v0, p5

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 292
    :cond_51
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 293
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 294
    invoke-virtual {v14}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 295
    .local v13, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 296
    if-nez v13, :cond_6e

    const/4 v1, 0x4

    :goto_68
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1a

    :cond_6e
    const/4 v1, 0x0

    goto :goto_68
.end method

.method public getCellHeight()I
    .registers 2

    .prologue
    .line 222
    iget v0, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mHeightInGridCells:I

    return v0
.end method

.method public getCellWidth()I
    .registers 2

    .prologue
    .line 227
    iget v0, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mWidthInGridCells:I

    return v0
.end method

.method public getGridItemType()Lcom/google/android/finsky/adapters/UnevenGridItemType;
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mGridItemType:Lcom/google/android/finsky/adapters/UnevenGridItemType;

    return-object v0
.end method

.method public getLayoutId()I
    .registers 2

    .prologue
    .line 132
    iget v0, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mLayoutId:I

    return v0
.end method
