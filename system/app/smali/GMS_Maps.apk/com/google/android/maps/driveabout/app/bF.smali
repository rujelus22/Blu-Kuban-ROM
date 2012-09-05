.class public Lcom/google/android/maps/driveabout/app/bF;
.super Lcom/google/android/maps/driveabout/vector/aG;


# instance fields
.field private final d:Lcom/google/android/maps/driveabout/app/bx;

.field private final e:Lx/Y;


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILt/M;Lcom/google/android/maps/driveabout/app/bx;Lx/Y;)V
    .registers 19

    invoke-virtual/range {p5 .. p5}, Lt/M;->d()Lt/L;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Lt/M;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p5 .. p5}, Lt/M;->m()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/maps/driveabout/app/bx;->j()Ljava/lang/String;

    move-result-object v10

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v10}, Lcom/google/android/maps/driveabout/vector/aG;-><init>(Lt/L;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILjava/lang/String;Ljava/lang/String;Lt/M;Ljava/lang/String;)V

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bF;->d:Lcom/google/android/maps/driveabout/app/bx;

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bF;->e:Lx/Y;

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILt/M;Lcom/google/android/maps/driveabout/app/bx;Lx/Y;Lcom/google/android/maps/driveabout/app/bE;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Lcom/google/android/maps/driveabout/app/bF;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILt/M;Lcom/google/android/maps/driveabout/app/bx;Lx/Y;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/bF;)Lx/Y;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bF;->e:Lx/Y;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/android/maps/driveabout/app/bx;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bF;->d:Lcom/google/android/maps/driveabout/app/bx;

    return-object v0
.end method
