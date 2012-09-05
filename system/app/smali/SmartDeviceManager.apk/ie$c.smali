.class final Lie$c;
.super Lie$a;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lie$a",
        "<[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 233
    const-class v0, [B

    invoke-direct {p0, v0}, Lie$a;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lfd;Lhc;)Ljava/lang/Object;
    .registers 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 229
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v2

    sget-object v1, Lfg;->VALUE_STRING:Lfg;

    if-ne v2, v1, :cond_12

    invoke-static {}, Lhb;->h()Lev;

    move-result-object v1

    invoke-virtual {p1, v1}, Lfd;->a(Lev;)[B

    move-result-object v1

    :goto_11
    return-object v1

    :cond_12
    sget-object v1, Lfg;->VALUE_EMBEDDED_OBJECT:Lfg;

    if-ne v2, v1, :cond_28

    invoke-virtual {p1}, Lfd;->w()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1e

    const/4 v1, 0x0

    goto :goto_11

    :cond_1e
    instance-of v3, v1, [B

    if-eqz v3, :cond_28

    move-object v0, v1

    check-cast v0, [B

    move-object p0, v0

    move-object v1, p0

    goto :goto_11

    :cond_28
    sget-object v1, Lfg;->START_ARRAY:Lfg;

    if-eq v2, v1, :cond_33

    iget-object v1, p0, Lie$c;->m:Ljava/lang/Class;

    invoke-virtual {p2, v1}, Lhc;->a(Ljava/lang/Class;)Lhg;

    move-result-object v1

    throw v1

    :cond_33
    invoke-virtual {p2}, Lhc;->e()Lmd;

    move-result-object v1

    iget-object v2, v1, Lmd;->b:Lmd$b;

    if-nez v2, :cond_42

    new-instance v2, Lmd$b;

    invoke-direct {v2}, Lmd$b;-><init>()V

    iput-object v2, v1, Lmd;->b:Lmd$b;

    :cond_42
    iget-object v2, v1, Lmd;->b:Lmd$b;

    invoke-virtual {v2}, Lmd$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v3, v1

    move v1, v6

    :goto_4c
    invoke-virtual {p1}, Lfd;->b()Lfg;

    move-result-object v4

    sget-object v5, Lfg;->END_ARRAY:Lfg;

    if-eq v4, v5, :cond_82

    sget-object v5, Lfg;->VALUE_NUMBER_INT:Lfg;

    if-eq v4, v5, :cond_5c

    sget-object v5, Lfg;->VALUE_NUMBER_FLOAT:Lfg;

    if-ne v4, v5, :cond_71

    :cond_5c
    invoke-virtual {p1}, Lfd;->o()B

    move-result v4

    :goto_60
    array-length v5, v3

    if-lt v1, v5, :cond_6b

    invoke-virtual {v2, v3, v1}, Lmd$b;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v3, v1

    move v1, v6

    :cond_6b
    add-int/lit8 v5, v1, 0x1

    aput-byte v4, v3, v1

    move v1, v5

    goto :goto_4c

    :cond_71
    sget-object v5, Lfg;->VALUE_NULL:Lfg;

    if-eq v4, v5, :cond_80

    iget-object v1, p0, Lie$c;->m:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1}, Lhc;->a(Ljava/lang/Class;)Lhg;

    move-result-object v1

    throw v1

    :cond_80
    move v4, v6

    goto :goto_60

    :cond_82
    invoke-virtual {v2, v3, v1}, Lmd$b;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    move-object v1, p0

    goto :goto_11
.end method
