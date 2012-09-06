.class public Lcom/google/ads/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/ads/d;

.field public static final b:Lcom/google/ads/d;

.field public static final c:Lcom/google/ads/d;

.field public static final d:Lcom/google/ads/d;

.field public static final e:Lcom/google/ads/d;

.field public static final f:Lcom/google/ads/d;


# instance fields
.field private g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/google/ads/d;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const-string v3, "mb"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/d;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/d;->a:Lcom/google/ads/d;

    new-instance v0, Lcom/google/ads/d;

    const/16 v1, 0x140

    const/16 v2, 0x32

    const-string v3, "mb"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/d;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/d;->b:Lcom/google/ads/d;

    new-instance v0, Lcom/google/ads/d;

    const/16 v1, 0x12c

    const/16 v2, 0xfa

    const-string v3, "as"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/d;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/d;->c:Lcom/google/ads/d;

    new-instance v0, Lcom/google/ads/d;

    const/16 v1, 0x1d4

    const/16 v2, 0x3c

    const-string v3, "as"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/d;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/d;->d:Lcom/google/ads/d;

    new-instance v0, Lcom/google/ads/d;

    const/16 v1, 0x2d8

    const/16 v2, 0x5a

    const-string v3, "as"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/d;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/d;->e:Lcom/google/ads/d;

    new-instance v0, Lcom/google/ads/d;

    const/16 v1, 0xa0

    const/16 v2, 0x258

    const-string v3, "as"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/d;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/d;->f:Lcom/google/ads/d;

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/ads/d;->g:I

    iput p2, p0, Lcom/google/ads/d;->h:I

    iput-object p3, p0, Lcom/google/ads/d;->l:Ljava/lang/String;

    const/4 v0, -0x1

    if-ne p1, v0, :cond_19

    move v0, v1

    :goto_f
    iput-boolean v0, p0, Lcom/google/ads/d;->i:Z

    const/4 v0, -0x2

    if-ne p2, v0, :cond_1b

    :goto_14
    iput-boolean v1, p0, Lcom/google/ads/d;->j:Z

    iput-boolean v2, p0, Lcom/google/ads/d;->k:Z

    return-void

    :cond_19
    move v0, v2

    goto :goto_f

    :cond_1b
    move v1, v2

    goto :goto_14
.end method

.method private static a(Landroid/content/Context;)I
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v1, v0

    float-to-int v0, v0

    return v0
.end method

.method public static a(Lcom/google/ads/d;Landroid/content/Context;)Lcom/google/ads/d;
    .registers 6

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/google/ads/d;->f()Z

    move-result v0

    if-nez v0, :cond_11

    :cond_8
    invoke-direct {p0}, Lcom/google/ads/d;->f()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object p0, Lcom/google/ads/d;->b:Lcom/google/ads/d;

    :cond_10
    :goto_10
    return-object p0

    :cond_11
    invoke-virtual {p0}, Lcom/google/ads/d;->c()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-static {p1}, Lcom/google/ads/d;->a(Landroid/content/Context;)I

    move-result v0

    :goto_1b
    invoke-virtual {p0}, Lcom/google/ads/d;->d()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-static {p1}, Lcom/google/ads/d;->b(Landroid/content/Context;)I

    move-result v1

    :goto_25
    new-instance v2, Lcom/google/ads/d;

    iget-object v3, p0, Lcom/google/ads/d;->l:Ljava/lang/String;

    invoke-direct {v2, v0, v1, v3}, Lcom/google/ads/d;-><init>(IILjava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/ads/d;->j:Z

    iput-boolean v0, v2, Lcom/google/ads/d;->j:Z

    iget-boolean v0, p0, Lcom/google/ads/d;->i:Z

    iput-boolean v0, v2, Lcom/google/ads/d;->i:Z

    iget-boolean v0, p0, Lcom/google/ads/d;->k:Z

    iput-boolean v0, v2, Lcom/google/ads/d;->k:Z

    move-object p0, v2

    goto :goto_10

    :cond_3a
    invoke-virtual {p0}, Lcom/google/ads/d;->a()I

    move-result v0

    goto :goto_1b

    :cond_3f
    invoke-virtual {p0}, Lcom/google/ads/d;->b()I

    move-result v1

    goto :goto_25
.end method

.method private static b(Landroid/content/Context;)I
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v1, v0

    float-to-int v0, v0

    const/16 v1, 0x190

    if-gt v0, v1, :cond_17

    const/16 v0, 0x20

    :goto_16
    return v0

    :cond_17
    const/16 v1, 0x2d0

    if-gt v0, v1, :cond_1e

    const/16 v0, 0x32

    goto :goto_16

    :cond_1e
    const/16 v0, 0x5a

    goto :goto_16
.end method

.method private f()Z
    .registers 2

    iget v0, p0, Lcom/google/ads/d;->g:I

    if-ltz v0, :cond_8

    iget v0, p0, Lcom/google/ads/d;->h:I

    if-gez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public a()I
    .registers 3

    iget v0, p0, Lcom/google/ads/d;->g:I

    if-gez v0, :cond_c

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Ad size was not set before getWidth() was called."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget v0, p0, Lcom/google/ads/d;->g:I

    return v0
.end method

.method public b()I
    .registers 3

    iget v0, p0, Lcom/google/ads/d;->h:I

    if-gez v0, :cond_c

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Ad size was not set before getHeight() was called."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget v0, p0, Lcom/google/ads/d;->h:I

    return v0
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/ads/d;->i:Z

    return v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/ads/d;->j:Z

    return v0
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/ads/d;->k:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/ads/d;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/ads/d;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/ads/d;->l:Ljava/lang/String;

    if-nez v0, :cond_2a

    const-string v0, ""

    :goto_21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/ads/d;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_21
.end method
