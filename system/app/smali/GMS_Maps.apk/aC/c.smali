.class public LaC/c;
.super LaB/h;


# static fields
.field public static final a:LaC/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, LaC/c;

    invoke-direct {v0}, LaC/c;-><init>()V

    sput-object v0, LaC/c;->a:LaC/c;

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

    const-string v0, "Ole C."

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/D;)V
    .registers 4

    invoke-super {p0, p1}, LaB/h;->a(Lcom/google/googlenav/ui/D;)V

    invoke-virtual {p1}, Lcom/google/googlenav/ui/D;->l()LaR/i;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, LaR/i;->b(I)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x2a6

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x2a5

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .registers 2

    const/16 v0, 0x1e

    return v0
.end method
