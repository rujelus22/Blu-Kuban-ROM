.class final LA/g;
.super LA/e;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, LA/e;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()[I
    .registers 2

    const/16 v0, 0x40a

    new-array v0, v0, [I

    return-object v0
.end method

.method protected synthetic b()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, LA/g;->a()[I

    move-result-object v0

    return-object v0
.end method
