.class final LA/i;
.super LA/e;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, LA/e;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()[S
    .registers 2

    const/16 v0, 0x80a

    new-array v0, v0, [S

    return-object v0
.end method

.method protected synthetic b()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, LA/i;->a()[S

    move-result-object v0

    return-object v0
.end method
