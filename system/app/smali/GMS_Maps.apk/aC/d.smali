.class public LaC/d;
.super LaB/h;


# static fields
.field public static final a:LaC/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, LaC/d;

    invoke-direct {v0}, LaC/d;-><init>()V

    sput-object v0, LaC/d;->a:LaC/d;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, LaB/h;-><init>()V

    return-void
.end method

.method private b(Lcom/google/googlenav/ui/D;Z)V
    .registers 5

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->y()Z

    move-result v0

    sget-object v1, LaC/d;->a:LaC/d;

    invoke-virtual {v1}, LaC/d;->e()Z

    move-result v1

    if-eq v0, v1, :cond_20

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    sget-object v1, LaC/d;->a:LaC/d;

    invoke-virtual {v1}, LaC/d;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/M;->a(Z)V

    invoke-virtual {p1, p2}, Lcom/google/googlenav/ui/D;->q(Z)V

    :cond_20
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "Andrew M., Danny E."

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/D;)V
    .registers 3

    invoke-super {p0, p1}, LaB/h;->a(Lcom/google/googlenav/ui/D;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LaC/d;->b(Lcom/google/googlenav/ui/D;Z)V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/D;Z)V
    .registers 3

    invoke-super {p0, p1, p2}, LaB/h;->a(Lcom/google/googlenav/ui/D;Z)V

    invoke-direct {p0, p1, p2}, LaC/d;->b(Lcom/google/googlenav/ui/D;Z)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x4f4

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x4f3

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .registers 2

    const/16 v0, 0x1c

    return v0
.end method
