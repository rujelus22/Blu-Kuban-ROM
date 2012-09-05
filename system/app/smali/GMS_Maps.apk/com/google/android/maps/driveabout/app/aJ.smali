.class public Lcom/google/android/maps/driveabout/app/aJ;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0b001c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aJ;->a:Ljava/lang/String;

    const v0, 0x7f0b001e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aJ;->b:Ljava/lang/String;

    const v0, 0x7f0b0020

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aJ;->c:Ljava/lang/String;

    const v0, 0x7f0b0022

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aJ;->d:Ljava/lang/String;

    const v0, 0x7f0b0024

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aJ;->e:Ljava/lang/String;

    const v0, 0x7f0b001d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aJ;->f:Ljava/lang/String;

    const v0, 0x7f0b001f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aJ;->g:Ljava/lang/String;

    const v0, 0x7f0b0021

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aJ;->h:Ljava/lang/String;

    const v0, 0x7f0b0023

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aJ;->i:Ljava/lang/String;

    const v0, 0x7f0b0025

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aJ;->j:Ljava/lang/String;

    const v0, 0x7f0b0026

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aJ;->k:Ljava/lang/String;

    const v0, 0x7f0b0027

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "imperial"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_79

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/maps/driveabout/app/aJ;->l:I

    :goto_78
    return-void

    :cond_79
    const-string v1, "imperial_yards"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_85

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/maps/driveabout/app/aJ;->l:I

    goto :goto_78

    :cond_85
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/aJ;->l:I

    goto :goto_78
.end method

.method private static a(II)I
    .registers 3

    shr-int/lit8 v0, p1, 0x1

    add-int/2addr v0, p0

    div-int/2addr v0, p1

    mul-int/2addr v0, p1

    return v0
.end method

.method private static a(JI)I
    .registers 8

    const/16 v4, 0x8

    shl-long v0, p0, v4

    shl-int/lit8 v2, p2, 0x7

    int-to-long v2, v2

    add-long/2addr v0, v2

    int-to-long v2, p2

    div-long/2addr v0, v2

    shr-long/2addr v0, v4

    long-to-int v0, v0

    return v0
.end method

.method private a(IIZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    int-to-long v0, p1

    const-wide/32 v2, 0x8028

    mul-long v4, v0, v2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_3a

    const-wide/32 v0, 0x4c9960

    cmp-long v0, v4, v0

    if-gez v0, :cond_3a

    const-wide/16 v0, 0x3

    div-long v1, v4, v0

    long-to-int v0, v1

    div-int/lit16 v0, v0, 0x2710

    mul-int/lit16 v3, v0, 0x2710

    int-to-long v3, v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-ltz v1, :cond_23

    add-int/lit8 v0, v0, 0x1

    :cond_23
    if-eqz p3, :cond_2b

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/aJ;->a(II)I

    move-result v0

    :cond_2b
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {p4, v1}, Lcom/google/android/maps/driveabout/app/aJ;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_39
    return-object v0

    :cond_3a
    const/4 v0, 0x2

    if-ne p2, v0, :cond_6b

    const-wide/32 v0, 0x4c9960

    cmp-long v0, v4, v0

    if-gez v0, :cond_6b

    long-to-int v0, v4

    div-int/lit16 v0, v0, 0x2710

    mul-int/lit16 v1, v0, 0x2710

    int-to-long v1, v1

    sub-long v1, v4, v1

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-ltz v1, :cond_54

    add-int/lit8 v0, v0, 0x1

    :cond_54
    if-eqz p3, :cond_5c

    const/16 v1, 0x32

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/aJ;->a(II)I

    move-result v0

    :cond_5c
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {p4, v1}, Lcom/google/android/maps/driveabout/app/aJ;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_39

    :cond_6b
    const-wide/32 v0, 0x2fd6180

    cmp-long v0, v4, v0

    if-gez v0, :cond_9d

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/aJ;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x509100

    invoke-static {v4, v5, v3}, Lcom/google/android/maps/driveabout/app/aJ;->a(JI)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p5, v0}, Lcom/google/android/maps/driveabout/app/aJ;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_39

    :cond_9d
    const-wide/32 v0, 0x325aa00

    cmp-long v0, v4, v0

    if-gtz v0, :cond_cb

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/aJ;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p5, v0}, Lcom/google/android/maps/driveabout/app/aJ;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_39

    :cond_cb
    const-wide/32 v0, 0x325aa00

    div-long v2, v4, v0

    const-wide/32 v0, 0x325aa00

    rem-long v0, v4, v0

    const-wide/16 v4, 0xa

    cmp-long v4, v2, v4

    if-ltz v4, :cond_fd

    const-wide/32 v4, 0x192d500

    cmp-long v4, v0, v4

    if-ltz v4, :cond_fd

    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    const-wide/16 v0, 0x0

    :cond_e7
    :goto_e7
    const-wide/16 v4, 0xa

    cmp-long v4, v2, v4

    if-ltz v4, :cond_111

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p5, v0}, Lcom/google/android/maps/driveabout/app/aJ;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_39

    :cond_fd
    const v4, 0x509100

    invoke-static {v0, v1, v4}, Lcom/google/android/maps/driveabout/app/aJ;->a(JI)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v4, 0xa

    cmp-long v4, v0, v4

    if-nez v4, :cond_e7

    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    const-wide/16 v0, 0x0

    goto :goto_e7

    :cond_111
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/aJ;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {p5, v4}, Lcom/google/android/maps/driveabout/app/aJ;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_39
.end method

