.class LxS;
.super Ljava/lang/Object;
.source "KixJSVM.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic a:LxR;

.field final synthetic a:[B


# direct methods
.method constructor <init>(LxR;[BLjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, LxS;->a:LxR;

    iput-object p2, p0, LxS;->a:[B

    iput-object p3, p0, LxS;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 267
    iget-object v1, p0, LxS;->a:LxR;

    iget-object v1, v1, LxR;->a:LxQ;

    #getter for: LxQ;->b:Z
    invoke-static {v1}, LxQ;->access$300(LxQ;)Z

    move-result v1

    if-nez v1, :cond_af

    .line 268
    iget-object v1, p0, LxS;->a:LxR;

    iget-boolean v1, v1, LxR;->a:Z

    if-eqz v1, :cond_1f

    iget-object v1, p0, LxS;->a:LxR;

    iget-object v1, v1, LxR;->a:LxQ;

    #getter for: LxQ;->a:LFu;
    invoke-static {v1}, LxQ;->access$400(LxQ;)LFu;

    move-result-object v1

    invoke-virtual {v1}, LFu;->a()Z

    move-result v1

    if-eqz v1, :cond_2f

    :cond_1f
    iget-object v1, p0, LxS;->a:LxR;

    iget-object v1, v1, LxR;->a:LxQ;

    #getter for: LxQ;->a:LFX;
    invoke-static {v1}, LxQ;->access$500(LxQ;)LFX;

    move-result-object v1

    const-string v2, "kixEnableJsFlags"

    invoke-interface {v1, v2, v0}, LFX;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_30

    :cond_2f
    const/4 v0, 0x1

    .line 270
    :cond_30
    iget-object v1, p0, LxS;->a:LxR;

    iget-object v1, v1, LxR;->a:LxQ;

    new-instance v2, LvF;

    iget-object v3, p0, LxS;->a:[B

    iget-object v4, p0, LxS;->a:LxR;

    iget-object v4, v4, LxR;->a:LxQ;

    if-eqz v0, :cond_ad

    iget-object v0, p0, LxS;->a:Ljava/lang/String;

    :goto_40
    invoke-direct {v2, v3, v4, v0}, LvF;-><init>([BLvn;Ljava/lang/String;)V

    #setter for: LxQ;->a:LvF;
    invoke-static {v1, v2}, LxQ;->access$602(LxQ;LvF;)LvF;

    .line 271
    const-string v0, "Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time to initialize the model "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, LxS;->a:LxR;

    iget-wide v4, v4, LxR;->a:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, LxS;->a:LxR;

    iget-object v0, v0, LxR;->a:LxQ;

    #getter for: LxQ;->a:LdE;
    invoke-static {v0}, LxQ;->access$800(LxQ;)LdE;

    move-result-object v0

    iget-object v1, p0, LxS;->a:LxR;

    iget-object v1, v1, LxR;->a:LxQ;

    #getter for: LxQ;->a:Ljava/lang/Object;
    invoke-static {v1}, LxQ;->access$700(LxQ;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "kixModelInitTime"

    invoke-virtual {v0, v1, v2}, LdE;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, LxS;->a:LxR;

    iget-object v0, v0, LxR;->a:LxQ;

    #getter for: LxQ;->a:LdE;
    invoke-static {v0}, LxQ;->access$800(LxQ;)LdE;

    move-result-object v0

    iget-object v1, p0, LxS;->a:LxR;

    iget-object v1, v1, LxR;->a:LxQ;

    #getter for: LxQ;->b:Ljava/lang/Object;
    invoke-static {v1}, LxQ;->access$900(LxQ;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, LdE;->a(Ljava/lang/Object;)V

    .line 276
    iget-object v0, p0, LxS;->a:LxR;

    iget-object v0, v0, LxR;->a:LxQ;

    iget-object v1, p0, LxS;->a:LxR;

    iget-object v1, v1, LxR;->a:Ljava/lang/String;

    iget-object v2, p0, LxS;->a:LxR;

    iget-object v2, v2, LxR;->b:Ljava/lang/String;

    iget-object v3, p0, LxS;->a:LxR;

    iget-object v3, v3, LxR;->c:Ljava/lang/String;

    iget-object v4, p0, LxS;->a:LxR;

    iget-boolean v4, v4, LxR;->b:Z

    #calls: LxQ;->reallyOpenDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2, v3, v4}, LxQ;->access$1000(LxQ;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 280
    :goto_ac
    return-void

    .line 270
    :cond_ad
    const/4 v0, 0x0

    goto :goto_40

    .line 278
    :cond_af
    const-string v0, "Model"

    const-string v1, "Ignoring JS fetching callback as JSVM already deleted."

    invoke-static {v0, v1}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ac
.end method
