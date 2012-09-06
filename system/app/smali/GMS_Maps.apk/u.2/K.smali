.class public Lu/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lu/k;->b:I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aU;)F
    .registers 6
    .parameter

    .prologue
    .line 26
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->d()J

    move-result-wide v0

    .line 27
    iget-wide v2, p0, Lu/k;->a:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_1e

    .line 28
    const-wide/16 v2, 0x80

    add-long/2addr v0, v2

    iput-wide v0, p0, Lu/k;->a:J

    .line 29
    iget v0, p0, Lu/k;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lu/k;->b:I

    .line 30
    iget v0, p0, Lu/k;->b:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1e

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lu/k;->b:I

    .line 37
    :cond_1e
    iget-wide v0, p0, Lu/k;->a:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/aU;->a(J)V

    .line 39
    const/high16 v0, 0x4200

    iget v1, p0, Lu/k;->b:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method
