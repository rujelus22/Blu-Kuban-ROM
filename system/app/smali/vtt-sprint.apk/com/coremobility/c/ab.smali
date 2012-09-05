.class public final Lcom/coremobility/c/ab;
.super Lcom/coremobility/e/c;


# instance fields
.field final synthetic a:Lcom/coremobility/c/aa;


# direct methods
.method protected constructor <init>(Lcom/coremobility/c/aa;)V
    .registers 2

    iput-object p1, p0, Lcom/coremobility/c/ab;->a:Lcom/coremobility/c/aa;

    invoke-direct {p0}, Lcom/coremobility/e/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    invoke-virtual {p0}, Lcom/coremobility/c/ab;->h()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/coremobility/c/ab;->a:Lcom/coremobility/c/aa;

    invoke-static {v0}, Lcom/coremobility/c/aa;->b(Lcom/coremobility/c/aa;)Lcom/coremobility/e/bd;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/coremobility/c/ab;->a:Lcom/coremobility/c/aa;

    invoke-static {v0}, Lcom/coremobility/c/aa;->c(Lcom/coremobility/c/aa;)Lcom/coremobility/e/bd;

    move-result-object v0

    invoke-static {}, Lcom/coremobility/g/m;->b()J

    move-result-wide v1

    long-to-int v1, v1

    const/16 v2, 0x81

    invoke-virtual {v0, v1, v2, p1}, Lcom/coremobility/e/bd;->a(IILjava/lang/String;)V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/coremobility/c/ab;->a:Lcom/coremobility/c/aa;

    invoke-static {v1}, Lcom/coremobility/c/aa;->d(Lcom/coremobility/c/aa;)Lcom/coremobility/e/ay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coremobility/e/ay;->a()I

    move-result v1

    if-ne v0, v1, :cond_2a

    iget-object v0, p0, Lcom/coremobility/c/ab;->a:Lcom/coremobility/c/aa;

    invoke-virtual {v0}, Lcom/coremobility/c/aa;->g()V

    :cond_2a
    return-void
.end method

.method public final b()I
    .registers 2

    iget-object v0, p0, Lcom/coremobility/c/ab;->a:Lcom/coremobility/c/aa;

    invoke-static {v0}, Lcom/coremobility/c/aa;->a(Lcom/coremobility/c/aa;)I

    move-result v0

    return v0
.end method

.method public final c()S
    .registers 2

    iget-object v0, p0, Lcom/coremobility/c/ab;->a:Lcom/coremobility/c/aa;

    invoke-virtual {v0}, Lcom/coremobility/c/aa;->b()S

    move-result v0

    return v0
.end method
