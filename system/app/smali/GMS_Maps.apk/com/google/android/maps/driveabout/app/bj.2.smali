.class public Lcom/google/android/maps/driveabout/app/bJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/an;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:Ln/Q;

.field private final f:I

.field private final g:I

.field private final h:D

.field private final i:D

.field private j:Ln/am;

.field private k:Ln/am;

.field private l:I


# direct methods
.method public constructor <init>(Ln/Q;Ln/Q;II)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v4, p0, Lcom/google/android/maps/driveabout/app/bJ;->j:Ln/am;

    .line 62
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bJ;->e:Ln/Q;

    .line 63
    iput p3, p0, Lcom/google/android/maps/driveabout/app/bJ;->a:I

    .line 65
    if-ge p4, v0, :cond_f

    move p4, v0

    .line 69
    :cond_f
    invoke-virtual {p1}, Ln/Q;->f()I

    move-result v1

    invoke-virtual {p1}, Ln/Q;->g()I

    move-result v2

    invoke-static {p3, v1, v2, v4}, Ln/am;->a(IIILn/av;)Ln/am;

    move-result-object v1

    .line 71
    invoke-virtual {p2}, Ln/Q;->f()I

    move-result v2

    invoke-virtual {p2}, Ln/Q;->g()I

    move-result v3

    invoke-static {p3, v2, v3, v4}, Ln/am;->a(IIILn/av;)Ln/am;

    move-result-object v2

    .line 74
    invoke-virtual {p2}, Ln/Q;->f()I

    move-result v3

    invoke-virtual {p1}, Ln/Q;->f()I

    move-result v4

    sub-int/2addr v3, v4

    .line 75
    invoke-virtual {p2}, Ln/Q;->g()I

    move-result v4

    invoke-virtual {p1}, Ln/Q;->g()I

    move-result v5

    sub-int/2addr v4, v5

    .line 76
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 77
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 79
    if-gt v6, v5, :cond_67

    .line 80
    iput v7, p0, Lcom/google/android/maps/driveabout/app/bJ;->f:I

    .line 81
    iput p4, p0, Lcom/google/android/maps/driveabout/app/bJ;->g:I

    .line 82
    iput v7, p0, Lcom/google/android/maps/driveabout/app/bJ;->c:I

    .line 83
    iput v0, p0, Lcom/google/android/maps/driveabout/app/bJ;->d:I

    .line 84
    invoke-virtual {v2}, Ln/am;->c()I

    move-result v0

    invoke-virtual {v1}, Ln/am;->c()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bJ;->b:I

    .line 92
    :goto_5a
    iget v0, p0, Lcom/google/android/maps/driveabout/app/bJ;->b:I

    if-nez v0, :cond_7f

    .line 93
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/app/bJ;->i:D

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/app/bJ;->h:D

    .line 99
    :goto_64
    iput v7, p0, Lcom/google/android/maps/driveabout/app/bJ;->l:I

    .line 100
    return-void

    .line 86
    :cond_67
    iput p4, p0, Lcom/google/android/maps/driveabout/app/bJ;->f:I

    .line 87
    iput v7, p0, Lcom/google/android/maps/driveabout/app/bJ;->g:I

    .line 88
    iput v0, p0, Lcom/google/android/maps/driveabout/app/bJ;->c:I

    .line 89
    iput v7, p0, Lcom/google/android/maps/driveabout/app/bJ;->d:I

    .line 90
    invoke-virtual {v2}, Ln/am;->d()I

    move-result v0

    invoke-virtual {v1}, Ln/am;->d()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bJ;->b:I

    goto :goto_5a

    .line 95
    :cond_7f
    int-to-double v0, v3

    iget v2, p0, Lcom/google/android/maps/driveabout/app/bJ;->b:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/app/bJ;->h:D

    .line 96
    int-to-double v0, v4

    iget v2, p0, Lcom/google/android/maps/driveabout/app/bJ;->b:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/app/bJ;->i:D

    goto :goto_64
.end method

