.class public Lcom/google/android/maps/driveabout/app/dq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/an;


# static fields
.field private static final a:Ln/an;

.field private static final b:Ln/an;


# instance fields
.field private volatile c:I

.field private volatile d:Z

.field private e:Lo/x;

.field private f:Ln/U;

.field private g:I

.field private h:I

.field private i:I

.field private j:Ln/an;

.field private final k:Lt/f;

.field private l:I

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/maps/driveabout/app/dq;->a:Ln/an;

    .line 37
    new-instance v0, Lcom/google/android/maps/driveabout/app/dr;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/dr;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/app/dq;->b:Ln/an;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0xc8

    iput v0, p0, Lcom/google/android/maps/driveabout/app/dq;->c:I

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/dq;->d:Z

    .line 55
    sget-object v0, Lcom/google/android/maps/driveabout/app/dq;->a:Ln/an;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dq;->j:Ln/an;

    .line 66
    new-instance v0, Lt/f;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Lt/f;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dq;->k:Lt/f;

    .line 74
    return-void
.end method

.method static a(ILn/Q;)I
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 237
    invoke-virtual {p1}, Ln/Q;->e()D

    move-result-wide v0

    .line 238
    int-to-double v2, p0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private c()V
    .registers 6

    .prologue
    const/16 v4, 0xe

    .line 138
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dq;->e:Lo/x;

    if-nez v0, :cond_b

    .line 139
    sget-object v0, Lcom/google/android/maps/driveabout/app/dq;->a:Ln/an;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dq;->j:Ln/an;

    .line 159
    :goto_a
    return-void

    .line 140
    :cond_b
    iget v0, p0, Lcom/google/android/maps/driveabout/app/dq;->g:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dq;->e:Lo/x;

    invoke-virtual {v1}, Lo/x;->k()I

    move-result v1

    if-ge v0, v1, :cond_36

    .line 142
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dq;->e:Lo/x;

    iget v1, p0, Lcom/google/android/maps/driveabout/app/dq;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/app/dq;->g:I

    invoke-virtual {v0, v1}, Lo/x;->a(I)Lo/I;

    move-result-object v0

    invoke-virtual {v0}, Lo/I;->a()Ln/Q;

    move-result-object v0

    .line 144
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/dq;->a(Ln/Q;)I

    move-result v1

    invoke-static {v0, v4, v1}, Lcom/google/android/maps/driveabout/app/bJ;->a(Ln/Q;II)Lcom/google/android/maps/driveabout/app/bJ;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dq;->j:Ln/an;

    .line 146
    iget v0, p0, Lcom/google/android/maps/driveabout/app/dq;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/dq;->l:I

    goto :goto_a

    .line 147
    :cond_36
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/dq;->d:Z

    if-eqz v0, :cond_68

    iget v0, p0, Lcom/google/android/maps/driveabout/app/dq;->h:I

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/dq;->a(I)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 150
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dq;->f:Ln/U;

    iget v1, p0, Lcom/google/android/maps/driveabout/app/dq;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/app/dq;->h:I

    invoke-virtual {v0, v1}, Ln/U;->a(I)Ln/Q;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dq;->f:Ln/U;

    iget v2, p0, Lcom/google/android/maps/driveabout/app/dq;->h:I

    invoke-virtual {v1, v2}, Ln/U;->a(I)Ln/Q;

    move-result-object v1

    .line 152
    new-instance v2, Lcom/google/android/maps/driveabout/app/bJ;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/dq;->a(Ln/Q;)I

    move-result v3

    invoke-direct {v2, v0, v1, v4, v3}, Lcom/google/android/maps/driveabout/app/bJ;-><init>(Ln/Q;Ln/Q;II)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/app/dq;->j:Ln/an;

    .line 154
    iget v0, p0, Lcom/google/android/maps/driveabout/app/dq;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/dq;->m:I

    goto :goto_a

    .line 157
    :cond_68
    sget-object v0, Lcom/google/android/maps/driveabout/app/dq;->a:Ln/an;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dq;->j:Ln/an;

    goto :goto_a
.end method


# virtual methods
.method a(Ln/Q;)I
    .registers 3
    .parameter

    .prologue
    .line 218
    iget v0, p0, Lcom/google/android/maps/driveabout/app/dq;->c:I

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/dq;->a(ILn/Q;)I

    move-result v0

    return v0
.end method

