.class public final Lcom/cooliris/media/TimeBar;
.super Lcom/cooliris/media/Layer;
.source "TimeBar.java"

# interfaces
.implements Lcom/cooliris/media/MediaFeed$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cooliris/media/TimeBar$Marker;,
        Lcom/cooliris/media/TimeBar$Listener;
    }
.end annotation


# static fields
.field private static final KNOB:I

.field private static final KNOB_PRESSED:I

.field private static final SRC_PAINT:Landroid/graphics/Paint;


# instance fields
.field private mAnimTextAlpha:F

.field private mBackground:Landroid/graphics/NinePatch;

.field private mBackgroundRect:Landroid/graphics/Rect;

.field private mBackgroundTexture:Lcom/cooliris/media/BitmapTexture;

.field mContext:Landroid/content/Context;

.field private mDateUnknown:Lcom/cooliris/media/StringTexture;

.field private mDay:Lcom/cooliris/media/Texture;

.field private final mDayFormat:Lcom/cooliris/media/StringTexture$Config;

.field private final mDot:Lcom/cooliris/media/StringTexture;

.field private mDragX:F

.field private mFeed:Lcom/cooliris/media/MediaFeed;

.field private mInDrag:Z

.field private mItemCount:I

.field private mListener:Lcom/cooliris/media/TimeBar$Listener;

.field private mMarkers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/media/TimeBar$Marker;",
            ">;"
        }
    .end annotation
.end field

.field private mMarkersCopy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/media/TimeBar$Marker;",
            ">;"
        }
    .end annotation
.end field

.field private mMonth:Lcom/cooliris/media/Texture;

.field private final mMonthLabels:[Lcom/cooliris/media/StringTexture;

.field private final mMonthYearFormat:Lcom/cooliris/media/StringTexture$Config;

.field private final mOpaqueDayLabels:[Lcom/cooliris/media/StringTexture;

.field private mPosition:F

.field private mPositionAnim:F

.field private mScroll:F

.field private mScrollAnim:F

.field private mShowTime:Z

.field private mState:I

.field private mTextAlpha:F

.field private mTotalWidth:F

.field private final mTracker:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/cooliris/media/MediaItem;",
            "Lcom/cooliris/media/TimeBar$Marker;",
            ">;"
        }
    .end annotation
.end field

.field private mYear:Lcom/cooliris/media/Texture;

.field private final mYearLabels:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/cooliris/media/StringTexture;",
            ">;"
        }
    .end annotation
.end field

