.class public abstract Lx/d;
.super Lx/k;


# instance fields
.field protected final a:Lcom/google/android/maps/driveabout/vector/cU;

.field private volatile g:Z

.field private final h:I

.field private final i:Ljava/util/List;

.field private final j:I

.field private final k:I


# direct methods
.method protected constructor <init>(Lat/h;Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cU;ILjava/util/List;IIZLjava/util/Locale;ZLjava/io/File;)V
    .registers 23

    new-instance v4, Lx/au;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cU;->f:Lcom/google/android/maps/driveabout/vector/cU;

    if-ne p3, v1, :cond_6f

    invoke-static {}, Lx/d;->b()I

    move-result v1

    :goto_a
    invoke-direct {v4, v1}, Lx/au;-><init>(I)V

    move/from16 v0, p10

    invoke-static {p2, p3, v0}, Lx/d;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cU;Z)Lx/x;

    move-result-object v5

    invoke-static {p3}, Lx/d;->a(Lcom/google/android/maps/driveabout/vector/cU;)I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v7, p8

    move/from16 v8, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p11

    invoke-direct/range {v1 .. v10}, Lx/k;-><init>(Lat/h;Ljava/lang/String;Lx/av;Lx/x;IZILjava/util/Locale;Ljava/io/File;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lx/d;->g:Z

    iput-object p3, p0, Lx/d;->a:Lcom/google/android/maps/driveabout/vector/cU;

    iput p4, p0, Lx/d;->h:I

    move-object/from16 v0, p5

    iput-object v0, p0, Lx/d;->i:Ljava/util/List;

    move/from16 v0, p6

    iput v0, p0, Lx/d;->k:I

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6b

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6b

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6b

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    :cond_6b
    const/4 v1, 0x0

    iput v1, p0, Lx/d;->j:I

    :goto_6e
    return-void

    :cond_6f
    invoke-static {}, Lx/d;->c()I

    move-result v1

    goto :goto_a

    :cond_74
    invoke-static {p4}, Lx/d;->a(I)I

    move-result v1

    iput v1, p0, Lx/d;->j:I

    goto :goto_6e
.end method

.method static a(I)I
    .registers 4

    const/16 v2, 0x80

    const/4 v0, 0x0

    move v1, p0

    :goto_4
    if-le v1, v2, :cond_b

    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_b
    :goto_b
    if-ge v1, v2, :cond_12

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_12
    return v0
.end method

.method private static a(Lcom/google/android/maps/driveabout/vector/cU;)I
    .registers 2

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cU;->b:Lcom/google/android/maps/driveabout/vector/cU;

    if-ne p0, v0, :cond_7

    const/16 v0, 0x3e8

    :goto_6
    return v0

    :cond_7
    const/16 v0, 0xbb8

    goto :goto_6
.end method

.method static synthetic a(Lx/d;)I
    .registers 2

    iget v0, p0, Lx/d;->h:I

    return v0
.end method

.method private static a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cU;Z)Lx/x;
    .registers 8

    const/4 v2, 0x0

    const/16 v1, 0x800

    const/4 v0, -0x1

    invoke-static {}, Ln/b;->b()Z

    move-result v3

    if-eqz v3, :cond_59

    sget-object v3, Lx/e;->a:[I

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/cU;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_5c

    move-object v0, v2

    :goto_16
    return-object v0

    :pswitch_17
    new-instance v1, Lx/ar;

    if-eqz p2, :cond_25

    :goto_1b
    new-instance v2, Lx/j;

    invoke-direct {v2, p1}, Lx/j;-><init>(Lcom/google/android/maps/driveabout/vector/cU;)V

    invoke-direct {v1, p0, v0, v2}, Lx/ar;-><init>(Ljava/lang/String;ILx/at;)V

    move-object v0, v1

    goto :goto_16

    :cond_25
    const/16 v0, 0x1000

    goto :goto_1b

    :pswitch_28
    new-instance v1, Lx/ar;

    if-eqz p2, :cond_36

    :goto_2c
    new-instance v2, Lx/j;

    invoke-direct {v2, p1}, Lx/j;-><init>(Lcom/google/android/maps/driveabout/vector/cU;)V

    invoke-direct {v1, p0, v0, v2}, Lx/ar;-><init>(Ljava/lang/String;ILx/at;)V

    move-object v0, v1

    goto :goto_16

    :cond_36
    const/16 v0, 0x100

    goto :goto_2c

    :pswitch_39
    new-instance v2, Lx/ar;

    if-eqz p2, :cond_47

    :goto_3d
    new-instance v1, Lx/i;

    invoke-direct {v1}, Lx/i;-><init>()V

    invoke-direct {v2, p0, v0, v1}, Lx/ar;-><init>(Ljava/lang/String;ILx/at;)V

    move-object v0, v2

    goto :goto_16

    :cond_47
    move v0, v1

    goto :goto_3d

    :pswitch_49
    new-instance v2, Lx/ar;

    if-eqz p2, :cond_57

    :goto_4d
    new-instance v1, Lx/h;

    invoke-direct {v1, p1}, Lx/h;-><init>(Lcom/google/android/maps/driveabout/vector/cU;)V

    invoke-direct {v2, p0, v0, v1}, Lx/ar;-><init>(Ljava/lang/String;ILx/at;)V

    move-object v0, v2

    goto :goto_16

    :cond_57
    move v0, v1

    goto :goto_4d

    :cond_59
    move-object v0, v2

    goto :goto_16

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_28
        :pswitch_39
        :pswitch_49
        :pswitch_49
        :pswitch_49
    .end packed-switch
.end method

.method static b()I
    .registers 2

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cS;->h()I

    move-result v0

    shr-int/lit8 v0, v0, 0x3

    const/16 v1, 0x80

    mul-int/lit8 v0, v0, 0x12

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lx/d;)I
    .registers 2

    iget v0, p0, Lx/d;->k:I

    return v0
.end method

.method static c()I
    .registers 2

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cS;->h()I

    move-result v0

    shr-int/lit8 v0, v0, 0x3

    const/16 v1, 0x100

    mul-int/lit8 v0, v0, 0x20

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x40

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static synthetic c(Lx/d;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lx/d;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lx/d;)Z
    .registers 2

    iget-boolean v0, p0, Lx/d;->g:Z

    return v0
.end method

.method static synthetic e(Lx/d;)I
    .registers 2

    iget v0, p0, Lx/d;->j:I

    return v0
.end method


# virtual methods
.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lx/d;->g:Z

    return-void
.end method

.method public d()Lcom/google/android/maps/driveabout/vector/cU;
    .registers 2

    iget-object v0, p0, Lx/d;->a:Lcom/google/android/maps/driveabout/vector/cU;

    return-object v0
.end method
