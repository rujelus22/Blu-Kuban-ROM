.class public Lcom/google/android/apps/plus/views/ProfileAboutView;
.super Lcom/google/android/apps/plus/views/EsScrollView;
.source "ProfileAboutView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/apps/plus/views/Recyclable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/ProfileAboutView$1;,
        Lcom/google/android/apps/plus/views/ProfileAboutView$ItemOnTouchListener;,
        Lcom/google/android/apps/plus/views/ProfileAboutView$IntroductionTagHandler;,
        Lcom/google/android/apps/plus/views/ProfileAboutView$LocalDetailsItem;,
        Lcom/google/android/apps/plus/views/ProfileAboutView$LocalEditorialReviewItem;,
        Lcom/google/android/apps/plus/views/ProfileAboutView$LocalActionsItem;,
        Lcom/google/android/apps/plus/views/ProfileAboutView$LocationItem;,
        Lcom/google/android/apps/plus/views/ProfileAboutView$Item;,
        Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;,
        Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;,
        Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;,
        Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;,
        Lcom/google/android/apps/plus/views/ProfileAboutView$DisplayPolicies;,
        Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;
    }
.end annotation


# static fields
.field private static final SCRAPBOOK_PHOTO_IDS:[I

.field private static final sDefaultPolicy:Lcom/google/android/apps/plus/views/ProfileAboutView$DisplayPolicies;


# instance fields
.field private mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

.field private mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

.field private final mInflater:Landroid/view/LayoutInflater;

.field mIsExpanded:Z

.field private mOnClickListener:Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;

.field private mPolicy:Lcom/google/android/apps/plus/views/ProfileAboutView$DisplayPolicies;

.field private mProfileLayout:Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 365
    new-instance v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DisplayPolicies;

    invoke-direct {v0}, Lcom/google/android/apps/plus/views/ProfileAboutView$DisplayPolicies;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/views/ProfileAboutView;->sDefaultPolicy:Lcom/google/android/apps/plus/views/ProfileAboutView$DisplayPolicies;

    .line 639
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_10

    sput-object v0, Lcom/google/android/apps/plus/views/ProfileAboutView;->SCRAPBOOK_PHOTO_IDS:[I

    return-void

    :array_10
    .array-data 0x4
        0xedt 0x1t 0x9t 0x7ft
        0xeet 0x1t 0x9t 0x7ft
        0xeft 0x1t 0x9t 0x7ft
        0xf0t 0x1t 0x9t 0x7ft
        0xf1t 0x1t 0x9t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 375
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/EsScrollView;-><init>(Landroid/content/Context;)V

    .line 368
    sget-object v0, Lcom/google/android/apps/plus/views/ProfileAboutView;->sDefaultPolicy:Lcom/google/android/apps/plus/views/ProfileAboutView$DisplayPolicies;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mPolicy:Lcom/google/android/apps/plus/views/ProfileAboutView$DisplayPolicies;

    .line 372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mIsExpanded:Z

    .line 387
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ProfileAboutView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mInflater:Landroid/view/LayoutInflater;

    .line 376
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 379
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/EsScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 368
    sget-object v0, Lcom/google/android/apps/plus/views/ProfileAboutView;->sDefaultPolicy:Lcom/google/android/apps/plus/views/ProfileAboutView$DisplayPolicies;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mPolicy:Lcom/google/android/apps/plus/views/ProfileAboutView$DisplayPolicies;

    .line 372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mIsExpanded:Z

    .line 387
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ProfileAboutView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mInflater:Landroid/view/LayoutInflater;

    .line 380
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 383
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/EsScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 368
    sget-object v0, Lcom/google/android/apps/plus/views/ProfileAboutView;->sDefaultPolicy:Lcom/google/android/apps/plus/views/ProfileAboutView$DisplayPolicies;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mPolicy:Lcom/google/android/apps/plus/views/ProfileAboutView$DisplayPolicies;

    .line 372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mIsExpanded:Z

    .line 387
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ProfileAboutView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mInflater:Landroid/view/LayoutInflater;

    .line 384
    return-void
.end method

.method private addReviewToParent(Lcom/google/api/services/plusi/model/GoogleReviewProto;Landroid/view/View;I)V
    .registers 9
    .parameter "review"
    .parameter "parent"
    .parameter "reviewType"

    .prologue
    .line 1190
    const v2, 0x7f09009d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1191
    .local v0, container:Landroid/widget/LinearLayout;
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0300a9

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1192
    .local v1, view:Landroid/view/View;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-direct {p0, v1, p1, p3, v2}, Lcom/google/android/apps/plus/views/ProfileAboutView;->bindLocalUserReview(Landroid/view/View;Lcom/google/api/services/plusi/model/GoogleReviewProto;II)V

    .line 1193
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1194
    return-void
.end method

.method private bindAddressView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .parameter "view"
    .parameter "address"
    .parameter "type"
    .parameter "isFirst"

    .prologue
    .line 1314
    if-eqz p4, :cond_9

    const v0, 0x7f0201ee

    :goto_5
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/apps/plus/views/ProfileAboutView;->bindDataView(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;)V

    .line 1315
    return-void

    .line 1314
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private bindDataView(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "view"
    .parameter "iconResId"
    .parameter "text"
    .parameter "label"

    .prologue
    .line 1318
    const v3, 0x1020006

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1319
    .local v0, iconView:Landroid/widget/ImageView;
    if-eqz p2, :cond_2e

    .line 1320
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1324
    :goto_e
    const v3, 0x1020014

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1325
    .local v1, text1:Landroid/widget/TextView;
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1326
    const v3, 0x1020015

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1327
    .local v2, text2:Landroid/widget/TextView;
    invoke-virtual {p4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1328
    invoke-direct {p0, p1, p3, p4}, Lcom/google/android/apps/plus/views/ProfileAboutView;->setupContentDescription(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1329
    return-void

    .line 1322
    .end local v1           #text1:Landroid/widget/TextView;
    .end local v2           #text2:Landroid/widget/TextView;
    :cond_2e
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_e
.end method

.method private bindEmailView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .parameter "view"
    .parameter "email"
    .parameter "type"
    .parameter "isFirst"

    .prologue
    .line 1299
    if-eqz p4, :cond_9

    const v0, 0x7f0201f1

    :goto_5
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/apps/plus/views/ProfileAboutView;->bindDataView(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;)V

    .line 1300
    return-void

    .line 1299
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private bindExpandArea()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1258
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mPolicy:Lcom/google/android/apps/plus/views/ProfileAboutView$DisplayPolicies;

    iget-boolean v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$DisplayPolicies;->showExpandButtonText:Z

    if-eqz v2, :cond_15

    .line 1259
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mIsExpanded:Z

    if-eqz v2, :cond_24

    const v1, 0x7f08021d

    .line 1260
    .local v1, label:I
    :goto_e
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->expandArea:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1262
    .end local v1           #label:I
    :cond_15
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mIsExpanded:Z

    if-eqz v2, :cond_28

    const v0, 0x7f020199

    .line 1264
    .local v0, drawable:I
    :goto_1c
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->expandArea:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v3, v0, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1265
    return-void

    .line 1259
    .end local v0           #drawable:I
    :cond_24
    const v1, 0x7f08021c

    goto :goto_e

    .line 1262
    :cond_28
    const v0, 0x7f020197

    goto :goto_1c
.end method

.method private bindIntroductionView(Landroid/view/View;Ljava/lang/String;)V
    .registers 9
    .parameter "view"
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    .line 1279
    move-object v2, p1

    check-cast v2, Landroid/widget/TextView;

    .line 1280
    .local v2, textView:Landroid/widget/TextView;
    const/4 v3, 0x0

    new-instance v4, Lcom/google/android/apps/plus/views/ProfileAboutView$IntroductionTagHandler;

    invoke-direct {v4, p0}, Lcom/google/android/apps/plus/views/ProfileAboutView$IntroductionTagHandler;-><init>(Lcom/google/android/apps/plus/views/ProfileAboutView;)V

    invoke-static {p2, v3, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v1

    .line 1281
    .local v1, text:Landroid/text/Spanned;
    :goto_e
    invoke-interface {v1}, Landroid/text/Spanned;->length()I

    move-result v3

    if-lez v3, :cond_2a

    invoke-interface {v1, v5}, Landroid/text/Spanned;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1282
    const/4 v3, 0x1

    invoke-interface {v1}, Landroid/text/Spanned;->length()I

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1           #text:Landroid/text/Spanned;
    check-cast v1, Landroid/text/Spanned;

    .restart local v1       #text:Landroid/text/Spanned;
    goto :goto_e

    .line 1284
    :cond_2a
    :goto_2a
    invoke-interface {v1}, Landroid/text/Spanned;->length()I

    move-result v3

    if-lez v3, :cond_4d

    invoke-interface {v1}, Landroid/text/Spanned;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Landroid/text/Spanned;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 1285
    invoke-interface {v1}, Landroid/text/Spanned;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v5, v3}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1           #text:Landroid/text/Spanned;
    check-cast v1, Landroid/text/Spanned;

    .restart local v1       #text:Landroid/text/Spanned;
    goto :goto_2a

    .line 1287
    :cond_4d
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1288
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1289
    invoke-virtual {v2}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 1290
    .local v0, mm:Landroid/text/method/MovementMethod;
    instance-of v3, v0, Landroid/text/method/LinkMovementMethod;

    if-nez v3, :cond_62

    .line 1291
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1293
    :cond_62
    return-void
.end method

.method private bindLinkView(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 7
    .parameter "view"
    .parameter "label"
    .parameter "icon"
    .parameter "type"

    .prologue
    .line 1368
    const v1, 0x1020006

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1369
    const v1, 0x1020014

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1370
    const v1, 0x1020015

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1371
    .local v0, typeView:Landroid/widget/TextView;
    if-eqz p4, :cond_32

    .line 1372
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1373
    invoke-virtual {p4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1374
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/apps/plus/views/ProfileAboutView;->setupContentDescription(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1379
    :goto_31
    return-void

    .line 1376
    :cond_32
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1377
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_31
.end method

.method private bindLocalActions(Landroid/view/View;Lcom/google/android/apps/plus/views/ProfileAboutView$LocalActionsItem;)V
    .registers 13
    .parameter "view"
    .parameter "item"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 1385
    iget-object v6, p2, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalActionsItem;->title:Ljava/lang/String;

    iget-object v7, p2, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalActionsItem;->mapsCid:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/MapUtils;->buildMapUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1386
    .local v5, mapUrl:Ljava/lang/String;
    iget-object v6, p2, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalActionsItem;->title:Ljava/lang/String;

    iget-object v7, p2, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalActionsItem;->address:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/MapUtils;->buildDirectionsUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1387
    .local v3, directionsUrl:Ljava/lang/String;
    const v6, 0x7f090202

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1388
    .local v4, mapButton:Landroid/view/View;
    const v6, 0x7f090204

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1389
    .local v2, directionsButton:Landroid/view/View;
    const v6, 0x7f090205

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1390
    .local v1, callDivider:Landroid/view/View;
    const v6, 0x7f090206

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1392
    .local v0, callButton:Landroid/view/View;
    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1393
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1394
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1395
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1396
    iget-object v6, p2, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalActionsItem;->phone:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_52

    .line 1397
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1398
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1399
    iget-object v6, p2, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalActionsItem;->phone:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1400
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1405
    :goto_51
    return-void

    .line 1402
    :cond_52
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1403
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_51
.end method

.method private bindLocalDetails(Landroid/view/View;Lcom/google/android/apps/plus/views/ProfileAboutView$LocalDetailsItem;)V
    .registers 15
    .parameter "view"
    .parameter "item"

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 1603
    const v8, 0x7f090208

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1604
    .local v3, knownForTermsRow:Landroid/view/View;
    const v8, 0x7f09020a

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1605
    .local v6, phoneRow:Landroid/view/View;
    const v8, 0x7f09020c

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1608
    .local v5, openHoursRow:Landroid/view/View;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1609
    .local v2, knownForTermsBuilder:Ljava/lang/StringBuilder;
    iget-object v8, p2, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalDetailsItem;->knownForTerms:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4a

    .line 1610
    const/4 v0, 0x1

    .line 1611
    .local v0, firstTerm:Z
    iget-object v8, p2, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalDetailsItem;->knownForTerms:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2c
    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1612
    .local v7, term:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2c

    .line 1613
    if-nez v0, :cond_45

    .line 1614
    const-string v8, " \u00b7 "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1616
    :cond_45
    const/4 v0, 0x0

    .line 1617
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c

    .line 1621
    .end local v0           #firstTerm:Z
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v7           #term:Ljava/lang/String;
    :cond_4a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_98

    .line 1622
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1623
    const v8, 0x7f090209

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1630
    :goto_5f
    iget-object v8, p2, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalDetailsItem;->phone:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9c

    .line 1631
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1632
    const v8, 0x7f09020b

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, p2, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalDetailsItem;->phone:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1639
    :goto_78
    iget-object v8, p2, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalDetailsItem;->openingHoursFull:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a0

    iget-object v4, p2, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalDetailsItem;->openingHoursFull:Ljava/lang/String;

    .line 1641
    .local v4, openHours:Ljava/lang/String;
    :goto_82
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a3

    .line 1642
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1643
    const v8, 0x7f09020d

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1647
    :goto_97
    return-void

    .line 1626
    .end local v4           #openHours:Ljava/lang/String;
    :cond_98
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5f

    .line 1634
    :cond_9c
    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_78

    .line 1639
    :cond_a0
    iget-object v4, p2, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalDetailsItem;->openingHoursSummary:Ljava/lang/String;

    goto :goto_82

    .line 1645
    .restart local v4       #openHours:Ljava/lang/String;
    :cond_a3
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_97
.end method

.method private bindLocalEditorialReview(Landroid/view/View;Lcom/google/android/apps/plus/views/ProfileAboutView$LocalEditorialReviewItem;)V
    .registers 22
    .parameter "view"
    .parameter "item"

    .prologue
    .line 1412
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalEditorialReviewItem;->scores:Lcom/google/api/services/plusi/model/ZagatAspectRatingsProto;

    invoke-static {v13}, Lcom/google/android/apps/plus/content/EsLocalPageData;->isZagatRated(Lcom/google/api/services/plusi/model/ZagatAspectRatingsProto;)Z

    move-result v5

    .line 1413
    .local v5, isZagatRated:Z
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalEditorialReviewItem;->scores:Lcom/google/api/services/plusi/model/ZagatAspectRatingsProto;

    iget-object v13, v13, Lcom/google/api/services/plusi/model/ZagatAspectRatingsProto;->aspectRating:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    .line 1414
    .local v1, aspectCount:I
    const v13, 0x7f090216

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 1415
    .local v12, zagatLogo:Landroid/view/View;
    const v13, 0x7f090217

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 1416
    .local v9, userRatedLogo:Landroid/view/View;
    const/4 v13, 0x4

    new-array v6, v13, [Landroid/view/View;

    const/4 v13, 0x0

    const v14, 0x7f090218

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    aput-object v14, v6, v13

    const/4 v13, 0x1

    const v14, 0x7f09021b

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    aput-object v14, v6, v13

    const/4 v13, 0x2

    const v14, 0x7f09021c

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    aput-object v14, v6, v13

    const/4 v13, 0x3

    const v14, 0x7f09021d

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    aput-object v14, v6, v13

    .line 1422
    .local v6, ratingItems:[Landroid/view/View;
    const v13, 0x7f090220

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1423
    .local v10, zagatEditorialText:Landroid/widget/TextView;
    const v13, 0x7f09021e

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1426
    .local v7, reviewCountAndPrice:Landroid/widget/TextView;
    if-eqz v5, :cond_bf

    .line 1427
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1428
    const/16 v13, 0x8

    invoke-virtual {v9, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1434
    :goto_78
    const/4 v4, 0x0

    .local v4, i:I
    :goto_79
    const/4 v13, 0x4

    if-ge v4, v13, :cond_10c

    .line 1435
    if-ge v4, v1, :cond_c9

    .line 1437
    aget-object v13, v6, v4

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1438
    aget-object v13, v6, v4

    const v14, 0x7f090219

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalEditorialReviewItem;->scores:Lcom/google/api/services/plusi/model/ZagatAspectRatingsProto;

    iget-object v14, v14, Lcom/google/api/services/plusi/model/ZagatAspectRatingsProto;->aspectRating:Ljava/util/List;

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/api/services/plusi/model/ZagatAspectRatingProto;

    iget-object v14, v14, Lcom/google/api/services/plusi/model/ZagatAspectRatingProto;->labelDisplay:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1440
    aget-object v13, v6, v4

    const v14, 0x7f09021a

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalEditorialReviewItem;->scores:Lcom/google/api/services/plusi/model/ZagatAspectRatingsProto;

    iget-object v14, v14, Lcom/google/api/services/plusi/model/ZagatAspectRatingsProto;->aspectRating:Ljava/util/List;

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/api/services/plusi/model/ZagatAspectRatingProto;

    iget-object v14, v14, Lcom/google/api/services/plusi/model/ZagatAspectRatingProto;->valueDisplay:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1434
    :goto_bc
    add-int/lit8 v4, v4, 0x1

    goto :goto_79

    .line 1430
    .end local v4           #i:I
    :cond_bf
    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1431
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_78

    .line 1442
    .restart local v4       #i:I
    :cond_c9
    if-ne v4, v1, :cond_104

    if-eqz v5, :cond_104

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalEditorialReviewItem;->priceLabel:Ljava/lang/String;

    if-eqz v13, :cond_104

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalEditorialReviewItem;->priceValue:Ljava/lang/String;

    if-eqz v13, :cond_104

    .line 1445
    aget-object v13, v6, v4

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1446
    aget-object v13, v6, v4

    const v14, 0x7f090219

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalEditorialReviewItem;->priceLabel:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1448
    aget-object v13, v6, v4

    const v14, 0x7f09021a

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalEditorialReviewItem;->priceValue:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_bc

    .line 1451
    :cond_104
    aget-object v13, v6, v4

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_bc

    .line 1455
    :cond_10c
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalEditorialReviewItem;->priceValue:Ljava/lang/String;

    if-eqz v13, :cond_172

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalEditorialReviewItem;->priceLabel:Ljava/lang/String;

    if-nez v13, :cond_172

    const/4 v3, 0x1

    .line 1456
    .local v3, havePriceValueButNoLabel:Z
    :goto_119
    if-eqz v5, :cond_174

    if-eqz v3, :cond_174

    .line 1458
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1459
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalEditorialReviewItem;->priceValue:Ljava/lang/String;

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1482
    :goto_128
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalEditorialReviewItem;->editorialText:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1dd

    .line 1483
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1484
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1485
    .local v8, styledEditorialText:Landroid/text/SpannableStringBuilder;
    const v13, 0x7f08042a

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/apps/plus/views/ProfileAboutView;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ProfileAboutView;->getContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f0f0064

    invoke-direct/range {v14 .. v16}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-static {v8, v13, v14}, Lcom/google/android/apps/plus/util/SpannableUtils;->appendWithSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/Object;)V

    .line 1490
    const-string v13, " "

    invoke-virtual {v8, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalEditorialReviewItem;->editorialText:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1492
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1496
    .end local v8           #styledEditorialText:Landroid/text/SpannableStringBuilder;
    :goto_163
    const v13, 0x7f09021f

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 1497
    .local v11, zagatExplanation:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1498
    return-void

    .line 1455
    .end local v3           #havePriceValueButNoLabel:Z
    .end local v11           #zagatExplanation:Landroid/view/View;
    :cond_172
    const/4 v3, 0x0

    goto :goto_119

    .line 1460
    .restart local v3       #havePriceValueButNoLabel:Z
    :cond_174
    if-nez v5, :cond_1d6

    move-object/from16 v0, p2

    iget v13, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalEditorialReviewItem;->reviewCount:I

    if-gtz v13, :cond_17e

    if-eqz v3, :cond_1d6

    .line 1461
    :cond_17e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1462
    .local v2, countAndPriceBuilder:Ljava/lang/StringBuilder;
    move-object/from16 v0, p2

    iget v13, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalEditorialReviewItem;->reviewCount:I

    if-lez v13, :cond_1b5

    .line 1463
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ProfileAboutView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0e002b

    move-object/from16 v0, p2

    iget v15, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalEditorialReviewItem;->reviewCount:I

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalEditorialReviewItem;->reviewCount:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1468
    :cond_1b5
    if-eqz v3, :cond_1c9

    .line 1471
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-lez v13, :cond_1c2

    .line 1472
    const-string v13, " \u00b7 "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1474
    :cond_1c2
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalEditorialReviewItem;->priceValue:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1476
    :cond_1c9
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1477
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_128

    .line 1479
    .end local v2           #countAndPriceBuilder:Ljava/lang/StringBuilder;
    :cond_1d6
    const/16 v13, 0x8

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_128

    .line 1494
    :cond_1dd
    const/16 v13, 0x8

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_163
.end method

.method private bindLocalUserReview(Landroid/view/View;Lcom/google/api/services/plusi/model/GoogleReviewProto;II)V
    .registers 23
    .parameter "view"
    .parameter "review"
    .parameter "reviewType"
    .parameter "reviewIndex"

    .prologue
    .line 1502
    const v14, 0x7f09020e

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 1503
    .local v13, topBorder:Landroid/view/View;
    const v14, 0x7f09020f

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 1504
    .local v6, container:Landroid/view/ViewGroup;
    const v14, 0x7f090210

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/views/AvatarView;

    .line 1505
    .local v4, authorAvatar:Lcom/google/android/apps/plus/views/AvatarView;
    const v14, 0x7f090211

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1506
    .local v5, authorName:Landroid/widget/TextView;
    const v14, 0x7f090212

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1507
    .local v9, publishDate:Landroid/widget/TextView;
    const v14, 0x7f090214

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1508
    .local v11, reviewText:Landroid/widget/TextView;
    const v14, 0x7f090213

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1510
    .local v10, ratingAspects:Landroid/widget/TextView;
    if-nez p4, :cond_138

    const/4 v8, 0x1

    .line 1511
    .local v8, isFirstItem:Z
    :goto_4e
    if-eqz v8, :cond_13b

    .line 1512
    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1516
    :goto_55
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Integer;

    const/4 v15, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v6, v14}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 1517
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1518
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/google/api/services/plusi/model/GoogleReviewProto;->author:Lcom/google/api/services/plusi/model/AuthorProto;

    if-eqz v14, :cond_152

    .line 1520
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/google/api/services/plusi/model/GoogleReviewProto;->author:Lcom/google/api/services/plusi/model/AuthorProto;

    iget-object v14, v14, Lcom/google/api/services/plusi/model/AuthorProto;->profileId:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_141

    .line 1521
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/google/api/services/plusi/model/GoogleReviewProto;->author:Lcom/google/api/services/plusi/model/AuthorProto;

    iget-object v14, v14, Lcom/google/api/services/plusi/model/AuthorProto;->profileId:Ljava/lang/String;

    invoke-virtual {v4, v14}, Lcom/google/android/apps/plus/views/AvatarView;->setGaiaId(Ljava/lang/String;)V

    .line 1522
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/google/android/apps/plus/views/AvatarView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1528
    :goto_8e
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/google/api/services/plusi/model/GoogleReviewProto;->author:Lcom/google/api/services/plusi/model/AuthorProto;

    iget-object v14, v14, Lcom/google/api/services/plusi/model/AuthorProto;->profileLink:Lcom/google/api/services/plusi/model/PlacePageLink;

    if-eqz v14, :cond_14b

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/google/api/services/plusi/model/GoogleReviewProto;->author:Lcom/google/api/services/plusi/model/AuthorProto;

    iget-object v14, v14, Lcom/google/api/services/plusi/model/AuthorProto;->profileLink:Lcom/google/api/services/plusi/model/PlacePageLink;

    iget-object v14, v14, Lcom/google/api/services/plusi/model/PlacePageLink;->text:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_14b

    .line 1530
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1531
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/google/api/services/plusi/model/GoogleReviewProto;->author:Lcom/google/api/services/plusi/model/AuthorProto;

    iget-object v14, v14, Lcom/google/api/services/plusi/model/AuthorProto;->profileLink:Lcom/google/api/services/plusi/model/PlacePageLink;

    iget-object v14, v14, Lcom/google/api/services/plusi/model/PlacePageLink;->text:Ljava/lang/String;

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1541
    :goto_b3
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/google/api/services/plusi/model/GoogleReviewProto;->publishDate:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_161

    .line 1542
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1543
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/google/api/services/plusi/model/GoogleReviewProto;->publishDate:Ljava/lang/String;

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1548
    :goto_c8
    invoke-static/range {p2 .. p2}, Lcom/google/android/apps/plus/content/EsLocalPageData;->getAspectRatings(Lcom/google/api/services/plusi/model/GoogleReviewProto;)Ljava/util/List;

    move-result-object v2

    .line 1550
    .local v2, aspectRatings:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plusi/model/ZagatAspectRatingProto;>;"
    if-eqz v2, :cond_195

    .line 1551
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1552
    .local v3, aspectsTextBuilder:Landroid/text/SpannableStringBuilder;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_d4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    if-ge v7, v14, :cond_168

    .line 1553
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/services/plusi/model/ZagatAspectRatingProto;

    .line 1554
    .local v1, aspect:Lcom/google/api/services/plusi/model/ZagatAspectRatingProto;
    iget-object v14, v1, Lcom/google/api/services/plusi/model/ZagatAspectRatingProto;->labelDisplay:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_135

    iget-object v14, v1, Lcom/google/api/services/plusi/model/ZagatAspectRatingProto;->valueDisplay:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_135

    .line 1556
    iget-object v14, v1, Lcom/google/api/services/plusi/model/ZagatAspectRatingProto;->labelDisplay:Ljava/lang/String;

    new-instance v15, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ProfileAboutView;->getContext()Landroid/content/Context;

    move-result-object v16

    const v17, 0x7f0f0066

    invoke-direct/range {v15 .. v17}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-static {v3, v14, v15}, Lcom/google/android/apps/plus/util/SpannableUtils;->appendWithSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/Object;)V

    .line 1561
    const-string v14, "\u00a0"

    invoke-virtual {v3, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1562
    iget-object v14, v1, Lcom/google/api/services/plusi/model/ZagatAspectRatingProto;->valueDisplay:Ljava/lang/String;

    new-instance v15, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ProfileAboutView;->getContext()Landroid/content/Context;

    move-result-object v16

    const v17, 0x7f0f0067

    invoke-direct/range {v15 .. v17}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-static {v3, v14, v15}, Lcom/google/android/apps/plus/util/SpannableUtils;->appendWithSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/Object;)V

    .line 1567
    const-string v14, "\u00a0/\u00a03"

    new-instance v15, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ProfileAboutView;->getContext()Landroid/content/Context;

    move-result-object v16

    const v17, 0x7f0f0068

    invoke-direct/range {v15 .. v17}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-static {v3, v14, v15}, Lcom/google/android/apps/plus/util/SpannableUtils;->appendWithSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/Object;)V

    .line 1574
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    if-eq v7, v14, :cond_135

    .line 1575
    const-string v14, "  "

    invoke-virtual {v3, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1552
    :cond_135
    add-int/lit8 v7, v7, 0x1

    goto :goto_d4

    .line 1510
    .end local v1           #aspect:Lcom/google/api/services/plusi/model/ZagatAspectRatingProto;
    .end local v2           #aspectRatings:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plusi/model/ZagatAspectRatingProto;>;"
    .end local v3           #aspectsTextBuilder:Landroid/text/SpannableStringBuilder;
    .end local v7           #i:I
    .end local v8           #isFirstItem:Z
    :cond_138
    const/4 v8, 0x0

    goto/16 :goto_4e

    .line 1514
    .restart local v8       #isFirstItem:Z
    :cond_13b
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_55

    .line 1524
    :cond_141
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lcom/google/android/apps/plus/views/AvatarView;->setGaiaId(Ljava/lang/String;)V

    .line 1525
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lcom/google/android/apps/plus/views/AvatarView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_8e

    .line 1533
    :cond_14b
    const/16 v14, 0x8

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_b3

    .line 1536
    :cond_152
    const/16 v14, 0x8

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1537
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lcom/google/android/apps/plus/views/AvatarView;->setGaiaId(Ljava/lang/String;)V

    .line 1538
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lcom/google/android/apps/plus/views/AvatarView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_b3

    .line 1545
    :cond_161
    const/16 v14, 0x8

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_c8

    .line 1579
    .restart local v2       #aspectRatings:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plusi/model/ZagatAspectRatingProto;>;"
    .restart local v3       #aspectsTextBuilder:Landroid/text/SpannableStringBuilder;
    .restart local v7       #i:I
    :cond_168
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    if-lez v14, :cond_18f

    .line 1580
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1581
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1589
    .end local v3           #aspectsTextBuilder:Landroid/text/SpannableStringBuilder;
    .end local v7           #i:I
    :goto_175
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/google/api/services/plusi/model/GoogleReviewProto;->snippet:Ljava/lang/String;

    .line 1590
    .local v12, snippet:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_19b

    .line 1591
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1595
    const-string v14, "\\<.*?>"

    const-string v15, ""

    invoke-virtual {v12, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1596
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1600
    :goto_18e
    return-void

    .line 1583
    .end local v12           #snippet:Ljava/lang/String;
    .restart local v3       #aspectsTextBuilder:Landroid/text/SpannableStringBuilder;
    .restart local v7       #i:I
    :cond_18f
    const/16 v14, 0x8

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_175

    .line 1586
    .end local v3           #aspectsTextBuilder:Landroid/text/SpannableStringBuilder;
    .end local v7           #i:I
    :cond_195
    const/16 v14, 0x8

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_175

    .line 1598
    .restart local v12       #snippet:Ljava/lang/String;
    :cond_19b
    const/16 v14, 0x8

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_18e
.end method

.method private bindLocationView(Landroid/view/View;Lcom/google/android/apps/plus/views/ProfileAboutView$LocationItem;)V
    .registers 5
    .parameter "view"
    .parameter "item"

    .prologue
    .line 1352
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v0, p2, Lcom/google/android/apps/plus/views/ProfileAboutView$LocationItem;->current:Z

    if-eqz v0, :cond_23

    const/4 v0, 0x0

    :goto_c
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1353
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p2, Lcom/google/android/apps/plus/views/ProfileAboutView$LocationItem;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1354
    iget-object v0, p2, Lcom/google/android/apps/plus/views/ProfileAboutView$LocationItem;->address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1355
    return-void

    .line 1352
    :cond_23
    const/4 v0, 0x4

    goto :goto_c
.end method

.method private bindPhoneView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7
    .parameter "view"
    .parameter "phoneNumber"
    .parameter "type"
    .parameter "isFirst"

    .prologue
    .line 1306
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1307
    .local v0, formattedNumber:Ljava/lang/String;
    if-eqz p4, :cond_d

    const v1, 0x7f0201f8

    :goto_9
    invoke-direct {p0, p1, v1, v0, p3}, Lcom/google/android/apps/plus/views/ProfileAboutView;->bindDataView(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;)V

    .line 1308
    return-void

    .line 1307
    :cond_d
    const/4 v1, 0x0

    goto :goto_9
.end method

.method private bindPlacesMapView(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "view"
    .parameter "bitmap"

    .prologue
    .line 1361
    const v0, 0x7f090224

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1362
    return-void
.end method

.method private bindSectionHeader(Lcom/google/android/apps/plus/views/SectionHeaderView;I)V
    .registers 4
    .parameter "view"
    .parameter "resourceId"

    .prologue
    .line 1271
    invoke-virtual {p1, p2}, Lcom/google/android/apps/plus/views/SectionHeaderView;->setText(I)V

    .line 1272
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/views/ProfileAboutView;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/plus/views/SectionHeaderView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1273
    return-void
.end method

.method private enableDivider(Landroid/view/View;Z)V
    .registers 5
    .parameter "view"
    .parameter "enabled"

    .prologue
    .line 755
    const v1, 0x7f090074

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 756
    .local v0, divider:Landroid/view/View;
    if-eqz v0, :cond_f

    .line 757
    if-eqz p2, :cond_10

    const/4 v1, 0x0

    :goto_c
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 759
    :cond_f
    return-void

    .line 757
    :cond_10
    const/16 v1, 0x8

    goto :goto_c
.end method

.method private getLabeledStringView(Landroid/view/ViewGroup;Landroid/view/View;IILjava/lang/String;)Landroid/view/View;
    .registers 10
    .parameter "parent"
    .parameter "view"
    .parameter "layoutResId"
    .parameter "labelResId"
    .parameter "value"

    .prologue
    .line 1336
    if-nez p2, :cond_9

    .line 1337
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mInflater:Landroid/view/LayoutInflater;

    const/4 v3, 0x0

    invoke-virtual {v2, p3, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1339
    :cond_9
    const v2, 0x1020014

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1340
    .local v0, text1:Landroid/widget/TextView;
    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1341
    const v2, 0x1020015

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1342
    .local v1, text2:Landroid/widget/TextView;
    invoke-direct {p0, p4}, Lcom/google/android/apps/plus/views/ProfileAboutView;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1343
    invoke-direct {p0, p4}, Lcom/google/android/apps/plus/views/ProfileAboutView;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, p5, v2}, Lcom/google/android/apps/plus/views/ProfileAboutView;->setupContentDescription(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1344
    return-object p2
.end method

.method private getString(I)Ljava/lang/String;
    .registers 3
    .parameter "resourceId"

    .prologue
    .line 1240
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ProfileAboutView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initProfileLayout()V
    .registers 2

    .prologue
    .line 391
    new-instance v0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mProfileLayout:Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;

    .line 392
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mProfileLayout:Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->header:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    .line 393
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mProfileLayout:Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->details:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    .line 394
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ProfileAboutView;->setCoverPhotoToLoading()V

    .line 395
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ProfileAboutView;->setAvatarToLoading()V

    .line 396
    return-void
.end method

.method private setupContentDescription(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 6
    .parameter "view"
    .parameter "text1"
    .parameter "text2"

    .prologue
    .line 1246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1247
    .local v0, contentDescription:Ljava/lang/StringBuilder;
    if-eqz p3, :cond_15

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_15

    .line 1248
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1249
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1251
    :cond_15
    if-eqz p2, :cond_20

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_20

    .line 1252
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1254
    :cond_20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1255
    return-void
.end method

.method private updateGenericListSectionDividers(Landroid/view/ViewGroup;)V
    .registers 7
    .parameter "group"

    .prologue
    .line 1041
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1042
    .local v0, count:I
    if-nez v0, :cond_7

    .line 1059
    :goto_6
    return-void

    .line 1047
    :cond_7
    const/4 v1, 0x0

    .line 1050
    .local v1, i:I
    :goto_8
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1051
    .local v3, view:Landroid/view/View;
    if-ne v2, v0, :cond_15

    .line 1058
    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/google/android/apps/plus/views/ProfileAboutView;->enableDivider(Landroid/view/View;Z)V

    goto :goto_6

    .line 1054
    :cond_15
    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/google/android/apps/plus/views/ProfileAboutView;->enableDivider(Landroid/view/View;Z)V

    move v1, v2

    .line 1056
    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_8
.end method


# virtual methods
.method public addAddress(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "address"
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 850
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0300ad

    iget-object v4, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v4, v4, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->addresses:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 852
    .local v0, view:Landroid/view/View;
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->addresses:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-nez v2, :cond_19

    const/4 v1, 0x1

    :cond_19
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->bindAddressView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 853
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->addresses:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 855
    const v1, 0x7f0901e4

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 856
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 857
    new-instance v1, Lcom/google/android/apps/plus/views/ProfileAboutView$ItemOnTouchListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/apps/plus/views/ProfileAboutView$ItemOnTouchListener;-><init>(Lcom/google/android/apps/plus/views/ProfileAboutView;Lcom/google/android/apps/plus/views/ProfileAboutView$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 858
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 859
    return-void
.end method

.method public addCircleReview(Lcom/google/api/services/plusi/model/GoogleReviewProto;)V
    .registers 5
    .parameter "review"

    .prologue
    .line 1179
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->container:Landroid/view/View;

    const v2, 0x7f0901df

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1180
    .local v0, parent:Landroid/view/View;
    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->addReviewToParent(Lcom/google/api/services/plusi/model/GoogleReviewProto;Landroid/view/View;I)V

    .line 1181
    return-void
.end method

.method public addEmail(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "email"
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 807
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0300b3

    iget-object v4, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v4, v4, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->emails:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 809
    .local v0, view:Landroid/view/View;
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->emails:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-nez v2, :cond_19

    const/4 v1, 0x1

    :cond_19
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->bindEmailView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 810
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->emails:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 812
    const v1, 0x7f0901e2

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 813
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 814
    new-instance v1, Lcom/google/android/apps/plus/views/ProfileAboutView$ItemOnTouchListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/apps/plus/views/ProfileAboutView$ItemOnTouchListener;-><init>(Lcom/google/android/apps/plus/views/ProfileAboutView;Lcom/google/android/apps/plus/views/ProfileAboutView$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 815
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 816
    return-void
.end method

.method public addLink(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 11
    .parameter "url"
    .parameter "label"
    .parameter "icon"
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 1086
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0300a6

    iget-object v4, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v4, v4, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->locations:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1087
    .local v0, view:Landroid/view/View;
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->links:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-nez v2, :cond_38

    .end local p4
    :goto_19
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/google/android/apps/plus/views/ProfileAboutView;->bindLinkView(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 1088
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->links:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1090
    const v2, 0x7f0901dd

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 1091
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1092
    new-instance v2, Lcom/google/android/apps/plus/views/ProfileAboutView$ItemOnTouchListener;

    invoke-direct {v2, p0, v1}, Lcom/google/android/apps/plus/views/ProfileAboutView$ItemOnTouchListener;-><init>(Lcom/google/android/apps/plus/views/ProfileAboutView;Lcom/google/android/apps/plus/views/ProfileAboutView$1;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1093
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1094
    return-void

    .restart local p4
    :cond_38
    move-object p4, v1

    .line 1087
    goto :goto_19
.end method

.method public addLocalReview(Lcom/google/api/services/plusi/model/GoogleReviewProto;)V
    .registers 5
    .parameter "review"

    .prologue
    .line 1184
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->container:Landroid/view/View;

    const v2, 0x7f0901e0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1185
    .local v0, parent:Landroid/view/View;
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->addReviewToParent(Lcom/google/api/services/plusi/model/GoogleReviewProto;Landroid/view/View;I)V

    .line 1186
    return-void
.end method

.method public addLocation(Ljava/lang/String;Z)V
    .registers 9
    .parameter "address"
    .parameter "isCurrent"

    .prologue
    .line 1029
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0300ab

    iget-object v4, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v4, v4, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->locations:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1030
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->locations:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1032
    new-instance v0, Lcom/google/android/apps/plus/views/ProfileAboutView$LocationItem;

    invoke-direct {v0, p1, p2}, Lcom/google/android/apps/plus/views/ProfileAboutView$LocationItem;-><init>(Ljava/lang/String;Z)V

    .line 1033
    .local v0, item:Lcom/google/android/apps/plus/views/ProfileAboutView$LocationItem;
    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/plus/views/ProfileAboutView;->bindLocationView(Landroid/view/View;Lcom/google/android/apps/plus/views/ProfileAboutView$LocationItem;)V

    .line 1035
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1036
    new-instance v2, Lcom/google/android/apps/plus/views/ProfileAboutView$ItemOnTouchListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/apps/plus/views/ProfileAboutView$ItemOnTouchListener;-><init>(Lcom/google/android/apps/plus/views/ProfileAboutView;Lcom/google/android/apps/plus/views/ProfileAboutView$1;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1037
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1038
    return-void
.end method

.method public addPhoneNumber(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12
    .parameter "phoneNumber"
    .parameter "type"
    .parameter "isSmsIntentRegistered"

    .prologue
    const/16 v7, 0x8

    const/4 v4, 0x0

    .line 823
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0300b0

    iget-object v6, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v6, v6, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->phoneNumbers:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 824
    .local v2, view:Landroid/view/View;
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v3, v3, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->phoneNumbers:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-nez v3, :cond_57

    const/4 v3, 0x1

    :goto_1b
    invoke-direct {p0, v2, p1, p2, v3}, Lcom/google/android/apps/plus/views/ProfileAboutView;->bindPhoneView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 825
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v3, v3, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->phoneNumbers:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 827
    const v3, 0x7f0901e3

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 828
    invoke-virtual {v2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 829
    new-instance v3, Lcom/google/android/apps/plus/views/ProfileAboutView$ItemOnTouchListener;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5}, Lcom/google/android/apps/plus/views/ProfileAboutView$ItemOnTouchListener;-><init>(Lcom/google/android/apps/plus/views/ProfileAboutView;Lcom/google/android/apps/plus/views/ProfileAboutView$1;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 830
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 832
    const v3, 0x7f090223

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 833
    .local v1, sendSmsButton:Landroid/view/View;
    const v3, 0x7f0900c5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 834
    .local v0, divider:Landroid/view/View;
    if-eqz p3, :cond_59

    .line 835
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 836
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 837
    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 838
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 843
    :goto_56
    return-void

    .end local v0           #divider:Landroid/view/View;
    .end local v1           #sendSmsButton:Landroid/view/View;
    :cond_57
    move v3, v4

    .line 824
    goto :goto_1b

    .line 840
    .restart local v0       #divider:Landroid/view/View;
    .restart local v1       #sendSmsButton:Landroid/view/View;
    :cond_59
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 841
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_56
.end method

.method public addYourReview(Lcom/google/api/services/plusi/model/GoogleReviewProto;)V
    .registers 5
    .parameter "review"

    .prologue
    .line 1174
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->container:Landroid/view/View;

    const v2, 0x7f0901de

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1175
    .local v0, parent:Landroid/view/View;
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->addReviewToParent(Lcom/google/api/services/plusi/model/GoogleReviewProto;Landroid/view/View;I)V

    .line 1176
    return-void
.end method

.method public clearAddresses()V
    .registers 2

    .prologue
    .line 846
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->addresses:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 847
    return-void
.end method

.method public clearAllReviews()V
    .registers 6

    .prologue
    const v4, 0x7f09009d

    .line 1160
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->container:Landroid/view/View;

    const v3, 0x7f0901de

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1161
    .local v1, parent:Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1162
    .local v0, container:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1164
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->container:Landroid/view/View;

    const v3, 0x7f0901df

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1165
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #container:Landroid/widget/LinearLayout;
    check-cast v0, Landroid/widget/LinearLayout;

    .line 1166
    .restart local v0       #container:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1168
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->container:Landroid/view/View;

    const v3, 0x7f0901e0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1169
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #container:Landroid/widget/LinearLayout;
    check-cast v0, Landroid/widget/LinearLayout;

    .line 1170
    .restart local v0       #container:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1171
    return-void
.end method

.method public clearEmails()V
    .registers 2

    .prologue
    .line 803
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->emails:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 804
    return-void
.end method

.method public clearLinks()V
    .registers 2

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->links:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1083
    return-void
.end method

.method public clearLocations()V
    .registers 2

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->locations:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1026
    return-void
.end method

.method public clearPhoneNumbers()V
    .registers 2

    .prologue
    .line 819
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->phoneNumbers:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 820
    return-void
.end method

.method public enableAvatarChangePhotoIcon(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 605
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v1, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->avatarChoosePhotoIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_b

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 606
    return-void

    .line 605
    :cond_b
    const/16 v0, 0x8

    goto :goto_7
.end method

.method public enableContactSection(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 762
    if-eqz p1, :cond_1e

    .line 763
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->contactSection:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 765
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->contactSection:Landroid/view/ViewGroup;

    const v2, 0x7f0901d4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/SectionHeaderView;

    .line 767
    .local v0, headerView:Lcom/google/android/apps/plus/views/SectionHeaderView;
    const v1, 0x7f080224

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->bindSectionHeader(Lcom/google/android/apps/plus/views/SectionHeaderView;I)V

    .line 771
    .end local v0           #headerView:Lcom/google/android/apps/plus/views/SectionHeaderView;
    :goto_1d
    return-void

    .line 769
    :cond_1e
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->contactSection:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1d
.end method

.method public enableHompageSection(Z)V
    .registers 6
    .parameter "enabled"

    .prologue
    .line 1140
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->container:Landroid/view/View;

    const v3, 0x7f0901db

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1141
    .local v1, view:Landroid/view/View;
    if-eqz p1, :cond_21

    const/4 v2, 0x0

    :goto_e
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1143
    const v2, 0x7f0901dc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/SectionHeaderView;

    .line 1145
    .local v0, headerView:Lcom/google/android/apps/plus/views/SectionHeaderView;
    const v2, 0x7f0802a5

    invoke-direct {p0, v0, v2}, Lcom/google/android/apps/plus/views/ProfileAboutView;->bindSectionHeader(Lcom/google/android/apps/plus/views/SectionHeaderView;I)V

    .line 1146
    return-void

    .line 1141
    .end local v0           #headerView:Lcom/google/android/apps/plus/views/SectionHeaderView;
    :cond_21
    const/16 v2, 0x8

    goto :goto_e
.end method

.method public enableLinksSection(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 1066
    if-eqz p1, :cond_1e

    .line 1067
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->linksSection:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1069
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->linksSection:Landroid/view/ViewGroup;

    const v2, 0x7f0901d4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/SectionHeaderView;

    .line 1071
    .local v0, headerView:Lcom/google/android/apps/plus/views/SectionHeaderView;
    const v1, 0x7f0802a5

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->bindSectionHeader(Lcom/google/android/apps/plus/views/SectionHeaderView;I)V

    .line 1075
    .end local v0           #headerView:Lcom/google/android/apps/plus/views/SectionHeaderView;
    :goto_1d
    return-void

    .line 1073
    :cond_1e
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->linksSection:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1d
.end method

.method public enableLocalDetailsSection(Z)V
    .registers 6
    .parameter "enabled"

    .prologue
    .line 1120
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->container:Landroid/view/View;

    const v3, 0x7f0901d8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1121
    .local v1, view:Landroid/view/View;
    if-eqz p1, :cond_23

    const/4 v2, 0x0

    :goto_e
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1122
    if-eqz p1, :cond_22

    .line 1123
    const v2, 0x7f0901d9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/SectionHeaderView;

    .line 1125
    .local v0, headerView:Lcom/google/android/apps/plus/views/SectionHeaderView;
    const v2, 0x7f08042e

    invoke-direct {p0, v0, v2}, Lcom/google/android/apps/plus/views/ProfileAboutView;->bindSectionHeader(Lcom/google/android/apps/plus/views/SectionHeaderView;I)V

    .line 1127
    .end local v0           #headerView:Lcom/google/android/apps/plus/views/SectionHeaderView;
    :cond_22
    return-void

    .line 1121
    :cond_23
    const/16 v2, 0x8

    goto :goto_e
.end method

.method public enableLocalEditorialReviewsSection(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 1107
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->container:Landroid/view/View;

    const v2, 0x7f0901d7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1108
    .local v0, view:Landroid/view/View;
    if-eqz p1, :cond_12

    const/4 v1, 0x0

    :goto_e
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1109
    return-void

    .line 1108
    :cond_12
    const/16 v1, 0x8

    goto :goto_e
.end method

.method public enableLocalReviewsSection(Z)V
    .registers 6
    .parameter "enabled"

    .prologue
    .line 1224
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->container:Landroid/view/View;

    const v3, 0x7f0901e0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1225
    .local v1, view:Landroid/view/View;
    if-eqz p1, :cond_21

    .line 1226
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1228
    const v2, 0x7f0901d4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/SectionHeaderView;

    .line 1230
    .local v0, headerView:Lcom/google/android/apps/plus/views/SectionHeaderView;
    const v2, 0x7f08042b

    invoke-direct {p0, v0, v2}, Lcom/google/android/apps/plus/views/ProfileAboutView;->bindSectionHeader(Lcom/google/android/apps/plus/views/SectionHeaderView;I)V

    .line 1234
    .end local v0           #headerView:Lcom/google/android/apps/plus/views/SectionHeaderView;
    :goto_20
    return-void

    .line 1232
    :cond_21
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_20
.end method

.method public enableLocalYourActivitySection(Z)V
    .registers 6
    .parameter "enabled"

    .prologue
    .line 1197
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->container:Landroid/view/View;

    const v3, 0x7f0901de

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1198
    .local v1, view:Landroid/view/View;
    if-eqz p1, :cond_21

    .line 1199
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1201
    const v2, 0x7f0901d4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/SectionHeaderView;

    .line 1203
    .local v0, headerView:Lcom/google/android/apps/plus/views/SectionHeaderView;
    const v2, 0x7f08042c

    invoke-direct {p0, v0, v2}, Lcom/google/android/apps/plus/views/ProfileAboutView;->bindSectionHeader(Lcom/google/android/apps/plus/views/SectionHeaderView;I)V

    .line 1207
    .end local v0           #headerView:Lcom/google/android/apps/plus/views/SectionHeaderView;
    :goto_20
    return-void

    .line 1205
    :cond_21
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_20
.end method

.method public enableLocalYourCirclesActivitySection(Z)V
    .registers 6
    .parameter "enabled"

    .prologue
    .line 1210
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->container:Landroid/view/View;

    const v3, 0x7f0901df

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1211
    .local v1, view:Landroid/view/View;
    if-eqz p1, :cond_21

    .line 1212
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1214
    const v2, 0x7f0901d4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/SectionHeaderView;

    .line 1216
    .local v0, headerView:Lcom/google/android/apps/plus/views/SectionHeaderView;
    const v2, 0x7f08042d

    invoke-direct {p0, v0, v2}, Lcom/google/android/apps/plus/views/ProfileAboutView;->bindSectionHeader(Lcom/google/android/apps/plus/views/SectionHeaderView;I)V

    .line 1221
    .end local v0           #headerView:Lcom/google/android/apps/plus/views/SectionHeaderView;
    :goto_20
    return-void

    .line 1219
    :cond_21
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_20
.end method

.method public enableLocationsSection(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 1009
    if-eqz p1, :cond_1e

    .line 1010
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->locationsSection:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1012
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->locationsSection:Landroid/view/ViewGroup;

    const v2, 0x7f0901d4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/SectionHeaderView;

    .line 1014
    .local v0, headerView:Lcom/google/android/apps/plus/views/SectionHeaderView;
    const v1, 0x7f0802a4

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->bindSectionHeader(Lcom/google/android/apps/plus/views/SectionHeaderView;I)V

    .line 1018
    .end local v0           #headerView:Lcom/google/android/apps/plus/views/SectionHeaderView;
    :goto_1d
    return-void

    .line 1016
    :cond_1e
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->locationsSection:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1d
.end method

.method public enablePersonalSection(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 862
    if-eqz p1, :cond_1e

    .line 863
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->personalSection:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 865
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->personalSection:Landroid/view/ViewGroup;

    const v2, 0x7f0901d4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/SectionHeaderView;

    .line 867
    .local v0, headerView:Lcom/google/android/apps/plus/views/SectionHeaderView;
    const v1, 0x7f08029c

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->bindSectionHeader(Lcom/google/android/apps/plus/views/SectionHeaderView;I)V

    .line 871
    .end local v0           #headerView:Lcom/google/android/apps/plus/views/SectionHeaderView;
    :goto_1d
    return-void

    .line 869
    :cond_1e
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->personalSection:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1d
.end method

.method public enableWorkEducationSection(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 935
    if-eqz p1, :cond_1e

    .line 936
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->workEducationSection:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 938
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->workEducationSection:Landroid/view/ViewGroup;

    const v2, 0x7f0901d4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/SectionHeaderView;

    .line 940
    .local v0, headerView:Lcom/google/android/apps/plus/views/SectionHeaderView;
    const v1, 0x7f0802a1

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->bindSectionHeader(Lcom/google/android/apps/plus/views/SectionHeaderView;I)V

    .line 944
    .end local v0           #headerView:Lcom/google/android/apps/plus/views/SectionHeaderView;
    :goto_1d
    return-void

    .line 942
    :cond_1e
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->workEducationSection:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1d
.end method

.method public init(Z)V
    .registers 4
    .parameter "isExpanded"

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mProfileLayout:Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;

    if-nez v0, :cond_7

    .line 400
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/ProfileAboutView;->initProfileLayout()V

    .line 403
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->coverPhoto:Lcom/google/android/apps/plus/views/EsImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/EsImageView;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->scrapbookAlbum:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->expandArea:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->circlesButton:Lcom/google/android/apps/plus/views/CirclesButton;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/views/CirclesButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->addToCirclesButton:Lcom/google/android/apps/plus/views/CirclesButton;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/views/CirclesButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->plusOneButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mIsExpanded:Z

    .line 412
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 11
    .parameter "v"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 424
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 426
    .local v1, id:I
    const v5, 0x7f090201

    if-ne v1, v5, :cond_2a

    .line 427
    iget-boolean v5, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mIsExpanded:Z

    if-eqz v5, :cond_2f

    .line 428
    iget-object v5, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v5, v5, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->container:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 429
    iput-boolean v7, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mIsExpanded:Z

    .line 430
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/ProfileAboutView;->bindExpandArea()V

    .line 431
    const v5, 0x7f080460

    invoke-direct {p0, v5}, Lcom/google/android/apps/plus/views/ProfileAboutView;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 438
    :goto_27
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ProfileAboutView;->requestLayout()V

    .line 441
    :cond_2a
    iget-object v5, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mOnClickListener:Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;

    if-nez v5, :cond_46

    .line 516
    :goto_2e
    return-void

    .line 433
    :cond_2f
    iget-object v5, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v5, v5, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->container:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 434
    iput-boolean v8, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mIsExpanded:Z

    .line 435
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/ProfileAboutView;->bindExpandArea()V

    .line 436
    const v5, 0x7f080461

    invoke-direct {p0, v5}, Lcom/google/android/apps/plus/views/ProfileAboutView;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_27

    .line 445
    :cond_46
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    sparse-switch v5, :sswitch_data_114

    goto :goto_2e

    .line 447
    :sswitch_4e
    iget-object v5, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mOnClickListener:Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;

    invoke-interface {v5}, Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;->onAvatarClicked()V

    goto :goto_2e

    .line 451
    :sswitch_54
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/views/ProfileAboutView$LocationItem;

    .line 452
    .local v2, location:Lcom/google/android/apps/plus/views/ProfileAboutView$LocationItem;
    iget-object v5, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mOnClickListener:Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;

    iget-object v6, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$LocationItem;->address:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;->onLocationClicked(Ljava/lang/String;)V

    goto :goto_2e

    .line 456
    .end local v2           #location:Lcom/google/android/apps/plus/views/ProfileAboutView$LocationItem;
    :sswitch_62
    iget-object v6, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mOnClickListener:Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v6, v5}, Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;->onEmailClicked(Ljava/lang/String;)V

    goto :goto_2e

    .line 460
    :sswitch_6e
    iget-object v6, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mOnClickListener:Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v6, v5}, Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;->onPhoneNumberClicked(Ljava/lang/String;)V

    goto :goto_2e

    .line 464
    :sswitch_7a
    iget-object v6, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mOnClickListener:Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v6, v5}, Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;->onSendTextClicked(Ljava/lang/String;)V

    goto :goto_2e

    .line 468
    :sswitch_86
    iget-object v6, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mOnClickListener:Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v6, v5}, Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;->onAddressClicked(Ljava/lang/String;)V

    goto :goto_2e

    .line 472
    :sswitch_92
    iget-object v6, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mOnClickListener:Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v6, v5}, Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;->onLinkClicked(Ljava/lang/String;)V

    goto :goto_2e

    .line 477
    :sswitch_9e
    iget-object v5, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mOnClickListener:Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;

    invoke-interface {v5}, Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;->onCirclesButtonClicked()V

    goto :goto_2e

    .line 481
    :sswitch_a4
    iget-object v6, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mOnClickListener:Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v6, v5}, Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;->onLocalMapClicked(Ljava/lang/String;)V

    goto/16 :goto_2e

    .line 485
    :sswitch_b1
    iget-object v6, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mOnClickListener:Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v6, v5}, Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;->onLocalDirectionsClicked(Ljava/lang/String;)V

    goto/16 :goto_2e

    .line 489
    :sswitch_be
    iget-object v6, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mOnClickListener:Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v6, v5}, Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;->onLocalCallClicked(Ljava/lang/String;)V

    goto/16 :goto_2e

    .line 493
    :sswitch_cb
    iget-object v5, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mOnClickListener:Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;

    invoke-interface {v5}, Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;->onZagatExplanationClicked()V

    goto/16 :goto_2e

    .line 497
    :sswitch_d2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Integer;

    check-cast v5, [Ljava/lang/Integer;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 498
    .local v4, reviewType:I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Integer;

    check-cast v5, [Ljava/lang/Integer;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 499
    .local v3, reviewIndex:I
    iget-object v5, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mOnClickListener:Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;

    invoke-interface {v5, v4, v3}, Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;->onLocalReviewClicked(II)V

    goto/16 :goto_2e

    .end local v3           #reviewIndex:I
    .end local v4           #reviewType:I
    :sswitch_f5
    move-object v0, p1

    .line 503
    check-cast v0, Lcom/google/android/apps/plus/views/AvatarView;

    .line 504
    .local v0, authorAvatar:Lcom/google/android/apps/plus/views/AvatarView;
    iget-object v5, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mOnClickListener:Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/AvatarView;->getGaiaId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;->onReviewAuthorAvatarClicked(Ljava/lang/String;)V

    goto/16 :goto_2e

    .line 508
    .end local v0           #authorAvatar:Lcom/google/android/apps/plus/views/AvatarView;
    :sswitch_103
    iget-object v5, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mOnClickListener:Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;

    invoke-interface {v5}, Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;->onPlusOneClicked()V

    goto/16 :goto_2e

    .line 512
    :sswitch_10a
    iget-object v5, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mOnClickListener:Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;

    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mIsExpanded:Z

    invoke-interface {v5, v6}, Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;->onExpandClicked(Z)V

    goto/16 :goto_2e

    .line 445
    nop

    :sswitch_data_114
    .sparse-switch
        0x7f090156 -> :sswitch_4e
        0x7f0901dd -> :sswitch_92
        0x7f0901e2 -> :sswitch_62
        0x7f0901e3 -> :sswitch_6e
        0x7f0901e4 -> :sswitch_86
        0x7f0901fc -> :sswitch_54
        0x7f0901fe -> :sswitch_9e
        0x7f0901ff -> :sswitch_9e
        0x7f090200 -> :sswitch_103
        0x7f090201 -> :sswitch_10a
        0x7f090202 -> :sswitch_a4
        0x7f090204 -> :sswitch_b1
        0x7f090206 -> :sswitch_be
        0x7f09020f -> :sswitch_d2
        0x7f090210 -> :sswitch_f5
        0x7f09021f -> :sswitch_cb
        0x7f090223 -> :sswitch_7a
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 416
    invoke-super {p0}, Lcom/google/android/apps/plus/views/EsScrollView;->onFinishInflate()V

    .line 417
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/ProfileAboutView;->initProfileLayout()V

    .line 418
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/ProfileAboutView;->setVerticalFadingEdgeEnabled(Z)V

    .line 419
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/ProfileAboutView;->setFadingEdgeLength(I)V

    .line 420
    return-void
.end method

.method public onRecycle()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 520
    iput-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mOnClickListener:Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;

    .line 522
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    if-eqz v0, :cond_5b

    .line 523
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->coverPhoto:Lcom/google/android/apps/plus/views/EsImageView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/EsImageView;->onRecycle()V

    .line 524
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->avatarImage:Lcom/google/android/apps/plus/views/EsImageView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/EsImageView;->onRecycle()V

    .line 525
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->scrapbookPhoto1:Lcom/google/android/apps/plus/views/EsImageView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/EsImageView;->onRecycle()V

    .line 526
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->scrapbookPhoto2:Lcom/google/android/apps/plus/views/EsImageView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/EsImageView;->onRecycle()V

    .line 527
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->scrapbookPhoto3:Lcom/google/android/apps/plus/views/EsImageView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/EsImageView;->onRecycle()V

    .line 528
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->scrapbookPhoto4:Lcom/google/android/apps/plus/views/EsImageView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/EsImageView;->onRecycle()V

    .line 529
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->scrapbookPhoto5:Lcom/google/android/apps/plus/views/EsImageView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/EsImageView;->onRecycle()V

    .line 531
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->expandArea:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 532
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->avatarImage:Lcom/google/android/apps/plus/views/EsImageView;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/EsImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 533
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->circlesButton:Lcom/google/android/apps/plus/views/CirclesButton;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/CirclesButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->addToCirclesButton:Lcom/google/android/apps/plus/views/CirclesButton;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/CirclesButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 535
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->plusOneButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 538
    :cond_5b
    iput-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    .line 539
    iput-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    .line 540
    iput-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mProfileLayout:Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;

    .line 541
    return-void
.end method

.method public setAddedByCount(Ljava/lang/Integer;)V
    .registers 10
    .parameter "count"

    .prologue
    const/4 v7, 0x0

    .line 593
    if-eqz p1, :cond_32

    .line 594
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v0

    .line 595
    .local v0, formatter:Ljava/text/NumberFormat;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ProfileAboutView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e002a

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 597
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->addedByCount:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->addedByCount:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 602
    .end local v0           #formatter:Ljava/text/NumberFormat;
    .end local v1           #text:Ljava/lang/String;
    :goto_31
    return-void

    .line 600
    :cond_32
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->addedByCount:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_31
.end method

.method public setAvatarToDefault()V
    .registers 3

    .prologue
    .line 613
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->avatarProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 614
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->avatarImage:Lcom/google/android/apps/plus/views/EsImageView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ProfileAboutView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/content/EsAvatarData;->getMediumDefaultAvatar(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/EsImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 615
    return-void
.end method

.method public setAvatarToLoading()V
    .registers 3

    .prologue
    .line 609
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->avatarImage:Lcom/google/android/apps/plus/views/EsImageView;

    const v1, 0x7f0201f0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/EsImageView;->setImageResource(I)V

    .line 610
    return-void
.end method

.method public setAvatarUrl(Ljava/lang/String;Z)V
    .registers 4
    .parameter "url"
    .parameter "enableChoosePhotoIcon"

    .prologue
    .line 618
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->avatarImage:Lcom/google/android/apps/plus/views/EsImageView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/EsImageView;->setUrl(Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->avatarImage:Lcom/google/android/apps/plus/views/EsImageView;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/views/EsImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 620
    if-eqz p2, :cond_14

    .line 621
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/ProfileAboutView;->enableAvatarChangePhotoIcon(Z)V

    .line 623
    :cond_14
    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .registers 10
    .parameter "birthday"

    .prologue
    const/16 v7, 0x3e9

    .line 914
    if-eqz p1, :cond_4b

    .line 916
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->birthday:Landroid/view/View;

    if-nez v0, :cond_16

    .line 917
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->personalSection:Landroid/view/ViewGroup;

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->birthday:Landroid/view/View;

    .line 919
    :cond_16
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->personalSection:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v2, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->birthday:Landroid/view/View;

    const v3, 0x7f0300b2

    const v4, 0x7f0802a0

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/views/ProfileAboutView;->getLabeledStringView(Landroid/view/ViewGroup;Landroid/view/View;IILjava/lang/String;)Landroid/view/View;

    move-result-object v6

    .line 921
    .local v6, view:Landroid/view/View;
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->birthday:Landroid/view/View;

    if-nez v0, :cond_42

    .line 922
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iput-object v6, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->birthday:Landroid/view/View;

    .line 923
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->birthday:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setId(I)V

    .line 924
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->personalSection:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 926
    :cond_42
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->birthday:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 932
    .end local v6           #view:Landroid/view/View;
    :cond_4a
    :goto_4a
    return-void

    .line 928
    :cond_4b
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->birthday:Landroid/view/View;

    if-eqz v0, :cond_4a

    .line 929
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->birthday:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4a
.end method

.method public setCircles(Ljava/util/ArrayList;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, circleNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v2, 0x8

    .line 1653
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->circlesButton:Lcom/google/android/apps/plus/views/CirclesButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/CirclesButton;->setVisibility(I)V

    .line 1654
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->circlesButton:Lcom/google/android/apps/plus/views/CirclesButton;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/CirclesButton;->setCircles(Ljava/util/ArrayList;)V

    .line 1655
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->addToCirclesButton:Lcom/google/android/apps/plus/views/CirclesButton;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/CirclesButton;->setVisibility(I)V

    .line 1656
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->blockedText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1657
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1658
    return-void
.end method

.method public setCoverPhotoToDefault()V
    .registers 3

    .prologue
    .line 635
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->coverPhoto:Lcom/google/android/apps/plus/views/EsImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/EsImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 636
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->coverPhoto:Lcom/google/android/apps/plus/views/EsImageView;

    const v1, 0x7f020063

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/EsImageView;->setImageResource(I)V

    .line 637
    return-void
.end method

.method public setCoverPhotoToLoading()V
    .registers 3

    .prologue
    .line 631
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->coverPhoto:Lcom/google/android/apps/plus/views/EsImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/EsImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 632
    return-void
.end method

.method public setCoverPhotoUrl(Ljava/lang/String;)V
    .registers 3
    .parameter "url"

    .prologue
    .line 626
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->coverPhoto:Lcom/google/android/apps/plus/views/EsImageView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/EsImageView;->setUrl(Ljava/lang/String;)V

    .line 627
    return-void
.end method

.method public setDisplayPolicies(Lcom/google/android/apps/plus/views/ProfileAboutView$DisplayPolicies;)V
    .registers 6
    .parameter "policy"

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 544
    iput-object p1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mPolicy:Lcom/google/android/apps/plus/views/ProfileAboutView$DisplayPolicies;

    .line 546
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mPolicy:Lcom/google/android/apps/plus/views/ProfileAboutView$DisplayPolicies;

    iget-boolean v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$DisplayPolicies;->hideButtons:Z

    if-eqz v2, :cond_2a

    .line 547
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->buttons:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 552
    :goto_12
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mPolicy:Lcom/google/android/apps/plus/views/ProfileAboutView$DisplayPolicies;

    iget-boolean v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$DisplayPolicies;->showDetailsAlways:Z

    if-eqz v2, :cond_32

    .line 553
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->expandArea:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 554
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->container:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 560
    :goto_26
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ProfileAboutView;->requestLayout()V

    .line 561
    return-void

    .line 549
    :cond_2a
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->buttons:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12

    .line 556
    :cond_32
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/ProfileAboutView;->bindExpandArea()V

    .line 557
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->container:Landroid/view/View;

    iget-boolean v3, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mIsExpanded:Z

    if-eqz v3, :cond_41

    :goto_3d
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_26

    :cond_41
    move v0, v1

    goto :goto_3d
.end method

.method public setEducation(Ljava/lang/String;)V
    .registers 5
    .parameter "institution"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 671
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 672
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->education:Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;->container:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 673
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->education:Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 674
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mPolicy:Lcom/google/android/apps/plus/views/ProfileAboutView$DisplayPolicies;

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DisplayPolicies;->showInfoIcons:Z

    if-eqz v0, :cond_2b

    .line 675
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->education:Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 682
    :goto_2a
    return-void

    .line 677
    :cond_2b
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->education:Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2a

    .line 680
    :cond_35
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->education:Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;->container:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2a
.end method

.method public setEducationLocations(Ljava/lang/String;)V
    .registers 10
    .parameter "locations"

    .prologue
    const/16 v7, 0x3eb

    .line 988
    if-eqz p1, :cond_4b

    .line 989
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->education:Landroid/view/View;

    if-nez v0, :cond_16

    .line 990
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->workEducationSection:Landroid/view/ViewGroup;

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->education:Landroid/view/View;

    .line 992
    :cond_16
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->workEducationSection:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v2, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->education:Landroid/view/View;

    const v3, 0x7f0300ac

    const v4, 0x7f0802a3

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/views/ProfileAboutView;->getLabeledStringView(Landroid/view/ViewGroup;Landroid/view/View;IILjava/lang/String;)Landroid/view/View;

    move-result-object v6

    .line 994
    .local v6, view:Landroid/view/View;
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->education:Landroid/view/View;

    if-nez v0, :cond_42

    .line 995
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iput-object v6, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->education:Landroid/view/View;

    .line 996
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->education:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setId(I)V

    .line 997
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->workEducationSection:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 999
    :cond_42
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->education:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1006
    .end local v6           #view:Landroid/view/View;
    :cond_4a
    :goto_4a
    return-void

    .line 1002
    :cond_4b
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->education:Landroid/view/View;

    if-eqz v0, :cond_4a

    .line 1003
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->education:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4a
.end method

.method public setEmployer(Ljava/lang/String;)V
    .registers 5
    .parameter "employer"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 657
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 658
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->employer:Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;->container:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 659
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->employer:Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 660
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mPolicy:Lcom/google/android/apps/plus/views/ProfileAboutView$DisplayPolicies;

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DisplayPolicies;->showInfoIcons:Z

    if-eqz v0, :cond_2b

    .line 661
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->employer:Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 668
    :goto_2a
    return-void

    .line 663
    :cond_2b
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->employer:Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2a

    .line 666
    :cond_35
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->employer:Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;->container:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2a
.end method

.method public setEmploymentLocations(Ljava/lang/String;)V
    .registers 10
    .parameter "locations"

    .prologue
    const/16 v7, 0x3ea

    .line 967
    if-eqz p1, :cond_4b

    .line 968
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->employment:Landroid/view/View;

    if-nez v0, :cond_16

    .line 969
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->workEducationSection:Landroid/view/ViewGroup;

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->employment:Landroid/view/View;

    .line 971
    :cond_16
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->workEducationSection:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v2, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->employment:Landroid/view/View;

    const v3, 0x7f0300ac

    const v4, 0x7f0802a2

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/views/ProfileAboutView;->getLabeledStringView(Landroid/view/ViewGroup;Landroid/view/View;IILjava/lang/String;)Landroid/view/View;

    move-result-object v6

    .line 973
    .local v6, view:Landroid/view/View;
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->employment:Landroid/view/View;

    if-nez v0, :cond_42

    .line 974
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iput-object v6, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->employment:Landroid/view/View;

    .line 975
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->employment:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setId(I)V

    .line 976
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->workEducationSection:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 978
    :cond_42
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->employment:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 985
    .end local v6           #view:Landroid/view/View;
    :cond_4a
    :goto_4a
    return-void

    .line 981
    :cond_4b
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->employment:Landroid/view/View;

    if-eqz v0, :cond_4a

    .line 982
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->employment:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4a
.end method

.method public setGender(Ljava/lang/String;)V
    .registers 10
    .parameter "gender"

    .prologue
    const/16 v7, 0x3e8

    .line 894
    if-eqz p1, :cond_4b

    .line 895
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->gender:Landroid/view/View;

    if-nez v0, :cond_16

    .line 896
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->personalSection:Landroid/view/ViewGroup;

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->gender:Landroid/view/View;

    .line 898
    :cond_16
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->personalSection:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v2, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->gender:Landroid/view/View;

    const v3, 0x7f0300b2

    const v4, 0x7f08029d

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/views/ProfileAboutView;->getLabeledStringView(Landroid/view/ViewGroup;Landroid/view/View;IILjava/lang/String;)Landroid/view/View;

    move-result-object v6

    .line 900
    .local v6, view:Landroid/view/View;
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->gender:Landroid/view/View;

    if-nez v0, :cond_42

    .line 901
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iput-object v6, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->gender:Landroid/view/View;

    .line 902
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->gender:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setId(I)V

    .line 903
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->personalSection:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 905
    :cond_42
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->gender:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 911
    .end local v6           #view:Landroid/view/View;
    :cond_4a
    :goto_4a
    return-void

    .line 907
    :cond_4b
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->gender:Landroid/view/View;

    if-eqz v0, :cond_4a

    .line 908
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->gender:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4a
.end method

.method public setHomepage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 9
    .parameter "url"
    .parameter "text"
    .parameter "icon"

    .prologue
    const/4 v4, 0x0

    .line 1149
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->container:Landroid/view/View;

    const v3, 0x7f0901db

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1150
    .local v0, parent:Landroid/view/View;
    const v2, 0x7f0901dd

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1151
    .local v1, view:Landroid/view/View;
    invoke-direct {p0, v1, p2, p3, v4}, Lcom/google/android/apps/plus/views/ProfileAboutView;->bindLinkView(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 1152
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/plus/views/ProfileAboutView;->enableDivider(Landroid/view/View;Z)V

    .line 1154
    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1155
    new-instance v2, Lcom/google/android/apps/plus/views/ProfileAboutView$ItemOnTouchListener;

    invoke-direct {v2, p0, v4}, Lcom/google/android/apps/plus/views/ProfileAboutView$ItemOnTouchListener;-><init>(Lcom/google/android/apps/plus/views/ProfileAboutView;Lcom/google/android/apps/plus/views/ProfileAboutView$1;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1156
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1157
    return-void
.end method

.method public setIntroduction(Ljava/lang/String;)V
    .registers 6
    .parameter "intro"

    .prologue
    .line 740
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 741
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->introduction:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 743
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->introduction:Landroid/view/View;

    const v3, 0x7f0901d4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/SectionHeaderView;

    .line 745
    .local v0, headerView:Lcom/google/android/apps/plus/views/SectionHeaderView;
    const v2, 0x7f080223

    invoke-direct {p0, v0, v2}, Lcom/google/android/apps/plus/views/ProfileAboutView;->bindSectionHeader(Lcom/google/android/apps/plus/views/SectionHeaderView;I)V

    .line 747
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->introduction:Landroid/view/View;

    const v3, 0x7f09009d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 748
    .local v1, view:Landroid/view/View;
    invoke-direct {p0, v1, p1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->bindIntroductionView(Landroid/view/View;Ljava/lang/String;)V

    .line 752
    .end local v0           #headerView:Lcom/google/android/apps/plus/views/SectionHeaderView;
    .end local v1           #view:Landroid/view/View;
    :goto_2f
    return-void

    .line 750
    :cond_30
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->introduction:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2f
.end method

.method public setIsExpanded(Z)V
    .registers 2
    .parameter "isExpanded"

    .prologue
    .line 720
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mIsExpanded:Z

    .line 721
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/ProfileAboutView;->bindExpandArea()V

    .line 722
    return-void
.end method

.method public setLocalActions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "fullName"
    .parameter "phone"
    .parameter "mapsCid"
    .parameter "localPageAddress"

    .prologue
    .line 1098
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->container:Landroid/view/View;

    const v3, 0x7f0901d6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1099
    .local v1, view:Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1101
    new-instance v0, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalActionsItem;

    invoke-direct {v0, p2, p1, p3, p4}, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalActionsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    .local v0, localActionsItem:Lcom/google/android/apps/plus/views/ProfileAboutView$LocalActionsItem;
    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/plus/views/ProfileAboutView;->bindLocalActions(Landroid/view/View;Lcom/google/android/apps/plus/views/ProfileAboutView$LocalActionsItem;)V

    .line 1104
    return-void
.end method

.method public setLocalDetails(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter
    .parameter "phone"
    .parameter "openingHoursSummary"
    .parameter "openingHoursFull"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1131
    .local p1, knownForTerms:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v3, v3, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->container:Landroid/view/View;

    const v4, 0x7f0901d8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1132
    .local v1, parent:Landroid/view/View;
    const v3, 0x7f0901da

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1133
    .local v2, view:Landroid/view/View;
    new-instance v0, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalDetailsItem;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalDetailsItem;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    .local v0, item:Lcom/google/android/apps/plus/views/ProfileAboutView$LocalDetailsItem;
    invoke-direct {p0, v2, v0}, Lcom/google/android/apps/plus/views/ProfileAboutView;->bindLocalDetails(Landroid/view/View;Lcom/google/android/apps/plus/views/ProfileAboutView$LocalDetailsItem;)V

    .line 1137
    return-void
.end method

.method public setLocalEditorialReviews(Lcom/google/api/services/plusi/model/ZagatAspectRatingsProto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 13
    .parameter "scores"
    .parameter "reviewText"
    .parameter "priceLabel"
    .parameter "priceValue"
    .parameter "reviewCount"

    .prologue
    .line 1113
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->container:Landroid/view/View;

    const v2, 0x7f0901d7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1114
    .local v6, view:Landroid/view/View;
    new-instance v0, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalEditorialReviewItem;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/views/ProfileAboutView$LocalEditorialReviewItem;-><init>(Lcom/google/api/services/plusi/model/ZagatAspectRatingsProto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1116
    .local v0, item:Lcom/google/android/apps/plus/views/ProfileAboutView$LocalEditorialReviewItem;
    invoke-direct {p0, v6, v0}, Lcom/google/android/apps/plus/views/ProfileAboutView;->bindLocalEditorialReview(Landroid/view/View;Lcom/google/android/apps/plus/views/ProfileAboutView$LocalEditorialReviewItem;)V

    .line 1117
    return-void
.end method

.method public setLocation(Ljava/lang/String;Z)V
    .registers 7
    .parameter "location"
    .parameter "singleLine"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 685
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 686
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->location:Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;->container:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 687
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->location:Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 688
    if-eqz p2, :cond_37

    .line 689
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->location:Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;->text:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 695
    :goto_27
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mPolicy:Lcom/google/android/apps/plus/views/ProfileAboutView$DisplayPolicies;

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DisplayPolicies;->showInfoIcons:Z

    if-eqz v0, :cond_56

    .line 696
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->location:Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 703
    :goto_36
    return-void

    .line 691
    :cond_37
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->location:Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;->text:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 692
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->location:Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;->text:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 693
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->location:Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;->text:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_27

    .line 698
    :cond_56
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->location:Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_36

    .line 701
    :cond_60
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->location:Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$InfoRow;->container:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_36
.end method

.method public setLocationMap(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "bitmap"

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->map:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->bindPlacesMapView(Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 1022
    return-void
.end method

.method public setName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "fullName"
    .parameter "givenName"
    .parameter "familyName"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 580
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_37

    const/4 v0, 0x1

    .line 581
    .local v0, useFullName:Z
    :goto_10
    if-eqz v0, :cond_39

    .line 582
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->fullName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    :goto_19
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v4, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->fullName:Landroid/widget/TextView;

    if-eqz v0, :cond_48

    move v1, v2

    :goto_20
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 588
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v4, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->givenName:Landroid/widget/TextView;

    if-eqz v0, :cond_4a

    move v1, v3

    :goto_2a
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 589
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->familyName:Landroid/widget/TextView;

    if-eqz v0, :cond_4c

    :goto_33
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 590
    return-void

    .end local v0           #useFullName:Z
    :cond_37
    move v0, v2

    .line 580
    goto :goto_10

    .line 584
    .restart local v0       #useFullName:Z
    :cond_39
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->givenName:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->familyName:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_19

    :cond_48
    move v1, v3

    .line 587
    goto :goto_20

    :cond_4a
    move v1, v2

    .line 588
    goto :goto_2a

    :cond_4c
    move v3, v2

    .line 589
    goto :goto_33
.end method

.method public setOnClickListener(Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 564
    iput-object p1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mOnClickListener:Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;

    .line 565
    return-void
.end method

.method public setPlusOneData(Ljava/lang/String;Z)V
    .registers 5
    .parameter "plusOnes"
    .parameter "plusOneByMe"

    .prologue
    .line 706
    if-eqz p1, :cond_29

    .line 707
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->plusOneButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 708
    if-eqz p2, :cond_1e

    .line 709
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->plusOneButton:Landroid/widget/Button;

    const v1, 0x7f0201eb

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 713
    :goto_15
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->plusOneButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 717
    :goto_1d
    return-void

    .line 711
    :cond_1e
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->plusOneButton:Landroid/widget/Button;

    const v1, 0x7f0201ea

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_15

    .line 715
    :cond_29
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->plusOneButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1d
.end method

.method public setScrapbookAlbumUrls(Ljava/lang/Long;[Ljava/lang/String;)V
    .registers 8
    .parameter "albumId"
    .parameter "urls"

    .prologue
    .line 643
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v3, v3, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->coverPhoto:Lcom/google/android/apps/plus/views/EsImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/views/EsImageView;->setVisibility(I)V

    .line 644
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v3, v3, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->scrapbookAlbum:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 645
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v3, v3, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->scrapbookAlbum:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 647
    array-length v3, p2

    const/4 v4, 0x5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 648
    .local v2, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1f
    if-ge v0, v2, :cond_3c

    .line 649
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v3, v3, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->scrapbookAlbum:Landroid/view/View;

    sget-object v4, Lcom/google/android/apps/plus/views/ProfileAboutView;->SCRAPBOOK_PHOTO_IDS:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/ProfileImageView;

    .line 651
    .local v1, imageView:Lcom/google/android/apps/plus/views/ProfileImageView;
    sget-object v3, Lcom/google/android/apps/plus/views/ProfileImageView$SizePolicy;->SQUARE_TO_LONGEST_DIMENSION:Lcom/google/android/apps/plus/views/ProfileImageView$SizePolicy;

    invoke-virtual {v1, v3}, Lcom/google/android/apps/plus/views/ProfileImageView;->setSizePolicy(Lcom/google/android/apps/plus/views/ProfileImageView$SizePolicy;)V

    .line 652
    aget-object v3, p2, v0

    invoke-virtual {v1, v3}, Lcom/google/android/apps/plus/views/ProfileImageView;->setUrl(Ljava/lang/String;)V

    .line 648
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 654
    .end local v1           #imageView:Lcom/google/android/apps/plus/views/ProfileImageView;
    :cond_3c
    return-void
.end method

.method public setTagLine(Ljava/lang/String;)V
    .registers 6
    .parameter "tagLine"

    .prologue
    .line 725
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 726
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->tagLine:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 728
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->tagLine:Landroid/view/View;

    const v3, 0x7f0901d4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/SectionHeaderView;

    .line 730
    .local v0, headerView:Lcom/google/android/apps/plus/views/SectionHeaderView;
    const v2, 0x7f080222

    invoke-direct {p0, v0, v2}, Lcom/google/android/apps/plus/views/ProfileAboutView;->bindSectionHeader(Lcom/google/android/apps/plus/views/SectionHeaderView;I)V

    .line 732
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->tagLine:Landroid/view/View;

    const v3, 0x7f09009d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 733
    .local v1, view:Landroid/view/View;
    invoke-direct {p0, v1, p1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->bindIntroductionView(Landroid/view/View;Ljava/lang/String;)V

    .line 737
    .end local v0           #headerView:Lcom/google/android/apps/plus/views/SectionHeaderView;
    .end local v1           #view:Landroid/view/View;
    :goto_2f
    return-void

    .line 735
    :cond_30
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->tagLine:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2f
.end method

.method public showAddToCircles()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 1664
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->circlesButton:Lcom/google/android/apps/plus/views/CirclesButton;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/CirclesButton;->setVisibility(I)V

    .line 1665
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->addToCirclesButton:Lcom/google/android/apps/plus/views/CirclesButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/CirclesButton;->setVisibility(I)V

    .line 1666
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->blockedText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1667
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1668
    return-void
.end method

.method public showBlocked()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 1674
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->circlesButton:Lcom/google/android/apps/plus/views/CirclesButton;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/CirclesButton;->setVisibility(I)V

    .line 1675
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->addToCirclesButton:Lcom/google/android/apps/plus/views/CirclesButton;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/CirclesButton;->setVisibility(I)V

    .line 1676
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->blockedText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1677
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1678
    return-void
.end method

.method public showError(ZLjava/lang/String;)V
    .registers 6
    .parameter "enabled"
    .parameter "errorText"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 568
    if-eqz p1, :cond_22

    .line 569
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->container:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 570
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->container:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 571
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mProfileLayout:Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->error:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 572
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mProfileLayout:Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->error:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    :goto_21
    return-void

    .line 574
    :cond_22
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->container:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 575
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mProfileLayout:Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$ProfileLayout;->error:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_21
.end method

.method public showProgress()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 1684
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->circlesButton:Lcom/google/android/apps/plus/views/CirclesButton;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/CirclesButton;->setVisibility(I)V

    .line 1685
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->addToCirclesButton:Lcom/google/android/apps/plus/views/CirclesButton;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/CirclesButton;->setVisibility(I)V

    .line 1686
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->blockedText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1687
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mHeader:Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$HeaderLayout;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1688
    return-void
.end method

.method public updateContactSectionDividers()V
    .registers 5

    .prologue
    .line 774
    const/4 v1, 0x0

    .line 778
    .local v1, lastOne:Landroid/view/View;
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->addresses:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 779
    .local v0, count:I
    if-lez v0, :cond_15

    .line 780
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->addresses:Landroid/view/ViewGroup;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 783
    :cond_15
    if-nez v1, :cond_2b

    .line 784
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->phoneNumbers:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 785
    if-lez v0, :cond_2b

    .line 786
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->phoneNumbers:Landroid/view/ViewGroup;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 790
    :cond_2b
    if-nez v1, :cond_41

    .line 791
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->emails:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 792
    if-lez v0, :cond_41

    .line 793
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->emails:Landroid/view/ViewGroup;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 797
    :cond_41
    if-eqz v1, :cond_47

    .line 798
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/plus/views/ProfileAboutView;->enableDivider(Landroid/view/View;Z)V

    .line 800
    :cond_47
    return-void
.end method

.method public updateLinksSectionDividers()V
    .registers 2

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->links:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/views/ProfileAboutView;->updateGenericListSectionDividers(Landroid/view/ViewGroup;)V

    .line 1079
    return-void
.end method

.method public updateLocationsSectionDividers()V
    .registers 2

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->locations:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/views/ProfileAboutView;->updateGenericListSectionDividers(Landroid/view/ViewGroup;)V

    .line 1063
    return-void
.end method

.method public updatePersonalSectionDividers()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 874
    const/4 v0, 0x0

    .line 876
    .local v0, lastOne:Landroid/view/View;
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->gender:Landroid/view/View;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->gender:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_1f

    .line 878
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->gender:Landroid/view/View;

    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/plus/views/ProfileAboutView;->enableDivider(Landroid/view/View;Z)V

    .line 879
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v0, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->gender:Landroid/view/View;

    .line 882
    :cond_1f
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->birthday:Landroid/view/View;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->birthday:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_3a

    .line 884
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->birthday:Landroid/view/View;

    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/plus/views/ProfileAboutView;->enableDivider(Landroid/view/View;Z)V

    .line 885
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v0, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->birthday:Landroid/view/View;

    .line 888
    :cond_3a
    if-eqz v0, :cond_40

    .line 889
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->enableDivider(Landroid/view/View;Z)V

    .line 891
    :cond_40
    return-void
.end method

.method public updateWorkEducationDividers()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 947
    const/4 v0, 0x0

    .line 949
    .local v0, lastOne:Landroid/view/View;
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->employment:Landroid/view/View;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->employment:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_1f

    .line 951
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->employment:Landroid/view/View;

    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/plus/views/ProfileAboutView;->enableDivider(Landroid/view/View;Z)V

    .line 952
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v0, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->employment:Landroid/view/View;

    .line 955
    :cond_1f
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->education:Landroid/view/View;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->education:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_3a

    .line 957
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->education:Landroid/view/View;

    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/plus/views/ProfileAboutView;->enableDivider(Landroid/view/View;Z)V

    .line 958
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView;->mDetails:Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;

    iget-object v0, v1, Lcom/google/android/apps/plus/views/ProfileAboutView$DetailsLayout;->education:Landroid/view/View;

    .line 961
    :cond_3a
    if-eqz v0, :cond_40

    .line 962
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->enableDivider(Landroid/view/View;Z)V

    .line 964
    :cond_40
    return-void
.end method
