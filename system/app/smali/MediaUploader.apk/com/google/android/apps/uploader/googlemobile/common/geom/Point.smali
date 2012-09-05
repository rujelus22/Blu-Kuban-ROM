.class public final Lcom/google/android/apps/uploader/googlemobile/common/geom/Point;
.super Ljava/lang/Object;


# instance fields
.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/geom/Point;->x:I

    iput p2, p0, Lcom/google/android/apps/uploader/googlemobile/common/geom/Point;->y:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/uploader/googlemobile/common/geom/Point;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/google/android/apps/uploader/googlemobile/common/geom/Point;->x:I

    iput v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/geom/Point;->x:I

    iget v0, p1, Lcom/google/android/apps/uploader/googlemobile/common/geom/Point;->y:I

    iput v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/geom/Point;->y:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v2, 0x0

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    check-cast p1, Lcom/google/android/apps/uploader/googlemobile/common/geom/Point;

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/geom/Point;->x:I

    iget v1, p1, Lcom/google/android/apps/uploader/googlemobile/common/geom/Point;->x:I

    if-ne v0, v1, :cond_21

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/geom/Point;->y:I

    iget v1, p1, Lcom/google/android/apps/uploader/googlemobile/common/geom/Point;->y:I

    if-ne v0, v1, :cond_21

    const/4 v0, 0x1

    :goto_20
    return v0

    :cond_21
    move v0, v2

    goto :goto_20

    :cond_23
    move v0, v2

    goto :goto_20
.end method

.method public getX()I
    .registers 2

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/geom/Point;->x:I

    return v0
.end method

.method public getY()I
    .registers 2

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/geom/Point;->y:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/geom/Point;->x:I

    iget v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/geom/Point;->y:I

    add-int/2addr v0, v1

    return v0
.end method

.method public setLocation(II)V
    .registers 3

    iput p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/geom/Point;->x:I

    iput p2, p0, Lcom/google/android/apps/uploader/googlemobile/common/geom/Point;->y:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/geom/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/geom/Point;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
