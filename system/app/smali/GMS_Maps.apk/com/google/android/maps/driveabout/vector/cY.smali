.class Lcom/google/android/maps/driveabout/vector/cY;
.super Lcom/google/android/maps/driveabout/vector/l;


# instance fields
.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:I

.field private final f:J

.field private final g:Lcom/google/android/maps/driveabout/vector/w;

.field private h:Lcom/google/android/maps/driveabout/vector/K;


# direct methods
.method protected constructor <init>(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/w;FFFI)V
    .registers 9

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Lcom/google/android/maps/driveabout/vector/u;)V

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/cY;->g:Lcom/google/android/maps/driveabout/vector/w;

    iput p3, p0, Lcom/google/android/maps/driveabout/vector/cY;->b:F

    iput p4, p0, Lcom/google/android/maps/driveabout/vector/cY;->c:F

    iput p5, p0, Lcom/google/android/maps/driveabout/vector/cY;->d:F

    iput p6, p0, Lcom/google/android/maps/driveabout/vector/cY;->e:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/cY;->f:J

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cY;->h:Lcom/google/android/maps/driveabout/vector/K;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cY;->h:Lcom/google/android/maps/driveabout/vector/K;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/K;->a()I

    move-result v0

    goto :goto_5
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/t;)Lcom/google/android/maps/driveabout/vector/v;
    .registers 9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cY;->a:Lcom/google/android/maps/driveabout/vector/u;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cY;->g:Lcom/google/android/maps/driveabout/vector/w;

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cY;->b:F

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/cY;->c:F

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/cY;->d:F

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/cV;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/w;FFF)Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/google/android/maps/driveabout/vector/cY;->f:J

    sub-long/2addr v0, v3

    long-to-int v3, v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cW;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cY;->a:Lcom/google/android/maps/driveabout/vector/u;

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/cY;->e:I

    sub-int v3, v6, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/cW;-><init>(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/v;IZF)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cY;->h:Lcom/google/android/maps/driveabout/vector/K;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cY;->h:Lcom/google/android/maps/driveabout/vector/K;

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/vector/K;->a(Lcom/google/android/maps/driveabout/vector/t;)Lcom/google/android/maps/driveabout/vector/v;

    move-result-object v0

    return-object v0
.end method
