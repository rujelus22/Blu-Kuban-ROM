.class public Lcom/google/android/maps/driveabout/app/cm;
.super Lcom/google/android/maps/driveabout/vector/ay;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ln/s;Landroid/graphics/Bitmap;IILjava/lang/String;Ljava/lang/String;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 434
    invoke-virtual {p1}, Ln/s;->a()I

    move-result v0

    invoke-virtual {p1}, Ln/s;->b()I

    move-result v1

    invoke-static {v0, v1}, Ln/Q;->b(II)Ln/Q;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/ay;-><init>(Ln/Q;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILjava/lang/String;Ljava/lang/String;Z)V

    .line 437
    return-void
.end method
