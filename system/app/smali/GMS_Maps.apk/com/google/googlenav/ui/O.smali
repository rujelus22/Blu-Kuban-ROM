.class public Lcom/google/googlenav/ui/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Z

.field static b:Ljava/lang/String;

.field static c:I

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;

.field private static r:Ljava/lang/String;

.field private static s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x103

    .line 72
    const/16 v0, 0x101

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "metric"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/google/googlenav/ui/o;->a:Z

    .line 74
    const/16 v0, 0x102

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/o;->b:Ljava/lang/String;

    .line 75
    const/16 v0, 0xfd

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/o;->d:Ljava/lang/String;

    .line 76
    sget-object v0, Lcom/google/googlenav/ui/o;->d:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/o;->e:Ljava/lang/String;

    .line 77
    const/16 v0, 0x100

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/o;->f:Ljava/lang/String;

    .line 78
    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/o;->f:Ljava/lang/String;

    const/16 v2, 0xbb8

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/o;->g:Ljava/lang/String;

    .line 81
    const/16 v0, 0xff

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/o;->h:Ljava/lang/String;

    .line 82
    sget-object v0, Lcom/google/googlenav/ui/o;->h:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/o;->i:Ljava/lang/String;

    .line 83
    const/16 v0, 0xfe

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/o;->j:Ljava/lang/String;

    .line 85
    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/o;->j:Ljava/lang/String;

    const/16 v2, 0x1388

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/o;->k:Ljava/lang/String;

    .line 88
    const/16 v0, 0x1df

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/o;->l:Ljava/lang/String;

    .line 89
    const/16 v0, 0x1e0

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/o;->m:Ljava/lang/String;

    .line 90
    const/16 v0, 0x1de

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/o;->n:Ljava/lang/String;

    .line 91
    const/16 v0, 0x1e3

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/o;->o:Ljava/lang/String;

    .line 92
    const/16 v0, 0x1e2

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/o;->p:Ljava/lang/String;

    .line 93
    const/16 v0, 0x1e4

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/o;->q:Ljava/lang/String;

    .line 94
    const/16 v0, 0x1e5

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/o;->r:Ljava/lang/String;

    .line 95
    const/16 v0, 0x1e1

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/o;->s:Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    sput v0, Lcom/google/googlenav/ui/o;->c:I

    return-void
.end method

.method private static a(I)I
    .registers 3
    .parameter

    .prologue
    .line 168
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->I()I

    move-result v0

    .line 169
    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    :cond_e
    move p0, v0

    .line 175
    :cond_f
    :goto_f
    return p0

    .line 172
    :cond_10
    if-nez p0, :cond_f

    .line 173
    invoke-static {}, Lcom/google/googlenav/ui/o;->b()I

    move-result p0

    goto :goto_f
.end method

.method private static a(JI)I
    .registers 8
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x8

    .line 388
    shl-long v0, p0, v4

    .line 389
    shl-int/lit8 v2, p2, 0x7

    .line 390
    int-to-long v2, v2

    add-long/2addr v0, v2

    int-to-long v2, p2

    div-long/2addr v0, v2

    shr-long/2addr v0, v4

    long-to-int v0, v0

    return v0
.end method

