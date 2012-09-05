.class LaJ/z;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:LaJ/x;


# direct methods
.method private constructor <init>(LaJ/x;)V
    .registers 2

    iput-object p1, p0, LaJ/z;->a:LaJ/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LaJ/x;LaJ/y;)V
    .registers 3

    invoke-direct {p0, p1}, LaJ/z;-><init>(LaJ/x;)V

    return-void
.end method

.method private a(LaJ/P;)LaJ/I;
    .registers 5

    new-instance v0, LaJ/I;

    invoke-direct {v0, p1}, LaJ/I;-><init>(LaJ/P;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LaJ/I;->a(Z)V

    new-instance v1, LaJ/A;

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, LaJ/A;-><init>(LaJ/z;Lap/c;LaJ/I;)V

    invoke-virtual {v1}, LaJ/A;->g()V

    return-object v0
.end method

.method private a(LaJ/I;)V
    .registers 5

    iget-object v0, p0, LaJ/z;->a:LaJ/x;

    invoke-virtual {p1}, LaJ/I;->c()LaJ/P;

    move-result-object v1

    invoke-static {v0, v1}, LaJ/x;->a(LaJ/x;LaJ/P;)LaJ/e;

    move-result-object v0

    iget-object v1, p0, LaJ/z;->a:LaJ/x;

    invoke-virtual {v0}, LaJ/e;->d()LaJ/f;

    move-result-object v0

    invoke-virtual {p1}, LaJ/I;->c()LaJ/P;

    move-result-object v2

    invoke-static {v1, v0, v2}, LaJ/x;->a(LaJ/x;LaJ/f;LaJ/P;)LaJ/I;

    move-result-object v0

    if-nez v0, :cond_1f

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LaJ/I;->a(Z)V

    :goto_1e
    return-void

    :cond_1f
    invoke-virtual {v0}, LaJ/I;->b()[B

    move-result-object v0

    invoke-virtual {p1, v0}, LaJ/I;->a([B)V

    goto :goto_1e
.end method

.method static synthetic a(LaJ/z;LaJ/I;)V
    .registers 2

    invoke-direct {p0, p1}, LaJ/z;->a(LaJ/I;)V

    return-void
.end method


# virtual methods
.method public a(LaJ/e;LaJ/P;)LaJ/I;
    .registers 4

    invoke-direct {p0, p2}, LaJ/z;->a(LaJ/P;)LaJ/I;

    move-result-object v0

    return-object v0
.end method
