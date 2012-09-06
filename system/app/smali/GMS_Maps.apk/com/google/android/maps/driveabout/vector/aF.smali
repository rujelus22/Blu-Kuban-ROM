.class public Lcom/google/android/maps/driveabout/vector/aF;
.super Lcom/google/android/maps/driveabout/vector/ay;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/bR;


# instance fields
.field private final d:Ln/R;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ln/Q;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILjava/lang/String;Ljava/lang/String;Ln/R;Ljava/lang/String;)V
    .registers 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/google/android/maps/driveabout/vector/ay;-><init>(Ln/Q;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILjava/lang/String;Ljava/lang/String;Z)V

    .line 29
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/vector/aF;->c(Z)V

    .line 30
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aF;->d:Ln/R;

    .line 31
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aF;->e:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public m()Ln/R;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aF;->d:Ln/R;

    return-object v0
.end method
