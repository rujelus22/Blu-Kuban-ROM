.class public Lcom/google/android/maps/driveabout/app/cy;
.super Lcom/google/android/maps/driveabout/vector/aA;


# direct methods
.method public constructor <init>(Lt/o;Landroid/graphics/Bitmap;IILjava/lang/String;Ljava/lang/String;)V
    .registers 16

    invoke-virtual {p1}, Lt/o;->a()I

    move-result v0

    invoke-virtual {p1}, Lt/o;->b()I

    move-result v1

    invoke-static {v0, v1}, Lt/L;->b(II)Lt/L;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/aA;-><init>(Lt/L;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
