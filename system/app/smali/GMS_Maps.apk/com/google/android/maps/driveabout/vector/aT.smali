.class public Lcom/google/android/maps/driveabout/vector/aT;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljavax/microedition/khronos/opengles/GL10;

.field final b:Lcom/google/android/maps/driveabout/vector/O;

.field final c:Z

.field private final d:Lcom/google/android/maps/driveabout/vector/bV;

.field private final e:[I

.field private f:I

.field private g:I

.field private h:[I

.field private i:I

.field private j:Ljava/lang/Integer;

.field private k:Ljava/lang/Integer;

.field private l:Z

.field private m:J

.field private n:J

.field private o:Z

.field private p:Z

.field private final q:I

.field private r:Z

.field private final s:I


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/bV;Lcom/google/android/maps/driveabout/vector/O;)V
    .registers 21

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/maps/driveabout/vector/aT;->o:Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/maps/driveabout/vector/aT;->p:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/maps/driveabout/vector/aT;->r:Z

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/maps/driveabout/vector/aT;->b:Lcom/google/android/maps/driveabout/vector/O;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/maps/driveabout/vector/aT;->d:Lcom/google/android/maps/driveabout/vector/bV;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/aT;->H()V

    const/16 v2, 0x100

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/maps/driveabout/vector/aT;->e:[I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/maps/driveabout/vector/aT;->f:I

    const/16 v2, 0x20

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/maps/driveabout/vector/aT;->h:[I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/maps/driveabout/vector/aT;->i:I

    move-object/from16 v0, p1

    instance-of v2, v0, Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v2, :cond_1c6

    const/16 v2, 0x1f02

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1.1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c6

    const/4 v2, 0x1

    :goto_58
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/maps/driveabout/vector/aT;->c:Z

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/16 v2, 0xd57

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    const/4 v2, 0x0

    aget v2, v3, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/maps/driveabout/vector/aT;->q:I

    const/16 v2, 0xd52

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    const/4 v2, 0x0

    aget v2, v3, v2

    const/16 v4, 0xd53

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v3, v5}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    const/4 v4, 0x0

    aget v4, v3, v4

    const/16 v5, 0xd54

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v3, v6}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    const/4 v5, 0x0

    aget v5, v3, v5

    const/16 v6, 0xd55

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v6, v3, v7}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    const/4 v6, 0x0

    aget v6, v3, v6

    const/16 v7, 0xd56

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v3, v8}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    const/4 v7, 0x0

    aget v7, v3, v7

    const/16 v8, 0x1f00

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1f02

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x1f01

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x3a

    const-string v12, "gl"

    const/16 v13, 0xa

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "r="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v14

    const/4 v2, 0x1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "g="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v13, v2

    const/4 v2, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "b="

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v13, v2

    const/4 v2, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "a="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v13, v2

    const/4 v2, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "d="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v13, v2

    const/4 v2, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "s="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/maps/driveabout/vector/aT;->q:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v13, v2

    const/4 v2, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "v="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v13, v2

    const/4 v2, 0x7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v13, v2

    const/16 v2, 0x8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "c="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v13, v2

    const/16 v4, 0x9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/google/googlenav/android/I;->b()Z

    move-result v2

    if-eqz v2, :cond_1c9

    const-string v2, "t"

    :goto_1a5
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v4

    invoke-static {v13}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v12, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    const/16 v2, 0xd33

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    const/4 v2, 0x0

    aget v2, v3, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/maps/driveabout/vector/aT;->s:I

    return-void

    :cond_1c6
    const/4 v2, 0x0

    goto/16 :goto_58

    :cond_1c9
    const-string v2, "f"

    goto :goto_1a5
.end method

.method private H()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xbd0

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xb44

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xb71

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xb90

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x405

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x901

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x1d01

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xc50

    const/16 v2, 0x1102

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->g:I

    return-void
.end method

