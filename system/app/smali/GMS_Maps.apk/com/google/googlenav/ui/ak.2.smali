.class public Lcom/google/googlenav/ui/aK;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final o:LS/d;

.field private static final p:LS/d;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/google/googlenav/ui/bn;

.field private final l:Landroid/graphics/Point;

.field private m:I

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 92
    const/high16 v0, -0x100

    invoke-static {v1, v1, v0}, Lcom/google/googlenav/G;->a(IZI)LS/d;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/aK;->o:LS/d;

    .line 93
    const/4 v0, -0x1

    invoke-static {v1, v1, v0}, Lcom/google/googlenav/G;->a(IZI)LS/d;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/aK;->p:LS/d;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput v2, p0, Lcom/google/googlenav/ui/aK;->a:I

    .line 38
    iput v2, p0, Lcom/google/googlenav/ui/aK;->b:I

    .line 39
    iput v2, p0, Lcom/google/googlenav/ui/aK;->c:I

    .line 40
    iput v2, p0, Lcom/google/googlenav/ui/aK;->d:I

    .line 42
    iput v2, p0, Lcom/google/googlenav/ui/aK;->e:I

    .line 43
    iput v2, p0, Lcom/google/googlenav/ui/aK;->f:I

    .line 48
    iput v2, p0, Lcom/google/googlenav/ui/aK;->g:I

    .line 53
    iput v2, p0, Lcom/google/googlenav/ui/aK;->h:I

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ui/aK;->i:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ui/aK;->j:Ljava/lang/String;

    .line 73
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/aK;->l:Landroid/graphics/Point;

    .line 79
    iput v2, p0, Lcom/google/googlenav/ui/aK;->m:I

    .line 84
    iput v2, p0, Lcom/google/googlenav/ui/aK;->n:I

    .line 101
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/aK;->k:Lcom/google/googlenav/ui/bn;

    .line 103
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/aK;->a:I

    .line 104
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/aK;->b:I

    .line 105
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/aK;->c:I

    .line 106
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/aK;->d:I

    .line 108
    iget v0, p0, Lcom/google/googlenav/ui/aK;->b:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlenav/ui/aK;->e:I

    .line 109
    iget v0, p0, Lcom/google/googlenav/ui/aK;->d:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlenav/ui/aK;->f:I

    .line 111
    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/aK;->a(Z)V

    .line 112
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/aL;)V
    .registers 2
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/googlenav/ui/aK;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/googlenav/ui/aK;
    .registers 1

    .prologue
    .line 115
    sget-object v0, Lcom/google/googlenav/ui/aM;->a:Lcom/google/googlenav/ui/aK;

    return-object v0
.end method

.method private static a(LS/e;Ljava/lang/String;ZII)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 244
    if-eqz p2, :cond_26

    sget-object v0, Lcom/google/googlenav/ui/aK;->o:LS/d;

    :goto_4
    invoke-interface {p0, v0}, LS/e;->a(LS/d;)V

    .line 245
    add-int/lit8 v0, p3, -0x1

    invoke-interface {p0, p1, v0, p4}, LS/e;->a(Ljava/lang/String;II)V

    .line 246
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p0, p1, v0, p4}, LS/e;->a(Ljava/lang/String;II)V

    .line 247
    add-int/lit8 v0, p4, -0x1

    invoke-interface {p0, p1, p3, v0}, LS/e;->a(Ljava/lang/String;II)V

    .line 248
    add-int/lit8 v0, p4, 0x1

    invoke-interface {p0, p1, p3, v0}, LS/e;->a(Ljava/lang/String;II)V

    .line 252
    if-eqz p2, :cond_29

    sget-object v0, Lcom/google/googlenav/ui/aK;->p:LS/d;

    :goto_1f
    invoke-interface {p0, v0}, LS/e;->a(LS/d;)V

    .line 253
    invoke-interface {p0, p1, p3, p4}, LS/e;->a(Ljava/lang/String;II)V

    .line 254
    return-void

    .line 244
    :cond_26
    sget-object v0, Lcom/google/googlenav/ui/aK;->p:LS/d;

    goto :goto_4

    .line 252
    :cond_29
    sget-object v0, Lcom/google/googlenav/ui/aK;->o:LS/d;

    goto :goto_1f
