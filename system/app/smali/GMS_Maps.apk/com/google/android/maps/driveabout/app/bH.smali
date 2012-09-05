.class public Lcom/google/android/maps/driveabout/app/bH;
.super Ljava/lang/Object;

# interfaces
.implements Lt/ag;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:Lt/L;

.field private final f:I

.field private final g:I

.field private final h:D

.field private final i:D

.field private j:Lt/af;

.field private k:Lt/af;

.field private l:I


# direct methods
.method public constructor <init>(Lt/L;Lt/L;II)V
    .registers 13

    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/google/android/maps/driveabout/app/bH;->j:Lt/af;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bH;->e:Lt/L;

    iput p3, p0, Lcom/google/android/maps/driveabout/app/bH;->a:I

    if-ge p4, v0, :cond_f

    move p4, v0

    :cond_f
    invoke-virtual {p1}, Lt/L;->f()I

    move-result v1

    invoke-virtual {p1}, Lt/L;->g()I

    move-result v2

    invoke-static {p3, v1, v2, v4}, Lt/af;->a(IIILt/m;)Lt/af;

    move-result-object v1

    invoke-virtual {p2}, Lt/L;->f()I

    move-result v2

    invoke-virtual {p2}, Lt/L;->g()I

    move-result v3

    invoke-static {p3, v2, v3, v4}, Lt/af;->a(IIILt/m;)Lt/af;

    move-result-object v2

    invoke-virtual {p2}, Lt/L;->f()I

    move-result v3

    invoke-virtual {p1}, Lt/L;->f()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p2}, Lt/L;->g()I

    move-result v4

    invoke-virtual {p1}, Lt/L;->g()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-gt v6, v5, :cond_67

    iput v7, p0, Lcom/google/android/maps/driveabout/app/bH;->f:I

    iput p4, p0, Lcom/google/android/maps/driveabout/app/bH;->g:I

    iput v7, p0, Lcom/google/android/maps/driveabout/app/bH;->c:I

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bH;->d:I

    invoke-virtual {v2}, Lt/af;->c()I

    move-result v0

    invoke-virtual {v1}, Lt/af;->c()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bH;->b:I

    :goto_5a
    iget v0, p0, Lcom/google/android/maps/driveabout/app/bH;->b:I

    if-nez v0, :cond_7f

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/app/bH;->i:D

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/app/bH;->h:D

    :goto_64
    iput v7, p0, Lcom/google/android/maps/driveabout/app/bH;->l:I

    return-void

    :cond_67
    iput p4, p0, Lcom/google/android/maps/driveabout/app/bH;->f:I

    iput v7, p0, Lcom/google/android/maps/driveabout/app/bH;->g:I

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bH;->c:I

    iput v7, p0, Lcom/google/android/maps/driveabout/app/bH;->d:I

    invoke-virtual {v2}, Lt/af;->d()I

    move-result v0

    invoke-virtual {v1}, Lt/af;->d()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bH;->b:I

    goto :goto_5a

    :cond_7f
    int-to-double v0, v3

    iget v2, p0, Lcom/google/android/maps/driveabout/app/bH;->b:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/app/bH;->h:D

    int-to-double v0, v4

    iget v2, p0, Lcom/google/android/maps/driveabout/app/bH;->b:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/app/bH;->i:D

    goto :goto_64
.end method

.method public static a(Lt/L;II)Lcom/google/android/maps/driveabout/app/bH;
    .registers 7

    new-instance v0, Lt/L;

    invoke-virtual {p0}, Lt/L;->f()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-virtual {p0}, Lt/L;->g()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lt/L;-><init>(II)V

    new-instance v1, Lt/L;

    invoke-virtual {p0}, Lt/L;->f()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lt/L;->g()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lt/L;-><init>(II)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/bH;

    invoke-direct {v2, v0, v1, p1, p2}, Lcom/google/android/maps/driveabout/app/bH;-><init>(Lt/L;Lt/L;II)V

    return-object v2
.end method


# virtual methods
.method public a()Lt/af;
    .registers 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bH;->j:Lt/af;

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bH;->j:Lt/af;

    invoke-virtual {v1}, Lt/af;->c()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bH;->k:Lt/af;

    invoke-virtual {v2}, Lt/af;->c()I

    move-result v2

    if-lt v1, v2, :cond_21

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bH;->j:Lt/af;

    invoke-virtual {v1}, Lt/af;->d()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bH;->k:Lt/af;

    invoke-virtual {v2}, Lt/af;->d()I

    move-result v2

    if-ge v1, v2, :cond_3f

    :cond_21
    new-instance v0, Lt/af;

    iget v1, p0, Lcom/google/android/maps/driveabout/app/bH;->a:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bH;->j:Lt/af;

    invoke-virtual {v2}, Lt/af;->c()I

    move-result v2

    iget v3, p0, Lcom/google/android/maps/driveabout/app/bH;->c:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/bH;->j:Lt/af;

    invoke-virtual {v3}, Lt/af;->d()I

    move-result v3

    iget v4, p0, Lcom/google/android/maps/driveabout/app/bH;->d:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lt/af;-><init>(III)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bH;->j:Lt/af;

    :goto_3c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bH;->j:Lt/af;

    :cond_3e
    return-object v0

    :cond_3f
    iget v1, p0, Lcom/google/android/maps/driveabout/app/bH;->l:I

    iget v2, p0, Lcom/google/android/maps/driveabout/app/bH;->b:I

    if-gt v1, v2, :cond_3e

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bH;->e:Lt/L;

    invoke-virtual {v1}, Lt/L;->f()I

    move-result v1

    int-to-double v1, v1

    iget v3, p0, Lcom/google/android/maps/driveabout/app/bH;->l:I

    int-to-double v3, v3

    iget-wide v5, p0, Lcom/google/android/maps/driveabout/app/bH;->h:D

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-int v1, v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bH;->e:Lt/L;

    invoke-virtual {v2}, Lt/L;->g()I

    move-result v2

    int-to-double v2, v2

    iget v4, p0, Lcom/google/android/maps/driveabout/app/bH;->l:I

    int-to-double v4, v4

    iget-wide v6, p0, Lcom/google/android/maps/driveabout/app/bH;->i:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    iget v3, p0, Lcom/google/android/maps/driveabout/app/bH;->a:I

    iget v4, p0, Lcom/google/android/maps/driveabout/app/bH;->f:I

    sub-int v4, v1, v4

    iget v5, p0, Lcom/google/android/maps/driveabout/app/bH;->g:I

    add-int/2addr v5, v2

    invoke-static {v3, v4, v5, v0}, Lt/af;->a(IIILt/m;)Lt/af;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/maps/driveabout/app/bH;->j:Lt/af;

    iget v3, p0, Lcom/google/android/maps/driveabout/app/bH;->a:I

    iget v4, p0, Lcom/google/android/maps/driveabout/app/bH;->f:I

    add-int/2addr v1, v4

    iget v4, p0, Lcom/google/android/maps/driveabout/app/bH;->c:I

    sub-int/2addr v1, v4

    iget v4, p0, Lcom/google/android/maps/driveabout/app/bH;->g:I

    sub-int/2addr v2, v4

    iget v4, p0, Lcom/google/android/maps/driveabout/app/bH;->d:I

    add-int/2addr v2, v4

    invoke-static {v3, v1, v2, v0}, Lt/af;->a(IIILt/m;)Lt/af;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bH;->k:Lt/af;

    iget v0, p0, Lcom/google/android/maps/driveabout/app/bH;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bH;->l:I

    goto :goto_3c
.end method
