.class public Lcom/google/googlenav/ui/z;
.super Ljava/lang/Object;


# instance fields
.field a:[B

.field b:Lah/f;

.field c:J

.field d:C

.field final synthetic e:Lcom/google/googlenav/ui/x;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/x;[BJC)V
    .registers 7

    iput-object p1, p0, Lcom/google/googlenav/ui/z;->e:Lcom/google/googlenav/ui/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/z;->b:Lah/f;

    iput-char p5, p0, Lcom/google/googlenav/ui/z;->d:C

    iput-wide p3, p0, Lcom/google/googlenav/ui/z;->c:J

    iput-object p2, p0, Lcom/google/googlenav/ui/z;->a:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/x;[BJCLcom/google/googlenav/ui/y;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/google/googlenav/ui/z;-><init>(Lcom/google/googlenav/ui/x;[BJC)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/z;)C
    .registers 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/z;->c()C

    move-result v0

    return v0
.end method

.method private b()Lah/f;
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/z;->b:Lah/f;

    if-nez v0, :cond_18

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->o()Lah/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/z;->a:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/googlenav/ui/z;->a:[B

    array-length v3, v3

    invoke-interface {v0, v1, v2, v3}, Lah/h;->a([BII)Lah/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/z;->b:Lah/f;

    :cond_18
    iget-object v0, p0, Lcom/google/googlenav/ui/z;->b:Lah/f;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/z;)Lah/f;
    .registers 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/z;->b()Lah/f;

    move-result-object v0

    return-object v0
.end method

.method private c()C
    .registers 2

    iget-char v0, p0, Lcom/google/googlenav/ui/z;->d:C

    return v0
.end method


# virtual methods
.method public a()I
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/z;->a:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/google/googlenav/ui/z;->b:Lah/f;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/googlenav/ui/z;->b:Lah/f;

    invoke-interface {v1}, Lah/f;->g()I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    return v0
.end method