.method public a()Ln/am;
    .registers 4

    .prologue
    .line 164
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dq;->j:Ln/an;

    sget-object v1, Lcom/google/android/maps/driveabout/app/dq;->a:Ln/an;

    if-eq v0, v1, :cond_22

    .line 165
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dq;->j:Ln/an;

    invoke-interface {v0}, Ln/an;->a()Ln/am;

    move-result-object v0

    .line 166
    if-nez v0, :cond_12

    .line 167
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dq;->c()V

    goto :goto_0

    .line 168
    :cond_12
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dq;->k:Lt/f;

    invoke-virtual {v1, v0}, Lt/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dq;->k:Lt/f;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Lt/f;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 173
    :goto_21
    return-object v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public a(Lo/I;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-virtual {p1}, Lo/I;->i()I

    move-result v0

    .line 117
    iget v1, p0, Lcom/google/android/maps/driveabout/app/dq;->g:I

    if-gt v1, v0, :cond_13

    .line 119
    sget-object v1, Lcom/google/android/maps/driveabout/app/dq;->b:Ln/an;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/dq;->j:Ln/an;

    .line 120
    iput v0, p0, Lcom/google/android/maps/driveabout/app/dq;->g:I

    .line 121
    iput p2, p0, Lcom/google/android/maps/driveabout/app/dq;->h:I

    .line 132
    :cond_10
    :goto_10
    iput p2, p0, Lcom/google/android/maps/driveabout/app/dq;->i:I

    .line 133
    return-void

    .line 122
    :cond_13
    iget v0, p0, Lcom/google/android/maps/driveabout/app/dq;->h:I

    if-gt v0, p2, :cond_1e

    .line 124
    sget-object v0, Lcom/google/android/maps/driveabout/app/dq;->b:Ln/an;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dq;->j:Ln/an;

    .line 125
    iput p2, p0, Lcom/google/android/maps/driveabout/app/dq;->h:I

    goto :goto_10

    .line 126
    :cond_1e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dq;->j:Ln/an;

    sget-object v1, Lcom/google/android/maps/driveabout/app/dq;->a:Ln/an;

    if-ne v0, v1, :cond_10

    iget v0, p0, Lcom/google/android/maps/driveabout/app/dq;->i:I

    if-ge v0, p2, :cond_10

    .line 130
    sget-object v0, Lcom/google/android/maps/driveabout/app/dq;->b:Ln/an;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dq;->j:Ln/an;

    goto :goto_10
.end method

.method public a(Lo/x;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 94
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dq;->e:Lo/x;

    .line 95
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dq;->e:Lo/x;

    invoke-virtual {v0}, Lo/x;->n()Ln/U;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dq;->f:Ln/U;

    .line 96
    iput v1, p0, Lcom/google/android/maps/driveabout/app/dq;->g:I

    .line 97
    iput v1, p0, Lcom/google/android/maps/driveabout/app/dq;->h:I

    .line 98
    iput v1, p0, Lcom/google/android/maps/driveabout/app/dq;->i:I

    .line 99
    sget-object v0, Lcom/google/android/maps/driveabout/app/dq;->b:Ln/an;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dq;->j:Ln/an;

    .line 100
    return-void
.end method

.method a(I)Z
    .registers 9
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 183
    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/dq;->f:Ln/U;

    invoke-virtual {v3}, Ln/U;->b()I

    move-result v3

    if-lt v2, v3, :cond_e

    move v0, v1

    .line 194
    :cond_d
    :goto_d
    return v0

    .line 185
    :cond_e
    iget v2, p0, Lcom/google/android/maps/driveabout/app/dq;->i:I

    if-eq p1, v2, :cond_d

    .line 189
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dq;->f:Ln/U;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ln/U;->a(I)Ln/Q;

    move-result-object v2

    .line 190
    invoke-static {}, Lt/m;->a()Lt/k;

    move-result-object v3

    invoke-virtual {v3}, Lt/k;->t()I

    move-result v3

    .line 191
    mul-int/lit16 v3, v3, 0x3e8

    invoke-static {v3, v2}, Lcom/google/android/maps/driveabout/app/dq;->a(ILn/Q;)I

    move-result v2

    .line 192
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/dq;->e:Lo/x;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Lo/x;->b(I)D

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/dq;->e:Lo/x;

    iget v6, p0, Lcom/google/android/maps/driveabout/app/dq;->i:I

    invoke-virtual {v5, v6}, Lo/x;->b(I)D

    move-result-wide v5

    sub-double/2addr v3, v5

    .line 194
    int-to-double v5, v2

    cmpg-double v2, v3, v5

    if-lez v2, :cond_d

    move v0, v1

    goto :goto_d
.end method

.method public b()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 81
    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/dq;->f:Ln/U;

    .line 82
    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/dq;->e:Lo/x;

    .line 83
    iput v0, p0, Lcom/google/android/maps/driveabout/app/dq;->g:I

    .line 84
    iput v0, p0, Lcom/google/android/maps/driveabout/app/dq;->h:I

    .line 85
    iput v0, p0, Lcom/google/android/maps/driveabout/app/dq;->i:I

    .line 86
    sget-object v0, Lcom/google/android/maps/driveabout/app/dq;->b:Ln/an;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dq;->j:Ln/an;

    .line 88
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dq;->k:Lt/f;

    invoke-virtual {v0}, Lt/f;->e()V

    .line 89
    return-void
.end method

.method b(I)V
    .registers 3
    .parameter

    .prologue
    .line 211
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/dq;->c:I

    .line 212
    return-void
.end method
