.class public Lcom/google/android/maps/driveabout/app/bG;
.super Lcom/google/android/maps/driveabout/vector/aF;
.source "SourceFile"


# instance fields
.field private final d:Lcom/google/android/maps/driveabout/app/by;

.field private final e:Lr/V;


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILn/R;Lcom/google/android/maps/driveabout/app/by;Lr/V;)V
    .registers 19
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-virtual/range {p5 .. p5}, Ln/R;->c()Ln/Q;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Ln/R;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p5 .. p5}, Ln/R;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/maps/driveabout/app/by;->k()Ljava/lang/String;

    move-result-object v10

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v10}, Lcom/google/android/maps/driveabout/vector/aF;-><init>(Ln/Q;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILjava/lang/String;Ljava/lang/String;Ln/R;Ljava/lang/String;)V

    .line 85
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bG;->d:Lcom/google/android/maps/driveabout/app/by;

    .line 86
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bG;->e:Lr/V;

    .line 87
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILn/R;Lcom/google/android/maps/driveabout/app/by;Lr/V;Lcom/google/android/maps/driveabout/app/bF;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct/range {p0 .. p7}, Lcom/google/android/maps/driveabout/app/bG;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILn/R;Lcom/google/android/maps/driveabout/app/by;Lr/V;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/bG;)Lr/V;
    .registers 2
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bG;->e:Lr/V;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/android/maps/driveabout/app/by;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bG;->d:Lcom/google/android/maps/driveabout/app/by;

    return-object v0
.end method
