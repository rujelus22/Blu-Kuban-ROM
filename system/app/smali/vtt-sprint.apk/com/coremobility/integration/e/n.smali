.class public final Lcom/coremobility/integration/e/n;
.super Lcom/coremobility/integration/x;


# instance fields
.field d:Lcom/coremobility/f/g;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/coremobility/integration/x;-><init>(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/e/n;->d:Lcom/coremobility/f/g;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    const-string v0, "RadioPower"

    return-object v0
.end method

.method public final a(Lcom/coremobility/f/g;)V
    .registers 4

    iput-object p1, p0, Lcom/coremobility/integration/e/n;->d:Lcom/coremobility/f/g;

    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coremobility/integration/e/n;->a(Z)V

    :goto_12
    return-void

    :cond_13
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coremobility/integration/e/n;->a(Z)V

    goto :goto_12
.end method

.method public final a(Z)V
    .registers 7

    const/16 v4, 0x17

    const/4 v3, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/coremobility/integration/e/n;->d:Lcom/coremobility/f/g;

    if-eqz v2, :cond_1e

    if-nez p1, :cond_21

    iget v2, p0, Lcom/coremobility/integration/x;->b:I

    if-eq v2, v3, :cond_1f

    move v2, v0

    :goto_10
    if-eqz v2, :cond_21

    const-string v0, "Ready"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/integration/e/n;->d:Lcom/coremobility/f/g;

    invoke-virtual {v0, p0}, Lcom/coremobility/f/g;->d(Lcom/coremobility/integration/x;)V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    move v2, v1

    goto :goto_10

    :cond_21
    if-eqz p1, :cond_1e

    iget v2, p0, Lcom/coremobility/integration/x;->b:I

    if-eq v2, v3, :cond_36

    :goto_27
    if-nez v0, :cond_1e

    const-string v0, "Not Ready"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/integration/e/n;->d:Lcom/coremobility/f/g;

    invoke-virtual {v0, p0}, Lcom/coremobility/f/g;->c(Lcom/coremobility/integration/x;)V

    goto :goto_1e

    :cond_36
    move v0, v1

    goto :goto_27
.end method

.method public final c()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/e/n;->d:Lcom/coremobility/f/g;

    return-void
.end method

.method public final d()V
    .registers 1

    return-void
.end method