.method public static a(Lat/B;Lat/B;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 398
    invoke-virtual {p0, p1}, Lat/B;->b(Lat/B;)J

    move-result-wide v0

    long-to-double v0, v0

    .line 399
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 400
    invoke-static {v0, v1}, Lcom/google/googlenav/common/util/j;->a(D)I

    move-result v0

    return v0
.end method

.method public static a(II)Ljava/lang/String;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/googlenav/ui/o;->a(IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(IIZ)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    if-gez p0, :cond_5

    .line 133
    const-string v0, ""

    .line 139
    :goto_4
    return-object v0

    .line 136
    :cond_5
    invoke-static {p1}, Lcom/google/googlenav/ui/o;->a(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 137
    invoke-static {p0, p2}, Lcom/google/googlenav/ui/o;->a(IZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 139
    :cond_11
    invoke-static {p0, p2}, Lcom/google/googlenav/ui/o;->b(IZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private static a(IZ)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x64

    const/4 v1, 0x0

    const/16 v0, 0xa

    .line 280
    const/16 v2, 0x3cf

    if-ge p0, v2, :cond_21

    .line 286
    if-lt p0, v6, :cond_13

    .line 287
    const/16 v1, 0x12c

    if-ge p0, v1, :cond_1e

    .line 290
    :goto_f
    invoke-static {p0, v0}, Lcom/google/googlenav/ui/o;->d(II)I

    move-result p0

    .line 292
    :cond_13
    sget-object v0, Lcom/google/googlenav/ui/o;->h:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    :goto_1d
    return-object v0

    .line 287
    :cond_1e
    const/16 v0, 0x32

    goto :goto_f

    .line 293
    :cond_21
    const/16 v2, 0x3e8

    if-gt p0, v2, :cond_47

    .line 295
    sget-object v0, Lcom/google/googlenav/ui/o;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/o;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    .line 298
    :cond_47
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 299
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, v3, -0x3

    .line 300
    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 301
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 302
    if-lt v3, v0, :cond_72

    const/16 v4, 0x1f4

    if-lt v2, v4, :cond_72

    .line 304
    add-int/lit8 v2, v3, 0x1

    .line 315
    :goto_69
    if-eqz p1, :cond_7c

    const/16 v3, 0x1388

    if-le v2, v3, :cond_7c

    .line 316
    sget-object v0, Lcom/google/googlenav/ui/o;->k:Ljava/lang/String;

    goto :goto_1d

    .line 307
    :cond_72
    int-to-long v4, v2

    invoke-static {v4, v5, v6}, Lcom/google/googlenav/ui/o;->a(JI)I

    move-result v2

    .line 308
    if-ne v2, v0, :cond_a8

    .line 310
    add-int/lit8 v2, v3, 0x1

    .line 311
    goto :goto_69

    .line 317
    :cond_7c
    if-le v2, v0, :cond_89

    .line 319
    sget-object v0, Lcom/google/googlenav/ui/o;->j:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    .line 321
    :cond_89
    sget-object v0, Lcom/google/googlenav/ui/o;->j:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/o;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1d

    :cond_a8
    move v1, v2

    move v2, v3

    goto :goto_69
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 380
    const-string v0, "{0}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 381
    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 384
    :goto_9
    return-object p0

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_9
.end method

.method public static a()V
    .registers 4

    .prologue
    const/16 v3, 0x103

    .line 257
    const/16 v0, 0x101

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "metric"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/google/googlenav/ui/o;->a:Z

    .line 258
    const/16 v0, 0x102

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/o;->b:Ljava/lang/String;

    .line 259
    const/16 v0, 0xfd

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/o;->d:Ljava/lang/String;

    .line 260
    sget-object v0, Lcom/google/googlenav/ui/o;->d:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/o;->e:Ljava/lang/String;

    .line 261
    const/16 v0, 0x100

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/o;->f:Ljava/lang/String;

    .line 262
    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/o;->f:Ljava/lang/String;

    const/16 v2, 0xbb8

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/o;->g:Ljava/lang/String;

    .line 264
    const/16 v0, 0xff

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/o;->h:Ljava/lang/String;

    .line 265
    sget-object v0, Lcom/google/googlenav/ui/o;->h:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/o;->i:Ljava/lang/String;

    .line 266
    const/16 v0, 0xfe

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/o;->j:Ljava/lang/String;

    .line 267
    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/o;->j:Ljava/lang/String;

    const/16 v2, 0x1388

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/o;->k:Ljava/lang/String;

    .line 269
    const/16 v0, 0x1df

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/o;->l:Ljava/lang/String;

    .line 270
    const/16 v0, 0x1e0

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/o;->m:Ljava/lang/String;

    .line 271
    const/16 v0, 0x1de

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/o;->n:Ljava/lang/String;

    .line 272
    const/16 v0, 0x1e3

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/o;->o:Ljava/lang/String;

    .line 273
    const/16 v0, 0x1e2

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/o;->p:Ljava/lang/String;

    .line 274
    const/16 v0, 0x1e4

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/o;->q:Ljava/lang/String;

    .line 275
    const/16 v0, 0x1e5

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/o;->r:Ljava/lang/String;

    .line 276
    const/16 v0, 0x1e1

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/o;->s:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public static b(Lat/B;Lat/B;)D
    .registers 16
    .parameter
    .parameter

    .prologue
    .line 404
    invoke-virtual {p0, p1}, Lat/B;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 405
    const-wide/high16 v0, -0x4010

    .line 418
    :cond_8
    :goto_8
    return-wide v0

    .line 407
    :cond_9
    const-wide v0, 0x412e848000000000L

    .line 408
    const-wide v2, 0x3f91df46a2529d39L

    .line 409
    invoke-virtual {p1}, Lat/B;->e()I

    move-result v4

    invoke-virtual {p0}, Lat/B;->e()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-double v4, v4

    div-double/2addr v4, v0

    mul-double/2addr v4, v2

    .line 410
    invoke-virtual {p0}, Lat/B;->c()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v6, v0

    mul-double/2addr v6, v2

    .line 411
    invoke-virtual {p1}, Lat/B;->c()I

    move-result v8

    int-to-double v8, v8

    div-double v0, v8, v0

    mul-double/2addr v0, v2

    .line 412
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    .line 413
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    sub-double v0, v10, v0

    .line 414
    invoke-static {v8, v9, v0, v1}, Lcom/google/googlenav/common/util/j;->a(DD)D

    move-result-wide v0

    div-double/2addr v0, v2

    .line 415
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_8

    .line 416
    const-wide v2, 0x4076800000000000L

    add-double/2addr v0, v2

    goto :goto_8
.end method

.method private static b()I
    .registers 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 203
    sget v0, Lcom/google/googlenav/ui/o;->c:I

    if-nez v0, :cond_13

    .line 204
    sget-boolean v0, Lcom/google/googlenav/ui/o;->a:Z

    if-eqz v0, :cond_1d

    move v0, v1

    .line 205
    :goto_b
    const-string v3, "LAST_MCC_LOCAL_UNITS"

    invoke-static {v3, v0}, Lcom/google/googlenav/friend/aW;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/o;->c:I

    .line 210
    :cond_13
    invoke-static {}, Lao/b;->c()I

    move-result v0

    .line 211
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1f

    .line 212
    sget v2, Lcom/google/googlenav/ui/o;->c:I

    .line 252
    :cond_1c
    :goto_1c
    return v2

    :cond_1d
    move v0, v2

    .line 204
    goto :goto_b

    .line 219
    :cond_1f
    sparse-switch v0, :sswitch_data_30

    move v2, v1

    .line 247
    :sswitch_23
    sget v0, Lcom/google/googlenav/ui/o;->c:I

    if-eq v0, v2, :cond_1c

    .line 248
    const-string v0, "LAST_MCC_LOCAL_UNITS"

    invoke-static {v0, v2}, Lcom/google/googlenav/friend/aW;->b(Ljava/lang/String;I)V

    .line 249
    sput v2, Lcom/google/googlenav/ui/o;->c:I

    goto :goto_1c

    .line 219
    nop

    :sswitch_data_30
    .sparse-switch
        0xea -> :sswitch_23
        0xeb -> :sswitch_23
        0x10a -> :sswitch_23
        0x136 -> :sswitch_23
        0x137 -> :sswitch_23
        0x138 -> :sswitch_23
        0x139 -> :sswitch_23
        0x13a -> :sswitch_23
        0x13b -> :sswitch_23
        0x13c -> :sswitch_23
        0x14a -> :sswitch_23
        0x14c -> :sswitch_23
        0x15a -> :sswitch_23
        0x15c -> :sswitch_23
        0x15e -> :sswitch_23
        0x162 -> :sswitch_23
        0x16d -> :sswitch_23
        0x178 -> :sswitch_23
        0x216 -> :sswitch_23
        0x220 -> :sswitch_23
    .end sparse-switch
.end method

.method public static b(II)Ljava/lang/String;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 128
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/googlenav/ui/o;->a(IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(IZ)Ljava/lang/String;
    .registers 15
    .parameter
    .parameter

    .prologue
    const-wide/16 v11, 0x1

    const-wide/16 v0, 0x0

    const v10, 0x509100

    const-wide/32 v6, 0x325aa00

    const-wide/16 v8, 0xa

    .line 328
    int-to-long v2, p0

    const-wide/32 v4, 0x8028

    mul-long/2addr v2, v4

    .line 329
    const-wide/32 v4, 0x4c9960

    cmp-long v4, v2, v4

    if-gez v4, :cond_35

    .line 331
    const-wide/16 v0, 0x2710

    div-long v0, v2, v0

    long-to-int v0, v0

    .line 332
    mul-int/lit16 v1, v0, 0x2710

    int-to-long v4, v1

    sub-long v1, v2, v4

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2a

    .line 333
    add-int/lit8 v0, v0, 0x1

    .line 335
    :cond_2a
    sget-object v1, Lcom/google/googlenav/ui/o;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    :goto_34
    return-object v0

    .line 336
    :cond_35
    const-wide/32 v4, 0x2fd6180

    cmp-long v4, v2, v4

    if-gez v4, :cond_60

    .line 338
    sget-object v0, Lcom/google/googlenav/ui/o;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcom/google/googlenav/ui/o;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2, v3, v10}, Lcom/google/googlenav/ui/o;->a(JI)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    .line 340
    :cond_60
    cmp-long v4, v2, v6

    if-gtz v4, :cond_86

    .line 342
    sget-object v0, Lcom/google/googlenav/ui/o;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/o;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    .line 345
    :cond_86
    div-long v4, v2, v6

    .line 346
    rem-long/2addr v2, v6

    .line 347
    cmp-long v6, v4, v8

    if-ltz v6, :cond_a1

    const-wide/32 v6, 0x192d500

    cmp-long v6, v2, v6

    if-ltz v6, :cond_a1

    .line 349
    add-long v2, v4, v11

    .line 361
    :goto_96
    if-eqz p1, :cond_ad

    const-wide/16 v4, 0xbb8

    cmp-long v4, v2, v4

    if-lez v4, :cond_ad

    .line 362
    sget-object v0, Lcom/google/googlenav/ui/o;->g:Ljava/lang/String;

    goto :goto_34

    .line 352
    :cond_a1
    invoke-static {v2, v3, v10}, Lcom/google/googlenav/ui/o;->a(JI)I

    move-result v2

    int-to-long v2, v2

    .line 354
    cmp-long v6, v2, v8

    if-nez v6, :cond_dc

    .line 356
    add-long v2, v4, v11

    .line 357
    goto :goto_96

    .line 363
    :cond_ad
    cmp-long v4, v2, v8

    if-ltz v4, :cond_bd

    .line 365
    sget-object v0, Lcom/google/googlenav/ui/o;->f:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_34

    .line 367
    :cond_bd
    sget-object v4, Lcom/google/googlenav/ui/o;->f:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/o;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/googlenav/ui/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_34

    :cond_dc
    move-wide v0, v2

    move-wide v2, v4

    goto :goto_96
.end method

.method public static c(II)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 149
    invoke-static {p1}, Lcom/google/googlenav/ui/o;->a(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 150
    sget-object v0, Lcom/google/googlenav/ui/o;->h:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    :goto_11
    return-object v0

    .line 152
    :cond_12
    int-to-long v0, p0

    const-wide/32 v2, 0x8028

    mul-long v1, v0, v2

    .line 153
    const-wide/16 v3, 0x2710

    div-long v3, v1, v3

    long-to-int v0, v3

    .line 155
    mul-int/lit16 v3, v0, 0x2710

    int-to-long v3, v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-ltz v1, :cond_29

    .line 156
    add-int/lit8 v0, v0, 0x1

    .line 158
    :cond_29
    sget-object v1, Lcom/google/googlenav/ui/o;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method

.method private static d(II)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 394
    shr-int/lit8 v0, p1, 0x1

    add-int/2addr v0, p0

    div-int/2addr v0, p1

    mul-int/2addr v0, p1

    return v0
.end method
