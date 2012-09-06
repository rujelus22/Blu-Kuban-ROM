.class final Lcom/android/athome/picker/b/n;
.super Landroid/support/place/api/broker/BrokerManager$ConnectionListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/android/athome/picker/b/a;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/b/a;)V
    .registers 2
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Lcom/android/athome/picker/b/n;->a:Lcom/android/athome/picker/b/a;

    invoke-direct {p0}, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBrokerConnected(Landroid/support/place/connector/Broker;)V
    .registers 4
    .parameter

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/athome/picker/b/n;->a:Lcom/android/athome/picker/b/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/athome/picker/b/a;->a(Lcom/android/athome/picker/b/a;Landroid/support/place/music/TungstenGroupingService;)Landroid/support/place/music/TungstenGroupingService;

    .line 507
    iget-object v0, p0, Lcom/android/athome/picker/b/n;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v0, p1}, Lcom/android/athome/picker/b/a;->a(Lcom/android/athome/picker/b/a;Landroid/support/place/connector/Broker;)Landroid/support/place/connector/Broker;

    .line 508
    return-void
.end method

.method public final onBrokerDisconnected()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 512
    iget-object v0, p0, Lcom/android/athome/picker/b/n;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v0, v1}, Lcom/android/athome/picker/b/a;->a(Lcom/android/athome/picker/b/a;Landroid/support/place/music/TungstenGroupingService;)Landroid/support/place/music/TungstenGroupingService;

    .line 513
    iget-object v0, p0, Lcom/android/athome/picker/b/n;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v0, v1}, Lcom/android/athome/picker/b/a;->a(Lcom/android/athome/picker/b/a;Landroid/support/place/connector/Broker;)Landroid/support/place/connector/Broker;

    .line 514
    iget-object v0, p0, Lcom/android/athome/picker/b/n;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v0}, Lcom/android/athome/picker/b/a;->k(Lcom/android/athome/picker/b/a;)V

    .line 515
    return-void
.end method

.method public final onConnectedToRegistry(Ljava/util/List;)V
    .registers 4
    .parameter

    .prologue
    .line 525
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/ConnectorInfo;

    .line 526
    invoke-virtual {p0, v0}, Lcom/android/athome/picker/b/n;->onConnectorAdded(Landroid/support/place/connector/ConnectorInfo;)V

    goto :goto_4

    .line 528
    :cond_14
    return-void
.end method

.method public final onConnectorAdded(Landroid/support/place/connector/ConnectorInfo;)V
    .registers 5
    .parameter

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/athome/picker/b/n;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v0}, Lcom/android/athome/picker/b/a;->l(Lcom/android/athome/picker/b/a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 534
    invoke-virtual {p1}, Landroid/support/place/connector/ConnectorInfo;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/athome/picker/b/n;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v1}, Lcom/android/athome/picker/b/a;->l(Lcom/android/athome/picker/b/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 535
    const-string v0, "AtHomeMediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connector found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v0, p0, Lcom/android/athome/picker/b/n;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v0, p1}, Lcom/android/athome/picker/b/a;->b(Lcom/android/athome/picker/b/a;Landroid/support/place/connector/ConnectorInfo;)V

    .line 540
    :cond_31
    invoke-virtual {p1}, Landroid/support/place/connector/ConnectorInfo;->getType()Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/support/place/music/TungstenGroupingService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 542
    iget-object v0, p0, Lcom/android/athome/picker/b/n;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v0}, Lcom/android/athome/picker/b/a;->m(Lcom/android/athome/picker/b/a;)Landroid/support/place/music/TungstenGroupingService;

    move-result-object v0

    if-nez v0, :cond_4f

    .line 543
    iget-object v0, p0, Lcom/android/athome/picker/b/n;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v0, p1}, Lcom/android/athome/picker/b/a;->a(Lcom/android/athome/picker/b/a;Landroid/support/place/connector/ConnectorInfo;)V

    .line 550
    :cond_4e
    :goto_4e
    return-void

    .line 545
    :cond_4f
    const-string v0, "AtHomeMediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Multiple TGS instances found -  now following the new connector: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v0, p0, Lcom/android/athome/picker/b/n;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v0, p1}, Lcom/android/athome/picker/b/a;->a(Lcom/android/athome/picker/b/a;Landroid/support/place/connector/ConnectorInfo;)V

    goto :goto_4e
.end method

.method public final onConnectorRemoved(Landroid/support/place/connector/ConnectorInfo;)V
    .registers 5
    .parameter

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/athome/picker/b/n;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v0}, Lcom/android/athome/picker/b/a;->l(Lcom/android/athome/picker/b/a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 555
    const-string v0, "AtHomeMediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connector removed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v0, p0, Lcom/android/athome/picker/b/n;->a:Lcom/android/athome/picker/b/a;

    invoke-virtual {v0, p1}, Lcom/android/athome/picker/b/a;->a(Landroid/support/place/connector/ConnectorInfo;)V

    .line 562
    :cond_21
    :goto_21
    return-void

    .line 558
    :cond_22
    iget-object v0, p0, Lcom/android/athome/picker/b/n;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v0}, Lcom/android/athome/picker/b/a;->m(Lcom/android/athome/picker/b/a;)Landroid/support/place/music/TungstenGroupingService;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/place/connector/ConnectorInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 559
    iget-object v0, p0, Lcom/android/athome/picker/b/n;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v0}, Lcom/android/athome/picker/b/a;->k(Lcom/android/athome/picker/b/a;)V

    goto :goto_21
.end method

.method public final onPlaceDisconnected()V
    .registers 3

    .prologue
    .line 519
    const-string v0, "AtHomeMediaRouter"

    const-string v1, "onPlaceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v0, p0, Lcom/android/athome/picker/b/n;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v0}, Lcom/android/athome/picker/b/a;->k(Lcom/android/athome/picker/b/a;)V

    .line 521
    return-void
.end method