.method public static a(Ln/Q;II)Lcom/google/android/maps/driveabout/app/bJ;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    new-instance v0, Ln/Q;

    invoke-virtual {p0}, Ln/Q;->f()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-virtual {p0}, Ln/Q;->g()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ln/Q;-><init>(II)V

    .line 109
    new-instance v1, Ln/Q;

    invoke-virtual {p0}, Ln/Q;->f()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p0}, Ln/Q;->g()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ln/Q;-><init>(II)V

    .line 110
    new-instance v2, Lcom/google/android/maps/driveabout/app/bJ;

    invoke-direct {v2, v0, v1, p1, p2}, Lcom/google/android/maps/driveabout/app/bJ;-><init>(Ln/Q;Ln/Q;II)V

    return-object v2
.end method


# virtual methods
.method public a()Ln/am;
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 116
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bJ;->j:Ln/am;

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bJ;->j:Ln/am;

    invoke-virtual {v1}, Ln/am;->c()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bJ;->k:Ln/am;

    invoke-virtual {v2}, Ln/am;->c()I

    move-result v2

    if-lt v1, v2, :cond_21

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bJ;->j:Ln/am;

    invoke-virtual {v1}, Ln/am;->d()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bJ;->k:Ln/am;

    invoke-virtual {v2}, Ln/am;->d()I

    move-result v2

    if-ge v1, v2, :cond_3f

    .line 120
    :cond_21
    new-instance v0, Ln/am;

    iget v1, p0, Lcom/google/android/maps/driveabout/app/bJ;->a:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bJ;->j:Ln/am;

    invoke-virtual {v2}, Ln/am;->c()I

    move-result v2

    iget v3, p0, Lcom/google/android/maps/driveabout/app/bJ;->c:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/bJ;->j:Ln/am;

    invoke-virtual {v3}, Ln/am;->d()I

    move-result v3

    iget v4, p0, Lcom/google/android/maps/driveabout/app/bJ;->d:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ln/am;-><init>(III)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bJ;->j:Ln/am;

    .line 141
    :goto_3c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bJ;->j:Ln/am;

    :cond_3e
    return-object v0

    .line 123
    :cond_3f
    iget v1, p0, Lcom/google/android/maps/driveabout/app/bJ;->l:I

    iget v2, p0, Lcom/google/android/maps/driveabout/app/bJ;->b:I

    if-gt v1, v2, :cond_3e

    .line 125
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bJ;->e:Ln/Q;

    invoke-virtual {v1}, Ln/Q;->f()I

    move-result v1

    int-to-double v1, v1

    iget v3, p0, Lcom/google/android/maps/driveabout/app/bJ;->l:I

    int-to-double v3, v3

    iget-wide v5, p0, Lcom/google/android/maps/driveabout/app/bJ;->h:D

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-int v1, v1

    .line 126
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bJ;->e:Ln/Q;

    invoke-virtual {v2}, Ln/Q;->g()I

    move-result v2

    int-to-double v2, v2

    iget v4, p0, Lcom/google/android/maps/driveabout/app/bJ;->l:I

    int-to-double v4, v4

    iget-wide v6, p0, Lcom/google/android/maps/driveabout/app/bJ;->i:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    .line 128
    iget v3, p0, Lcom/google/android/maps/driveabout/app/bJ;->a:I

    iget v4, p0, Lcom/google/android/maps/driveabout/app/bJ;->f:I

    sub-int v4, v1, v4

    iget v5, p0, Lcom/google/android/maps/driveabout/app/bJ;->g:I

    add-int/2addr v5, v2

    invoke-static {v3, v4, v5, v0}, Ln/am;->a(IIILn/av;)Ln/am;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/maps/driveabout/app/bJ;->j:Ln/am;

    .line 134
    iget v3, p0, Lcom/google/android/maps/driveabout/app/bJ;->a:I

    iget v4, p0, Lcom/google/android/maps/driveabout/app/bJ;->f:I

    add-int/2addr v1, v4

    iget v4, p0, Lcom/google/android/maps/driveabout/app/bJ;->c:I

    sub-int/2addr v1, v4

    iget v4, p0, Lcom/google/android/maps/driveabout/app/bJ;->g:I

    sub-int/2addr v2, v4

    iget v4, p0, Lcom/google/android/maps/driveabout/app/bJ;->d:I

    add-int/2addr v2, v4

    invoke-static {v3, v1, v2, v0}, Ln/am;->a(IIILn/av;)Ln/am;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bJ;->k:Ln/am;

    .line 137
    iget v0, p0, Lcom/google/android/maps/driveabout/app/bJ;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bJ;->l:I

    goto :goto_3c
.end method
