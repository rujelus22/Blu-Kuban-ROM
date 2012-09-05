.class public Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;
.super Ljava/lang/Object;
.source "DragController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/DragController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DragRegionPaintInfo"
.end annotation


# instance fields
.field public mPaint:Landroid/graphics/Paint;

.field public mPaintRegion:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

.field public mRegion:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;->mPaint:Landroid/graphics/Paint;

    .line 45
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;->mRegion:Landroid/graphics/RectF;

    .line 46
    return-void
.end method
