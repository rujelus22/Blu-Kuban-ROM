.class Lcom/google/android/maps/driveabout/vector/dL;
.super Lcom/google/android/maps/driveabout/vector/c;
.source "SourceFile"


# instance fields
.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:I

.field private final f:J

.field private final g:Lcom/google/android/maps/driveabout/vector/n;

.field private h:Lcom/google/android/maps/driveabout/vector/F;


# direct methods
.method protected constructor <init>(Lcom/google/android/maps/driveabout/vector/l;Lcom/google/android/maps/driveabout/vector/n;FFFI)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1125
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/c;-><init>(Lcom/google/android/maps/driveabout/vector/l;)V

    .line 1126
    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/dL;->g:Lcom/google/android/maps/driveabout/vector/n;

    .line 1127
    iput p3, p0, Lcom/google/android/maps/driveabout/vector/dL;->b:F

    .line 1128
    iput p4, p0, Lcom/google/android/maps/driveabout/vector/dL;->c:F

    .line 1129
    iput p5, p0, Lcom/google/android/maps/driveabout/vector/dL;->d:F

    .line 1130
    iput p6, p0, Lcom/google/android/maps/driveabout/vector/dL;->e:I

    .line 1131
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/dL;->f:J

    .line 1132
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dL;->h:Lcom/google/android/maps/driveabout/vector/F;

    if-nez v0, :cond_6

    .line 1160
    const/4 v0, 0x0

    .line 1162
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dL;->h:Lcom/google/android/maps/driveabout/vector/F;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/F;->a()I

    move-result v0

    goto :goto_5
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/k;)Lcom/google/android/maps/driveabout/vector/m;
    .registers 9
    .parameter

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dL;->a:Lcom/google/android/maps/driveabout/vector/l;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/dL;->g:Lcom/google/android/maps/driveabout/vector/n;

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/dL;->b:F

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/dL;->c:F

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/dL;->d:F

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/dI;->a(Lcom/google/android/maps/driveabout/vector/l;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/n;FFF)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v2

    .line 1141
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/google/android/maps/driveabout/vector/dL;->f:J

    sub-long/2addr v0, v3

    long-to-int v3, v0

    .line 1145
    const/4 v4, 0x1

    .line 1146
    const/4 v5, 0x0

    .line 1147
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dJ;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dL;->a:Lcom/google/android/maps/driveabout/vector/l;

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/dL;->e:I

    sub-int v3, v6, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/dJ;-><init>(Lcom/google/android/maps/driveabout/vector/l;Lcom/google/android/maps/driveabout/vector/m;IZF)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/dL;->h:Lcom/google/android/maps/driveabout/vector/F;

    .line 1150
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dL;->h:Lcom/google/android/maps/driveabout/vector/F;

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/vector/F;->a(Lcom/google/android/maps/driveabout/vector/k;)Lcom/google/android/maps/driveabout/vector/m;

    move-result-object v0

    return-object v0
.end method
