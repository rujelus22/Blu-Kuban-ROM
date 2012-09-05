.class public Lcom/google/googlenav/an;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:[B


# direct methods
.method private constructor <init>(Ljava/lang/String;I[B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/an;->a:Ljava/lang/String;

    iput p2, p0, Lcom/google/googlenav/an;->b:I

    iput-object p3, p0, Lcom/google/googlenav/an;->c:[B

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;I[BLcom/google/googlenav/ai;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/an;-><init>(Ljava/lang/String;I[B)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/an;)I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/an;->b:I

    return v0
.end method

.method public static a(Lam/b;)Lcom/google/googlenav/an;
    .registers 5

    const/4 v3, 0x3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lam/b;->d(I)I

    move-result v2

    invoke-virtual {p0, v3}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Lcom/google/googlenav/an;

    invoke-virtual {p0, v3}, Lam/b;->c(I)[B

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlenav/an;-><init>(Ljava/lang/String;I[B)V

    :goto_1a
    return-object v0

    :cond_1b
    new-instance v0, Lcom/google/googlenav/an;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlenav/an;-><init>(Ljava/lang/String;I[B)V

    goto :goto_1a
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/an;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/an;->b:I

    return v0
.end method

.method public c()[B
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/an;->c:[B

    return-object v0
.end method
