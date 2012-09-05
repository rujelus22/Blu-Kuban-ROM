.class public LaB/e;
.super LaB/h;


# static fields
.field public static final a:LaB/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, LaB/e;

    invoke-direct {v0}, LaB/e;-><init>()V

    sput-object v0, LaB/e;->a:LaB/e;

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
    .registers 3

    invoke-super {p0, p1}, LaB/h;->a(Lcom/google/googlenav/ui/D;)V

    invoke-virtual {p1}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    invoke-virtual {v0}, LaY/Y;->m()V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/D;Z)V
    .registers 4

    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, LaB/h;->a(Lcom/google/googlenav/ui/D;Z)V

    if-nez p2, :cond_d

    invoke-virtual {p1}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    invoke-virtual {v0}, LaY/Y;->k()LaY/ae;

    :cond_d
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x261

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x260

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .registers 2

    const/16 v0, 0x15

    return v0
.end method
