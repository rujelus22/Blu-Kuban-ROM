.class Lcom/google/android/maps/driveabout/app/cv;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:Z

.field c:I


# direct methods
.method public constructor <init>(IZI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/maps/driveabout/app/cv;->a:I

    iput-boolean p2, p0, Lcom/google/android/maps/driveabout/app/cv;->b:Z

    iput p3, p0, Lcom/google/android/maps/driveabout/app/cv;->c:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    goto :goto_4

    :cond_15
    check-cast p1, Lcom/google/android/maps/driveabout/app/cv;

    iget v2, p0, Lcom/google/android/maps/driveabout/app/cv;->a:I

    iget v3, p1, Lcom/google/android/maps/driveabout/app/cv;->a:I

    if-eq v2, v3, :cond_1f

    move v0, v1

    goto :goto_4

    :cond_1f
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/app/cv;->b:Z

    iget-boolean v3, p1, Lcom/google/android/maps/driveabout/app/cv;->b:Z

    if-eq v2, v3, :cond_27

    move v0, v1

    goto :goto_4

    :cond_27
    iget v2, p0, Lcom/google/android/maps/driveabout/app/cv;->c:I

    iget v3, p1, Lcom/google/android/maps/driveabout/app/cv;->c:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/google/android/maps/driveabout/app/cv;->a:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/cv;->b:Z

    if-eqz v0, :cond_13

    const/16 v0, 0x4cf

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/app/cv;->c:I

    add-int/2addr v0, v1

    return v0

    :cond_13
    const/16 v0, 0x4d5

    goto :goto_c
.end method
