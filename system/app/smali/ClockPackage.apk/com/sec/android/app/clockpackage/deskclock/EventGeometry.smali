.class public Lcom/sec/android/app/clockpackage/deskclock/EventGeometry;
.super Ljava/lang/Object;
.source "EventGeometry.java"


# instance fields
.field private mCellMargin:I

.field private mHourGap:F

.field private mMinEventHeight:F

.field private mMoreEventOffset:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/EventGeometry;->mCellMargin:I

    .line 32
    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/EventGeometry;->mMoreEventOffset:I

    return-void
.end method


# virtual methods
.method setHourGap(F)V
    .registers 2
    .parameter "gap"

    .prologue
    .line 39
    iput p1, p0, Lcom/sec/android/app/clockpackage/deskclock/EventGeometry;->mHourGap:F

    .line 40
    return-void
.end method

.method setMinEventHeight(F)V
    .registers 2
    .parameter "height"

    .prologue
    .line 43
    iput p1, p0, Lcom/sec/android/app/clockpackage/deskclock/EventGeometry;->mMinEventHeight:F

    .line 44
    return-void
.end method
