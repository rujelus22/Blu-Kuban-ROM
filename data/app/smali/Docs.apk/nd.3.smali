.class Lnd;
.super Lcg;
.source "CooperateStateMachineProgressDialog.java"


# instance fields
.field final synthetic a:LnQ;

.field final synthetic a:Lnc;


# direct methods
.method constructor <init>(Lnc;Ljava/lang/String;LnQ;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lnd;->a:Lnc;

    iput-object p3, p0, Lnd;->a:LnQ;

    invoke-direct {p0, p2}, Lcg;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c()V
    .registers 5

    .prologue
    .line 85
    iget-object v0, p0, Lnd;->a:Lnc;

    invoke-static {v0}, Lnc;->a(Lnc;)Lans;

    move-result-object v0

    iget-object v1, p0, Lnd;->a:Lnc;

    invoke-virtual {v1}, Lnc;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, LcJ;->a(Lans;Landroid/content/Context;)V

    .line 89
    const/4 v0, 0x0

    .line 90
    const-string v1, "CooperateStateMachineProgressDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting machine "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnd;->a:LnQ;

    invoke-interface {v3}, LnQ;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_2e
    if-ltz v0, :cond_55

    invoke-virtual {p0}, Lnd;->a()Z

    move-result v1

    if-nez v1, :cond_55

    .line 92
    const-string v1, "CooperateStateMachineProgressDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v1, p0, Lnd;->a:LnQ;

    invoke-interface {v1, v0}, LnQ;->a(I)I

    move-result v0

    goto :goto_2e

    .line 95
    :cond_55
    const-string v0, "CooperateStateMachineProgressDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finishing machine "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnd;->a:LnQ;

    invoke-interface {v2}, LnQ;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lnd;->a:Lnc;

    invoke-static {v0}, Lnc;->a(Lnc;)V

    .line 97
    return-void
.end method
