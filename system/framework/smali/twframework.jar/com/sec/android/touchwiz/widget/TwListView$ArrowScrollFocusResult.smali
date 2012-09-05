.class Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;
.super Ljava/lang/Object;
.source "TwListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrowScrollFocusResult"
.end annotation


# instance fields
.field private mAmountToScroll:I

.field private mSelectedPosition:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 2714
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwListView$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 2714
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmountToScroll()I
    .registers 2

    .prologue
    .line 2733
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;->mAmountToScroll:I

    return v0
.end method

.method public getSelectedPosition()I
    .registers 2

    .prologue
    .line 2729
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;->mSelectedPosition:I

    return v0
.end method

.method populate(II)V
    .registers 3
    .parameter "selectedPosition"
    .parameter "amountToScroll"

    .prologue
    .line 2724
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;->mSelectedPosition:I

    .line 2725
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;->mAmountToScroll:I

    .line 2726
    return-void
.end method
