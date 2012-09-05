.class public final Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:J


# direct methods
.method public constructor <init>(Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;FFJ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iget v0, p1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->x:F

    iput v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->a:F

    .line 12
    iget v0, p1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->y:F

    iput v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->b:F

    .line 13
    iput p3, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->c:F

    .line 14
    iput p2, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->d:F

    .line 15
    iput-wide p4, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->e:J

    .line 16
    return-void
.end method
