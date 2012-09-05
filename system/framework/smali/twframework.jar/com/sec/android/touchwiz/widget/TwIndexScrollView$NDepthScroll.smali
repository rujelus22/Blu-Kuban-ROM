.class Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;
.super Ljava/lang/Object;
.source "TwIndexScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwIndexScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NDepthScroll"
.end annotation


# instance fields
.field private mBaseIndexPath:Ljava/lang/String;

.field private mBgRect:Landroid/graphics/Rect;

.field private mDotHeightRatio:F

.field private mIndexSkipLevel:I

.field private mItemIntervalY:I

.field private mMyDepth:I

.field private mPositionChildScroll:F

.field private mScrollHeight:I

.field private mSelectedIndex:I

.field private mSkipDensity:I

.field private mStartPosY:F

.field private mSubscrollIndexInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;Ljava/lang/String;Ljava/util/ArrayList;FILandroid/graphics/Rect;I)V
    .registers 12
    .parameter
    .parameter "indexPath"
    .parameter
    .parameter "posY"
    .parameter "intervalY"
    .parameter "bound"
    .parameter "myDepth"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;",
            ">;FI",
            "Landroid/graphics/Rect;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p3, indexInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1037
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    .line 1038
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 979
    const/high16 v1, 0x3f00

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    .line 999
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndex:I

    .line 1004
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mScrollHeight:I

    .line 1006
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSkipDensity:I

    .line 1039
    iput p7, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mMyDepth:I

    .line 1040
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndex:I

    .line 1044
    if-eqz p3, :cond_20

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_20

    if-ge p5, v3, :cond_57

    .line 1049
    :cond_20
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NDepthScroll( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1051
    :cond_57
    if-nez p2, :cond_5b

    const-string p2, ""

    .end local p2
    :cond_5b
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBaseIndexPath:Ljava/lang/String;

    .line 1052
    iput-object p3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    .line 1053
    iput p5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    .line 1054
    const/4 v1, 0x0

    cmpg-float v1, p4, v1

    if-gez v1, :cond_67

    .line 1055
    const/4 p4, 0x0

    .line 1057
    :cond_67
    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mPositionChildScroll:F

    .line 1058
    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mStartPosY:F

    .line 1059
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1061
    .local v0, res:Landroid/content/res/Resources;
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mStartPosY:F

    const v2, 0x2060019

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mStartPosY:F

    .line 1062
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    .line 1064
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    .line 1065
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v2, p6, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 1066
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v2, p6, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 1067
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v2, p6, Landroid/graphics/Rect;->right:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 1068
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v2, p6, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 1071
    return-void
.end method

.method private UpdateSkipLevel()V
    .registers 15

    .prologue
    const/4 v13, 0x2

    .line 1074
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 1075
    .local v5, localRect:Landroid/graphics/Rect;
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1076
    .local v6, maxSkipDensity:I
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v9, v10, 0x1

    .line 1077
    .local v9, skipLevel:I
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1078
    .local v3, indexLengthOrigin:I
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v4, v10

    .line 1079
    .local v4, itemIntervalY:F
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextPainter:Landroid/graphics/Paint;
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$800(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 1081
    .local v2, fontMtx:Landroid/graphics/Paint$FontMetrics;
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mScrollHeight:I

    if-nez v10, :cond_2c

    .line 1133
    :goto_2b
    return-void

    .line 1084
    :cond_2c
    const/4 v8, 0x1

    .local v8, skipDensity:I
    :goto_2d
    if-gt v8, v6, :cond_90

    .line 1085
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1086
    add-int/lit8 v9, v6, 0x1

    .line 1087
    :goto_37
    if-le v9, v13, :cond_8d

    .line 1092
    add-int v10, v9, v8

    add-int/lit8 v10, v10, -0x1

    div-int v0, v3, v10

    .line 1093
    .local v0, charNum:I
    add-int/lit8 v10, v9, -0x1

    mul-int/2addr v0, v10

    .line 1095
    add-int v10, v9, v8

    add-int/lit8 v10, v10, -0x1

    rem-int v7, v3, v10

    .line 1096
    .local v7, remain:I
    if-eqz v7, :cond_50

    .line 1097
    add-int/lit8 v10, v9, -0x1

    if-ge v10, v7, :cond_4f

    move v7, v9

    .end local v7           #remain:I
    :cond_4f
    add-int/2addr v0, v7

    .line 1100
    :cond_50
    add-int/lit8 v10, v9, -0x1

    add-int/2addr v10, v8

    div-int v10, v3, v10

    int-to-float v1, v10

    .line 1112
    .local v1, dotNum:F
    int-to-float v10, v0

    mul-float/2addr v10, v4

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    mul-float/2addr v11, v1

    mul-float/2addr v11, v4

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v5, Landroid/graphics/Rect;->bottom:I

    .line 1115
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v11, v9, -0x1

    add-int/2addr v11, v8

    rem-int/2addr v10, v11

    add-int/lit8 v11, v9, -0x1

    if-lt v10, v11, :cond_75

    .line 1116
    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    add-float/2addr v10, v4

    float-to-int v10, v10

    iput v10, v5, Landroid/graphics/Rect;->bottom:I

    .line 1120
    :cond_75
    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mScrollHeight:I

    iget v12, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    float-to-int v12, v12

    add-int/2addr v11, v12

    if-ge v10, v11, :cond_8a

    .line 1121
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSkipDensity:I

    .line 1122
    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    .line 1123
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    float-to-int v11, v1

    #setter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mDotNum:I
    invoke-static {v10, v11}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$902(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;I)I

    goto :goto_2b

    .line 1126
    :cond_8a
    add-int/lit8 v9, v9, -0x1

    .line 1127
    goto :goto_37

    .line 1084
    .end local v0           #charNum:I
    .end local v1           #dotNum:F
    :cond_8d
    add-int/lit8 v8, v8, 0x1

    goto :goto_2d

    .line 1129
    :cond_90
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSkipDensity:I

    .line 1130
    iput v13, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    goto :goto_2b
.end method

.method static synthetic access$600(Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;F)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 972
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getNearestIndex(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 972
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mPositionChildScroll:F

    return v0
.end method

.method private getNearestIndex(F)Z
    .registers 15
    .parameter "y"

    .prologue
    const/4 v10, 0x0

    .line 1227
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    sub-float/2addr p1, v11

    .line 1228
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x2

    if-ge v11, v12, :cond_11

    .line 1322
    :cond_10
    :goto_10
    return v10

    .line 1232
    :cond_11
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndex:I

    .line 1233
    .local v4, prevIndex:I
    const/4 v1, 0x0

    .line 1249
    .local v1, newSelectedIndex:I
    const/4 v3, 0x0

    .line 1251
    .local v3, positionI:I
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    int-to-float v2, v11

    .line 1252
    .local v2, posY:F
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    .line 1255
    .local v8, skipLevel:I
    :goto_21
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    div-int/lit8 v11, v11, 0x6

    int-to-float v11, v11

    add-float/2addr v11, v2

    cmpg-float v11, v11, p1

    if-gez v11, :cond_40

    .line 1256
    rem-int v11, v3, v8

    add-int/lit8 v12, v8, -0x2

    if-ne v11, v12, :cond_3b

    .line 1258
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v11, v11

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    mul-float/2addr v11, v12

    add-float/2addr v2, v11

    .line 1262
    :goto_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 1260
    :cond_3b
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v11, v11

    add-float/2addr v2, v11

    goto :goto_38

    .line 1266
    :cond_40
    div-int v6, v3, v8

    .line 1267
    .local v6, quota:I
    rem-int v7, v3, v8

    .line 1268
    .local v7, reminder:I
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSkipDensity:I

    add-int/2addr v11, v8

    add-int/lit8 v11, v11, -0x1

    mul-int/2addr v11, v6

    add-int v1, v11, v7

    .line 1276
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mBlockSelectingDot:Z
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1000(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Z

    move-result v11

    if-nez v11, :cond_7d

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    rem-int v11, v3, v11

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    add-int/lit8 v12, v12, -0x1

    if-ne v11, v12, :cond_7d

    .line 1278
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    div-int/lit8 v11, v11, 0x6

    int-to-float v11, v11

    add-float/2addr v11, v2

    sub-float v0, v11, p1

    .line 1279
    .local v0, d:F
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v11, v11

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    mul-float/2addr v11, v12

    sub-float v0, v11, v0

    .line 1280
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v11, v11

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    mul-float/2addr v11, v12

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSkipDensity:I

    int-to-float v12, v12

    div-float v9, v11, v12

    .line 1281
    .local v9, x:F
    div-float v11, v0, v9

    float-to-int v5, v11

    .line 1283
    .local v5, q:I
    add-int/2addr v1, v5

    .line 1288
    .end local v0           #d:F
    .end local v5           #q:I
    .end local v9           #x:F
    :cond_7d
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lt v1, v11, :cond_bc

    .line 1289
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v1, v11, -0x1

    .line 1302
    :cond_8d
    :goto_8d
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mPositionChildScroll:F

    .line 1309
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mBlockSelectingDot:Z
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1000(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Z

    move-result v11

    if-eqz v11, :cond_c8

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    rem-int v11, v3, v11

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    add-int/lit8 v12, v12, -0x1

    if-ne v11, v12, :cond_c8

    .line 1310
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSkipDensity:I

    add-int/2addr v11, v1

    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndex:I

    .line 1312
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndex:I

    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lt v11, v12, :cond_c0

    .line 1313
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndex:I

    goto/16 :goto_10

    .line 1290
    :cond_bc
    if-gez v1, :cond_8d

    .line 1291
    const/4 v1, 0x0

    goto :goto_8d

    .line 1314
    :cond_c0
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndex:I

    if-gez v11, :cond_10

    .line 1315
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndex:I

    goto/16 :goto_10

    .line 1320
    :cond_c8
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndex:I

    .line 1322
    if-eq v1, v4, :cond_10

    const/4 v10, 0x1

    goto/16 :goto_10
.end method


# virtual methods
.method public drawScroll(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;III)V
    .registers 36
    .parameter "canvas"
    .parameter "bgDrawable"
    .parameter "textPainter"
    .parameter "textColor"
    .parameter "textColorHighlight"
    .parameter "alpha"

    .prologue
    .line 1461
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mScrollHeight:I

    move/from16 v23, v0

    if-nez v23, :cond_2e6

    .line 1462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mTopPadding:I

    move/from16 v22, v0

    .line 1465
    .local v22, topPadding:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getHeight()I

    move-result v5

    .line 1466
    .local v5, allowedHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 1469
    .local v18, res:Landroid/content/res/Resources;
    const/4 v15, 0x0

    .line 1470
    .local v15, minHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexInterval:I
    invoke-static/range {v23 .. v23}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1100(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I

    move-result v15

    .line 1472
    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    .line 1476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mMyDepth:I

    move/from16 v24, v0

    #calls: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getHandleRect(I)Landroid/graphics/Rect;
    invoke-static/range {v23 .. v24}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;I)Landroid/graphics/Rect;

    move-result-object v16

    .line 1478
    .local v16, newBgRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mStartPosY:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v22

    if-le v0, v1, :cond_f7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mStartPosY:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    :goto_63
    move/from16 v0, v23

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1483
    const/4 v6, 0x0

    .line 1484
    .local v6, bottomPosY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v23

    if-eqz v23, :cond_fb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_fb

    .line 1485
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    const v24, 0x2060018

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x2

    add-int v6, v23, v24

    .line 1491
    :cond_a6
    :goto_a6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 1493
    .local v14, length:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    add-int/lit8 v20, v23, 0x1

    .line 1495
    .local v20, skipLevel:I
    const/16 v19, 0x1

    .line 1497
    .local v19, skipDensity:I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    .line 1499
    .local v11, itemIntervalY:I
    const/4 v9, 0x0

    .local v9, i:I
    const/4 v10, 0x0

    .local v10, indexToShow:I
    :goto_c4
    if-ge v10, v14, :cond_13f

    .line 1500
    rem-int v23, v9, v20

    add-int/lit8 v24, v20, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_139

    add-int/lit8 v23, v14, -0x1

    move/from16 v0, v23

    if-ge v10, v0, :cond_139

    .line 1501
    int-to-float v0, v6

    move/from16 v23, v0

    int-to-float v0, v11

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v6, v0

    .line 1502
    const/4 v12, 0x0

    .local v12, j:I
    :goto_ea
    if-gez v12, :cond_13a

    add-int/lit8 v23, v14, -0x2

    move/from16 v0, v23

    if-ge v10, v0, :cond_13a

    .line 1503
    add-int/lit8 v10, v10, 0x1

    .line 1502
    add-int/lit8 v12, v12, 0x1

    goto :goto_ea

    .end local v6           #bottomPosY:I
    .end local v9           #i:I
    .end local v10           #indexToShow:I
    .end local v11           #itemIntervalY:I
    .end local v12           #j:I
    .end local v14           #length:I
    .end local v19           #skipDensity:I
    .end local v20           #skipLevel:I
    :cond_f7
    move/from16 v23, v22

    .line 1478
    goto/16 :goto_63

    .line 1486
    .restart local v6       #bottomPosY:I
    :cond_fb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v23

    if-eqz v23, :cond_a6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_a6

    .line 1487
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    const v24, 0x2060019

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x2

    add-int v6, v23, v24

    goto/16 :goto_a6

    .line 1506
    .restart local v9       #i:I
    .restart local v10       #indexToShow:I
    .restart local v11       #itemIntervalY:I
    .restart local v14       #length:I
    .restart local v19       #skipDensity:I
    .restart local v20       #skipLevel:I
    :cond_139
    add-int/2addr v6, v11

    .line 1499
    :cond_13a
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_c4

    .line 1509
    :cond_13f
    move-object/from16 v0, v16

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 1515
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v24

    add-int v23, v23, v24

    move/from16 v0, v23

    if-le v0, v5, :cond_185

    .line 1516
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v24

    add-int v23, v23, v24

    sub-int v13, v23, v5

    .line 1517
    .local v13, lack:I
    move-object/from16 v0, v16

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 1519
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v23, v23, v13

    move/from16 v0, v23

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1520
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v22

    if-ge v0, v1, :cond_185

    .line 1521
    move/from16 v0, v22

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1532
    .end local v13           #lack:I
    :cond_185
    const/4 v8, 0x0

    .line 1533
    .local v8, handlePadding:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v23

    if-eqz v23, :cond_256

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_256

    .line 1534
    const v23, 0x2060018

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v8, v0

    .line 1538
    :cond_1b6
    :goto_1b6
    move-object/from16 v0, v16

    iget v6, v0, Landroid/graphics/Rect;->top:I

    .line 1540
    sub-int v23, v5, v22

    mul-int/lit8 v24, v8, 0x2

    sub-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mScrollHeight:I

    .line 1542
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->UpdateSkipLevel()V

    .line 1550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 1551
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    move/from16 v20, v0

    .line 1552
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSkipDensity:I

    move/from16 v19, v0

    .line 1553
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    .line 1555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_21d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mDotNum:I
    invoke-static/range {v23 .. v23}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$900(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_21d

    .line 1556
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mScrollHeight:I

    move/from16 v23, v0

    div-int v23, v23, v14

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    .line 1557
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    .line 1560
    :cond_21d
    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_21f
    if-ge v10, v14, :cond_28e

    .line 1562
    rem-int v23, v9, v20

    add-int/lit8 v24, v20, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_288

    add-int/lit8 v23, v14, -0x1

    move/from16 v0, v23

    if-ge v10, v0, :cond_288

    .line 1563
    int-to-float v0, v6

    move/from16 v23, v0

    int-to-float v0, v11

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v6, v0

    .line 1564
    const/4 v12, 0x0

    .restart local v12       #j:I
    :goto_245
    add-int/lit8 v23, v19, -0x1

    move/from16 v0, v23

    if-ge v12, v0, :cond_289

    add-int/lit8 v23, v14, -0x2

    move/from16 v0, v23

    if-ge v10, v0, :cond_289

    .line 1565
    add-int/lit8 v10, v10, 0x1

    .line 1564
    add-int/lit8 v12, v12, 0x1

    goto :goto_245

    .line 1535
    .end local v12           #j:I
    :cond_256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v23

    if-eqz v23, :cond_1b6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_1b6

    .line 1536
    const v23, 0x2060019

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v8, v0

    goto/16 :goto_1b6

    .line 1568
    :cond_288
    add-int/2addr v6, v11

    .line 1560
    :cond_289
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_21f

    .line 1574
    :cond_28e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v23

    if-eqz v23, :cond_427

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_427

    .line 1575
    mul-int/lit8 v23, v8, 0x2

    add-int v23, v23, v6

    move/from16 v0, v23

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1583
    :cond_2ba
    :goto_2ba
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    .line 1584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLastY:F
    invoke-static/range {v23 .. v23}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1400(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)F

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getNearestIndex(F)Z

    .line 1587
    sget-boolean v23, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCallDrawIndexTextAtOnDraw:Z

    if-eqz v23, :cond_2e6

    .line 1588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getIndexPath()Ljava/lang/String;

    move-result-object v24

    #calls: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->drawIndexText(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1500(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;Ljava/lang/String;)V

    .line 1589
    const/16 v23, 0x0

    sput-boolean v23, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCallDrawIndexTextAtOnDraw:Z

    .line 1608
    .end local v5           #allowedHeight:I
    .end local v6           #bottomPosY:I
    .end local v8           #handlePadding:I
    .end local v9           #i:I
    .end local v10           #indexToShow:I
    .end local v11           #itemIntervalY:I
    .end local v14           #length:I
    .end local v15           #minHeight:I
    .end local v16           #newBgRect:Landroid/graphics/Rect;
    .end local v18           #res:Landroid/content/res/Resources;
    .end local v19           #skipDensity:I
    .end local v20           #skipLevel:I
    .end local v22           #topPadding:I
    :cond_2e6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mScrollBarOn:Z
    invoke-static/range {v23 .. v23}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$000(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Z

    move-result v23

    if-eqz v23, :cond_455

    .line 1610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1611
    move-object/from16 v0, p2

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1612
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1614
    invoke-virtual/range {p3 .. p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1615
    const/16 v23, 0xff

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1624
    :goto_319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLastY:F
    invoke-static/range {v23 .. v23}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1400(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)F

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->updateIndex(F)Z

    .line 1626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    add-int v23, v23, v24

    div-int/lit8 v21, v23, 0x2

    .line 1633
    .local v21, textPosX:I
    const/16 v17, 0x0

    .line 1634
    .local v17, posY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 1635
    .restart local v18       #res:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v23

    if-eqz v23, :cond_46b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_46b

    .line 1636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    const v24, 0x2060018

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    add-int v17, v23, v24

    .line 1644
    :cond_392
    :goto_392
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v7

    .line 1645
    .local v7, fontMtx:Landroid/graphics/Paint$FontMetrics;
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v23, v0

    iget v0, v7, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v17, v0

    .line 1648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 1649
    .restart local v14       #length:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    move/from16 v20, v0

    .line 1650
    .restart local v20       #skipLevel:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSkipDensity:I

    move/from16 v19, v0

    .line 1651
    .restart local v19       #skipDensity:I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    .line 1653
    .restart local v11       #itemIntervalY:I
    const/4 v9, 0x0

    .restart local v9       #i:I
    const/4 v10, 0x0

    .restart local v10       #indexToShow:I
    :goto_3c2
    if-ge v10, v14, :cond_4e0

    .line 1655
    rem-int v23, v9, v20

    add-int/lit8 v24, v20, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4ad

    add-int/lit8 v23, v14, -0x1

    move/from16 v0, v23

    if-ge v10, v0, :cond_4ad

    .line 1657
    const-string v23, "."

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v25, v0

    int-to-float v0, v11

    move/from16 v26, v0

    const/high16 v27, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    mul-float v26, v26, v27

    sub-float v25, v25, v26

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1665
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v23, v0

    int-to-float v0, v11

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v17, v0

    .line 1666
    const/4 v12, 0x0

    .restart local v12       #j:I
    :goto_416
    add-int/lit8 v23, v19, -0x1

    move/from16 v0, v23

    if-ge v12, v0, :cond_4da

    add-int/lit8 v23, v14, -0x2

    move/from16 v0, v23

    if-ge v10, v0, :cond_4da

    .line 1667
    add-int/lit8 v10, v10, 0x1

    .line 1666
    add-int/lit8 v12, v12, 0x1

    goto :goto_416

    .line 1576
    .end local v7           #fontMtx:Landroid/graphics/Paint$FontMetrics;
    .end local v12           #j:I
    .end local v17           #posY:I
    .end local v21           #textPosX:I
    .restart local v5       #allowedHeight:I
    .restart local v6       #bottomPosY:I
    .restart local v8       #handlePadding:I
    .restart local v15       #minHeight:I
    .restart local v16       #newBgRect:Landroid/graphics/Rect;
    .restart local v22       #topPadding:I
    :cond_427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v23

    if-eqz v23, :cond_2ba

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_2ba

    .line 1577
    mul-int/lit8 v23, v8, 0x2

    add-int v23, v23, v6

    move/from16 v0, v23

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2ba

    .line 1620
    .end local v5           #allowedHeight:I
    .end local v6           #bottomPosY:I
    .end local v8           #handlePadding:I
    .end local v9           #i:I
    .end local v10           #indexToShow:I
    .end local v11           #itemIntervalY:I
    .end local v14           #length:I
    .end local v15           #minHeight:I
    .end local v16           #newBgRect:Landroid/graphics/Rect;
    .end local v18           #res:Landroid/content/res/Resources;
    .end local v19           #skipDensity:I
    .end local v20           #skipLevel:I
    .end local v22           #topPadding:I
    :cond_455
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1600()I

    move-result v23

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1621
    const/16 v23, 0xff

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_319

    .line 1637
    .restart local v17       #posY:I
    .restart local v18       #res:Landroid/content/res/Resources;
    .restart local v21       #textPosX:I
    :cond_46b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v23

    if-eqz v23, :cond_392

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_392

    .line 1638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    const v24, 0x2060019

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    add-int v17, v23, v24

    goto/16 :goto_392

    .line 1671
    .restart local v7       #fontMtx:Landroid/graphics/Paint$FontMetrics;
    .restart local v9       #i:I
    .restart local v10       #indexToShow:I
    .restart local v11       #itemIntervalY:I
    .restart local v14       #length:I
    .restart local v19       #skipDensity:I
    .restart local v20       #skipLevel:I
    :cond_4ad
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    move-object/from16 v23, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1678
    add-int v17, v17, v11

    .line 1653
    :cond_4da
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3c2

    .line 1685
    :cond_4e0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsScroll:Z
    invoke-static/range {v23 .. v23}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$100(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Z

    move-result v23

    if-eqz v23, :cond_665

    const/16 v23, 0xff

    move/from16 v0, p6

    move/from16 v1, v23

    if-ne v0, v1, :cond_665

    .line 1686
    move-object/from16 v0, p3

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1687
    move-object/from16 v0, p3

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1691
    const/16 v17, 0x0

    .line 1692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 1693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v23

    if-eqz v23, :cond_5b3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5b3

    .line 1695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    const v24, 0x2060018

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    add-int v17, v23, v24

    .line 1704
    :cond_54e
    :goto_54e
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v7

    .line 1705
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v23, v0

    iget v0, v7, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v17, v0

    .line 1707
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndex:I

    .line 1708
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    move/from16 v20, v0

    .line 1709
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSkipDensity:I

    move/from16 v19, v0

    .line 1711
    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_574
    if-ge v10, v14, :cond_601

    .line 1712
    rem-int v23, v9, v20

    add-int/lit8 v24, v20, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5f8

    .line 1713
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v17, v0

    .line 1714
    const/4 v12, 0x0

    .restart local v12       #j:I
    :goto_5a0
    add-int/lit8 v23, v19, -0x1

    move/from16 v0, v23

    if-ge v12, v0, :cond_5ae

    .line 1716
    add-int/lit8 v10, v10, 0x1

    .line 1717
    add-int/lit8 v23, v14, -0x1

    move/from16 v0, v23

    if-lt v10, v0, :cond_5f5

    .line 1711
    .end local v12           #j:I
    :cond_5ae
    :goto_5ae
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_574

    .line 1696
    :cond_5b3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v23

    if-eqz v23, :cond_54e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_54e

    .line 1698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    const v24, 0x2060019

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    add-int v17, v23, v24

    goto/16 :goto_54e

    .line 1714
    .restart local v12       #j:I
    :cond_5f5
    add-int/lit8 v12, v12, 0x1

    goto :goto_5a0

    .line 1722
    .end local v12           #j:I
    :cond_5f8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    move/from16 v23, v0

    add-int v17, v17, v23

    goto :goto_5ae

    .line 1725
    :cond_601
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndex:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    move/from16 v24, v0

    rem-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_666

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndex:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_666

    .line 1727
    const-string v23, "."

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    mul-float v26, v26, v27

    sub-float v25, v25, v26

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1751
    :cond_665
    :goto_665
    return-void

    .line 1740
    :cond_666
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndex:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSkipDensity:I

    move/from16 v25, v0

    add-int v24, v24, v25

    add-int/lit8 v24, v24, -0x1

    rem-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_6a4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndex:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_665

    .line 1742
    :cond_6a4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndex:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    move-object/from16 v23, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_665
.end method

.method public getBaseIndexPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBaseIndexPath:Ljava/lang/String;

    return-object v0
.end method

.method public getIndexInfoAt(I)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;
    .registers 3
    .parameter "index"

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    goto :goto_5
.end method

.method public getIndexPath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBaseIndexPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getSelectedItem()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndexSkipLevel()I
    .registers 2

    .prologue
    .line 1140
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    return v0
.end method

.method public getIndexStringAt(I)Ljava/lang/String;
    .registers 4
    .parameter "index"

    .prologue
    .line 1189
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getIndexInfoAt(I)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    move-result-object v0

    .line 1190
    .local v0, ii:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;
    if-nez v0, :cond_9

    const-string v1, ""

    :goto_8
    return-object v1

    :cond_9
    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    goto :goto_8
.end method

.method public getRect()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelectedIndex()I
    .registers 2

    .prologue
    .line 1159
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndex:I

    return v0
.end method

.method public getSelectedIndexInfo()Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;
    .registers 3

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndex:I

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public getSelectedItem()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1196
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndex:I

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getIndexStringAt(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscrollIndexInfo()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmIndexSkipLevel()I
    .registers 2

    .prologue
    .line 1011
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    return v0
.end method

.method public getmPositionChildScroll()F
    .registers 2

    .prologue
    .line 1020
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mPositionChildScroll:F

    return v0
.end method

.method public getmSkipDensity()I
    .registers 2

    .prologue
    .line 1008
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSkipDensity:I

    return v0
.end method

.method public onSizeChanged(I)V
    .registers 4
    .parameter "newParentHeight"

    .prologue
    .line 1445
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mScrollHeight:I

    .line 1446
    const-string v0, "TwIndexScrollView"

    const-string v1, "NdepthScroll:: onSizeChanged() / awakenScrollBar() is now being called!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->invalidate()V

    .line 1448
    return-void
.end method

.method public setSelectedIndex(I)I
    .registers 2
    .parameter "selectedIndex"

    .prologue
    .line 1166
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndex:I

    return p1
.end method

.method public size()I
    .registers 2

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_5
.end method

.method public updateIndex(F)Z
    .registers 15
    .parameter "y"

    .prologue
    const/4 v10, 0x0

    .line 1359
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    sub-float/2addr p1, v11

    .line 1360
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x2

    if-ge v11, v12, :cond_11

    .line 1440
    :cond_10
    :goto_10
    return v10

    .line 1364
    :cond_11
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndex:I

    .line 1365
    .local v4, prevIndex:I
    const/4 v1, 0x0

    .line 1369
    .local v1, newSelectedIndex:I
    const/4 v3, 0x0

    .line 1371
    .local v3, positionI:I
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    int-to-float v2, v11

    .line 1372
    .local v2, posY:F
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    .line 1375
    .local v8, skipLevel:I
    :goto_21
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    div-int/lit8 v11, v11, 0x6

    int-to-float v11, v11

    add-float/2addr v11, v2

    cmpg-float v11, v11, p1

    if-gez v11, :cond_40

    .line 1376
    rem-int v11, v3, v8

    add-int/lit8 v12, v8, -0x2

    if-ne v11, v12, :cond_3b

    .line 1378
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v11, v11

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    mul-float/2addr v11, v12

    add-float/2addr v2, v11

    .line 1382
    :goto_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 1380
    :cond_3b
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v11, v11

    add-float/2addr v2, v11

    goto :goto_38

    .line 1386
    :cond_40
    div-int v6, v3, v8

    .line 1387
    .local v6, quota:I
    rem-int v7, v3, v8

    .line 1388
    .local v7, reminder:I
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSkipDensity:I

    add-int/2addr v11, v8

    add-int/lit8 v11, v11, -0x1

    mul-int/2addr v11, v6

    add-int v1, v11, v7

    .line 1395
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mBlockSelectingDot:Z
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1000(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Z

    move-result v11

    if-nez v11, :cond_7d

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    rem-int v11, v3, v11

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    add-int/lit8 v12, v12, -0x1

    if-ne v11, v12, :cond_7d

    .line 1397
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    div-int/lit8 v11, v11, 0x6

    int-to-float v11, v11

    add-float/2addr v11, v2

    sub-float v0, v11, p1

    .line 1398
    .local v0, d:F
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v11, v11

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    mul-float/2addr v11, v12

    sub-float v0, v11, v0

    .line 1399
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v11, v11

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    mul-float/2addr v11, v12

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSkipDensity:I

    int-to-float v12, v12

    div-float v9, v11, v12

    .line 1400
    .local v9, x:F
    div-float v11, v0, v9

    float-to-int v5, v11

    .line 1402
    .local v5, q:I
    add-int/2addr v1, v5

    .line 1408
    .end local v0           #d:F
    .end local v5           #q:I
    .end local v9           #x:F
    :cond_7d
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lt v1, v11, :cond_a8

    .line 1409
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v1, v11, -0x1

    .line 1428
    :cond_8d
    :goto_8d
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mBlockSelectingDot:Z
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1000(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Z

    move-result v11

    if-eqz v11, :cond_9f

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    rem-int v11, v3, v11

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    add-int/lit8 v12, v12, -0x1

    if-eq v11, v12, :cond_10

    .line 1432
    :cond_9f
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndex:I

    .line 1434
    if-eq v1, v4, :cond_10

    .line 1435
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mPositionChildScroll:F

    .line 1436
    const/4 v10, 0x1

    goto/16 :goto_10

    .line 1410
    :cond_a8
    if-gez v1, :cond_8d

    .line 1411
    const/4 v1, 0x0

    goto :goto_8d
.end method
