.class public Lcom/google/googlenav/ui/ac;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Laq/b;Z)I
    .registers 5

    invoke-virtual {p1}, Laq/b;->e()C

    move-result v0

    const/16 v1, 0x33

    if-eq v0, v1, :cond_1a

    invoke-virtual {p1}, Laq/b;->c()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1a

    if-eqz p2, :cond_1c

    invoke-virtual {p1}, Laq/b;->c()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    invoke-virtual {p1}, Laq/b;->e()C

    move-result v0

    const/16 v1, 0x31

    if-eq v0, v1, :cond_36

    invoke-virtual {p1}, Laq/b;->c()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_36

    if-eqz p2, :cond_38

    invoke-virtual {p1}, Laq/b;->c()I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_38

    :cond_36
    const/4 v0, -0x1

    goto :goto_1b

    :cond_38
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method a(Laq/b;)V
    .registers 6

    const/16 v3, 0x10

    invoke-virtual {p1}, Laq/b;->e()C

    move-result v0

    invoke-virtual {p1}, Laq/b;->c()I

    move-result v1

    if-nez v1, :cond_23

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Laf/m;->a(ILjava/lang/String;)Z

    :cond_22
    :goto_22
    return-void

    :cond_23
    invoke-virtual {p1}, Laq/b;->c()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_22

    const-string v0, "s"

    invoke-static {v3, v0}, Laf/m;->a(ILjava/lang/String;)Z

    goto :goto_22
.end method
