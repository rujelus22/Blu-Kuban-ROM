.class public Lcom/google/android/apps/plus/phone/EventCardAdapter;
.super Lcom/google/android/apps/plus/phone/EsCursorAdapter;
.source "EventCardAdapter.java"


# static fields
.field private static sInitialized:Z

.field private static sItemMargin:I

.field private static sLargeDisplayTypeSizeCutoff:D

.field private static sScreenDisplayType:I


# instance fields
.field protected mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field protected mItemClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

.field private mLandscape:Z

.field protected mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 35
    const-wide v0, 0x401b99999999999aL

    sput-wide v0, Lcom/google/android/apps/plus/phone/EventCardAdapter;->sLargeDisplayTypeSizeCutoff:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/Cursor;Landroid/view/View$OnClickListener;Lcom/google/android/apps/plus/views/ItemClickListener;Lcom/google/android/apps/plus/views/ColumnGridView;)V
    .registers 11
    .parameter "context"
    .parameter "account"
    .parameter "cursor"
    .parameter "onClickListener"
    .parameter "itemClickListener"
    .parameter "columnGridView"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 51
    invoke-direct {p0, p1, p3}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 52
    iput-object p2, p0, Lcom/google/android/apps/plus/phone/EventCardAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 54
    iput-object p2, p0, Lcom/google/android/apps/plus/phone/EventCardAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 55
    iput-object p4, p0, Lcom/google/android/apps/plus/phone/EventCardAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 56
    iput-object p5, p0, Lcom/google/android/apps/plus/phone/EventCardAdapter;->mItemClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    .line 58
    invoke-static {p1}, Lcom/google/android/apps/plus/phone/EventCardAdapter;->setScreenDisplayType(Landroid/content/Context;)V

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_47

    move v0, v1

    :goto_1d
    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/EventCardAdapter;->mLandscape:Z

    .line 62
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/EventCardAdapter;->mLandscape:Z

    if-eqz v0, :cond_49

    move v0, v1

    :goto_24
    invoke-virtual {p6, v0}, Lcom/google/android/apps/plus/views/ColumnGridView;->setOrientation(I)V

    .line 65
    sget v0, Lcom/google/android/apps/plus/phone/EventCardAdapter;->sScreenDisplayType:I

    if-nez v0, :cond_4b

    :goto_2b
    invoke-virtual {p6, v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->setColumnCount(I)V

    .line 67
    sget v0, Lcom/google/android/apps/plus/phone/EventCardAdapter;->sItemMargin:I

    invoke-virtual {p6, v0}, Lcom/google/android/apps/plus/views/ColumnGridView;->setItemMargin(I)V

    .line 68
    sget v0, Lcom/google/android/apps/plus/phone/EventCardAdapter;->sItemMargin:I

    sget v1, Lcom/google/android/apps/plus/phone/EventCardAdapter;->sItemMargin:I

    sget v2, Lcom/google/android/apps/plus/phone/EventCardAdapter;->sItemMargin:I

    sget v3, Lcom/google/android/apps/plus/phone/EventCardAdapter;->sItemMargin:I

    invoke-virtual {p6, v0, v1, v2, v3}, Lcom/google/android/apps/plus/views/ColumnGridView;->setPadding(IIII)V

    .line 70
    new-instance v0, Lcom/google/android/apps/plus/phone/EventCardAdapter$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/phone/EventCardAdapter$1;-><init>(Lcom/google/android/apps/plus/phone/EventCardAdapter;)V

    invoke-virtual {p6, v0}, Lcom/google/android/apps/plus/views/ColumnGridView;->setRecyclerListener(Lcom/google/android/apps/plus/views/ColumnGridView$RecyclerListener;)V

    .line 79
    return-void

    .line 60
    :cond_47
    const/4 v0, 0x0

    goto :goto_1d

    :cond_49
    move v0, v2

    .line 62
    goto :goto_24

    :cond_4b
    move v1, v2

    .line 65
    goto :goto_2b
.end method

.method private static setScreenDisplayType(Landroid/content/Context;)V
    .registers 12
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    .line 119
    sget-boolean v9, Lcom/google/android/apps/plus/phone/EventCardAdapter;->sInitialized:Z

    if-nez v9, :cond_53

    .line 120
    sput-boolean v8, Lcom/google/android/apps/plus/phone/EventCardAdapter;->sInitialized:Z

    .line 122
    const-string v9, "window"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 125
    .local v7, winMgr:Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 126
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 128
    iget v9, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v9, v9

    iget v10, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v4, v9, v10

    .line 130
    .local v4, physicalX:F
    iget v9, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v9, v9

    iget v10, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v5, v9, v10

    .line 132
    .local v5, physicalY:F
    mul-float v9, v4, v4

    mul-float v10, v5, v5

    add-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 135
    .local v2, physicalSize:D
    sget-wide v9, Lcom/google/android/apps/plus/phone/EventCardAdapter;->sLargeDisplayTypeSizeCutoff:D

    cmpl-double v9, v2, v9

    if-ltz v9, :cond_54

    :goto_39
    sput v8, Lcom/google/android/apps/plus/phone/EventCardAdapter;->sScreenDisplayType:I

    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 139
    .local v6, res:Landroid/content/res/Resources;
    const v8, 0x7f0d0208

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 141
    .local v1, marginPercent:F
    iget v8, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v9, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v1

    float-to-int v8, v8

    sput v8, Lcom/google/android/apps/plus/phone/EventCardAdapter;->sItemMargin:I

    .line 144
    .end local v0           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v1           #marginPercent:F
    .end local v2           #physicalSize:D
    .end local v4           #physicalX:F
    .end local v5           #physicalY:F
    .end local v6           #res:Landroid/content/res/Resources;
    .end local v7           #winMgr:Landroid/view/WindowManager;
    :cond_53
    return-void

    .line 135
    .restart local v0       #displayMetrics:Landroid/util/DisplayMetrics;
    .restart local v2       #physicalSize:D
    .restart local v4       #physicalX:F
    .restart local v5       #physicalY:F
    .restart local v7       #winMgr:Landroid/view/WindowManager;
    :cond_54
    const/4 v8, 0x0

    goto :goto_39
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 16
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 83
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EventCardAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_49

    move-object v0, p1

    .line 84
    check-cast v0, Lcom/google/android/apps/plus/views/EventDestinationCardView;

    .line 85
    .local v0, eventDestinationCardView:Lcom/google/android/apps/plus/views/EventDestinationCardView;
    const/4 v1, 0x1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    .line 86
    .local v9, eventData:[B
    invoke-static {}, Lcom/google/api/services/plusi/model/PlusEventJson;->getInstance()Lcom/google/api/services/plusi/model/PlusEventJson;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/api/services/plusi/model/PlusEventJson;->fromByteArray([B)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/api/services/plusi/model/PlusEvent;

    .line 88
    .local v8, event:Lcom/google/api/services/plusi/model/PlusEvent;
    sget v2, Lcom/google/android/apps/plus/phone/EventCardAdapter;->sScreenDisplayType:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/EventCardAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    iget-object v5, p0, Lcom/google/android/apps/plus/phone/EventCardAdapter;->mItemClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p3

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/apps/plus/views/EventDestinationCardView;->init(Landroid/database/Cursor;IILandroid/view/View$OnClickListener;Lcom/google/android/apps/plus/views/ItemClickListener;Lcom/google/android/apps/plus/views/StreamCardView$ViewedListener;Lcom/google/android/apps/plus/views/StreamCardView$StreamPlusBarClickListener;)V

    .line 90
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EventCardAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0, v1, v8}, Lcom/google/android/apps/plus/views/EventDestinationCardView;->bindData(Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/api/services/plusi/model/PlusEvent;)V

    .line 92
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/EventCardAdapter;->mLandscape:Z

    if-eqz v1, :cond_4a

    const/4 v11, 0x1

    .line 95
    .local v11, screenOrientation:I
    :goto_33
    new-instance v10, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;

    const/4 v1, -0x3

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v10, v11, v1, v2, v3}, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;-><init>(IIII)V

    .line 99
    .local v10, lp:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/EventCardAdapter;->mLandscape:Z

    if-nez v1, :cond_46

    sget v1, Lcom/google/android/apps/plus/phone/EventCardAdapter;->sScreenDisplayType:I

    if-nez v1, :cond_46

    .line 100
    const/4 v1, -0x2

    iput v1, v10, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->height:I

    .line 103
    :cond_46
    invoke-virtual {v0, v10}, Lcom/google/android/apps/plus/views/EventDestinationCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    .end local v0           #eventDestinationCardView:Lcom/google/android/apps/plus/views/EventDestinationCardView;
    .end local v8           #event:Lcom/google/api/services/plusi/model/PlusEvent;
    .end local v9           #eventData:[B
    .end local v10           #lp:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
    .end local v11           #screenOrientation:I
    :cond_49
    return-void

    .line 92
    .restart local v0       #eventDestinationCardView:Lcom/google/android/apps/plus/views/EventDestinationCardView;
    .restart local v8       #event:Lcom/google/api/services/plusi/model/PlusEvent;
    .restart local v9       #eventData:[B
    :cond_4a
    const/4 v11, 0x2

    goto :goto_33
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 109
    new-instance v0, Lcom/google/android/apps/plus/views/EventDestinationCardView;

    invoke-direct {v0, p1}, Lcom/google/android/apps/plus/views/EventDestinationCardView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
