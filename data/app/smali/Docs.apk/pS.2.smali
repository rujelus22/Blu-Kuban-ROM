.class public LpS;
.super Ljava/lang/Object;
.source "DocumentOpeners.java"


# direct methods
.method public static a(LpO;LpP;LkR;Landroid/os/Bundle;)LnQ;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-interface {p0, p1, p2, p3}, LpO;->a(LpP;LkR;Landroid/os/Bundle;)LalU;

    move-result-object v0

    .line 36
    :try_start_5
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LnQ;
    :try_end_b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_b} :catch_c
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_b} :catch_2b

    .line 43
    :goto_b
    return-object v0

    .line 38
    :catch_c
    move-exception v0

    .line 39
    const-string v2, "DocumentOpeners"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error opening "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, LkR;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 40
    goto :goto_b

    .line 41
    :catch_2b
    move-exception v0

    .line 42
    const-string v2, "DocumentOpeners"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error opening "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, LkR;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 43
    goto :goto_b
.end method
