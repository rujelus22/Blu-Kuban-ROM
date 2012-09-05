.class public Lcom/google/android/maps/driveabout/app/du;
.super Ljava/lang/Object;


# instance fields
.field private a:Lu/I;

.field private b:J

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(I)I
    .registers 2

    const v0, 0x30d40

    div-int v0, p0, v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private a(Lu/x;Lu/I;)V
    .registers 8

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/du;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/app/du;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p2}, Lu/I;->a()Lt/L;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lu/x;->d()I

    move-result v3

    if-eqz v3, :cond_27

    const-string v3, "|M="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lu/x;->d()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_27
    const-string v3, "|T="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lu/I;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "|L="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lt/L;->a()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/maps/driveabout/app/du;->a(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lt/L;->c()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/du;->a(I)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "|m="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lu/I;->e()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "|a="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "|p="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lu/I;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "|t="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/du;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lu/x;->G()Z

    move-result v0

    if-eqz v0, :cond_90

    const-string v0, "|R=1"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_90
    const/16 v0, 0x7c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "c"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/du;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static a(Lu/I;Lu/I;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-nez p0, :cond_9

    if-nez p1, :cond_d

    :cond_9
    if-nez p1, :cond_f

    if-eqz p0, :cond_f

    :cond_d
    move v0, v1

    goto :goto_4

    :cond_f
    invoke-virtual {p0}, Lu/I;->a()Lt/L;

    move-result-object v2

    invoke-virtual {p1}, Lu/I;->a()Lt/L;

    move-result-object v3

    invoke-virtual {v2, v3}, Lt/L;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {p0}, Lu/I;->f()I

    move-result v2

    invoke-virtual {p1}, Lu/I;->f()I

    move-result v3

    if-ne v2, v3, :cond_31

    invoke-virtual {p0}, Lu/I;->e()I

    move-result v2

    invoke-virtual {p1}, Lu/I;->e()I

    move-result v3

    if-eq v2, v3, :cond_4

    :cond_31
    move v0, v1

    goto :goto_4
.end method

.method private static b(Lu/x;Lu/I;)I
    .registers 6

    invoke-virtual {p1}, Lu/I;->k()Lu/I;

    move-result-object v0

    invoke-virtual {v0}, Lu/I;->y()I

    move-result v0

    invoke-virtual {p0, v0}, Lu/x;->b(I)D

    move-result-wide v0

    invoke-virtual {p1}, Lu/I;->y()I

    move-result v2

    invoke-virtual {p0, v2}, Lu/x;->b(I)D

    move-result-wide v2

    invoke-virtual {p0, v0, v1}, Lu/x;->b(D)I

    move-result v0

    invoke-virtual {p0, v2, v3}, Lu/x;->b(D)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method a()J
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1, p2}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lu/x;Lu/I;Lu/I;Ls/b;)V
    .registers 15

    const/4 v1, 0x1

    const-wide v8, 0x408f400000000000L

    const/4 v2, 0x0

    if-eqz p1, :cond_2b

    if-eqz p2, :cond_2b

    if-eqz p3, :cond_2b

    if-eqz p4, :cond_2b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/du;->a:Lu/I;

    invoke-static {v0, p2}, Lcom/google/android/maps/driveabout/app/du;->a(Lu/I;Lu/I;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p3}, Lu/I;->k()Lu/I;

    move-result-object v0

    if-ne v0, p2, :cond_2b

    invoke-virtual {p3}, Lu/I;->y()I

    move-result v0

    invoke-virtual {p1}, Lu/x;->n()Lt/P;

    move-result-object v3

    invoke-virtual {v3}, Lt/P;->b()I

    move-result v3

    if-lt v0, v3, :cond_30

    :cond_2b
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/du;->d:Z

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/du;->a:Lu/I;

    :cond_2f
    :goto_2f
    return-void

    :cond_30
    invoke-virtual {p2}, Lu/I;->a()Lt/L;

    move-result-object v0

    invoke-virtual {p4, v0}, Ls/b;->a(Lt/L;)F

    move-result v0

    const/high16 v3, 0x42c8

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_83

    move v0, v1

    :goto_3f
    iget-boolean v3, p0, Lcom/google/android/maps/driveabout/app/du;->d:Z

    if-eqz v3, :cond_48

    if-eqz v0, :cond_48

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/app/du;->a(Lu/x;Lu/I;)V

    :cond_48
    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/du;->a:Lu/I;

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/du;->d:Z

    if-eqz v0, :cond_2f

    invoke-virtual {p3}, Lu/I;->e()I

    move-result v0

    const/16 v2, 0x12c

    if-lt v0, v2, :cond_2f

    invoke-virtual {p2}, Lu/I;->y()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/x;->c(I)D

    move-result-wide v2

    invoke-virtual {p1}, Lu/x;->p()I

    move-result v0

    int-to-double v4, v0

    invoke-virtual {p3}, Lu/I;->y()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/x;->c(I)D

    move-result-wide v6

    sub-double/2addr v4, v6

    cmpl-double v0, v2, v8

    if-lez v0, :cond_2f

    cmpl-double v0, v4, v8

    if-lez v0, :cond_2f

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/du;->d:Z

    invoke-static {p1, p3}, Lcom/google/android/maps/driveabout/app/du;->b(Lu/x;Lu/I;)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/du;->c:I

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/du;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/app/du;->b:J

    goto :goto_2f

    :cond_83
    move v0, v2

    goto :goto_3f
.end method
