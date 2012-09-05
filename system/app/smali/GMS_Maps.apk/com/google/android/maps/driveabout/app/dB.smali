.class public Lcom/google/android/maps/driveabout/app/dB;
.super Ljava/lang/Object;

# interfaces
.implements Lt/ag;


# static fields
.field private static final a:Lt/ag;

.field private static final b:Lt/ag;


# instance fields
.field private volatile c:I

.field private volatile d:Z

.field private e:Lu/x;

.field private f:Lt/P;

.field private g:I

.field private h:I

.field private i:I

.field private j:Lt/ag;

.field private final k:Lz/g;

.field private l:I

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/maps/driveabout/app/dB;->a:Lt/ag;

    new-instance v0, Lcom/google/android/maps/driveabout/app/dC;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/dC;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/app/dB;->b:Lt/ag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    iput v0, p0, Lcom/google/android/maps/driveabout/app/dB;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/dB;->d:Z

    sget-object v0, Lcom/google/android/maps/driveabout/app/dB;->a:Lt/ag;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dB;->j:Lt/ag;

    new-instance v0, Lz/g;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Lz/g;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dB;->k:Lz/g;

    return-void
.end method

.method static a(ILt/L;)I
    .registers 6

    invoke-virtual {p1}, Lt/L;->e()D

    move-result-wide v0

    int-to-double v2, p0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private c()V
    .registers 6

    const/16 v4, 0xe

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dB;->e:Lu/x;

    if-nez v0, :cond_b

    sget-object v0, Lcom/google/android/maps/driveabout/app/dB;->a:Lt/ag;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dB;->j:Lt/ag;

    :goto_a
    return-void

    :cond_b
    iget v0, p0, Lcom/google/android/maps/driveabout/app/dB;->g:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dB;->e:Lu/x;

    invoke-virtual {v1}, Lu/x;->k()I

    move-result v1

    if-ge v0, v1, :cond_36

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dB;->e:Lu/x;

    iget v1, p0, Lcom/google/android/maps/driveabout/app/dB;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/app/dB;->g:I

    invoke-virtual {v0, v1}, Lu/x;->a(I)Lu/I;

    move-result-object v0

    invoke-virtual {v0}, Lu/I;->a()Lt/L;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/dB;->a(Lt/L;)I

    move-result v1

    invoke-static {v0, v4, v1}, Lcom/google/android/maps/driveabout/app/bH;->a(Lt/L;II)Lcom/google/android/maps/driveabout/app/bH;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dB;->j:Lt/ag;

    iget v0, p0, Lcom/google/android/maps/driveabout/app/dB;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/dB;->l:I

    goto :goto_a

    :cond_36
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/dB;->d:Z

    if-eqz v0, :cond_68

    iget v0, p0, Lcom/google/android/maps/driveabout/app/dB;->h:I

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/dB;->a(I)Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dB;->f:Lt/P;

    iget v1, p0, Lcom/google/android/maps/driveabout/app/dB;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/app/dB;->h:I

    invoke-virtual {v0, v1}, Lt/P;->a(I)Lt/L;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dB;->f:Lt/P;

    iget v2, p0, Lcom/google/android/maps/driveabout/app/dB;->h:I

    invoke-virtual {v1, v2}, Lt/P;->a(I)Lt/L;

    move-result-object v1

    new-instance v2, Lcom/google/android/maps/driveabout/app/bH;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/dB;->a(Lt/L;)I

    move-result v3

    invoke-direct {v2, v0, v1, v4, v3}, Lcom/google/android/maps/driveabout/app/bH;-><init>(Lt/L;Lt/L;II)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/app/dB;->j:Lt/ag;

    iget v0, p0, Lcom/google/android/maps/driveabout/app/dB;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/dB;->m:I

    goto :goto_a

    :cond_68
    sget-object v0, Lcom/google/android/maps/driveabout/app/dB;->a:Lt/ag;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dB;->j:Lt/ag;

    goto :goto_a
.end method


# virtual methods
.method a(Lt/L;)I
    .registers 3

    iget v0, p0, Lcom/google/android/maps/driveabout/app/dB;->c:I

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/dB;->a(ILt/L;)I

    move-result v0

    return v0
.end method

