.class LagW;
.super Ljava/lang/Object;
.source "LocalCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic a:LagP;

.field final synthetic a:LagV;

.field final synthetic a:LalU;

.field final synthetic a:Ljava/lang/Object;


# direct methods
.method constructor <init>(LagV;Ljava/lang/Object;ILagP;LalU;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2358
    iput-object p1, p0, LagW;->a:LagV;

    iput-object p2, p0, LagW;->a:Ljava/lang/Object;

    iput p3, p0, LagW;->a:I

    iput-object p4, p0, LagW;->a:LagP;

    iput-object p5, p0, LagW;->a:LalU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 2362
    :try_start_0
    iget-object v0, p0, LagW;->a:LagV;

    iget-object v1, p0, LagW;->a:Ljava/lang/Object;

    iget v2, p0, LagW;->a:I

    iget-object v3, p0, LagW;->a:LagP;

    iget-object v4, p0, LagW;->a:LalU;

    invoke-virtual {v0, v1, v2, v3, v4}, LagV;->a(Ljava/lang/Object;ILagP;LalU;)Ljava/lang/Object;

    move-result-object v0

    .line 2364
    iget-object v1, p0, LagW;->a:LagP;

    invoke-virtual {v1, v0}, LagP;->a(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_14

    .line 2369
    :goto_13
    return-void

    .line 2365
    :catch_14
    move-exception v0

    .line 2366
    sget-object v1, Lagu;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception thrown during refresh"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2367
    iget-object v1, p0, LagW;->a:LagP;

    invoke-virtual {v1, v0}, LagP;->a(Ljava/lang/Throwable;)Z

    goto :goto_13
.end method
