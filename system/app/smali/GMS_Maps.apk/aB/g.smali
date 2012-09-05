.class public LaB/g;
.super LaB/h;


# static fields
.field public static final a:LaB/g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, LaB/g;

    invoke-direct {v0}, LaB/g;-><init>()V

    sput-object v0, LaB/g;->a:LaB/g;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, LaB/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "Michelle C."

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/D;)V
    .registers 4

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/M;->b(Z)V

    invoke-super {p0, p1}, LaB/h;->a(Lcom/google/googlenav/ui/D;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/D;Z)V
    .registers 5

    invoke-super {p0, p1, p2}, LaB/h;->a(Lcom/google/googlenav/ui/D;Z)V

    invoke-virtual {p1}, Lcom/google/googlenav/ui/D;->X()V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/M;->b(Z)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x407

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x406

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method