.end method

.method private a(Z)V
    .registers 5
    .parameter

    .prologue
    .line 126
    iget v0, p0, Lcom/google/googlenav/ui/aK;->a:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlenav/ui/aK;->m:I

    .line 127
    iget-object v0, p0, Lcom/google/googlenav/ui/aK;->k:Lcom/google/googlenav/ui/bn;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->F()I

    move-result v0

    iget v1, p0, Lcom/google/googlenav/ui/aK;->a:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/googlenav/ui/aK;->e:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlenav/ui/aK;->n:I

    .line 128
    if-eqz p1, :cond_27

    .line 133
    iget v0, p0, Lcom/google/googlenav/ui/aK;->n:I

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlenav/ui/aK;->n:I

    .line 135
    :cond_27
    return-void
.end method


# virtual methods
.method public a(LS/e;Z)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 208
    iget v0, p0, Lcom/google/googlenav/ui/aK;->g:I

    if-nez v0, :cond_9

    iget v0, p0, Lcom/google/googlenav/ui/aK;->h:I

    if-nez v0, :cond_9

    .line 239
    :goto_8
    return-void

    .line 212
    :cond_9
    iget v0, p0, Lcom/google/googlenav/ui/aK;->g:I

    iget v1, p0, Lcom/google/googlenav/ui/aK;->h:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/google/googlenav/ui/aK;->d:I

    add-int/2addr v0, v1

    .line 215
    const/4 v1, -0x1

    invoke-interface {p1, v1}, LS/e;->a(I)V

    .line 216
    iget v1, p0, Lcom/google/googlenav/ui/aK;->m:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/google/googlenav/ui/aK;->n:I

    iget v3, p0, Lcom/google/googlenav/ui/aK;->e:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/google/googlenav/ui/aK;->d:I

    add-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/google/googlenav/ui/aK;->b:I

    add-int/lit8 v4, v4, 0x2

    invoke-interface {p1, v1, v2, v3, v4}, LS/e;->b(IIII)V

    .line 217
    iget v1, p0, Lcom/google/googlenav/ui/aK;->m:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/google/googlenav/ui/aK;->n:I

    iget v3, p0, Lcom/google/googlenav/ui/aK;->f:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, v0, 0x2

    iget v4, p0, Lcom/google/googlenav/ui/aK;->d:I

    add-int/lit8 v4, v4, 0x2

    invoke-interface {p1, v1, v2, v3, v4}, LS/e;->b(IIII)V

    .line 220
    iget v1, p0, Lcom/google/googlenav/ui/aK;->m:I

    iget v2, p0, Lcom/google/googlenav/ui/aK;->h:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/google/googlenav/ui/aK;->n:I

    iget v3, p0, Lcom/google/googlenav/ui/aK;->e:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/google/googlenav/ui/aK;->d:I

    add-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/google/googlenav/ui/aK;->e:I

    add-int/lit8 v4, v4, 0x1

    invoke-interface {p1, v1, v2, v3, v4}, LS/e;->b(IIII)V

    .line 224
    iget v1, p0, Lcom/google/googlenav/ui/aK;->m:I

    iget v2, p0, Lcom/google/googlenav/ui/aK;->g:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/google/googlenav/ui/aK;->n:I

    iget v3, p0, Lcom/google/googlenav/ui/aK;->d:I

    add-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/google/googlenav/ui/aK;->e:I

    add-int/lit8 v4, v4, 0x1

    invoke-interface {p1, v1, v2, v3, v4}, LS/e;->b(IIII)V

    .line 227
    const/high16 v1, -0x100

    invoke-interface {p1, v1}, LS/e;->a(I)V

    .line 228
    iget v1, p0, Lcom/google/googlenav/ui/aK;->m:I

    iget v2, p0, Lcom/google/googlenav/ui/aK;->n:I

    iget v3, p0, Lcom/google/googlenav/ui/aK;->e:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/google/googlenav/ui/aK;->d:I

    iget v4, p0, Lcom/google/googlenav/ui/aK;->b:I

    invoke-interface {p1, v1, v2, v3, v4}, LS/e;->b(IIII)V

    .line 229
    iget v1, p0, Lcom/google/googlenav/ui/aK;->m:I

    iget v2, p0, Lcom/google/googlenav/ui/aK;->n:I

    iget v3, p0, Lcom/google/googlenav/ui/aK;->f:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/google/googlenav/ui/aK;->d:I

    invoke-interface {p1, v1, v2, v0, v3}, LS/e;->b(IIII)V

    .line 232
    iget v0, p0, Lcom/google/googlenav/ui/aK;->m:I

    iget v1, p0, Lcom/google/googlenav/ui/aK;->h:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/googlenav/ui/aK;->n:I

    iget v2, p0, Lcom/google/googlenav/ui/aK;->e:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/google/googlenav/ui/aK;->d:I

    iget v3, p0, Lcom/google/googlenav/ui/aK;->e:I

    invoke-interface {p1, v0, v1, v2, v3}, LS/e;->b(IIII)V

    .line 233
    iget v0, p0, Lcom/google/googlenav/ui/aK;->m:I

    iget v1, p0, Lcom/google/googlenav/ui/aK;->g:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/googlenav/ui/aK;->n:I

    iget v2, p0, Lcom/google/googlenav/ui/aK;->d:I

    iget v3, p0, Lcom/google/googlenav/ui/aK;->e:I

    invoke-interface {p1, v0, v1, v2, v3}, LS/e;->b(IIII)V

    .line 236
    iget-object v0, p0, Lcom/google/googlenav/ui/aK;->j:Ljava/lang/String;

    iget v1, p0, Lcom/google/googlenav/ui/aK;->m:I

    iget v2, p0, Lcom/google/googlenav/ui/aK;->d:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/googlenav/ui/aK;->a:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/googlenav/ui/aK;->n:I

    sget-object v3, Lcom/google/googlenav/ui/aK;->o:LS/d;

    invoke-interface {v3}, LS/d;->a()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/google/googlenav/ui/aK;->a:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-static {p1, v0, p2, v1, v2}, Lcom/google/googlenav/ui/aK;->a(LS/e;Ljava/lang/String;ZII)V

    .line 238
    iget-object v0, p0, Lcom/google/googlenav/ui/aK;->i:Ljava/lang/String;

    iget v1, p0, Lcom/google/googlenav/ui/aK;->m:I

    iget v2, p0, Lcom/google/googlenav/ui/aK;->d:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/googlenav/ui/aK;->a:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/googlenav/ui/aK;->n:I

    iget v3, p0, Lcom/google/googlenav/ui/aK;->a:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-static {p1, v0, p2, v1, v2}, Lcom/google/googlenav/ui/aK;->a(LS/e;Ljava/lang/String;ZII)V

    goto/16 :goto_8