.field private system_date_format:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/cooliris/media/TimeBar;->SRC_PAINT:Landroid/graphics/Paint;

    .line 76
    sget-object v0, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v0, 0x7f02006f

    sput v0, Lcom/cooliris/media/TimeBar;->KNOB:I

    .line 79
    sget-object v0, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v0, 0x7f020070

    sput v0, Lcom/cooliris/media/TimeBar;->KNOB_PRESSED:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x4188

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 131
    invoke-direct {p0}, Lcom/cooliris/media/Layer;-><init>()V

    .line 53
    iput-object v4, p0, Lcom/cooliris/media/TimeBar;->mListener:Lcom/cooliris/media/TimeBar$Listener;

    .line 55
    iput-object v4, p0, Lcom/cooliris/media/TimeBar;->mFeed:Lcom/cooliris/media/MediaFeed;

    .line 57
    iput v3, p0, Lcom/cooliris/media/TimeBar;->mTotalWidth:F

    .line 59
    iput v3, p0, Lcom/cooliris/media/TimeBar;->mPosition:F

    .line 61
    iput v3, p0, Lcom/cooliris/media/TimeBar;->mPositionAnim:F

    .line 63
    iput v3, p0, Lcom/cooliris/media/TimeBar;->mScroll:F

    .line 65
    iput v3, p0, Lcom/cooliris/media/TimeBar;->mScrollAnim:F

    .line 67
    iput-boolean v6, p0, Lcom/cooliris/media/TimeBar;->mInDrag:Z

    .line 69
    iput v3, p0, Lcom/cooliris/media/TimeBar;->mDragX:F

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/cooliris/media/TimeBar;->mMarkers:Ljava/util/ArrayList;

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/cooliris/media/TimeBar;->mMarkersCopy:Ljava/util/ArrayList;

    .line 81
    new-instance v1, Lcom/cooliris/media/StringTexture$Config;

    invoke-direct {v1}, Lcom/cooliris/media/StringTexture$Config;-><init>()V

    iput-object v1, p0, Lcom/cooliris/media/TimeBar;->mMonthYearFormat:Lcom/cooliris/media/StringTexture$Config;

    .line 83
    new-instance v1, Lcom/cooliris/media/StringTexture$Config;

    invoke-direct {v1}, Lcom/cooliris/media/StringTexture$Config;-><init>()V

    iput-object v1, p0, Lcom/cooliris/media/TimeBar;->mDayFormat:Lcom/cooliris/media/StringTexture$Config;

    .line 85
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/cooliris/media/TimeBar;->mYearLabels:Landroid/util/SparseArray;

    .line 89
    const/16 v1, 0xc

    new-array v1, v1, [Lcom/cooliris/media/StringTexture;

    iput-object v1, p0, Lcom/cooliris/media/TimeBar;->mMonthLabels:[Lcom/cooliris/media/StringTexture;

    .line 93
    const/16 v1, 0x20

    new-array v1, v1, [Lcom/cooliris/media/StringTexture;

    iput-object v1, p0, Lcom/cooliris/media/TimeBar;->mOpaqueDayLabels:[Lcom/cooliris/media/StringTexture;

    .line 95
    new-instance v1, Lcom/cooliris/media/StringTexture;

    const-string v2, "."

    invoke-direct {v1, v2}, Lcom/cooliris/media/StringTexture;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/cooliris/media/TimeBar;->mDot:Lcom/cooliris/media/StringTexture;

    .line 97
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x400

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/cooliris/media/TimeBar;->mTracker:Ljava/util/HashMap;

    .line 101
    iput v3, p0, Lcom/cooliris/media/TimeBar;->mTextAlpha:F

    .line 103
    iput v3, p0, Lcom/cooliris/media/TimeBar;->mAnimTextAlpha:F

    .line 117
    iput v6, p0, Lcom/cooliris/media/TimeBar;->mItemCount:I

    .line 133
    iget-object v1, p0, Lcom/cooliris/media/TimeBar;->mMonthYearFormat:Lcom/cooliris/media/StringTexture$Config;

    sget v2, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v2, v5

    iput v2, v1, Lcom/cooliris/media/StringTexture$Config;->fontSize:F

    .line 134
    iget-object v1, p0, Lcom/cooliris/media/TimeBar;->mMonthYearFormat:Lcom/cooliris/media/StringTexture$Config;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/cooliris/media/StringTexture$Config;->bold:Z

    .line 135
    iget-object v1, p0, Lcom/cooliris/media/TimeBar;->mMonthYearFormat:Lcom/cooliris/media/StringTexture$Config;

    const v2, 0x3f59999a

    iput v2, v1, Lcom/cooliris/media/StringTexture$Config;->a:F

    .line 136
    iget-object v1, p0, Lcom/cooliris/media/TimeBar;->mDayFormat:Lcom/cooliris/media/StringTexture$Config;

    sget v2, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v2, v5

    iput v2, v1, Lcom/cooliris/media/StringTexture$Config;->fontSize:F

    .line 137
    iget-object v1, p0, Lcom/cooliris/media/TimeBar;->mDayFormat:Lcom/cooliris/media/StringTexture$Config;

    const v2, 0x3f1c28f6

    iput v2, v1, Lcom/cooliris/media/StringTexture$Config;->a:F

    .line 138
    invoke-virtual {p0, p1}, Lcom/cooliris/media/TimeBar;->regenerateStringsForContext(Landroid/content/Context;)V

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v2, 0x7f02006c

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 142
    .local v0, background:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/NinePatch;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    invoke-direct {v1, v0, v2, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v1, p0, Lcom/cooliris/media/TimeBar;->mBackground:Landroid/graphics/NinePatch;

    .line 143
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/cooliris/media/TimeBar;->mBackgroundRect:Landroid/graphics/Rect;

    .line 144
    sget-object v1, Lcom/cooliris/media/TimeBar;->SRC_PAINT:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 145
    return-void
.end method

.method private addMarker(Lcom/cooliris/media/TimeBar$Marker;)F
    .registers 5
    .parameter "marker"

    .prologue
    .line 371
    iget-object v0, p0, Lcom/cooliris/media/TimeBar;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    iget v0, p1, Lcom/cooliris/media/TimeBar$Marker;->x:F

    const/high16 v1, 0x4248

    sget v2, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getAnchorMarker()Lcom/cooliris/media/TimeBar$Marker;
    .registers 6

    .prologue
    .line 220
    iget-object v3, p0, Lcom/cooliris/media/TimeBar;->mMarkers:Ljava/util/ArrayList;

    monitor-enter v3

    .line 222
    :try_start_3
    iget-object v2, p0, Lcom/cooliris/media/TimeBar;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 223
    .local v1, numMarkers:I
    if-nez v1, :cond_e

    .line 224
    const/4 v2, 0x0

    monitor-exit v3

    .line 228
    :goto_d
    return-object v2

    .line 225
    :cond_e
    iget v2, p0, Lcom/cooliris/media/TimeBar;->mPosition:F

    int-to-float v4, v1

    mul-float/2addr v2, v4

    float-to-int v0, v2

    .line 226
    .local v0, index:I
    if-lt v0, v1, :cond_17

    .line 227
    add-int/lit8 v0, v1, -0x1

    .line 228
    :cond_17
    iget-object v2, p0, Lcom/cooliris/media/TimeBar;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cooliris/media/TimeBar$Marker;

    monitor-exit v3

    goto :goto_d

    .line 229
    .end local v0           #index:I
    .end local v1           #numMarkers:I
    :catchall_21
    move-exception v2

    monitor-exit v3
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v2
.end method

.method private getKnobXForPosition(F)F
    .registers 3
    .parameter "position"

    .prologue
    .line 402
    iget v0, p0, Lcom/cooliris/media/TimeBar;->mTotalWidth:F

    mul-float/2addr v0, p1

    return v0
.end method

.method private getPositionForKnobX(F)F
    .registers 6
    .parameter "knobX"

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 408
    iget v2, p0, Lcom/cooliris/media/TimeBar;->mItemCount:I

    if-gt v2, v3, :cond_1d

    .line 409
    iput v1, p0, Lcom/cooliris/media/TimeBar;->mTotalWidth:F

    .line 410
    invoke-direct {p0}, Lcom/cooliris/media/TimeBar;->isVertical()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1d

    iget v2, p0, Lcom/cooliris/media/TimeBar;->mItemCount:I

    if-ne v2, v3, :cond_1d

    .line 411
    const/high16 v2, 0x4248

    sget v3, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/cooliris/media/TimeBar;->mTotalWidth:F

    .line 414
    :cond_1d
    iget v2, p0, Lcom/cooliris/media/TimeBar;->mTotalWidth:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_2f

    move v0, v1

    .line 415
    .local v0, normKnobX:F
    :goto_24
    const/high16 v2, 0x3f80

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    return v1

    .line 414
    .end local v0           #normKnobX:F
    :cond_2f
    iget v2, p0, Lcom/cooliris/media/TimeBar;->mTotalWidth:F

    div-float v0, p1, v2

    goto :goto_24
.end method

.method private getPositionForScroll(F)F
    .registers 6
    .parameter "scroll"

    .prologue
    const/4 v1, 0x0

    .line 395
    iget v2, p0, Lcom/cooliris/media/Layer;->mWidth:F

    const/high16 v3, 0x3f00

    mul-float v0, v2, v3

    .line 396
    .local v0, halfWidth:F
    iget v2, p0, Lcom/cooliris/media/TimeBar;->mTotalWidth:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_e

    .line 398
    :goto_d
    return v1

    :cond_e
    add-float v1, p1, v0

    iget v2, p0, Lcom/cooliris/media/TimeBar;->mTotalWidth:F

    div-float/2addr v1, v2

    goto :goto_d
.end method

.method private getScrollForPosition(F)F
    .registers 7
    .parameter "position"

    .prologue
    .line 388
    iget v3, p0, Lcom/cooliris/media/Layer;->mWidth:F

    const/high16 v4, 0x3f00

    mul-float v1, v3, v4

    .line 389
    .local v1, halfWidth:F
    const/high16 v3, 0x3f80

    sub-float v2, v3, p1

    .line 390
    .local v2, positionInv:F
    neg-float v3, v1

    mul-float/2addr v3, v2

    iget v4, p0, Lcom/cooliris/media/TimeBar;->mTotalWidth:F

    sub-float/2addr v4, v1

    mul-float/2addr v4, p1

    add-float v0, v3, v4

    .line 391
    .local v0, centered:F
    return v0
.end method

.method private getYearLabel(I)Lcom/cooliris/media/StringTexture;
    .registers 6
    .parameter "year"

    .prologue
    const v3, 0x7f06003b

    .line 687
    const/16 v1, 0x7b2

    if-gt p1, v1, :cond_a

    .line 688
    iget-object v0, p0, Lcom/cooliris/media/TimeBar;->mDot:Lcom/cooliris/media/StringTexture;

    .line 706
    :cond_9
    :goto_9
    return-object v0

    .line 689
    :cond_a
    iget-object v1, p0, Lcom/cooliris/media/TimeBar;->mYearLabels:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/StringTexture;

    .line 690
    .local v0, label:Lcom/cooliris/media/StringTexture;
    if-nez v0, :cond_9

    .line 691
    sget-boolean v1, Lcom/cooliris/media/Utils;->mUse_U1_Chn_Open:Z

    if-eqz v1, :cond_68

    .line 693
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 695
    :cond_30
    new-instance v0, Lcom/cooliris/media/StringTexture;

    .end local v0           #label:Lcom/cooliris/media/StringTexture;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cooliris/media/TimeBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cooliris/media/TimeBar;->mMonthYearFormat:Lcom/cooliris/media/StringTexture$Config;

    invoke-direct {v0, v1, v2}, Lcom/cooliris/media/StringTexture;-><init>(Ljava/lang/String;Lcom/cooliris/media/StringTexture$Config;)V

    .line 704
    .restart local v0       #label:Lcom/cooliris/media/StringTexture;
    :goto_56
    iget-object v1, p0, Lcom/cooliris/media/TimeBar;->mYearLabels:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_9

    .line 698
    :cond_5c
    new-instance v0, Lcom/cooliris/media/StringTexture;

    .end local v0           #label:Lcom/cooliris/media/StringTexture;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cooliris/media/TimeBar;->mMonthYearFormat:Lcom/cooliris/media/StringTexture$Config;

    invoke-direct {v0, v1, v2}, Lcom/cooliris/media/StringTexture;-><init>(Ljava/lang/String;Lcom/cooliris/media/StringTexture$Config;)V

    .restart local v0       #label:Lcom/cooliris/media/StringTexture;
    goto :goto_56

    .line 701
    :cond_68
    new-instance v0, Lcom/cooliris/media/StringTexture;

    .end local v0           #label:Lcom/cooliris/media/StringTexture;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cooliris/media/TimeBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cooliris/media/TimeBar;->mMonthYearFormat:Lcom/cooliris/media/StringTexture$Config;

    invoke-direct {v0, v1, v2}, Lcom/cooliris/media/StringTexture;-><init>(Ljava/lang/String;Lcom/cooliris/media/StringTexture$Config;)V

    .restart local v0       #label:Lcom/cooliris/media/StringTexture;
    goto :goto_56
.end method

.method private isVertical()Ljava/lang/Boolean;
    .registers 3

    .prologue
    .line 718
    iget-object v0, p0, Lcom/cooliris/media/TimeBar;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/cooliris/media/Gallery;

    invoke-virtual {v0}, Lcom/cooliris/media/Gallery;->getGridLayer()Lcom/cooliris/media/GridLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getHeight()F

    move-result v1

    iget-object v0, p0, Lcom/cooliris/media/TimeBar;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/cooliris/media/Gallery;

    invoke-virtual {v0}, Lcom/cooliris/media/Gallery;->getGridLayer()Lcom/cooliris/media/GridLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getWidth()F

    move-result v0

    div-float v0, v1, v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-lez v0, :cond_26

    const/4 v0, 0x1

    :goto_21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private layout()V
    .registers 32

    .prologue
    .line 243
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/TimeBar;->mFeed:Lcom/cooliris/media/MediaFeed;

    if-eqz v4, :cond_1ea

    .line 245
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/TimeBar;->mTracker:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 246
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/TimeBar;->mMarkers:Ljava/util/ArrayList;

    monitor-enter v5

    .line 247
    :try_start_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/TimeBar;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 248
    monitor-exit v5
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_c4

    .line 249
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cooliris/media/TimeBar;->mScroll:F

    move/from16 v23, v0

    .line 254
    .local v23, scrollX:F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cooliris/media/TimeBar;->mFeed:Lcom/cooliris/media/MediaFeed;

    .line 255
    .local v11, feed:Lcom/cooliris/media/MediaFeed;
    const/16 v20, -0x1

    .line 256
    .local v20, lastYear:I
    const/16 v19, -0x1

    .line 257
    .local v19, lastMonth:I
    const/16 v18, -0x1

    .line 258
    .local v18, lastDayBlock:I
    const/4 v3, 0x0

    .line 259
    .local v3, dx:F
    const/16 v10, 0xc

    .line 260
    .local v10, increment:I
    const/16 v24, 0x0

    .line 261
    .local v24, set:Lcom/cooliris/media/MediaSet;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/cooliris/media/TimeBar;->mShowTime:Z

    .line 262
    move-object/from16 v0, p0

    iget v4, v0, Lcom/cooliris/media/TimeBar;->mState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_c7

    .line 263
    invoke-virtual {v11}, Lcom/cooliris/media/MediaFeed;->getFilteredSet()Lcom/cooliris/media/MediaSet;

    move-result-object v24

    .line 264
    if-nez v24, :cond_45

    .line 265
    invoke-virtual {v11}, Lcom/cooliris/media/MediaFeed;->getCurrentSet()Lcom/cooliris/media/MediaSet;

    move-result-object v24

    .line 287
    :cond_45
    if-eqz v24, :cond_169

    .line 288
    new-instance v28, Ljava/util/GregorianCalendar;

    invoke-direct/range {v28 .. v28}, Ljava/util/GregorianCalendar;-><init>()V

    .line 289
    .local v28, time:Ljava/util/GregorianCalendar;
    invoke-virtual/range {v24 .. v24}, Lcom/cooliris/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v15

    .line 290
    .local v15, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    if-eqz v15, :cond_15e

    .line 291
    invoke-virtual {v15}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v15

    .end local v15           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    check-cast v15, Ljava/util/ArrayList;

    .line 292
    .restart local v15       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    const/16 v16, 0x0

    .line 293
    .local v16, j:I
    invoke-virtual/range {v24 .. v24}, Lcom/cooliris/media/MediaSet;->getNumItems()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/cooliris/media/TimeBar;->mItemCount:I

    .line 294
    :cond_62
    :goto_62
    invoke-virtual/range {v24 .. v24}, Lcom/cooliris/media/MediaSet;->getNumItems()I

    move-result v4

    move/from16 v0, v16

    if-ge v0, v4, :cond_15e

    .line 295
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/cooliris/media/MediaItem;

    .line 296
    .local v14, item:Lcom/cooliris/media/MediaItem;
    if-eqz v14, :cond_62

    .line 298
    invoke-virtual {v14}, Lcom/cooliris/media/MediaItem;->isDateTakenValid()Z

    move-result v4

    if-eqz v4, :cond_106

    .line 299
    iget-wide v4, v14, Lcom/cooliris/media/MediaItem;->mDateTakenInMs:J

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 306
    :goto_7f
    const/4 v4, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    .line 307
    .local v6, year:I
    move/from16 v0, v20

    if-eq v6, v0, :cond_90

    .line 308
    move/from16 v20, v6

    .line 309
    const/16 v19, -0x1

    .line 310
    const/16 v18, -0x1

    .line 312
    :cond_90
    const/4 v2, 0x0

    .line 314
    .local v2, marker:Lcom/cooliris/media/TimeBar$Marker;
    const/4 v4, 0x2

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    .line 315
    .local v7, month:I
    const/4 v4, 0x5

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    .line 316
    .local v8, dayBlock:I
    move/from16 v0, v19

    if-eq v7, v0, :cond_122

    .line 317
    move/from16 v19, v7

    .line 318
    const/16 v18, -0x1

    .line 319
    new-instance v2, Lcom/cooliris/media/TimeBar$Marker;

    .end local v2           #marker:Lcom/cooliris/media/TimeBar$Marker;
    invoke-virtual/range {v28 .. v28}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    const/4 v9, 0x1

    invoke-direct/range {v2 .. v10}, Lcom/cooliris/media/TimeBar$Marker;-><init>(FJIIIII)V

    .line 321
    .restart local v2       #marker:Lcom/cooliris/media/TimeBar$Marker;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/cooliris/media/TimeBar;->addMarker(Lcom/cooliris/media/TimeBar$Marker;)F

    move-result v3

    .line 334
    :cond_b7
    :goto_b7
    const/16 v17, 0x0

    .local v17, k:I
    :goto_b9
    move/from16 v0, v17

    if-ge v0, v10, :cond_154

    .line 335
    add-int v13, v17, v16

    .line 336
    .local v13, index:I
    if-gez v13, :cond_14e

    .line 334
    :cond_c1
    :goto_c1
    add-int/lit8 v17, v17, 0x1

    goto :goto_b9

    .line 248
    .end local v2           #marker:Lcom/cooliris/media/TimeBar$Marker;
    .end local v3           #dx:F
    .end local v6           #year:I
    .end local v7           #month:I
    .end local v8           #dayBlock:I
    .end local v10           #increment:I
    .end local v11           #feed:Lcom/cooliris/media/MediaFeed;
    .end local v13           #index:I
    .end local v14           #item:Lcom/cooliris/media/MediaItem;
    .end local v15           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    .end local v16           #j:I
    .end local v17           #k:I
    .end local v18           #lastDayBlock:I
    .end local v19           #lastMonth:I
    .end local v20           #lastYear:I
    .end local v23           #scrollX:F
    .end local v24           #set:Lcom/cooliris/media/MediaSet;
    .end local v28           #time:Ljava/util/GregorianCalendar;
    :catchall_c4
    move-exception v4

    :try_start_c5
    monitor-exit v5
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_c4

    throw v4

    .line 268
    .restart local v3       #dx:F
    .restart local v10       #increment:I
    .restart local v11       #feed:Lcom/cooliris/media/MediaFeed;
    .restart local v18       #lastDayBlock:I
    .restart local v19       #lastMonth:I
    .restart local v20       #lastYear:I
    .restart local v23       #scrollX:F
    .restart local v24       #set:Lcom/cooliris/media/MediaSet;
    :cond_c7
    const/4 v10, 0x2

    .line 269
    invoke-virtual {v11}, Lcom/cooliris/media/MediaFeed;->hasExpandedMediaSet()Z

    move-result v4

    if-nez v4, :cond_d3

    .line 270
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/cooliris/media/TimeBar;->mShowTime:Z

    .line 272
    :cond_d3
    new-instance v24, Lcom/cooliris/media/MediaSet;

    .end local v24           #set:Lcom/cooliris/media/MediaSet;
    invoke-direct/range {v24 .. v24}, Lcom/cooliris/media/MediaSet;-><init>()V

    .line 273
    .restart local v24       #set:Lcom/cooliris/media/MediaSet;
    invoke-virtual {v11}, Lcom/cooliris/media/MediaFeed;->getNumSlots()I

    move-result v22

    .line 274
    .local v22, numSlots:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_dd
    move/from16 v0, v22

    if-ge v12, v0, :cond_45

    .line 275
    invoke-virtual {v11, v12}, Lcom/cooliris/media/MediaFeed;->getSetForSlot(I)Lcom/cooliris/media/MediaSet;

    move-result-object v25

    .line 276
    .local v25, slotSet:Lcom/cooliris/media/MediaSet;
    if-eqz v25, :cond_103

    .line 277
    invoke-virtual/range {v25 .. v25}, Lcom/cooliris/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v26

    .line 278
    .local v26, slotSetItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    if-eqz v26, :cond_103

    invoke-virtual/range {v25 .. v25}, Lcom/cooliris/media/MediaSet;->getNumItems()I

    move-result v4

    if-lez v4, :cond_103

    .line 279
    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/cooliris/media/MediaItem;

    .line 280
    .restart local v14       #item:Lcom/cooliris/media/MediaItem;
    if-eqz v14, :cond_103

    .line 281
    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Lcom/cooliris/media/MediaSet;->addItem(Lcom/cooliris/media/MediaItem;)V

    .line 274
    .end local v14           #item:Lcom/cooliris/media/MediaItem;
    .end local v26           #slotSetItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    :cond_103
    add-int/lit8 v12, v12, 0x1

    goto :goto_dd

    .line 300
    .end local v12           #i:I
    .end local v22           #numSlots:I
    .end local v25           #slotSet:Lcom/cooliris/media/MediaSet;
    .restart local v14       #item:Lcom/cooliris/media/MediaItem;
    .restart local v15       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    .restart local v16       #j:I
    .restart local v28       #time:Ljava/util/GregorianCalendar;
    :cond_106
    invoke-virtual {v14}, Lcom/cooliris/media/MediaItem;->isDateAddedValid()Z

    move-result v4

    if-eqz v4, :cond_119

    .line 301
    iget-wide v4, v14, Lcom/cooliris/media/MediaItem;->mDateAddedInSec:J

    const-wide/16 v29, 0x3e8

    mul-long v4, v4, v29

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    goto/16 :goto_7f

    .line 303
    :cond_119
    iget-wide v4, v14, Lcom/cooliris/media/MediaItem;->mDateTakenInMs:J

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    goto/16 :goto_7f

    .line 322
    .restart local v2       #marker:Lcom/cooliris/media/TimeBar$Marker;
    .restart local v6       #year:I
    .restart local v7       #month:I
    .restart local v8       #dayBlock:I
    :cond_122
    move/from16 v0, v18

    if-eq v8, v0, :cond_13c

    .line 323
    move/from16 v18, v8

    .line 324
    if-eqz v8, :cond_b7

    .line 325
    new-instance v2, Lcom/cooliris/media/TimeBar$Marker;

    .end local v2           #marker:Lcom/cooliris/media/TimeBar$Marker;
    invoke-virtual/range {v28 .. v28}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    const/4 v9, 0x2

    invoke-direct/range {v2 .. v10}, Lcom/cooliris/media/TimeBar$Marker;-><init>(FJIIIII)V

    .line 327
    .restart local v2       #marker:Lcom/cooliris/media/TimeBar$Marker;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/cooliris/media/TimeBar;->addMarker(Lcom/cooliris/media/TimeBar$Marker;)F

    move-result v3

    goto/16 :goto_b7

    .line 330
    :cond_13c
    new-instance v2, Lcom/cooliris/media/TimeBar$Marker;

    .end local v2           #marker:Lcom/cooliris/media/TimeBar$Marker;
    invoke-virtual/range {v28 .. v28}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    const/4 v9, 0x3

    invoke-direct/range {v2 .. v10}, Lcom/cooliris/media/TimeBar$Marker;-><init>(FJIIIII)V

    .line 332
    .restart local v2       #marker:Lcom/cooliris/media/TimeBar$Marker;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/cooliris/media/TimeBar;->addMarker(Lcom/cooliris/media/TimeBar$Marker;)F

    move-result v3

    goto/16 :goto_b7

    .line 338
    .restart local v13       #index:I
    .restart local v17       #k:I
    :cond_14e
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v13, v4, :cond_1b1

    .line 348
    .end local v13           #index:I
    :cond_154
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_1d5

    .line 355
    .end local v2           #marker:Lcom/cooliris/media/TimeBar$Marker;
    .end local v6           #year:I
    .end local v7           #month:I
    .end local v8           #dayBlock:I
    .end local v14           #item:Lcom/cooliris/media/MediaItem;
    .end local v16           #j:I
    .end local v17           #k:I
    :cond_15e
    const/high16 v4, 0x4248

    sget v5, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v4, v5

    sub-float v4, v3, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/cooliris/media/TimeBar;->mTotalWidth:F

    .line 357
    .end local v15           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    .end local v28           #time:Ljava/util/GregorianCalendar;
    :cond_169
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/cooliris/media/TimeBar;->getPositionForScroll(F)F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/cooliris/media/TimeBar;->mPosition:F

    .line 358
    move-object/from16 v0, p0

    iget v4, v0, Lcom/cooliris/media/TimeBar;->mPosition:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/cooliris/media/TimeBar;->mPositionAnim:F

    .line 359
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/TimeBar;->mMarkersCopy:Ljava/util/ArrayList;

    monitor-enter v5

    .line 360
    :try_start_182
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/TimeBar;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 361
    .local v21, numMarkers:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/TimeBar;->mMarkersCopy:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 362
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/TimeBar;->mMarkersCopy:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 363
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_19b
    move/from16 v0, v21

    if-ge v12, v0, :cond_1e9

    .line 364
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/TimeBar;->mMarkersCopy:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cooliris/media/TimeBar;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1ae
    .catchall {:try_start_182 .. :try_end_1ae} :catchall_1eb

    .line 363
    add-int/lit8 v12, v12, 0x1

    goto :goto_19b

    .line 340
    .end local v12           #i:I
    .end local v21           #numMarkers:I
    .restart local v2       #marker:Lcom/cooliris/media/TimeBar$Marker;
    .restart local v6       #year:I
    .restart local v7       #month:I
    .restart local v8       #dayBlock:I
    .restart local v13       #index:I
    .restart local v14       #item:Lcom/cooliris/media/MediaItem;
    .restart local v15       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    .restart local v16       #j:I
    .restart local v17       #k:I
    .restart local v28       #time:Ljava/util/GregorianCalendar;
    :cond_1b1
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v13, v4, :cond_1bb

    if-nez v17, :cond_154

    .line 342
    :cond_1bb
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/cooliris/media/MediaItem;

    .line 343
    .local v27, thisItem:Lcom/cooliris/media/MediaItem;
    if-eqz v2, :cond_c1

    .line 344
    iget-object v4, v2, Lcom/cooliris/media/TimeBar$Marker;->items:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/TimeBar;->mTracker:Ljava/util/HashMap;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c1

    .line 350
    .end local v13           #index:I
    .end local v27           #thisItem:Lcom/cooliris/media/MediaItem;
    :cond_1d5
    add-int v16, v16, v10

    .line 351
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v16

    if-lt v0, v4, :cond_62

    .line 352
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v16, v4, -0x1

    goto/16 :goto_62

    .line 366
    .end local v2           #marker:Lcom/cooliris/media/TimeBar$Marker;
    .end local v6           #year:I
    .end local v7           #month:I
    .end local v8           #dayBlock:I
    .end local v14           #item:Lcom/cooliris/media/MediaItem;
    .end local v15           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    .end local v16           #j:I
    .end local v17           #k:I
    .end local v28           #time:Ljava/util/GregorianCalendar;
    .restart local v12       #i:I
    .restart local v21       #numMarkers:I
    :cond_1e9
    :try_start_1e9
    monitor-exit v5

    .line 368
    .end local v3           #dx:F
    .end local v10           #increment:I
    .end local v11           #feed:Lcom/cooliris/media/MediaFeed;
    .end local v12           #i:I
    .end local v18           #lastDayBlock:I
    .end local v19           #lastMonth:I
    .end local v20           #lastYear:I
    .end local v21           #numMarkers:I
    .end local v23           #scrollX:F
    .end local v24           #set:Lcom/cooliris/media/MediaSet;
    :cond_1ea
    return-void

    .line 366
    .restart local v3       #dx:F
    .restart local v10       #increment:I
    .restart local v11       #feed:Lcom/cooliris/media/MediaFeed;
    .restart local v18       #lastDayBlock:I
    .restart local v19       #lastMonth:I
    .restart local v20       #lastYear:I
    .restart local v23       #scrollX:F
    .restart local v24       #set:Lcom/cooliris/media/MediaSet;
    :catchall_1eb
    move-exception v4

    monitor-exit v5
    :try_end_1ed
    .catchall {:try_start_1e9 .. :try_end_1ed} :catchall_1eb

    throw v4
.end method


# virtual methods
.method public drawDateTexture(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/Texture;Lcom/cooliris/media/Texture;Lcom/cooliris/media/Texture;FFZ)V
    .registers 12
    .parameter "view"
    .parameter "month"
    .parameter "day"
    .parameter "year"
    .parameter "x"
    .parameter "y"
    .parameter "validDate"

    .prologue
    const/high16 v3, 0x40e0

    const/high16 v2, 0x4040

    .line 561
    iget-object v0, p0, Lcom/cooliris/media/TimeBar;->system_date_format:Ljava/lang/String;

    const-string v1, "MDY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 562
    invoke-virtual {p1, p2, p5, p6}, Lcom/cooliris/media/RenderView;->draw2D(Lcom/cooliris/media/Texture;FF)V

    .line 563
    if-eqz p7, :cond_2d

    .line 564
    invoke-virtual {p2}, Lcom/cooliris/media/Texture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    add-float/2addr p5, v0

    .line 565
    invoke-virtual {p1, p3, p5, p6}, Lcom/cooliris/media/RenderView;->draw2D(Lcom/cooliris/media/Texture;FF)V

    .line 566
    invoke-virtual {p3}, Lcom/cooliris/media/Texture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    add-float/2addr p5, v0

    .line 567
    invoke-virtual {p1, p4, p5, p6}, Lcom/cooliris/media/RenderView;->draw2D(Lcom/cooliris/media/Texture;FF)V

    .line 600
    :cond_2d
    :goto_2d
    return-void

    .line 569
    :cond_2e
    iget-object v0, p0, Lcom/cooliris/media/TimeBar;->system_date_format:Ljava/lang/String;

    const-string v1, "YMD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 570
    invoke-virtual {p1, p4, p5, p6}, Lcom/cooliris/media/RenderView;->draw2D(Lcom/cooliris/media/Texture;FF)V

    .line 571
    if-eqz p7, :cond_58

    .line 572
    invoke-virtual {p4}, Lcom/cooliris/media/Texture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    add-float/2addr p5, v0

    .line 573
    invoke-virtual {p1, p2, p5, p6}, Lcom/cooliris/media/RenderView;->draw2D(Lcom/cooliris/media/Texture;FF)V

    .line 574
    invoke-virtual {p2}, Lcom/cooliris/media/Texture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    add-float/2addr p5, v0

    .line 575
    invoke-virtual {p1, p3, p5, p6}, Lcom/cooliris/media/RenderView;->draw2D(Lcom/cooliris/media/Texture;FF)V

    goto :goto_2d

    .line 577
    :cond_58
    iget-object v0, p0, Lcom/cooliris/media/TimeBar;->mDateUnknown:Lcom/cooliris/media/StringTexture;

    invoke-virtual {p1, v0, p5, p6}, Lcom/cooliris/media/RenderView;->draw2D(Lcom/cooliris/media/Texture;FF)V

    goto :goto_2d

    .line 579
    :cond_5e
    iget-object v0, p0, Lcom/cooliris/media/TimeBar;->system_date_format:Ljava/lang/String;

    const-string v1, "DMY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 580
    invoke-virtual {p1, p3, p5, p6}, Lcom/cooliris/media/RenderView;->draw2D(Lcom/cooliris/media/Texture;FF)V

    .line 581
    if-eqz p7, :cond_88

    .line 582
    invoke-virtual {p3}, Lcom/cooliris/media/Texture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    add-float/2addr p5, v0

    .line 583
    invoke-virtual {p1, p2, p5, p6}, Lcom/cooliris/media/RenderView;->draw2D(Lcom/cooliris/media/Texture;FF)V

    .line 584
    invoke-virtual {p2}, Lcom/cooliris/media/Texture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    add-float/2addr p5, v0

    .line 585
    invoke-virtual {p1, p4, p5, p6}, Lcom/cooliris/media/RenderView;->draw2D(Lcom/cooliris/media/Texture;FF)V

    goto :goto_2d

    .line 587
    :cond_88
    iget-object v0, p0, Lcom/cooliris/media/TimeBar;->mDateUnknown:Lcom/cooliris/media/StringTexture;

    invoke-virtual {p1, v0, p5, p6}, Lcom/cooliris/media/RenderView;->draw2D(Lcom/cooliris/media/Texture;FF)V

    goto :goto_2d

    .line 590
    :cond_8e
    invoke-virtual {p1, p3, p5, p6}, Lcom/cooliris/media/RenderView;->draw2D(Lcom/cooliris/media/Texture;FF)V

    .line 591
    if-eqz p7, :cond_ae

    .line 592
    invoke-virtual {p3}, Lcom/cooliris/media/Texture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    add-float/2addr p5, v0

    .line 593
    invoke-virtual {p1, p2, p5, p6}, Lcom/cooliris/media/RenderView;->draw2D(Lcom/cooliris/media/Texture;FF)V

    .line 594
    invoke-virtual {p2}, Lcom/cooliris/media/Texture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    add-float/2addr p5, v0

    .line 595
    invoke-virtual {p1, p4, p5, p6}, Lcom/cooliris/media/RenderView;->draw2D(Lcom/cooliris/media/Texture;FF)V

    goto :goto_2d

    .line 597
    :cond_ae
    iget-object v0, p0, Lcom/cooliris/media/TimeBar;->mDateUnknown:Lcom/cooliris/media/StringTexture;

    invoke-virtual {p1, v0, p5, p6}, Lcom/cooliris/media/RenderView;->draw2D(Lcom/cooliris/media/Texture;FF)V

    goto/16 :goto_2d
.end method

.method public generate(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/RenderView$Lists;)V
    .registers 4
    .parameter "view"
    .parameter "lists"

    .prologue
    .line 676
    iget-object v0, p2, Lcom/cooliris/media/RenderView$Lists;->updateList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    iget-object v0, p2, Lcom/cooliris/media/RenderView$Lists;->blendedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    iget-object v0, p2, Lcom/cooliris/media/RenderView$Lists;->hitTestList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    return-void
.end method

.method public getItem()Lcom/cooliris/media/MediaItem;
    .registers 13

    .prologue
    const/4 v8, 0x0

    .line 188
    iget-object v9, p0, Lcom/cooliris/media/TimeBar;->mMarkers:Ljava/util/ArrayList;

    monitor-enter v9

    .line 190
    :try_start_4
    iget-object v10, p0, Lcom/cooliris/media/TimeBar;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 191
    .local v7, numMarkers:I
    if-nez v7, :cond_e

    .line 192
    monitor-exit v9

    .line 216
    :goto_d
    return-object v8

    .line 193
    :cond_e
    iget v10, p0, Lcom/cooliris/media/TimeBar;->mPosition:F

    int-to-float v11, v7

    mul-float/2addr v10, v11

    float-to-int v2, v10

    .line 194
    .local v2, index:I
    if-lt v2, v7, :cond_17

    .line 195
    add-int/lit8 v2, v7, -0x1

    .line 196
    :cond_17
    iget-object v10, p0, Lcom/cooliris/media/TimeBar;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cooliris/media/TimeBar$Marker;

    .line 197
    .local v5, marker:Lcom/cooliris/media/TimeBar$Marker;
    if-eqz v5, :cond_4b

    .line 200
    const/high16 v10, 0x3f80

    int-to-float v11, v7

    div-float v0, v10, v11

    .line 201
    .local v0, deltaBetweenMarkers:F
    iget v10, p0, Lcom/cooliris/media/TimeBar;->mPosition:F

    int-to-float v11, v2

    mul-float/2addr v11, v0

    sub-float v1, v10, v11

    .line 206
    .local v1, increment:F
    iget-object v4, v5, Lcom/cooliris/media/TimeBar$Marker;->items:Ljava/util/ArrayList;

    .line 207
    .local v4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 208
    .local v6, numItems:I
    if-nez v6, :cond_39

    .line 209
    monitor-exit v9

    goto :goto_d

    .line 215
    .end local v0           #deltaBetweenMarkers:F
    .end local v1           #increment:F
    .end local v2           #index:I
    .end local v4           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    .end local v5           #marker:Lcom/cooliris/media/TimeBar$Marker;
    .end local v6           #numItems:I
    .end local v7           #numMarkers:I
    :catchall_36
    move-exception v8

    monitor-exit v9
    :try_end_38
    .catchall {:try_start_4 .. :try_end_38} :catchall_36

    throw v8

    .line 210
    .restart local v0       #deltaBetweenMarkers:F
    .restart local v1       #increment:F
    .restart local v2       #index:I
    .restart local v4       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    .restart local v5       #marker:Lcom/cooliris/media/TimeBar$Marker;
    .restart local v6       #numItems:I
    .restart local v7       #numMarkers:I
    :cond_39
    int-to-float v8, v6

    mul-float/2addr v8, v1

    div-float/2addr v8, v0

    float-to-int v3, v8

    .line 211
    .local v3, itemIndex:I
    if-lt v3, v6, :cond_41

    .line 212
    add-int/lit8 v3, v6, -0x1

    .line 213
    :cond_41
    :try_start_41
    iget-object v8, v5, Lcom/cooliris/media/TimeBar$Marker;->items:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cooliris/media/MediaItem;

    monitor-exit v9

    goto :goto_d

    .line 215
    .end local v0           #deltaBetweenMarkers:F
    .end local v1           #increment:F
    .end local v3           #itemIndex:I
    .end local v4           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    .end local v6           #numItems:I
    :cond_4b
    monitor-exit v9
    :try_end_4c
    .catchall {:try_start_41 .. :try_end_4c} :catchall_36

    goto :goto_d
.end method

.method public isDragged()Z
    .registers 2

    .prologue
    .line 710
    iget-boolean v0, p0, Lcom/cooliris/media/TimeBar;->mInDrag:Z

    return v0
.end method

.method public onFeedAboutToChange(Lcom/cooliris/media/MediaFeed;)V
    .registers 2
    .parameter "feed"

    .prologue
    .line 684
    return-void
.end method

.method public onFeedChanged(Lcom/cooliris/media/MediaFeed;Z)V
    .registers 3
    .parameter "feed"
    .parameter "needsLayout"

    .prologue
    .line 645
    invoke-direct {p0}, Lcom/cooliris/media/TimeBar;->layout()V

    .line 646
    return-void
.end method

.method protected onSizeChanged()V
    .registers 2

    .prologue
    .line 184
    iget v0, p0, Lcom/cooliris/media/TimeBar;->mPosition:F

    invoke-direct {p0, v0}, Lcom/cooliris/media/TimeBar;->getScrollForPosition(F)F

    move-result v0

    iput v0, p0, Lcom/cooliris/media/TimeBar;->mScroll:F

    .line 185
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 605
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/cooliris/media/TimeBar;->mDragX:F

    .line 606
    iget v0, p0, Lcom/cooliris/media/TimeBar;->mDragX:F

    iget v1, p0, Lcom/cooliris/media/TimeBar;->mScroll:F

    add-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/cooliris/media/TimeBar;->getPositionForKnobX(F)F

    move-result v0

    iput v0, p0, Lcom/cooliris/media/TimeBar;->mPosition:F

    .line 614
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_4c

    .line 641
    :cond_1a
    :goto_1a
    return v3

    .line 616
    :pswitch_1b
    iput-boolean v3, p0, Lcom/cooliris/media/TimeBar;->mInDrag:Z

    .line 617
    iget-object v0, p0, Lcom/cooliris/media/TimeBar;->mBackgroundRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_25

    .line 618
    iget-object v0, p0, Lcom/cooliris/media/TimeBar;->mBackgroundRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 619
    :cond_25
    iget-object v0, p0, Lcom/cooliris/media/TimeBar;->mYearLabels:Landroid/util/SparseArray;

    if-eqz v0, :cond_1a

    .line 620
    iget-object v0, p0, Lcom/cooliris/media/TimeBar;->mYearLabels:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_1a

    .line 623
    :pswitch_2f
    iget-object v0, p0, Lcom/cooliris/media/TimeBar;->mListener:Lcom/cooliris/media/TimeBar$Listener;

    if-eqz v0, :cond_1a

    .line 624
    iget-object v0, p0, Lcom/cooliris/media/TimeBar;->mListener:Lcom/cooliris/media/TimeBar$Listener;

    invoke-interface {v0, p0}, Lcom/cooliris/media/TimeBar$Listener;->onTimeChanged(Lcom/cooliris/media/TimeBar;)V

    goto :goto_1a

    .line 628
    :pswitch_39
    iget-object v0, p0, Lcom/cooliris/media/TimeBar;->mListener:Lcom/cooliris/media/TimeBar$Listener;

    if-eqz v0, :cond_42

    .line 629
    iget-object v0, p0, Lcom/cooliris/media/TimeBar;->mListener:Lcom/cooliris/media/TimeBar$Listener;

    invoke-interface {v0, p0}, Lcom/cooliris/media/TimeBar$Listener;->onTimeChanged(Lcom/cooliris/media/TimeBar;)V

    .line 633
    :cond_42
    :pswitch_42
    iput-boolean v2, p0, Lcom/cooliris/media/TimeBar;->mInDrag:Z

    .line 636
    invoke-virtual {p0}, Lcom/cooliris/media/TimeBar;->getItem()Lcom/cooliris/media/MediaItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cooliris/media/TimeBar;->setItem(Lcom/cooliris/media/MediaItem;)V

    goto :goto_1a

    .line 614
    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_39
        :pswitch_2f
        :pswitch_42
    .end packed-switch
.end method

.method public regenerateStringsForContext(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/cooliris/media/TimeBar;->mContext:Landroid/content/Context;

    .line 150
    new-instance v2, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    iput-object v2, p0, Lcom/cooliris/media/TimeBar;->system_date_format:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/cooliris/app/Res;->array:Lcom/cooliris/media/R$array;

    const v3, 0x7f050001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, months:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1b
    array-length v2, v1

    if-ge v0, v2, :cond_2e

    .line 154
    iget-object v2, p0, Lcom/cooliris/media/TimeBar;->mMonthLabels:[Lcom/cooliris/media/StringTexture;

    new-instance v3, Lcom/cooliris/media/StringTexture;

    aget-object v4, v1, v0

    iget-object v5, p0, Lcom/cooliris/media/TimeBar;->mMonthYearFormat:Lcom/cooliris/media/StringTexture$Config;

    invoke-direct {v3, v4, v5}, Lcom/cooliris/media/StringTexture;-><init>(Ljava/lang/String;Lcom/cooliris/media/StringTexture$Config;)V

    aput-object v3, v2, v0

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 157
    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    const/16 v2, 0x1f

    if-gt v0, v2, :cond_61

    .line 160
    iget-object v2, p0, Lcom/cooliris/media/TimeBar;->mOpaqueDayLabels:[Lcom/cooliris/media/StringTexture;

    new-instance v3, Lcom/cooliris/media/StringTexture;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06003a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cooliris/media/TimeBar;->mMonthYearFormat:Lcom/cooliris/media/StringTexture$Config;

    invoke-direct {v3, v4, v5}, Lcom/cooliris/media/StringTexture;-><init>(Ljava/lang/String;Lcom/cooliris/media/StringTexture$Config;)V

    aput-object v3, v2, v0

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 163
    :cond_61
    new-instance v2, Lcom/cooliris/media/StringTexture;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const v4, 0x7f06004a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/cooliris/media/TimeBar;->mMonthYearFormat:Lcom/cooliris/media/StringTexture$Config;

    invoke-direct {v2, v3, v4}, Lcom/cooliris/media/StringTexture;-><init>(Ljava/lang/String;Lcom/cooliris/media/StringTexture$Config;)V

    iput-object v2, p0, Lcom/cooliris/media/TimeBar;->mDateUnknown:Lcom/cooliris/media/StringTexture;

    .line 165
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/cooliris/media/TimeBar;->mBackgroundTexture:Lcom/cooliris/media/BitmapTexture;

    .line 166
    return-void
.end method

.method public renderBlended(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .registers 45
    .parameter "view"
    .parameter "gl"

    .prologue
    .line 455
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cooliris/media/Layer;->mX:F

    move/from16 v38, v0

    .line 456
    .local v38, originX:F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/cooliris/media/Layer;->mY:F

    .line 457
    .local v5, originY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cooliris/media/TimeBar;->mScrollAnim:F

    move/from16 v40, v0

    .line 458
    .local v40, scrollOffset:F
    sub-float v41, v38, v40

    .line 459
    .local v41, scrolledOriginX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cooliris/media/TimeBar;->mPositionAnim:F

    move/from16 v39, v0

    .line 460
    .local v39, position:F
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/cooliris/media/TimeBar;->mInDrag:Z

    if-eqz v3, :cond_58

    sget v36, Lcom/cooliris/media/TimeBar;->KNOB_PRESSED:I

    .line 461
    .local v36, knobId:I
    :goto_20
    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/cooliris/media/RenderView;->getResource(I)Lcom/cooliris/media/ResourceTexture;

    move-result-object v35

    .line 463
    .local v35, knob:Lcom/cooliris/media/Texture;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/cooliris/media/TimeBar;->mShowTime:Z

    if-nez v3, :cond_5b

    .line 464
    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/cooliris/media/RenderView;->bind(Lcom/cooliris/media/Texture;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 465
    invoke-virtual/range {v35 .. v35}, Lcom/cooliris/media/ResourceTexture;->getWidth()I

    move-result v3

    int-to-float v7, v3

    .line 466
    .local v7, knobWidth:F
    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/cooliris/media/TimeBar;->getKnobXForPosition(F)F

    move-result v3

    add-float v3, v3, v41

    const/high16 v4, 0x3f00

    mul-float/2addr v4, v7

    sub-float v4, v3, v4

    const/4 v6, 0x0

    invoke-virtual/range {v35 .. v35}, Lcom/cooliris/media/ResourceTexture;->getHeight()I

    move-result v3

    int-to-float v8, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Lcom/cooliris/media/RenderView;->draw2D(FFFFF)V

    .line 556
    .end local v7           #knobWidth:F
    :cond_57
    :goto_57
    return-void

    .line 460
    .end local v35           #knob:Lcom/cooliris/media/Texture;
    .end local v36           #knobId:I
    :cond_58
    sget v36, Lcom/cooliris/media/TimeBar;->KNOB:I

    goto :goto_20

    .line 470
    .restart local v35       #knob:Lcom/cooliris/media/Texture;
    .restart local v36       #knobId:I
    :cond_5b
    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/cooliris/media/RenderView;->bind(Lcom/cooliris/media/Texture;)Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 471
    invoke-virtual/range {v35 .. v35}, Lcom/cooliris/media/ResourceTexture;->getWidth()I

    move-result v3

    int-to-float v7, v3

    .line 472
    .restart local v7       #knobWidth:F
    invoke-virtual/range {v35 .. v35}, Lcom/cooliris/media/ResourceTexture;->getHeight()I

    move-result v3

    int-to-float v13, v3

    .line 473
    .local v13, knobHeight:F
    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/cooliris/media/TimeBar;->getKnobXForPosition(F)F

    move-result v3

    add-float v3, v3, v41

    const/high16 v4, 0x3f00

    mul-float/2addr v4, v7

    sub-float v9, v3, v4

    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/RenderView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float v10, v3, v13

    const/4 v11, 0x0

    move-object/from16 v8, p1

    move v12, v7

    invoke-virtual/range {v8 .. v13}, Lcom/cooliris/media/RenderView;->draw2D(FFFFF)V

    .line 477
    .end local v7           #knobWidth:F
    .end local v13           #knobHeight:F
    :cond_8c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/cooliris/media/TimeBar;->mInDrag:Z

    if-nez v3, :cond_9b

    move-object/from16 v0, p0

    iget v3, v0, Lcom/cooliris/media/TimeBar;->mAnimTextAlpha:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_57

    .line 478
    :cond_9b
    invoke-direct/range {p0 .. p0}, Lcom/cooliris/media/TimeBar;->getAnchorMarker()Lcom/cooliris/media/TimeBar$Marker;

    move-result-object v30

    .line 479
    .local v30, anchor:Lcom/cooliris/media/TimeBar$Marker;
    if-eqz v30, :cond_57

    .line 481
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/cooliris/media/TimeBar;->mInDrag:Z

    if-eqz v3, :cond_d1

    .line 482
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/TimeBar;->mMonthLabels:[Lcom/cooliris/media/StringTexture;

    move-object/from16 v0, v30

    iget v4, v0, Lcom/cooliris/media/TimeBar$Marker;->month:I

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/cooliris/media/TimeBar;->mMonth:Lcom/cooliris/media/Texture;

    .line 483
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/TimeBar;->mOpaqueDayLabels:[Lcom/cooliris/media/StringTexture;

    move-object/from16 v0, v30

    iget v4, v0, Lcom/cooliris/media/TimeBar$Marker;->day:I

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/cooliris/media/TimeBar;->mDay:Lcom/cooliris/media/Texture;

    .line 484
    move-object/from16 v0, v30

    iget v3, v0, Lcom/cooliris/media/TimeBar$Marker;->year:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/cooliris/media/TimeBar;->getYearLabel(I)Lcom/cooliris/media/StringTexture;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/cooliris/media/TimeBar;->mYear:Lcom/cooliris/media/Texture;

    .line 487
    :cond_d1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/TimeBar;->mMonthLabels:[Lcom/cooliris/media/StringTexture;

    move-object/from16 v0, v30

    iget v4, v0, Lcom/cooliris/media/TimeBar$Marker;->month:I

    aget-object v16, v3, v4

    .line 488
    .local v16, month:Lcom/cooliris/media/Texture;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/TimeBar;->mOpaqueDayLabels:[Lcom/cooliris/media/StringTexture;

    move-object/from16 v0, v30

    iget v4, v0, Lcom/cooliris/media/TimeBar$Marker;->day:I

    aget-object v17, v3, v4

    .line 489
    .local v17, day:Lcom/cooliris/media/Texture;
    move-object/from16 v0, v30

    iget v3, v0, Lcom/cooliris/media/TimeBar$Marker;->year:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/cooliris/media/TimeBar;->getYearLabel(I)Lcom/cooliris/media/StringTexture;

    move-result-object v18

    .line 490
    .local v18, year:Lcom/cooliris/media/Texture;
    const/16 v21, 0x1

    .line 491
    .local v21, validDate:Z
    move-object/from16 v0, v30

    iget v3, v0, Lcom/cooliris/media/TimeBar$Marker;->year:I

    const/16 v4, 0x7b2

    if-gt v3, v4, :cond_105

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/TimeBar;->mDateUnknown:Lcom/cooliris/media/StringTexture;

    move-object/from16 v16, v0

    .line 493
    const/16 v17, 0x0

    .line 494
    const/16 v18, 0x0

    .line 495
    const/16 v21, 0x0

    .line 497
    :cond_105
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/cooliris/media/RenderView;->loadTexture(Lcom/cooliris/media/Texture;)V

    .line 498
    if-eqz v21, :cond_11c

    .line 499
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/cooliris/media/RenderView;->loadTexture(Lcom/cooliris/media/Texture;)V

    .line 500
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/cooliris/media/RenderView;->loadTexture(Lcom/cooliris/media/Texture;)V

    .line 502
    :cond_11c
    const/16 v37, 0x46

    .line 503
    .local v37, numPixelsBufferX:I
    invoke-virtual/range {v16 .. v16}, Lcom/cooliris/media/Texture;->getWidth()I

    move-result v3

    int-to-float v4, v3

    if-eqz v21, :cond_24c

    invoke-virtual/range {v17 .. v17}, Lcom/cooliris/media/Texture;->getWidth()I

    move-result v3

    invoke-virtual/range {v18 .. v18}, Lcom/cooliris/media/Texture;->getWidth()I

    move-result v6

    add-int/2addr v3, v6

    int-to-float v3, v3

    const/high16 v6, 0x4120

    sget v8, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v6, v8

    add-float/2addr v3, v6

    :goto_135
    add-float v34, v4, v3

    .line 506
    .local v34, expectedWidth:F
    move/from16 v0, v37

    int-to-float v3, v0

    sget v4, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v3, v4

    add-float v3, v3, v34

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/TimeBar;->mBackgroundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1af

    .line 507
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/TimeBar;->mBackgroundRect:Landroid/graphics/Rect;

    move/from16 v0, v37

    int-to-float v4, v0

    sget v6, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v4, v6

    add-float v4, v4, v34

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 509
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/TimeBar;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual/range {v16 .. v16}, Lcom/cooliris/media/Texture;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v6, 0x41a0

    sget v8, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v6, v8

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 511
    :try_start_16b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/TimeBar;->mBackgroundRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/TimeBar;->mBackgroundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v31

    .line 513
    .local v31, bitmap:Landroid/graphics/Bitmap;
    new-instance v32, Landroid/graphics/Canvas;

    invoke-direct/range {v32 .. v32}, Landroid/graphics/Canvas;-><init>()V

    .line 514
    .local v32, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 515
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/TimeBar;->mBackground:Landroid/graphics/NinePatch;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/TimeBar;->mBackgroundRect:Landroid/graphics/Rect;

    sget-object v6, Lcom/cooliris/media/TimeBar;->SRC_PAINT:Landroid/graphics/Paint;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0, v4, v6}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 516
    new-instance v3, Lcom/cooliris/media/BitmapTexture;

    move-object/from16 v0, v31

    invoke-direct {v3, v0}, Lcom/cooliris/media/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/cooliris/media/TimeBar;->mBackgroundTexture:Lcom/cooliris/media/BitmapTexture;

    .line 517
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/TimeBar;->mBackgroundTexture:Lcom/cooliris/media/BitmapTexture;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/cooliris/media/RenderView;->loadTexture(Lcom/cooliris/media/Texture;)V

    .line 518
    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1af
    .catch Ljava/lang/OutOfMemoryError; {:try_start_16b .. :try_end_1af} :catch_24f

    .line 523
    .end local v31           #bitmap:Landroid/graphics/Bitmap;
    .end local v32           #canvas:Landroid/graphics/Canvas;
    :cond_1af
    :goto_1af
    const/16 v3, 0x2300

    const/16 v4, 0x2200

    const/high16 v6, 0x4604

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v4, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 524
    move-object/from16 v0, p0

    iget v3, v0, Lcom/cooliris/media/TimeBar;->mAnimTextAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/cooliris/media/TimeBar;->mAnimTextAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/cooliris/media/TimeBar;->mAnimTextAlpha:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/cooliris/media/TimeBar;->mAnimTextAlpha:F

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v4, v6, v8}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    .line 525
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/RenderView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v3, v34

    move/from16 v0, v37

    int-to-float v4, v0

    sget v6, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v4, v6

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float v19, v3, v4

    .line 527
    .local v19, x:F
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/RenderView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4120

    sget v6, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v4, v6

    sub-float/2addr v3, v4

    const/high16 v4, 0x3f00

    mul-float v20, v3, v4

    .line 528
    .local v20, y:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/TimeBar;->mBackgroundTexture:Lcom/cooliris/media/BitmapTexture;

    if-eqz v3, :cond_203

    .line 529
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/TimeBar;->mBackgroundTexture:Lcom/cooliris/media/BitmapTexture;

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v3, v1, v2}, Lcom/cooliris/media/RenderView;->draw2D(Lcom/cooliris/media/Texture;FF)V

    .line 531
    :cond_203
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/RenderView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f00

    mul-float/2addr v3, v4

    const/high16 v4, 0x4000

    add-float v20, v3, v4

    .line 532
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/RenderView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v3, v34

    const/high16 v4, 0x4000

    div-float v19, v3, v4

    .line 534
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/cooliris/media/TimeBar;->mInDrag:Z

    if-eqz v3, :cond_255

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    .line 535
    invoke-virtual/range {v14 .. v21}, Lcom/cooliris/media/TimeBar;->drawDateTexture(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/Texture;Lcom/cooliris/media/Texture;Lcom/cooliris/media/Texture;FFZ)V

    .line 549
    :cond_227
    :goto_227
    move-object/from16 v0, p0

    iget v3, v0, Lcom/cooliris/media/TimeBar;->mAnimTextAlpha:F

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_23e

    .line 550
    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v8, 0x3f80

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v4, v6, v8}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    .line 552
    :cond_23e
    const/16 v3, 0x2300

    const/16 v4, 0x2200

    const v6, 0x45f00800

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v4, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    goto/16 :goto_57

    .line 503
    .end local v19           #x:F
    .end local v20           #y:F
    .end local v34           #expectedWidth:F
    :cond_24c
    const/4 v3, 0x0

    goto/16 :goto_135

    .line 519
    .restart local v34       #expectedWidth:F
    :catch_24f
    move-exception v33

    .line 520
    .local v33, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual/range {v33 .. v33}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto/16 :goto_1af

    .line 538
    .end local v33           #e:Ljava/lang/OutOfMemoryError;
    .restart local v19       #x:F
    .restart local v20       #y:F
    :cond_255
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/TimeBar;->mMonth:Lcom/cooliris/media/Texture;

    if-nez v3, :cond_263

    if-eqz v16, :cond_263

    .line 539
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cooliris/media/TimeBar;->mMonth:Lcom/cooliris/media/Texture;

    .line 540
    :cond_263
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/TimeBar;->mDay:Lcom/cooliris/media/Texture;

    if-nez v3, :cond_271

    if-eqz v17, :cond_271

    .line 541
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cooliris/media/TimeBar;->mDay:Lcom/cooliris/media/Texture;

    .line 542
    :cond_271
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/TimeBar;->mYear:Lcom/cooliris/media/Texture;

    if-nez v3, :cond_27f

    if-eqz v18, :cond_27f

    .line 543
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cooliris/media/TimeBar;->mYear:Lcom/cooliris/media/Texture;

    .line 544
    :cond_27f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/TimeBar;->mMonth:Lcom/cooliris/media/Texture;

    if-eqz v3, :cond_227

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/TimeBar;->mDay:Lcom/cooliris/media/Texture;

    if-eqz v3, :cond_227

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/TimeBar;->mYear:Lcom/cooliris/media/Texture;

    if-eqz v3, :cond_227

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/TimeBar;->mMonth:Lcom/cooliris/media/Texture;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/TimeBar;->mDay:Lcom/cooliris/media/Texture;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/TimeBar;->mYear:Lcom/cooliris/media/Texture;

    move-object/from16 v26, v0

    move-object/from16 v22, p0

    move-object/from16 v23, p1

    move/from16 v27, v19

    move/from16 v28, v20

    move/from16 v29, v21

    invoke-virtual/range {v22 .. v29}, Lcom/cooliris/media/TimeBar;->drawDateTexture(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/Texture;Lcom/cooliris/media/Texture;Lcom/cooliris/media/Texture;FFZ)V

    goto/16 :goto_227
.end method

.method public setFeed(Lcom/cooliris/media/MediaFeed;IZ)V
    .registers 5
    .parameter "feed"
    .parameter "state"
    .parameter "needsLayout"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/cooliris/media/TimeBar;->mFeed:Lcom/cooliris/media/MediaFeed;

    .line 174
    iput p2, p0, Lcom/cooliris/media/TimeBar;->mState:I

    .line 175
    invoke-direct {p0}, Lcom/cooliris/media/TimeBar;->layout()V

    .line 176
    if-eqz p3, :cond_14

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Lcom/cooliris/media/TimeBar;->mPosition:F

    .line 178
    iget v0, p0, Lcom/cooliris/media/TimeBar;->mPosition:F

    invoke-direct {p0, v0}, Lcom/cooliris/media/TimeBar;->getScrollForPosition(F)F

    move-result v0

    iput v0, p0, Lcom/cooliris/media/TimeBar;->mScroll:F

    .line 180
    :cond_14
    return-void
.end method

.method public setItem(Lcom/cooliris/media/MediaItem;)V
    .registers 7
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 233
    iget-object v3, p0, Lcom/cooliris/media/TimeBar;->mTracker:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/TimeBar$Marker;

    .line 234
    .local v0, marker:Lcom/cooliris/media/TimeBar$Marker;
    if-eqz v0, :cond_26

    .line 235
    iget v3, p0, Lcom/cooliris/media/TimeBar;->mTotalWidth:F

    cmpl-float v3, v3, v2

    if-nez v3, :cond_27

    move v1, v2

    .line 236
    .local v1, markerX:F
    :goto_12
    const/high16 v3, 0x3f80

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/cooliris/media/TimeBar;->mPosition:F

    .line 237
    iget v2, p0, Lcom/cooliris/media/TimeBar;->mPosition:F

    invoke-direct {p0, v2}, Lcom/cooliris/media/TimeBar;->getScrollForPosition(F)F

    move-result v2

    iput v2, p0, Lcom/cooliris/media/TimeBar;->mScroll:F

    .line 239
    .end local v1           #markerX:F
    :cond_26
    return-void

    .line 235
    :cond_27
    iget v3, v0, Lcom/cooliris/media/TimeBar$Marker;->x:F

    iget v4, p0, Lcom/cooliris/media/TimeBar;->mTotalWidth:F

    div-float v1, v3, v4

    goto :goto_12
.end method

.method public setListener(Lcom/cooliris/media/TimeBar$Listener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/cooliris/media/TimeBar;->mListener:Lcom/cooliris/media/TimeBar$Listener;

    .line 170
    return-void
.end method

.method public unFocus()V
    .registers 2

    .prologue
    .line 714
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cooliris/media/TimeBar;->mInDrag:Z

    .line 715
    return-void
.end method

.method public update(Lcom/cooliris/media/RenderView;F)Z
    .registers 14
    .parameter "view"
    .parameter "dt"

    .prologue
    const/high16 v10, 0x4120

    const-wide/high16 v8, 0x4000

    const/high16 v7, 0x3f80

    .line 421
    mul-float v5, v10, p2

    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 422
    .local v2, ratio:F
    sub-float v1, v7, v2

    .line 423
    .local v1, invRatio:F
    iget v5, p0, Lcom/cooliris/media/TimeBar;->mPosition:F

    mul-float/2addr v5, v2

    iget v6, p0, Lcom/cooliris/media/TimeBar;->mPositionAnim:F

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/cooliris/media/TimeBar;->mPositionAnim:F

    .line 424
    iget v5, p0, Lcom/cooliris/media/TimeBar;->mScroll:F

    mul-float/2addr v5, v2

    iget v6, p0, Lcom/cooliris/media/TimeBar;->mScrollAnim:F

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/cooliris/media/TimeBar;->mScrollAnim:F

    .line 426
    iget-boolean v5, p0, Lcom/cooliris/media/TimeBar;->mInDrag:Z

    if-eqz v5, :cond_94

    .line 427
    iget v5, p0, Lcom/cooliris/media/TimeBar;->mPosition:F

    invoke-direct {p0, v5}, Lcom/cooliris/media/TimeBar;->getKnobXForPosition(F)F

    move-result v5

    iget v6, p0, Lcom/cooliris/media/TimeBar;->mScrollAnim:F

    sub-float v4, v5, v6

    .line 429
    .local v4, x:F
    const/high16 v5, 0x42c8

    sget v6, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float v0, v5, v6

    .line 430
    .local v0, autoScrollMargin:F
    cmpg-float v5, v4, v0

    if-gez v5, :cond_7e

    .line 431
    div-float v5, v4, v0

    sub-float v5, v7, v5

    float-to-double v5, v5

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v5, v5

    neg-float v3, v5

    .line 437
    .local v3, velocity:F
    :goto_43
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v10

    if-gez v5, :cond_5f

    .line 438
    iget v5, p0, Lcom/cooliris/media/TimeBar;->mScroll:F

    const/high16 v6, 0x43c8

    mul-float/2addr v6, v3

    mul-float/2addr v6, p2

    add-float/2addr v5, v6

    iput v5, p0, Lcom/cooliris/media/TimeBar;->mScroll:F

    .line 439
    iget v5, p0, Lcom/cooliris/media/TimeBar;->mDragX:F

    iget v6, p0, Lcom/cooliris/media/TimeBar;->mScroll:F

    add-float/2addr v5, v6

    invoke-direct {p0, v5}, Lcom/cooliris/media/TimeBar;->getPositionForKnobX(F)F

    move-result v5

    iput v5, p0, Lcom/cooliris/media/TimeBar;->mPosition:F

    .line 441
    :cond_5f
    iget-object v5, p0, Lcom/cooliris/media/TimeBar;->mListener:Lcom/cooliris/media/TimeBar$Listener;

    if-eqz v5, :cond_68

    .line 442
    iget-object v5, p0, Lcom/cooliris/media/TimeBar;->mListener:Lcom/cooliris/media/TimeBar$Listener;

    invoke-interface {v5, p0}, Lcom/cooliris/media/TimeBar$Listener;->onTimeChanged(Lcom/cooliris/media/TimeBar;)V

    .line 445
    :cond_68
    iput v7, p0, Lcom/cooliris/media/TimeBar;->mTextAlpha:F

    .line 449
    .end local v0           #autoScrollMargin:F
    .end local v3           #velocity:F
    .end local v4           #x:F
    :goto_6a
    iget v5, p0, Lcom/cooliris/media/TimeBar;->mAnimTextAlpha:F

    iget v6, p0, Lcom/cooliris/media/TimeBar;->mTextAlpha:F

    invoke-static {v5, v6, p2}, Lcom/cooliris/media/FloatUtils;->animate(FFF)F

    move-result v5

    iput v5, p0, Lcom/cooliris/media/TimeBar;->mAnimTextAlpha:F

    .line 450
    iget v5, p0, Lcom/cooliris/media/TimeBar;->mAnimTextAlpha:F

    iget v6, p0, Lcom/cooliris/media/TimeBar;->mTextAlpha:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_98

    const/4 v5, 0x1

    :goto_7d
    return v5

    .line 432
    .restart local v0       #autoScrollMargin:F
    .restart local v4       #x:F
    :cond_7e
    iget v5, p0, Lcom/cooliris/media/Layer;->mWidth:F

    sub-float/2addr v5, v0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_92

    .line 433
    iget v5, p0, Lcom/cooliris/media/Layer;->mWidth:F

    sub-float/2addr v5, v4

    div-float/2addr v5, v0

    sub-float v5, v7, v5

    float-to-double v5, v5

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v3, v5

    .restart local v3       #velocity:F
    goto :goto_43

    .line 435
    .end local v3           #velocity:F
    :cond_92
    const/4 v3, 0x0

    .restart local v3       #velocity:F
    goto :goto_43

    .line 447
    .end local v0           #autoScrollMargin:F
    .end local v3           #velocity:F
    .end local v4           #x:F
    :cond_94
    const/4 v5, 0x0

    iput v5, p0, Lcom/cooliris/media/TimeBar;->mTextAlpha:F

    goto :goto_6a

    .line 450
    :cond_98
    const/4 v5, 0x0

    goto :goto_7d
.end method
