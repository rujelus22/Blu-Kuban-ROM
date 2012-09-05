.class final Lie$g;
.super Lie$a;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lie$a",
        "<[I>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 316
    const-class v0, [I

    invoke-direct {p0, v0}, Lie$a;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lfd;Lhc;)Ljava/lang/Object;
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 312
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    sget-object v1, Lfg;->START_ARRAY:Lfg;

    if-eq v0, v1, :cond_10

    iget-object v0, p0, Lie$g;->m:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lhc;->a(Ljava/lang/Class;)Lhg;

    move-result-object v0

    throw v0

    :cond_10
    invoke-virtual {p2}, Lhc;->e()Lmd;

    move-result-object v0

    iget-object v1, v0, Lmd;->d:Lmd$e;

    if-nez v1, :cond_1f

    new-instance v1, Lmd$e;

    invoke-direct {v1}, Lmd$e;-><init>()V

    iput-object v1, v0, Lmd;->d:Lmd$e;

    :cond_1f
    iget-object v1, v0, Lmd;->d:Lmd$e;

    invoke-virtual {v1}, Lmd$e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    move-object v2, v0

    move v0, v5

    :goto_29
    invoke-virtual {p1}, Lfd;->b()Lfg;

    move-result-object v3

    sget-object v4, Lfg;->END_ARRAY:Lfg;

    if-eq v3, v4, :cond_46

    invoke-virtual {p0, p1, p2}, Lie$g;->h(Lfd;Lhc;)I

    move-result v3

    array-length v4, v2

    if-lt v0, v4, :cond_40

    invoke-virtual {v1, v2, v0}, Lmd$e;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    move-object v2, v0

    move v0, v5

    :cond_40
    add-int/lit8 v4, v0, 0x1

    aput v3, v2, v0

    move v0, v4

    goto :goto_29

    :cond_46
    invoke-virtual {v1, v2, v0}, Lmd$e;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method