.end method

.method public a(Lat/p;Z)V
    .registers 13
    .parameter
    .parameter

    .prologue
    .line 145
    if-nez p1, :cond_e

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/aK;->h:I

    iput v0, p0, Lcom/google/googlenav/ui/aK;->g:I

    .line 147
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ui/aK;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/ui/aK;->i:Ljava/lang/String;

    .line 199
    :cond_d
    :goto_d
    return-void

    .line 152
    :cond_e
    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/aK;->a(Z)V

    .line 155
    iget v0, p0, Lcom/google/googlenav/ui/aK;->m:I

    iget v1, p0, Lcom/google/googlenav/ui/aK;->n:I

    invoke-virtual {p1, v0, v1}, Lat/p;->b(II)Lat/B;

    move-result-object v1

    .line 156
    iget v0, p0, Lcom/google/googlenav/ui/aK;->m:I

    iget v2, p0, Lcom/google/googlenav/ui/aK;->c:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/google/googlenav/ui/aK;->n:I

    invoke-virtual {p1, v0, v2}, Lat/p;->b(II)Lat/B;

    move-result-object v0

    invoke-virtual {v1, v0}, Lat/B;->b(Lat/B;)J

    move-result-wide v2

    .line 158
    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 159
    const-wide v4, 0x400a3f28fd4f4b98L

    mul-double/2addr v4, v2

    .line 162
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/aK;->g:I

    .line 163
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ui/aK;->i:Ljava/lang/String;

    .line 164
    sget-object v0, Lcom/google/googlenav/common/util/u;->a:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_3f
    if-ltz v0, :cond_7f

    .line 165
    sget-object v6, Lcom/google/googlenav/common/util/u;->a:[I

    aget v6, v6, v0

    int-to-double v6, v6

    sub-double v6, v2, v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_ef

    .line 166
    sget-object v2, Lcom/google/googlenav/common/util/u;->a:[I

    aget v0, v2, v0

    .line 167
    const/16 v2, 0x3e8

    if-ge v0, v2, :cond_d5

    .line 168
    const/16 v2, 0xff

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v2, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlenav/ui/aK;->i:Ljava/lang/String;

    .line 174
    :goto_6c
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lat/B;->c(II)Lat/B;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/ui/aK;->l:Landroid/graphics/Point;

    invoke-virtual {p1, v0, v2}, Lat/p;->b(Lat/B;Landroid/graphics/Point;)V

    .line 175
    iget-object v0, p0, Lcom/google/googlenav/ui/aK;->l:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/google/googlenav/ui/aK;->m:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlenav/ui/aK;->g:I

    .line 181
    :cond_7f
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/aK;->h:I

    .line 182
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ui/aK;->j:Ljava/lang/String;

    .line 183
    sget-object v0, Lcom/google/googlenav/common/util/u;->b:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_8b
    if-ltz v0, :cond_d

    .line 184
    sget-object v2, Lcom/google/googlenav/common/util/u;->b:[I

    aget v2, v2, v0

    int-to-double v2, v2

    sub-double v2, v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v2, v2, v6

    if-ltz v2, :cond_10c

    .line 185
    sget-object v2, Lcom/google/googlenav/common/util/u;->b:[I

    aget v0, v2, v0

    .line 186
    const/16 v2, 0x14a0

    if-ge v0, v2, :cond_f3

    .line 187
    const/16 v2, 0xfd

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlenav/ui/aK;->j:Ljava/lang/String;

    .line 193
    :goto_b8
    const/4 v2, 0x0

    int-to-double v3, v0

    const-wide v5, 0x400a3f28fd4f4b98L

    div-double/2addr v3, v5

    double-to-int v0, v3

    invoke-virtual {v1, v2, v0}, Lat/B;->c(II)Lat/B;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/aK;->l:Landroid/graphics/Point;

    invoke-virtual {p1, v0, v1}, Lat/p;->b(Lat/B;Landroid/graphics/Point;)V

    .line 195
    iget-object v0, p0, Lcom/google/googlenav/ui/aK;->l:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/google/googlenav/ui/aK;->m:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlenav/ui/aK;->h:I

    goto/16 :goto_d

    .line 171
    :cond_d5
    const/16 v2, 0xfe

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    div-int/lit16 v7, v0, 0x3e8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v2, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlenav/ui/aK;->i:Ljava/lang/String;

    goto/16 :goto_6c

    .line 164
    :cond_ef
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_3f

    .line 190
    :cond_f3
    const/16 v2, 0x100

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    div-int/lit16 v5, v0, 0x14a0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlenav/ui/aK;->j:Ljava/lang/String;

    goto :goto_b8

    .line 183
    :cond_10c
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_8b
.end method
