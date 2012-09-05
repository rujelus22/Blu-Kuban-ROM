.class Lcom/google/android/maps/driveabout/vector/cv;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/maps/driveabout/vector/cu;

.field private final c:F

.field private final d:I

.field private final e:I

.field private final f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cu;FIII)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cv;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/cv;->b:Lcom/google/android/maps/driveabout/vector/cu;

    iput p3, p0, Lcom/google/android/maps/driveabout/vector/cv;->c:F

    iput p4, p0, Lcom/google/android/maps/driveabout/vector/cv;->d:I

    iput p5, p0, Lcom/google/android/maps/driveabout/vector/cv;->e:I

    iput p6, p0, Lcom/google/android/maps/driveabout/vector/cv;->f:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/google/android/maps/driveabout/vector/cv;

    if-eqz v2, :cond_37

    check-cast p1, Lcom/google/android/maps/driveabout/vector/cv;

    iget v2, p1, Lcom/google/android/maps/driveabout/vector/cv;->c:F

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cv;->c:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_35

    iget v2, p1, Lcom/google/android/maps/driveabout/vector/cv;->d:I

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cv;->d:I

    if-ne v2, v3, :cond_35

    iget v2, p1, Lcom/google/android/maps/driveabout/vector/cv;->e:I

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cv;->e:I

    if-ne v2, v3, :cond_35

    iget v2, p1, Lcom/google/android/maps/driveabout/vector/cv;->f:I

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cv;->f:I

    if-ne v2, v3, :cond_35

    iget-object v2, p1, Lcom/google/android/maps/driveabout/vector/cv;->b:Lcom/google/android/maps/driveabout/vector/cu;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cv;->b:Lcom/google/android/maps/driveabout/vector/cu;

    if-ne v2, v3, :cond_35

    iget-object v2, p1, Lcom/google/android/maps/driveabout/vector/cv;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cv;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_35
    move v0, v1

    goto :goto_4

    :cond_37
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cv;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cv;->b:Lcom/google/android/maps/driveabout/vector/cu;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cv;->c:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cv;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cv;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cv;->f:I

    add-int/2addr v0, v1

    return v0
.end method
