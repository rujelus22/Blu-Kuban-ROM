.class public Lcom/google/android/maps/driveabout/vector/di;
.super Ljava/lang/Object;


# static fields
.field public static final b:Lcom/google/android/maps/driveabout/vector/di;

.field public static final c:Lcom/google/android/maps/driveabout/vector/di;

.field public static final d:Lcom/google/android/maps/driveabout/vector/di;

.field public static final e:Lcom/google/android/maps/driveabout/vector/di;

.field public static final f:Lcom/google/android/maps/driveabout/vector/di;


# instance fields
.field protected a:I

.field g:[I

.field h:I

.field i:I

.field j:Ljava/nio/IntBuffer;

.field k:I

.field protected l:LA/f;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v2, 0xc

    new-instance v0, Lcom/google/android/maps/driveabout/vector/dj;

    new-array v1, v2, [I

    fill-array-data v1, :array_40

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/dj;-><init>([I)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/di;->b:Lcom/google/android/maps/driveabout/vector/di;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/dj;

    new-array v1, v2, [I

    fill-array-data v1, :array_5c

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/dj;-><init>([I)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/di;->c:Lcom/google/android/maps/driveabout/vector/di;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/dj;

    new-array v1, v2, [I

    fill-array-data v1, :array_78

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/dj;-><init>([I)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/di;->d:Lcom/google/android/maps/driveabout/vector/di;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/dj;

    new-array v1, v2, [I

    fill-array-data v1, :array_94

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/dj;-><init>([I)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/di;->e:Lcom/google/android/maps/driveabout/vector/di;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/dj;

    new-array v1, v2, [I

    fill-array-data v1, :array_b0

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/dj;-><init>([I)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/di;->f:Lcom/google/android/maps/driveabout/vector/di;

    return-void

    nop

    :array_40
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_5c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_78
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xfft 0xfft
        0x0t 0x0t 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_94
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xfft 0xfft
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xfft 0xfft
    .end array-data

    :array_b0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/di;->a:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/di;->a:I

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/di;->h:I

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/di;->e()V

    return-void
.end method

.method private e()V
    .registers 4

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/di;->k:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/di;->g:[I

    if-nez v0, :cond_24

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/di;->h:I

    mul-int/lit8 v0, v0, 0x3

    const/16 v1, 0x400

    if-ge v0, v1, :cond_19

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/di;->g:[I

    :cond_13
    :goto_13
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/di;->i:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/di;->j:Ljava/nio/IntBuffer;

    return-void

    :cond_19
    new-instance v1, LA/f;

    invoke-direct {v1, v0}, LA/f;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/di;->l:LA/f;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/di;->a()V

    goto :goto_13

    :cond_24
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/di;->l:LA/f;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/di;->l:LA/f;

    invoke-virtual {v0}, LA/f;->a()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/di;->a()V

    goto :goto_13
.end method


# virtual methods
.method protected a()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/di;->l:LA/f;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/di;->l:LA/f;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/di;->k:I

    invoke-virtual {v0, v1}, LA/f;->b(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/di;->l:LA/f;

    iget-object v0, v0, LA/f;->c:Ljava/lang/Object;

    check-cast v0, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/di;->g:[I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/di;->l:LA/f;

    iget v0, v0, LA/f;->d:I

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/di;->k:I

    :cond_19
    return-void
.end method

.method public a(FFF)V
    .registers 8

    const/high16 v3, 0x4780

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/di;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/di;->i:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/di;->g:[I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/di;->k:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/di;->k:I

    mul-float v2, p1, v3

    float-to-int v2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/di;->g:[I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/di;->k:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/di;->k:I

    mul-float v2, p2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/di;->g:[I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/di;->k:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/di;->k:I

    mul-float v2, p3, v3

    float-to-int v2, v2

    aput v2, v0, v1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/di;->k:I

    const/16 v1, 0x400

    if-lt v0, v1, :cond_38

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/di;->a()V

    :cond_38
    return-void
.end method

.method public a(I)V
    .registers 7

    const/4 v4, 0x0

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/di;->h:I

    if-le p1, v0, :cond_24

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/di;->h:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/lit8 v0, v1, 0x3

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/di;->l:LA/f;

    if-nez v2, :cond_44

    const/16 v2, 0x400

    if-ge v0, v2, :cond_25

    new-array v0, v0, [I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/di;->g:[I

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/di;->k:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/di;->g:[I

    :goto_22
    iput v1, p0, Lcom/google/android/maps/driveabout/vector/di;->h:I

    :cond_24
    return-void

    :cond_25
    new-instance v2, LA/f;

    invoke-direct {v2, v0}, LA/f;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/di;->l:LA/f;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/di;->l:LA/f;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/di;->g:[I

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/di;->k:I

    invoke-virtual {v0, v2, v3}, LA/f;->a(Ljava/lang/Object;I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/di;->l:LA/f;

    iget-object v0, v0, LA/f;->c:Ljava/lang/Object;

    check-cast v0, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/di;->g:[I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/di;->l:LA/f;

    iget v0, v0, LA/f;->d:I

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/di;->k:I

    goto :goto_22

    :cond_44
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/di;->l:LA/f;

    invoke-virtual {v2, v0}, LA/f;->c(I)V

    goto :goto_22
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/di;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/di;->e()V

    return-void
.end method

.method public a(Lt/L;I)V
    .registers 5

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/di;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/di;->i:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/di;->g:[I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/di;->k:I

    invoke-virtual {p1, p2, v0, v1}, Lt/L;->a(I[II)V

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/di;->k:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/di;->k:I

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/di;->k:I

    const/16 v1, 0x400

    if-lt v0, v1, :cond_1c

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/di;->a()V

    :cond_1c
    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/di;->i:I

    return v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 2

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/di;->a:I

    return v0
.end method

.method public c(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/di;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/di;->l:LA/f;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/di;->l:LA/f;

    invoke-virtual {v0}, LA/f;->c()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/di;->l:LA/f;

    :cond_f
    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/di;->g:[I

    return-void
.end method

.method public d()I
    .registers 3

    const/16 v0, 0x20

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/di;->l:LA/f;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/di;->l:LA/f;

    invoke-virtual {v1}, LA/f;->b()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    :cond_f
    :goto_f
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/di;->j:Ljava/nio/IntBuffer;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/di;->j:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    :cond_1c
    return v0

    :cond_1d
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/di;->g:[I

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/di;->g:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    goto :goto_f
.end method

.method public d(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/di;->j:Ljava/nio/IntBuffer;

    if-nez v0, :cond_7

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/di;->e(Lcom/google/android/maps/driveabout/vector/aT;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/di;->j:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->limit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/di;->a:I

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v1, 0x3

    const/16 v2, 0x140c

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/di;->j:Ljava/nio/IntBuffer;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    return-void
.end method

.method protected e(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/di;->i:I

    mul-int/lit8 v0, v0, 0x3

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->k()Lcom/google/android/maps/driveabout/vector/bV;

    move-result-object v1

    mul-int/lit8 v2, v0, 0x4

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/bV;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/di;->j:Ljava/nio/IntBuffer;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/di;->l:LA/f;

    if-nez v1, :cond_30

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/di;->j:Ljava/nio/IntBuffer;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/di;->g:[I

    invoke-virtual {v1, v2, v3, v0}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    :goto_28
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/di;->j:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/di;->g:[I

    return-void

    :cond_30
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/di;->a()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/di;->l:LA/f;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/di;->j:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v1}, LA/f;->a(Ljava/nio/IntBuffer;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/di;->l:LA/f;

    invoke-virtual {v0}, LA/f;->c()V

    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/di;->l:LA/f;

    goto :goto_28
.end method
