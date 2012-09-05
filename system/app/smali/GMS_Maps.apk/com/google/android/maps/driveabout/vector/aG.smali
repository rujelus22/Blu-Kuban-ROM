.class public Lcom/google/android/maps/driveabout/vector/aG;
.super Lcom/google/android/maps/driveabout/vector/aA;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/bC;


# instance fields
.field private final d:Lt/M;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lt/L;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILjava/lang/String;Ljava/lang/String;Lt/M;Ljava/lang/String;)V
    .registers 20

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/google/android/maps/driveabout/vector/aA;-><init>(Lt/L;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILjava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/vector/aG;->c(Z)V

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->d:Lt/M;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public l()Lt/M;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->d:Lt/M;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->e:Ljava/lang/String;

    return-object v0
.end method
