.class public Lcom/google/android/maps/driveabout/vector/f;
.super Ljava/lang/Object;


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aT;)I
    .registers 6

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/f;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/f;->a:J

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->a()V

    const/4 v0, 0x0

    :goto_12
    return v0

    :cond_13
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->d()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/vector/f;->a:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    if-ltz v0, :cond_21

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_24

    :cond_21
    const/high16 v0, 0x1

    goto :goto_12

    :cond_24
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->a()V

    shl-int/lit8 v0, v0, 0x7

    goto :goto_12
.end method
