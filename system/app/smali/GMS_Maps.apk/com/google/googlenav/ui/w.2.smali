.class public Lcom/google/googlenav/ui/w;
.super Ljava/lang/Object;


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

    const/16 v3, 0xf0

    const/16 v0, 0xee

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "metric"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/google/googlenav/ui/w;->a:Z

    const/16 v0, 0xef

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/w;->b:Ljava/lang/String;

    const/16 v0, 0xea

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/w;->d:Ljava/lang/String;

    sget-object v0, Lcom/google/googlenav/ui/w;->d:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/w;->e:Ljava/lang/String;

    const/16 v0, 0xed

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/w;->f:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/w;->f:Ljava/lang/String;

    const/16 v2, 0xbb8

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/w;->g:Ljava/lang/String;

    const/16 v0, 0xec

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/w;->h:Ljava/lang/String;

    sget-object v0, Lcom/google/googlenav/ui/w;->h:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/w;->i:Ljava/lang/String;

    const/16 v0, 0xeb

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/w;->j:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/w;->j:Ljava/lang/String;

    const/16 v2, 0x1388

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/w;->k:Ljava/lang/String;

    const/16 v0, 0x1c7

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/w;->l:Ljava/lang/String;

    const/16 v0, 0x1c8

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/w;->m:Ljava/lang/String;

    const/16 v0, 0x1c6

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/w;->n:Ljava/lang/String;

    const/16 v0, 0x1cb

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/w;->o:Ljava/lang/String;

    const/16 v0, 0x1ca

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/w;->p:Ljava/lang/String;

    const/16 v0, 0x1cc

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/w;->q:Ljava/lang/String;

    const/16 v0, 0x1cd

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/w;->r:Ljava/lang/String;

    const/16 v0, 0x1c9

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/w;->s:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/google/googlenav/ui/w;->c:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

.method public static a(LaJ/B;LaJ/B;)I
    .registers 4

    invoke-virtual {p0, p1}, LaJ/B;->b(LaJ/B;)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lar/i;->a(D)I

    move-result v0

    return v0
.end method

