.class public Lcom/google/android/maps/driveabout/vector/h;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/h;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/h;->c:Z

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/h;->b:Z

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;)Z
    .registers 9

    const-wide/16 v5, 0x1f4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/h;->b:Z

    if-nez v1, :cond_8

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->d()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/maps/driveabout/vector/h;->a:J

    cmp-long v3, v1, v3

    if-ltz v3, :cond_28

    iget-wide v3, p0, Lcom/google/android/maps/driveabout/vector/h;->a:J

    sub-long v3, v1, v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_1c

    iput-wide v1, p0, Lcom/google/android/maps/driveabout/vector/h;->a:J

    :cond_1c
    iget-wide v1, p0, Lcom/google/android/maps/driveabout/vector/h;->a:J

    add-long/2addr v1, v5

    iput-wide v1, p0, Lcom/google/android/maps/driveabout/vector/h;->a:J

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/h;->c:Z

    if-nez v1, :cond_26

    const/4 v0, 0x1

    :cond_26
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/h;->c:Z

    :cond_28
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/h;->a:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/aT;->a(J)V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/h;->c:Z

    goto :goto_7
.end method