.method private a(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const/16 v0, 0xa

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x3cf

    if-ge p1, v1, :cond_22

    if-eqz p2, :cond_12

    const/16 v1, 0x12c

    if-ge p1, v1, :cond_1f

    :goto_e
    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/app/aJ;->a(II)I

    move-result p1

    :cond_12
    new-array v0, v6, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p3, v0}, Lcom/google/android/maps/driveabout/app/aJ;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1e
    return-object v0

    :cond_1f
    const/16 v0, 0x32

    goto :goto_e

    :cond_22
    const/16 v1, 0x3e8

    if-gt p1, v1, :cond_4a

    new-array v0, v6, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/aJ;->k:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p4, v0}, Lcom/google/android/maps/driveabout/app/aJ;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    :cond_4a
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, v3, -0x3

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lt v3, v0, :cond_7d

    const/16 v4, 0x1f4

    if-lt v1, v4, :cond_7d

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v2

    :cond_6e
    :goto_6e
    if-lt v3, v0, :cond_8b

    new-array v0, v6, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p4, v0}, Lcom/google/android/maps/driveabout/app/aJ;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    :cond_7d
    int-to-long v4, v1

    const/16 v1, 0x64

    invoke-static {v4, v5, v1}, Lcom/google/android/maps/driveabout/app/aJ;->a(JI)I

    move-result v1

    if-ne v1, v0, :cond_6e

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v2

    goto :goto_6e

    :cond_8b
    new-array v0, v6, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/aJ;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p4, v0}, Lcom/google/android/maps/driveabout/app/aJ;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1e
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v6, -0x1

    const/16 v5, 0x7b

    const-string v0, "${I18N"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    :goto_b
    return-object p0

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    :goto_1a
    if-eq v0, v6, :cond_d5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_d5

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_40

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    :goto_38
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_1a

    :cond_40
    const/16 v1, 0x7d

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-eq v1, v6, :cond_4f

    sub-int v3, v1, v0

    const/4 v4, 0x2

    if-gt v3, v4, :cond_4f

    if-nez v1, :cond_72

    :cond_4f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "formatMessage \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_72
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    :try_start_7d
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_80
    .catch Ljava/lang/NumberFormatException; {:try_start_7d .. :try_end_80} :catch_8c

    move-result v1

    if-ltz v1, :cond_ac

    array-length v3, p1

    if-ge v1, v3, :cond_ac

    aget-object v1, p1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38

    :catch_8c
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "formatMessage \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ac
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "formatMessage \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" param("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d5
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_b
.end method

.method private b(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v2, 0x2

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/aJ;->a(IIZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v2, 0x3

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/aJ;->a(IIZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(IIZI)Ljava/lang/String;
    .registers 7

    const/4 v1, 0x1

    if-gez p1, :cond_6

    const-string v0, ""

    :goto_5
    return-object v0

    :cond_6
    if-nez p2, :cond_a

    iget p2, p0, Lcom/google/android/maps/driveabout/app/aJ;->l:I

    :cond_a
    if-ne p2, v1, :cond_20

    if-ne p4, v1, :cond_17

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aJ;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aJ;->d:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/google/android/maps/driveabout/app/aJ;->a(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_17
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aJ;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aJ;->i:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/google/android/maps/driveabout/app/aJ;->a(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_20
    const/4 v0, 0x2

    if-ne p2, v0, :cond_37

    if-ne p4, v1, :cond_2e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aJ;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aJ;->a:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/google/android/maps/driveabout/app/aJ;->b(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_2e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aJ;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aJ;->f:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/google/android/maps/driveabout/app/aJ;->b(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_37
    const/4 v0, 0x3

    if-ne p2, v0, :cond_4e

    if-ne p4, v1, :cond_45

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aJ;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aJ;->a:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/google/android/maps/driveabout/app/aJ;->c(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_45
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aJ;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aJ;->f:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/google/android/maps/driveabout/app/aJ;->c(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_4e
    const-string v0, ""

    goto :goto_5
.end method