.method private I()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->h:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aT;->h:[I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aT;->h:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->h:[I

    return-void
.end method

.method private a(IZ)V
    .registers 6

    if-eqz p2, :cond_12

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->g:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->g:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->e:[I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aT;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/aT;->f:I

    aput p1, v0, v1

    :goto_11
    return-void

    :cond_12
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->g:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->g:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->e:[I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aT;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/aT;->f:I

    const/high16 v2, 0x4000

    or-int/2addr v2, p1

    aput v2, v0, v1

    goto :goto_11
.end method


# virtual methods
.method public declared-synchronized A()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->i:I

    if-lez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aT;->i:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aT;->h:[I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->i:I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    :cond_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public B()I
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->j:Ljava/lang/Integer;

    if-nez v0, :cond_17

    const/4 v0, 0x1

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v2, 0xd33

    invoke-interface {v1, v2, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->j:Ljava/lang/Integer;

    :cond_17
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->j:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public C()I
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->k:Ljava/lang/Integer;

    if-nez v0, :cond_19

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v2, 0x846e

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->k:Ljava/lang/Integer;

    :cond_19
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->k:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public D()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->c:Z

    return v0
.end method

.method public E()I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->q:I

    return v0
.end method

.method public F()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->r:Z

    return v0
.end method

.method public G()I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->s:I

    return v0
.end method

.method public a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->l:Z

    return-void
.end method

.method public a(J)V
    .registers 7

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    iput-wide p1, p0, Lcom/google/android/maps/driveabout/vector/aT;->m:J

    :goto_a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->b:Lcom/google/android/maps/driveabout/vector/O;

    iget-wide v1, p0, Lcom/google/android/maps/driveabout/vector/aT;->m:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/O;->a(J)V

    return-void

    :cond_12
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->m:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->m:J

    goto :goto_a
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/aT;->r:Z

    return-void
.end method

.method public a(I)Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aT;->b:Lcom/google/android/maps/driveabout/vector/O;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/O;->a(I)Z

    move-result v1

    if-nez v1, :cond_c

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->l:Z

    const/4 v0, 0x0

    :cond_c
    return v0
.end method

.method public b()J
    .registers 7

    const-wide/16 v4, 0x0

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->m:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_b

    const-wide/16 v0, -0x1

    :goto_a
    return-wide v0

    :cond_b
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->m:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_a
.end method

.method public b(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->b:Lcom/google/android/maps/driveabout/vector/O;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/O;->b(I)V

    return-void
.end method

.method public declared-synchronized c(I)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->i:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aT;->h:[I

    array-length v1, v1

    if-ne v0, v1, :cond_b

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aT;->I()V

    :cond_b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->h:[I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aT;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/aT;->i:I

    aput p1, v0, v1
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->l:Z

    return v0
.end method

.method public d()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->n:J

    return-wide v0
.end method

.method e()V
    .registers 7

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->b:Lcom/google/android/maps/driveabout/vector/O;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/O;->a()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->n:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->l:Z

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->m:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_20

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->n:J

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/vector/aT;->m:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_20

    iput-wide v4, p0, Lcom/google/android/maps/driveabout/vector/aT;->m:J

    :cond_20
    return-void
.end method

.method f()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->b:Lcom/google/android/maps/driveabout/vector/O;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/O;->b()V

    return-void
.end method

.method public g()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->o:Z

    return v0
.end method

.method public h()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->o:Z

    return-void
.end method

.method public i()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->p:Z

    return v0
.end method

.method public j()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->p:Z

    return-void
.end method

.method public k()Lcom/google/android/maps/driveabout/vector/bV;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->d:Lcom/google/android/maps/driveabout/vector/bV;

    return-object v0
.end method

.method public l()V
    .registers 4

    const/4 v2, 0x1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->g:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8074

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    invoke-direct {p0, v2, v2}, Lcom/google/android/maps/driveabout/vector/aT;->a(IZ)V

    :cond_12
    return-void
.end method

.method public m()V
    .registers 3

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->g:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8076

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/aT;->a(IZ)V

    :cond_14
    return-void
.end method

.method public n()V
    .registers 3

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->g:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8076

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/aT;->a(IZ)V

    :cond_14
    return-void
.end method

.method public o()V
    .registers 3

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->g:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xde1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8078

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/aT;->a(IZ)V

    :cond_1a
    return-void
.end method

.method public p()V
    .registers 3

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->g:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xde1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8078

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/aT;->a(IZ)V

    :cond_1a
    return-void
.end method

.method public q()V
    .registers 3

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->g:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/aT;->a(IZ)V

    :cond_12
    return-void
.end method

.method public r()V
    .registers 3

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->g:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/aT;->a(IZ)V

    :cond_12
    return-void
.end method

.method public s()V
    .registers 3

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->g:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xbd0

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const/16 v0, 0x10

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/aT;->a(IZ)V

    :cond_13
    return-void
.end method

.method public t()V
    .registers 4

    const/4 v2, 0x1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->g:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_15

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/aT;->o:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xb71

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const/16 v0, 0x20

    invoke-direct {p0, v0, v2}, Lcom/google/android/maps/driveabout/vector/aT;->a(IZ)V

    :cond_15
    return-void
.end method

.method public u()V
    .registers 3

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->g:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8037

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const/16 v0, 0x40

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/aT;->a(IZ)V

    :cond_14
    return-void
.end method

.method public v()V
    .registers 4

    const/4 v2, 0x1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->g:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_15

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/aT;->p:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xb90

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const/16 v0, 0x80

    invoke-direct {p0, v0, v2}, Lcom/google/android/maps/driveabout/vector/aT;->a(IZ)V

    :cond_15
    return-void
.end method

.method public w()V
    .registers 3

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->g:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xb90

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    const/16 v0, 0x80

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/aT;->a(IZ)V

    :cond_13
    return-void
.end method

.method public x()Ljavax/microedition/khronos/opengles/GL10;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    return-object v0
.end method

.method public y()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->e:[I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aT;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/aT;->f:I

    const v2, 0x7fffffff

    aput v2, v0, v1

    return-void
.end method

.method public z()V
    .registers 10

    const/16 v8, 0xde1

    const/16 v7, 0xbe2

    const/16 v6, 0xbd0

    const/16 v5, 0xb90

    const/16 v4, 0xb71

    :goto_a
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->f:I

    if-ltz v0, :cond_df

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->e:[I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aT;->f:I

    aget v0, v0, v1

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_df

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->e:[I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aT;->f:I

    aget v0, v0, v1

    const/high16 v1, 0x4000

    and-int/2addr v0, v1

    if-eqz v0, :cond_3e

    const/4 v0, 0x1

    :goto_29
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aT;->e:[I

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aT;->f:I

    aget v1, v1, v2

    const v2, 0x3fffffff

    and-int/2addr v1, v2

    sparse-switch v1, :sswitch_data_e0

    :goto_36
    if-eqz v0, :cond_d6

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->g:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->g:I

    goto :goto_a

    :cond_3e
    const/4 v0, 0x0

    goto :goto_29

    :sswitch_40
    if-eqz v0, :cond_4b

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v3, 0x8074

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    goto :goto_36

    :cond_4b
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v3, 0x8074

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    goto :goto_36

    :sswitch_54
    if-eqz v0, :cond_64

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v8}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v3, 0x8078

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    goto :goto_36

    :cond_64
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v8}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v3, 0x8078

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    goto :goto_36

    :sswitch_72
    if-eqz v0, :cond_7a

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v7}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    goto :goto_36

    :cond_7a
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto :goto_36

    :sswitch_80
    if-eqz v0, :cond_8b

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v3, 0x8076

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    goto :goto_36

    :cond_8b
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v3, 0x8076

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    goto :goto_36

    :sswitch_94
    if-eqz v0, :cond_9c

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    goto :goto_36

    :cond_9c
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto :goto_36

    :sswitch_a2
    if-eqz v0, :cond_aa

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    goto :goto_36

    :cond_aa
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto :goto_36

    :sswitch_b0
    if-eqz v0, :cond_bc

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v3, 0x8037

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    goto/16 :goto_36

    :cond_bc
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v3, 0x8037

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto/16 :goto_36

    :sswitch_c6
    if-eqz v0, :cond_cf

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    goto/16 :goto_36

    :cond_cf
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto/16 :goto_36

    :cond_d6
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->g:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->g:I

    goto/16 :goto_a

    :cond_df
    return-void

    :sswitch_data_e0
    .sparse-switch
        0x1 -> :sswitch_40
        0x2 -> :sswitch_54
        0x4 -> :sswitch_72
        0x8 -> :sswitch_80
        0x10 -> :sswitch_94
        0x20 -> :sswitch_a2
        0x40 -> :sswitch_b0
        0x80 -> :sswitch_c6
    .end sparse-switch
.end method
