.class public Lcom/googlex/debug/ProductionLogger;
.super Lcom/googlex/debug/SimpleLogger;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/googlex/debug/SimpleLogger;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 13

    const/4 v0, 0x7

    if-ne p2, v0, :cond_12

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/googlex/debug/ProductionLogger;->logThrowable(Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;I)V

    :goto_11
    return-void

    :cond_12
    invoke-super/range {p0 .. p5}, Lcom/googlex/debug/SimpleLogger;->log(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_11
.end method

.method public log(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public logThrowable(Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 8

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/googlex/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
