.class public Lcom/google/android/maps/driveabout/app/aH;
.super Ljava/lang/Object;
.source "SourceFile"


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

.field private final k:Ljava/lang/String;

.field private final l:I

.field private m:Landroid/content/Context;

.field private final n:Lcom/google/android/maps/driveabout/app/aK;

.field private final o:Lcom/google/android/maps/driveabout/app/aK;

.field private final p:Lcom/google/android/maps/driveabout/app/aK;

.field private final q:Lcom/google/android/maps/driveabout/app/aK;

.field private final r:Lcom/google/android/maps/driveabout/app/aK;

.field private final s:Lcom/google/android/maps/driveabout/app/aK;

.field private final t:Lcom/google/android/maps/driveabout/app/aK;

.field private final u:Lcom/google/android/maps/driveabout/app/aK;

.field private final v:Lcom/google/android/maps/driveabout/app/aK;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 106
    const v0, 0x7f0d0027

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d0026

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/maps/driveabout/app/aH;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/google/android/maps/driveabout/app/aK;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/aK;-><init>(Lcom/google/android/maps/driveabout/app/aH;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->n:Lcom/google/android/maps/driveabout/app/aK;

    .line 88
    new-instance v0, Lcom/google/android/maps/driveabout/app/aK;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/aK;-><init>(Lcom/google/android/maps/driveabout/app/aH;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->o:Lcom/google/android/maps/driveabout/app/aK;

    .line 89
    new-instance v0, Lcom/google/android/maps/driveabout/app/aK;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/aK;-><init>(Lcom/google/android/maps/driveabout/app/aH;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->p:Lcom/google/android/maps/driveabout/app/aK;

    .line 90
    new-instance v0, Lcom/google/android/maps/driveabout/app/aK;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/aK;-><init>(Lcom/google/android/maps/driveabout/app/aH;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->q:Lcom/google/android/maps/driveabout/app/aK;

    .line 91
    new-instance v0, Lcom/google/android/maps/driveabout/app/aK;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/aK;-><init>(Lcom/google/android/maps/driveabout/app/aH;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->r:Lcom/google/android/maps/driveabout/app/aK;

    .line 92
    new-instance v0, Lcom/google/android/maps/driveabout/app/aK;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/aK;-><init>(Lcom/google/android/maps/driveabout/app/aH;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->s:Lcom/google/android/maps/driveabout/app/aK;

    .line 93
    new-instance v0, Lcom/google/android/maps/driveabout/app/aK;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/aK;-><init>(Lcom/google/android/maps/driveabout/app/aH;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->t:Lcom/google/android/maps/driveabout/app/aK;

    .line 94
    new-instance v0, Lcom/google/android/maps/driveabout/app/aK;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/aK;-><init>(Lcom/google/android/maps/driveabout/app/aH;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->u:Lcom/google/android/maps/driveabout/app/aK;

    .line 95
    new-instance v0, Lcom/google/android/maps/driveabout/app/aK;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/aK;-><init>(Lcom/google/android/maps/driveabout/app/aH;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->v:Lcom/google/android/maps/driveabout/app/aK;

    .line 112
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aH;->m:Landroid/content/Context;

    .line 113
    const-string v0, "imperial"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 114
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/maps/driveabout/app/aH;->l:I

    .line 120
    :goto_4f
    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/aH;->k:Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->m:Landroid/content/Context;

    const v1, 0x7f0d001c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->a:Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->m:Landroid/content/Context;

    const v1, 0x7f0d001e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->b:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->m:Landroid/content/Context;

    const v1, 0x7f0d0020

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->c:Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->m:Landroid/content/Context;

    const v1, 0x7f0d0022

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->d:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->m:Landroid/content/Context;

    const v1, 0x7f0d0024

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->e:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->m:Landroid/content/Context;

    const v1, 0x7f0d001d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->f:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->m:Landroid/content/Context;

    const v1, 0x7f0d001f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->g:Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->m:Landroid/content/Context;

    const v1, 0x7f0d0021

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->h:Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->m:Landroid/content/Context;

    const v1, 0x7f0d0023

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->i:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->m:Landroid/content/Context;

    const v1, 0x7f0d0025

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->j:Ljava/lang/String;

    .line 146
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/aH;->a()V

    .line 147
    return-void

    .line 115
    :cond_c3
    const-string v0, "imperial_yards"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 116
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/maps/driveabout/app/aH;->l:I

    goto :goto_4f

    .line 118
    :cond_cf
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/aH;->l:I

    goto/16 :goto_4f
.end method

.method private static a(JI)I
    .registers 8
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x8

    .line 467
    shl-long v0, p0, v4

    .line 468
    shl-int/lit8 v2, p2, 0x7

    .line 469
    int-to-long v2, v2

    add-long/2addr v0, v2

    int-to-long v2, p2

    div-long/2addr v0, v2

    shr-long/2addr v0, v4

    long-to-int v0, v0

    return v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/aH;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->m:Landroid/content/Context;

    return-object v0
.end method

.method private a(IIZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 410
    int-to-long v0, p1

    const-wide/32 v2, 0x8028

    mul-long v4, v0, v2

    .line 411
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3a

    const-wide/32 v0, 0x4c9960

    cmp-long v0, v4, v0

    if-gez v0, :cond_3a

    .line 413
    const-wide/16 v0, 0x3

    div-long v1, v4, v0

    .line 414
    long-to-int v0, v1

    div-int/lit16 v0, v0, 0x2710

    .line 415
    mul-int/lit16 v3, v0, 0x2710

    int-to-long v3, v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-ltz v1, :cond_23

    .line 416
    add-int/lit8 v0, v0, 0x1

    .line 418
    :cond_23
    if-eqz p3, :cond_2b

    .line 419
    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/aH;->b(II)I

    move-result v0

    .line 421
    :cond_2b
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {p4, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 460
    :goto_39
    return-object v0

    .line 422
    :cond_3a
    const/4 v0, 0x2

    if-ne p2, v0, :cond_6b

    const-wide/32 v0, 0x4c9960

    cmp-long v0, v4, v0

    if-gez v0, :cond_6b

    .line 424
    long-to-int v0, v4

    div-int/lit16 v0, v0, 0x2710

    .line 425
    mul-int/lit16 v1, v0, 0x2710

    int-to-long v1, v1

    sub-long v1, v4, v1

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-ltz v1, :cond_54

    .line 426
    add-int/lit8 v0, v0, 0x1

    .line 428
    :cond_54
    if-eqz p3, :cond_5c

    .line 429
    const/16 v1, 0x32

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/aH;->b(II)I

    move-result v0

    .line 431
    :cond_5c
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {p4, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_39

    .line 432
    :cond_6b
    const-wide/32 v0, 0x2fd6180

    cmp-long v0, v4, v0

    if-gez v0, :cond_9d

    .line 434
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/aH;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x509100

    invoke-static {v4, v5, v3}, Lcom/google/android/maps/driveabout/app/aH;->a(JI)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p5, v0}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_39

    .line 436
    :cond_9d
    const-wide/32 v0, 0x325aa00

    cmp-long v0, v4, v0

    if-gtz v0, :cond_cb

    .line 438
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/aH;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p5, v0}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_39

    .line 441
    :cond_cb
    const-wide/32 v0, 0x325aa00

    div-long v2, v4, v0

    .line 442
    const-wide/32 v0, 0x325aa00

    rem-long v0, v4, v0

    .line 443
    const-wide/16 v4, 0xa

    cmp-long v4, v2, v4

    if-ltz v4, :cond_fd

    const-wide/32 v4, 0x192d500

    cmp-long v4, v0, v4

    if-ltz v4, :cond_fd

    .line 445
    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    .line 446
    const-wide/16 v0, 0x0

    .line 456
    :cond_e7
    :goto_e7
    const-wide/16 v4, 0xa

    cmp-long v4, v2, v4

    if-ltz v4, :cond_111

    .line 458
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p5, v0}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_39

    .line 448
    :cond_fd
    const v4, 0x509100

    invoke-static {v0, v1, v4}, Lcom/google/android/maps/driveabout/app/aH;->a(JI)I

    move-result v0

    int-to-long v0, v0

    .line 449
    const-wide/16 v4, 0xa

    cmp-long v4, v0, v4

    if-nez v4, :cond_e7

    .line 451
    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    .line 452
    const-wide/16 v0, 0x0

    goto :goto_e7

    .line 460
    :cond_111
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/aH;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {p5, v4}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_39
.end method

.method private a(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v0, 0xa

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 351
    const/16 v1, 0x3cf

    if-ge p1, v1, :cond_22

    .line 353
    if-eqz p2, :cond_12

    .line 358
    const/16 v1, 0x12c

    if-ge p1, v1, :cond_1f

    .line 360
    :goto_e
    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/app/aH;->b(II)I

    move-result p1

    .line 362
    :cond_12
    new-array v0, v6, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p3, v0}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 390
    :goto_1e
    return-object v0

    .line 358
    :cond_1f
    const/16 v0, 0x32

    goto :goto_e

    .line 363
    :cond_22
    const/16 v1, 0x3e8

    if-gt p1, v1, :cond_4a

    .line 365
    new-array v0, v6, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/aH;->k:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p4, v0}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    .line 369
    :cond_4a
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 370
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, v3, -0x3

    .line 371
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 372
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 373
    if-lt v3, v0, :cond_7d

    const/16 v4, 0x1f4

    if-lt v1, v4, :cond_7d

    .line 375
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v2

    .line 386
    :cond_6e
    :goto_6e
    if-lt v3, v0, :cond_8b

    .line 388
    new-array v0, v6, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p4, v0}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    .line 378
    :cond_7d
    int-to-long v4, v1

    const/16 v1, 0x64

    invoke-static {v4, v5, v1}, Lcom/google/android/maps/driveabout/app/aH;->a(JI)I

    move-result v1

    .line 379
    if-ne v1, v0, :cond_6e

    .line 381
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v2

    .line 382
    goto :goto_6e

    .line 390
    :cond_8b
    new-array v0, v6, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/aH;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p4, v0}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1e
.end method

.method private a(Lcom/google/android/maps/driveabout/app/aK;ILjava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 620
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aK;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/aJ;

    .line 621
    invoke-virtual {v0, p2}, Lcom/google/android/maps/driveabout/app/aJ;->a(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 622
    invoke-virtual {v0, p2, p3}, Lcom/google/android/maps/driveabout/app/aJ;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 629
    :goto_1a
    return-object v0

    .line 626
    :cond_1b
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 627
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot format distance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 629
    :cond_3a
    const-string v0, ""

    goto :goto_1a
.end method

.method private a()V
    .registers 14

    .prologue
    .line 158
    const/4 v0, 0x3

    new-array v1, v0, [Lcom/google/android/maps/driveabout/app/aK;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aH;->n:Lcom/google/android/maps/driveabout/app/aK;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aH;->o:Lcom/google/android/maps/driveabout/app/aK;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aH;->p:Lcom/google/android/maps/driveabout/app/aK;

    aput-object v2, v1, v0

    .line 160
    const/4 v0, 0x3

    new-array v2, v0, [I

    fill-array-data v2, :array_312

    .line 163
    const/4 v0, 0x3

    new-array v3, v0, [I

    fill-array-data v3, :array_31c

    .line 166
    const/4 v0, 0x3

    new-array v4, v0, [I

    fill-array-data v4, :array_326

    .line 169
    const/4 v0, 0x0

    :goto_25
    array-length v5, v1

    if-ge v0, v5, :cond_ec

    .line 172
    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/app/aI;

    const/16 v7, 0x5f

    aget v8, v2, v0

    const-string v9, "50"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/app/aI;-><init>(Lcom/google/android/maps/driveabout/app/aH;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/google/android/maps/driveabout/app/aK;->add(Ljava/lang/Object;)Z

    .line 173
    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/app/aI;

    const/16 v7, 0x91

    aget v8, v2, v0

    const-string v9, "100"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/app/aI;-><init>(Lcom/google/android/maps/driveabout/app/aH;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/google/android/maps/driveabout/app/aK;->add(Ljava/lang/Object;)Z

    .line 174
    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/app/aI;

    const/16 v7, 0xbe

    aget v8, v2, v0

    const-string v9, "150"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/app/aI;-><init>(Lcom/google/android/maps/driveabout/app/aH;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/google/android/maps/driveabout/app/aK;->add(Ljava/lang/Object;)Z

    .line 175
    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/app/aI;

    const/16 v7, 0x118

    aget v8, v2, v0

    const-string v9, "200"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/app/aI;-><init>(Lcom/google/android/maps/driveabout/app/aH;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/google/android/maps/driveabout/app/aK;->add(Ljava/lang/Object;)Z

    .line 176
    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/app/aI;

    const/16 v7, 0x172

    aget v8, v2, v0

    const-string v9, "300"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/app/aI;-><init>(Lcom/google/android/maps/driveabout/app/aH;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/google/android/maps/driveabout/app/aK;->add(Ljava/lang/Object;)Z

    .line 177
    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/app/aI;

    const/16 v7, 0x1cc

    aget v8, v2, v0

    const-string v9, "400"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/app/aI;-><init>(Lcom/google/android/maps/driveabout/app/aH;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/google/android/maps/driveabout/app/aK;->add(Ljava/lang/Object;)Z

    .line 178
    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/app/aI;

    const/16 v7, 0x226

    aget v8, v2, v0

    const-string v9, "500"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/app/aI;-><init>(Lcom/google/android/maps/driveabout/app/aH;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/google/android/maps/driveabout/app/aK;->add(Ljava/lang/Object;)Z

    .line 179
    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/app/aI;

    const/16 v7, 0x2ee

    aget v8, v2, v0

    const-string v9, "600"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/app/aI;-><init>(Lcom/google/android/maps/driveabout/app/aH;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/google/android/maps/driveabout/app/aK;->add(Ljava/lang/Object;)Z

    .line 180
    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/app/aI;

    const/16 v7, 0x3b6

    aget v8, v2, v0

    const-string v9, "800"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/app/aI;-><init>(Lcom/google/android/maps/driveabout/app/aH;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/google/android/maps/driveabout/app/aK;->add(Ljava/lang/Object;)Z

    .line 181
    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/app/aL;

    const/16 v7, 0x514

    aget v8, v3, v0

    const/high16 v9, 0x447a

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/app/aL;-><init>(Lcom/google/android/maps/driveabout/app/aH;IIF)V

    invoke-virtual {v5, v6}, Lcom/google/android/maps/driveabout/app/aK;->add(Ljava/lang/Object;)Z

    .line 182
    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/app/aI;

    const/16 v7, 0x73a

    aget v8, v4, v0

    const/4 v9, 0x0

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/app/aI;-><init>(Lcom/google/android/maps/driveabout/app/aH;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/google/android/maps/driveabout/app/aK;->add(Ljava/lang/Object;)Z

    .line 183
    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/app/aL;

    const v7, 0x7fffffff

    aget v8, v3, v0

    const/high16 v9, 0x447a

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/app/aL;-><init>(Lcom/google/android/maps/driveabout/app/aH;IIF)V

    invoke-virtual {v5, v6}, Lcom/google/android/maps/driveabout/app/aK;->add(Ljava/lang/Object;)Z

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_25

    .line 190
    :cond_ec
    const/4 v0, 0x3

    new-array v1, v0, [Lcom/google/android/maps/driveabout/app/aK;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aH;->q:Lcom/google/android/maps/driveabout/app/aK;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aH;->r:Lcom/google/android/maps/driveabout/app/aK;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aH;->s:Lcom/google/android/maps/driveabout/app/aK;

    aput-object v2, v1, v0

    .line 192
    const/4 v0, 0x3

    new-array v2, v0, [I

    fill-array-data v2, :array_330

    .line 195
    const/4 v0, 0x3

    new-array v3, v0, [I

    fill-array-data v3, :array_33a

    .line 198
    const/4 v0, 0x3

    new-array v4, v0, [I

    fill-array-data v4, :array_344

    .line 201
    const/4 v0, 0x3

    new-array v5, v0, [I

    fill-array-data v5, :array_34e

    .line 204
    const/4 v0, 0x3

    new-array v6, v0, [I

    fill-array-data v6, :array_358

    .line 207
    const/4 v0, 0x3

    new-array v7, v0, [I

    fill-array-data v7, :array_362

    .line 210
    const/4 v0, 0x0

    :goto_123
    array-length v8, v1

    if-ge v0, v8, :cond_238

    .line 211
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aI;

    const v10, 0x41e7a5e4

    aget v11, v2, v0

    const-string v12, "50"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aI;-><init>(Lcom/google/android/maps/driveabout/app/aH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/google/android/maps/driveabout/app/aK;->add(Ljava/lang/Object;)Z

    .line 212
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aI;

    const v10, 0x4230c8b4

    aget v11, v2, v0

    const-string v12, "100"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aI;-><init>(Lcom/google/android/maps/driveabout/app/aH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/google/android/maps/driveabout/app/aK;->add(Ljava/lang/Object;)Z

    .line 213
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aI;

    const v10, 0x4267a5e4

    aget v11, v2, v0

    const-string v12, "150"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aI;-><init>(Lcom/google/android/maps/driveabout/app/aH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/google/android/maps/driveabout/app/aK;->add(Ljava/lang/Object;)Z

    .line 214
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aI;

    const v10, 0x42aab021

    aget v11, v2, v0

    const-string v12, "200"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aI;-><init>(Lcom/google/android/maps/driveabout/app/aH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/google/android/maps/driveabout/app/aK;->add(Ljava/lang/Object;)Z

    .line 215
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aI;

    const v10, 0x42e18d50

    aget v11, v2, v0

    const-string v12, "300"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aI;-><init>(Lcom/google/android/maps/driveabout/app/aH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/google/android/maps/driveabout/app/aK;->add(Ljava/lang/Object;)Z

    .line 216
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aI;

    const v10, 0x430c3540

    aget v11, v2, v0

    const-string v12, "400"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aI;-><init>(Lcom/google/android/maps/driveabout/app/aH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/google/android/maps/driveabout/app/aK;->add(Ljava/lang/Object;)Z

    .line 217
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aI;

    const v10, 0x4327a3d7

    aget v11, v2, v0

    const-string v12, "500"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aI;-><init>(Lcom/google/android/maps/driveabout/app/aH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/google/android/maps/driveabout/app/aK;->add(Ljava/lang/Object;)Z

    .line 218
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aI;

    const v10, 0x43618d50

    aget v11, v2, v0

    const-string v12, "600"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aI;-><init>(Lcom/google/android/maps/driveabout/app/aH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/google/android/maps/driveabout/app/aK;->add(Ljava/lang/Object;)Z

    .line 219
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aI;

    const v10, 0x4390c7ae

    aget v11, v2, v0

    const-string v12, "800"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aI;-><init>(Lcom/google/android/maps/driveabout/app/aH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/google/android/maps/driveabout/app/aK;->add(Ljava/lang/Object;)Z

    .line 220
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aI;

    const v10, 0x43c61eb8

    aget v11, v2, v0

    const-string v12, "1000"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aI;-><init>(Lcom/google/android/maps/driveabout/app/aH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/google/android/maps/driveabout/app/aK;->add(Ljava/lang/Object;)Z

    .line 221
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aI;

    const v10, 0x44350d1b

    aget v11, v4, v0

    const/4 v12, 0x0

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aI;-><init>(Lcom/google/android/maps/driveabout/app/aH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/google/android/maps/driveabout/app/aK;->add(Ljava/lang/Object;)Z

    .line 222
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aI;

    const v10, 0x448cd14e

    aget v11, v5, v0

    const/4 v12, 0x0

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aI;-><init>(Lcom/google/android/maps/driveabout/app/aH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/google/android/maps/driveabout/app/aK;->add(Ljava/lang/Object;)Z

    .line 223
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aI;

    const v10, 0x44bf1c0f

    aget v11, v6, v0

    const/4 v12, 0x0

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aI;-><init>(Lcom/google/android/maps/driveabout/app/aH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/google/android/maps/driveabout/app/aK;->add(Ljava/lang/Object;)Z

    .line 225
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aL;

    const v10, 0x4502c25b

    aget v11, v3, v0

    const v12, 0x44c92b02

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aL;-><init>(Lcom/google/android/maps/driveabout/app/aH;FIF)V

    invoke-virtual {v8, v9}, Lcom/google/android/maps/driveabout/app/aK;->add(Ljava/lang/Object;)Z

    .line 227
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aI;

    const v10, 0x45350d1b

    aget v11, v7, v0

    const/4 v12, 0x0

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aI;-><init>(Lcom/google/android/maps/driveabout/app/aH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/google/android/maps/driveabout/app/aK;->add(Ljava/lang/Object;)Z

    .line 229
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aL;

    const v10, 0x7fffffff

    aget v11, v3, v0

    const v12, 0x44c92b02

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aL;-><init>(Lcom/google/android/maps/driveabout/app/aH;IIF)V

    invoke-virtual {v8, v9}, Lcom/google/android/maps/driveabout/app/aK;->add(Ljava/lang/Object;)Z

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_123

    .line 237
    :cond_238
    const/4 v0, 0x3

    new-array v1, v0, [Lcom/google/android/maps/driveabout/app/aK;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aH;->t:Lcom/google/android/maps/driveabout/app/aK;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aH;->u:Lcom/google/android/maps/driveabout/app/aK;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aH;->v:Lcom/google/android/maps/driveabout/app/aK;

    aput-object v2, v1, v0

    .line 240
    const/4 v0, 0x3

    new-array v2, v0, [I

    fill-array-data v2, :array_36c

    .line 243
    const/4 v0, 0x0

    :goto_251
    array-length v8, v1

    if-ge v0, v8, :cond_311

    .line 244
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aI;

    const v10, 0x42adbc6b

    aget v11, v2, v0

    const-string v12, "50"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aI;-><init>(Lcom/google/android/maps/driveabout/app/aH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/google/android/maps/driveabout/app/aK;->add(Ljava/lang/Object;)Z

    .line 245
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aI;

    const v10, 0x43049688

    aget v11, v2, v0

    const-string v12, "100"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aI;-><init>(Lcom/google/android/maps/driveabout/app/aH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/google/android/maps/driveabout/app/aK;->add(Ljava/lang/Object;)Z

    .line 246
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aI;

    const v10, 0x432dbc6b

    aget v11, v2, v0

    const-string v12, "150"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aI;-><init>(Lcom/google/android/maps/driveabout/app/aH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/google/android/maps/driveabout/app/aK;->add(Ljava/lang/Object;)Z

    .line 247
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aI;

    const v10, 0x43800419

    aget v11, v2, v0

    const-string v12, "200"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aI;-><init>(Lcom/google/android/maps/driveabout/app/aH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/google/android/maps/driveabout/app/aK;->add(Ljava/lang/Object;)Z

    .line 248
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aI;

    const v10, 0x43a929fc

    aget v11, v2, v0

    const-string v12, "300"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aI;-><init>(Lcom/google/android/maps/driveabout/app/aH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/google/android/maps/driveabout/app/aK;->add(Ljava/lang/Object;)Z

    .line 249
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aI;

    const v10, 0x44350d1b

    aget v11, v4, v0

    const/4 v12, 0x0

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aI;-><init>(Lcom/google/android/maps/driveabout/app/aH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/google/android/maps/driveabout/app/aK;->add(Ljava/lang/Object;)Z

    .line 251
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aI;

    const v10, 0x448cd14e

    aget v11, v5, v0

    const/4 v12, 0x0

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aI;-><init>(Lcom/google/android/maps/driveabout/app/aH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/google/android/maps/driveabout/app/aK;->add(Ljava/lang/Object;)Z

    .line 253
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aI;

    const v10, 0x44bf1c0f

    aget v11, v6, v0

    const/4 v12, 0x0

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aI;-><init>(Lcom/google/android/maps/driveabout/app/aH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/google/android/maps/driveabout/app/aK;->add(Ljava/lang/Object;)Z

    .line 255
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aL;

    const v10, 0x4502c25b

    aget v11, v3, v0

    const v12, 0x44c92b02

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aL;-><init>(Lcom/google/android/maps/driveabout/app/aH;FIF)V

    invoke-virtual {v8, v9}, Lcom/google/android/maps/driveabout/app/aK;->add(Ljava/lang/Object;)Z

    .line 257
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aI;

    const v10, 0x45350d1b

    aget v11, v7, v0

    const/4 v12, 0x0

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aI;-><init>(Lcom/google/android/maps/driveabout/app/aH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/google/android/maps/driveabout/app/aK;->add(Ljava/lang/Object;)Z

    .line 259
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aL;

    const v10, 0x7fffffff

    aget v11, v3, v0

    const v12, 0x44c92b02

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aL;-><init>(Lcom/google/android/maps/driveabout/app/aH;IIF)V

    invoke-virtual {v8, v9}, Lcom/google/android/maps/driveabout/app/aK;->add(Ljava/lang/Object;)Z

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_251

    .line 262
    :cond_311
    return-void

    .line 160
    :array_312
    .array-data 0x4
        0xa0t 0x0t 0xdt 0x7ft
        0xa2t 0x0t 0xdt 0x7ft
        0xa4t 0x0t 0xdt 0x7ft
    .end array-data

    .line 163
    :array_31c
    .array-data 0x4
        0x0t 0x0t 0xet 0x7ft
        0x1t 0x0t 0xet 0x7ft
        0x2t 0x0t 0xet 0x7ft
    .end array-data

    .line 166
    :array_326
    .array-data 0x4
        0xa1t 0x0t 0xdt 0x7ft
        0xa3t 0x0t 0xdt 0x7ft
        0xa5t 0x0t 0xdt 0x7ft
    .end array-data

    .line 192
    :array_330
    .array-data 0x4
        0xa7t 0x0t 0xdt 0x7ft
        0xadt 0x0t 0xdt 0x7ft
        0xb3t 0x0t 0xdt 0x7ft
    .end array-data

    .line 195
    :array_33a
    .array-data 0x4
        0x3t 0x0t 0xet 0x7ft
        0x4t 0x0t 0xet 0x7ft
        0x5t 0x0t 0xet 0x7ft
    .end array-data

    .line 198
    :array_344
    .array-data 0x4
        0xa9t 0x0t 0xdt 0x7ft
        0xaft 0x0t 0xdt 0x7ft
        0xb5t 0x0t 0xdt 0x7ft
    .end array-data

    .line 201
    :array_34e
    .array-data 0x4
        0xaat 0x0t 0xdt 0x7ft
        0xb0t 0x0t 0xdt 0x7ft
        0xb6t 0x0t 0xdt 0x7ft
    .end array-data

    .line 204
    :array_358
    .array-data 0x4
        0xabt 0x0t 0xdt 0x7ft
        0xb1t 0x0t 0xdt 0x7ft
        0xb7t 0x0t 0xdt 0x7ft
    .end array-data

    .line 207
    :array_362
    .array-data 0x4
        0xact 0x0t 0xdt 0x7ft
        0xb2t 0x0t 0xdt 0x7ft
        0xb8t 0x0t 0xdt 0x7ft
    .end array-data

    .line 240
    :array_36c
    .array-data 0x4
        0xa8t 0x0t 0xdt 0x7ft
        0xaet 0x0t 0xdt 0x7ft
        0xb4t 0x0t 0xdt 0x7ft
    .end array-data
.end method

.method private static b(II)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 473
    shr-int/lit8 v0, p1, 0x1

    add-int/2addr v0, p0

    div-int/2addr v0, p1

    mul-int/2addr v0, p1

    return v0
.end method

.method private b(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 398
    const/4 v2, 0x2

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/aH;->a(IIZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 404
    const/4 v2, 0x3

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/aH;->a(IIZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(I)I
    .registers 2
    .parameter

    .prologue
    .line 277
    if-nez p1, :cond_4

    iget p1, p0, Lcom/google/android/maps/driveabout/app/aH;->l:I

    .line 299
    :cond_4
    return p1
.end method

.method public a(II)Li/U;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 567
    invoke-virtual {p0, p2}, Lcom/google/android/maps/driveabout/app/aH;->a(I)I

    move-result v1

    .line 569
    packed-switch v1, :pswitch_data_20

    .line 577
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->n:Lcom/google/android/maps/driveabout/app/aK;

    .line 579
    :goto_9
    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {p0, v0, p1, v3}, Lcom/google/android/maps/driveabout/app/aH;->a(Lcom/google/android/maps/driveabout/app/aK;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Li/p;

    invoke-direct {v3, p1, v1}, Li/p;-><init>(II)V

    invoke-static {v2, v0, v3}, Li/U;->a(ILjava/lang/CharSequence;Li/l;)Li/U;

    move-result-object v0

    return-object v0

    .line 571
    :pswitch_19
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->q:Lcom/google/android/maps/driveabout/app/aK;

    goto :goto_9

    .line 574
    :pswitch_1c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->t:Lcom/google/android/maps/driveabout/app/aK;

    goto :goto_9

    .line 569
    nop

    :pswitch_data_20
    .packed-switch 0x2
        :pswitch_19
        :pswitch_1c
    .end packed-switch
.end method

.method public a(Lo/j;II)Li/U;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 597
    invoke-virtual {p0, p3}, Lcom/google/android/maps/driveabout/app/aH;->a(I)I

    move-result v2

    .line 598
    invoke-virtual {p1}, Lo/j;->e()Lo/I;

    move-result-object v0

    invoke-virtual {v0}, Lo/I;->r()Ljava/util/List;

    move-result-object v0

    .line 599
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2b

    const/4 v0, 0x0

    move-object v1, v0

    .line 601
    :goto_14
    packed-switch v2, :pswitch_data_4c

    .line 611
    if-nez v1, :cond_48

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->o:Lcom/google/android/maps/driveabout/app/aK;

    .line 613
    :goto_1b
    invoke-direct {p0, v0, p2, v1}, Lcom/google/android/maps/driveabout/app/aH;->a(Lcom/google/android/maps/driveabout/app/aK;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Li/r;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Li/r;-><init>(I)V

    invoke-static {p1, v0, v1}, Li/U;->a(Lo/j;Ljava/lang/CharSequence;Li/l;)Li/U;

    move-result-object v0

    return-object v0

    .line 599
    :cond_2b
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/K;

    invoke-virtual {v0}, Lo/K;->c()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_14

    .line 603
    :pswitch_38
    if-nez v1, :cond_3d

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->r:Lcom/google/android/maps/driveabout/app/aK;

    goto :goto_1b

    :cond_3d
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->s:Lcom/google/android/maps/driveabout/app/aK;

    goto :goto_1b

    .line 607
    :pswitch_40
    if-nez v1, :cond_45

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->u:Lcom/google/android/maps/driveabout/app/aK;

    goto :goto_1b

    :cond_45
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->v:Lcom/google/android/maps/driveabout/app/aK;

    goto :goto_1b

    .line 611
    :cond_48
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->p:Lcom/google/android/maps/driveabout/app/aK;

    goto :goto_1b

    .line 601
    nop

    :pswitch_data_4c
    .packed-switch 0x2
        :pswitch_38
        :pswitch_40
    .end packed-switch
.end method

.method public a(IIZI)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 316
    if-gez p1, :cond_6

    .line 317
    const-string v0, ""

    .line 346
    :goto_5
    return-object v0

    .line 320
    :cond_6
    invoke-virtual {p0, p2}, Lcom/google/android/maps/driveabout/app/aH;->a(I)I

    move-result v0

    .line 321
    if-ne v0, v2, :cond_20

    .line 322
    if-ne p4, v2, :cond_17

    .line 323
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aH;->d:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/google/android/maps/driveabout/app/aH;->a(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 326
    :cond_17
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aH;->i:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/google/android/maps/driveabout/app/aH;->a(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 329
    :cond_20
    const/4 v1, 0x2

    if-ne v0, v1, :cond_37

    .line 330
    if-ne p4, v2, :cond_2e

    .line 331
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aH;->a:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/google/android/maps/driveabout/app/aH;->b(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 334
    :cond_2e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aH;->f:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/google/android/maps/driveabout/app/aH;->b(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 337
    :cond_37
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4e

    .line 338
    if-ne p4, v2, :cond_45

    .line 339
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aH;->a:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/google/android/maps/driveabout/app/aH;->c(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 342
    :cond_45
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aH;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aH;->f:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/google/android/maps/driveabout/app/aH;->c(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 346
    :cond_4e
    const-string v0, ""

    goto :goto_5
.end method