.method public a()Lt/af;
    .registers 4

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dB;->j:Lt/ag;

    sget-object v1, Lcom/google/android/maps/driveabout/app/dB;->a:Lt/ag;

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dB;->j:Lt/ag;

    invoke-interface {v0}, Lt/ag;->a()Lt/af;

    move-result-object v0

    if-nez v0, :cond_12

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dB;->c()V

    goto :goto_0

    :cond_12
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dB;->k:Lz/g;

    invoke-virtual {v1, v0}, Lz/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dB;->k:Lz/g;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Lz/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_21
    return-object v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public a(Lu/I;I)V
    .registers 5

    invoke-virtual {p1}, Lu/I;->i()I

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/dB;->g:I

    if-gt v1, v0, :cond_13

    sget-object v1, Lcom/google/android/maps/driveabout/app/dB;->b:Lt/ag;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/dB;->j:Lt/ag;

    iput v0, p0, Lcom/google/android/maps/driveabout/app/dB;->g:I

    iput p2, p0, Lcom/google/android/maps/driveabout/app/dB;->h:I

    :cond_10
    :goto_10
    iput p2, p0, Lcom/google/android/maps/driveabout/app/dB;->i:I

    return-void

    :cond_13
    iget v0, p0, Lcom/google/android/maps/driveabout/app/dB;->h:I

    if-gt v0, p2, :cond_1e

    sget-object v0, Lcom/google/android/maps/driveabout/app/dB;->b:Lt/ag;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dB;->j:Lt/ag;

    iput p2, p0, Lcom/google/android/maps/driveabout/app/dB;->h:I

    goto :goto_10

    :cond_1e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dB;->j:Lt/ag;

    sget-object v1, Lcom/google/android/maps/driveabout/app/dB;->a:Lt/ag;

    if-ne v0, v1, :cond_10

    iget v0, p0, Lcom/google/android/maps/driveabout/app/dB;->i:I

    if-ge v0, p2, :cond_10

    sget-object v0, Lcom/google/android/maps/driveabout/app/dB;->b:Lt/ag;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dB;->j:Lt/ag;

    goto :goto_10
.end method

.method public a(Lu/x;)V
    .registers 4

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dB;->e:Lu/x;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dB;->e:Lu/x;

    invoke-virtual {v0}, Lu/x;->n()Lt/P;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dB;->f:Lt/P;

    iput v1, p0, Lcom/google/android/maps/driveabout/app/dB;->g:I

    iput v1, p0, Lcom/google/android/maps/driveabout/app/dB;->h:I

    iput v1, p0, Lcom/google/android/maps/driveabout/app/dB;->i:I

    sget-object v0, Lcom/google/android/maps/driveabout/app/dB;->b:Lt/ag;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dB;->j:Lt/ag;

    return-void
.end method

.method a(I)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/dB;->f:Lt/P;

    invoke-virtual {v3}, Lt/P;->b()I

    move-result v3

    if-lt v2, v3, :cond_e

    move v0, v1

    :cond_d
    :goto_d
    return v0

    :cond_e
    iget v2, p0, Lcom/google/android/maps/driveabout/app/dB;->i:I

    if-eq p1, v2, :cond_d

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dB;->f:Lt/P;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lt/P;->a(I)Lt/L;

    move-result-object v2

    invoke-static {}, Lz/n;->a()Lz/l;

    move-result-object v3

    invoke-virtual {v3}, Lz/l;->t()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    invoke-static {v3, v2}, Lcom/google/android/maps/driveabout/app/dB;->a(ILt/L;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/dB;->e:Lu/x;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Lu/x;->b(I)D

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/dB;->e:Lu/x;

    iget v6, p0, Lcom/google/android/maps/driveabout/app/dB;->i:I

    invoke-virtual {v5, v6}, Lu/x;->b(I)D

    move-result-wide v5

    sub-double/2addr v3, v5

    int-to-double v5, v2

    cmpg-double v2, v3, v5

    if-lez v2, :cond_d

    move v0, v1

    goto :goto_d
.end method

.method public b()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/dB;->f:Lt/P;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/dB;->e:Lu/x;

    iput v0, p0, Lcom/google/android/maps/driveabout/app/dB;->g:I

    iput v0, p0, Lcom/google/android/maps/driveabout/app/dB;->h:I

    iput v0, p0, Lcom/google/android/maps/driveabout/app/dB;->i:I

    sget-object v0, Lcom/google/android/maps/driveabout/app/dB;->b:Lt/ag;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dB;->j:Lt/ag;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dB;->k:Lz/g;

    invoke-virtual {v0}, Lz/g;->f()V

    return-void
.end method

.method b(I)V
    .registers 3

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/dB;->c:I

    return-void
.end method
