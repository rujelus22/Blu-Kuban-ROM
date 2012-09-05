.class public Lcom/google/android/maps/driveabout/vector/e;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/e;->b:I

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/e;->b:I

    add-int/lit16 v0, v0, 0x1f4

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/e;->c:I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aT;)I
    .registers 7

    const/high16 v0, 0x1

    iget-wide v1, p0, Lcom/google/android/maps/driveabout/vector/e;->a:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_14

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->d()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/maps/driveabout/vector/e;->a:J

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->a()V

    :goto_13
    return v0

    :cond_14
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->d()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/maps/driveabout/vector/e;->a:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/e;->b:I

    if-ge v1, v2, :cond_24

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->a()V

    goto :goto_13

    :cond_24
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/e;->c:I

    if-le v1, v0, :cond_2a

    const/4 v0, 0x0

    goto :goto_13

    :cond_2a
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->a()V

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/e;->c:I

    sub-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x7

    goto :goto_13
.end method
