.class public Lcom/google/android/maps/driveabout/vector/g;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/g;->b:I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aT;)F
    .registers 6

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->d()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/vector/g;->a:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_1e

    const-wide/16 v2, 0x80

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/g;->a:J

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/g;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/g;->b:I

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/g;->b:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1e

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/g;->b:I

    :cond_1e
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/g;->a:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/aT;->a(J)V

    const/high16 v0, 0x4200

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/g;->b:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method