.method public static a(II)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/googlenav/ui/w;->a(IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(IIZ)Ljava/lang/String;
    .registers 4

    if-gez p0, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    if-nez p1, :cond_b

    invoke-static {}, Lcom/google/googlenav/ui/w;->b()I

    move-result p1

    :cond_b
    const/4 v0, 0x1

    if-ne p1, v0, :cond_13

    invoke-static {p0, p2}, Lcom/google/googlenav/ui/w;->a(IZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_13
    invoke-static {p0, p2}, Lcom/google/googlenav/ui/w;->b(IZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private static a(IZ)Ljava/lang/String;
    .registers 9

    const/16 v6, 0x64

    const/4 v1, 0x0

    const/16 v0, 0xa

    const/16 v2, 0x3cf

    if-ge p0, v2, :cond_21

    if-lt p0, v6, :cond_13

    const/16 v1, 0x12c

    if-ge p0, v1, :cond_1e

    :goto_f
    invoke-static {p0, v0}, Lcom/google/googlenav/ui/w;->c(II)I

    move-result p0

    :cond_13
    sget-object v0, Lcom/google/googlenav/ui/w;->h:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1d
    return-object v0

    :cond_1e
    const/16 v0, 0x32

    goto :goto_f

    :cond_21
    const/16 v2, 0x3e8

    if-gt p0, v2, :cond_47

    sget-object v0, Lcom/google/googlenav/ui/w;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/w;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    :cond_47
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, v3, -0x3

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lt v3, v0, :cond_72

    const/16 v4, 0x1f4

    if-lt v2, v4, :cond_72

    add-int/lit8 v2, v3, 0x1

    :goto_69
    if-eqz p1, :cond_7c

    const/16 v3, 0x1388

    if-le v2, v3, :cond_7c

    sget-object v0, Lcom/google/googlenav/ui/w;->k:Ljava/lang/String;

    goto :goto_1d

    :cond_72
    int-to-long v4, v2

    invoke-static {v4, v5, v6}, Lcom/google/googlenav/ui/w;->a(JI)I

    move-result v2

    if-ne v2, v0, :cond_a8

    add-int/lit8 v2, v3, 0x1

    goto :goto_69

    :cond_7c
    if-le v2, v0, :cond_89

    sget-object v0, Lcom/google/googlenav/ui/w;->j:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    :cond_89
    sget-object v0, Lcom/google/googlenav/ui/w;->j:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/w;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1d

    :cond_a8
    move v1, v2

    move v2, v3

    goto :goto_69
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "{0}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

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

    const/16 v3, 0xf0

    const/16 v0, 0xee

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "metric"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/google/googlenav/ui/w;->a:Z

    const/16 v0, 0xef

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/w;->b:Ljava/lang/String;

    const/16 v0, 0xea

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/w;->d:Ljava/lang/String;

    sget-object v0, Lcom/google/googlenav/ui/w;->d:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/w;->e:Ljava/lang/String;

    const/16 v0, 0xed

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/w;->f:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/w;->f:Ljava/lang/String;

    const/16 v2, 0xbb8

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/w;->g:Ljava/lang/String;

    const/16 v0, 0xec

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/w;->h:Ljava/lang/String;

    sget-object v0, Lcom/google/googlenav/ui/w;->h:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/w;->i:Ljava/lang/String;

    const/16 v0, 0xeb

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/w;->j:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/w;->j:Ljava/lang/String;

    const/16 v2, 0x1388

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/w;->k:Ljava/lang/String;

    const/16 v0, 0x1c7

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/w;->l:Ljava/lang/String;

    const/16 v0, 0x1c8

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/w;->m:Ljava/lang/String;

    const/16 v0, 0x1c6

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/w;->n:Ljava/lang/String;

    const/16 v0, 0x1cb

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/w;->o:Ljava/lang/String;

    const/16 v0, 0x1ca

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/w;->p:Ljava/lang/String;

    const/16 v0, 0x1cc

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/w;->q:Ljava/lang/String;

    const/16 v0, 0x1cd

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/w;->r:Ljava/lang/String;

    const/16 v0, 0x1c9

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/w;->s:Ljava/lang/String;

    return-void
.end method

.method public static b(LaJ/B;LaJ/B;)D
    .registers 16

    invoke-virtual {p0, p1}, LaJ/B;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-wide/high16 v0, -0x4010

    :cond_8
    :goto_8
    return-wide v0

    :cond_9
    const-wide v0, 0x412e848000000000L

    const-wide v2, 0x3f91df46a2529d39L

    invoke-virtual {p1}, LaJ/B;->e()I

    move-result v4

    invoke-virtual {p0}, LaJ/B;->e()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-double v4, v4

    div-double/2addr v4, v0

    mul-double/2addr v4, v2

    invoke-virtual {p0}, LaJ/B;->c()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v6, v0

    mul-double/2addr v6, v2

    invoke-virtual {p1}, LaJ/B;->c()I

    move-result v8

    int-to-double v8, v8

    div-double v0, v8, v0

    mul-double/2addr v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

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

    invoke-static {v8, v9, v0, v1}, Lar/i;->a(DD)D

    move-result-wide v0

    div-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_8

    const-wide v2, 0x4076800000000000L

    add-double/2addr v0, v2

    goto :goto_8
.end method

.method private static b()I
    .registers 4

    const/4 v2, 0x2

    const/4 v1, 0x1

    sget v0, Lcom/google/googlenav/ui/w;->c:I

    if-nez v0, :cond_13

    sget-boolean v0, Lcom/google/googlenav/ui/w;->a:Z

    if-eqz v0, :cond_1d

    move v0, v1

    :goto_b
    const-string v3, "LAST_MCC_LOCAL_UNITS"

    invoke-static {v3, v0}, Lax/be;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/w;->c:I

    :cond_13
    invoke-static {}, LaF/b;->c()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1f

    sget v2, Lcom/google/googlenav/ui/w;->c:I

    :cond_1c
    :goto_1c
    return v2

    :cond_1d
    move v0, v2

    goto :goto_b

    :cond_1f
    sparse-switch v0, :sswitch_data_30

    move v2, v1

    :sswitch_23
    sget v0, Lcom/google/googlenav/ui/w;->c:I

    if-eq v0, v2, :cond_1c

    const-string v0, "LAST_MCC_LOCAL_UNITS"

    invoke-static {v0, v2}, Lax/be;->b(Ljava/lang/String;I)V

    sput v2, Lcom/google/googlenav/ui/w;->c:I

    goto :goto_1c

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

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/googlenav/ui/w;->a(IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(IZ)Ljava/lang/String;
    .registers 15

    const-wide/16 v11, 0x1

    const-wide/16 v0, 0x0

    const v10, 0x509100

    const-wide/32 v6, 0x325aa00

    const-wide/16 v8, 0xa

    int-to-long v2, p0

    const-wide/32 v4, 0x8028

    mul-long/2addr v2, v4

    const-wide/32 v4, 0x4c9960

    cmp-long v4, v2, v4

    if-gez v4, :cond_33

    long-to-int v0, v2

    div-int/lit16 v0, v0, 0x2710

    mul-int/lit16 v1, v0, 0x2710

    int-to-long v4, v1

    sub-long v1, v2, v4

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-ltz v1, :cond_28

    add-int/lit8 v0, v0, 0x1

    :cond_28
    sget-object v1, Lcom/google/googlenav/ui/w;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_32
    return-object v0

    :cond_33
    const-wide/32 v4, 0x2fd6180

    cmp-long v4, v2, v4

    if-gez v4, :cond_5e

    sget-object v0, Lcom/google/googlenav/ui/w;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcom/google/googlenav/ui/w;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2, v3, v10}, Lcom/google/googlenav/ui/w;->a(JI)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_32

    :cond_5e
    cmp-long v4, v2, v6

    if-gtz v4, :cond_84

    sget-object v0, Lcom/google/googlenav/ui/w;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/w;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_32

    :cond_84
    div-long v4, v2, v6

    rem-long/2addr v2, v6

    cmp-long v6, v4, v8

    if-ltz v6, :cond_9f

    const-wide/32 v6, 0x192d500

    cmp-long v6, v2, v6

    if-ltz v6, :cond_9f

    add-long v2, v4, v11

    :goto_94
    if-eqz p1, :cond_ab

    const-wide/16 v4, 0xbb8

    cmp-long v4, v2, v4

    if-lez v4, :cond_ab

    sget-object v0, Lcom/google/googlenav/ui/w;->g:Ljava/lang/String;

    goto :goto_32

    :cond_9f
    invoke-static {v2, v3, v10}, Lcom/google/googlenav/ui/w;->a(JI)I

    move-result v2

    int-to-long v2, v2

    cmp-long v6, v2, v8

    if-nez v6, :cond_da

    add-long v2, v4, v11

    goto :goto_94

    :cond_ab
    cmp-long v4, v2, v8

    if-ltz v4, :cond_bb

    sget-object v0, Lcom/google/googlenav/ui/w;->f:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_32

    :cond_bb
    sget-object v4, Lcom/google/googlenav/ui/w;->f:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/w;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/googlenav/ui/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_32

    :cond_da
    move-wide v0, v2

    move-wide v2, v4

    goto :goto_94
.end method

.method private static c(II)I
    .registers 3

    shr-int/lit8 v0, p1, 0x1

    add-int/2addr v0, p0

    div-int/2addr v0, p1

    mul-int/2addr v0, p1

    return v0
.end method
