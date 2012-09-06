.class LBx;
.super Ljava/lang/Thread;
.source "XmlHttpRequestRelay.java"


# instance fields
.field final synthetic a:LBw;


# direct methods
.method constructor <init>(LBw;)V
    .registers 2
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, LBx;->a:LBw;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 270
    iget-object v1, p0, LBx;->a:LBw;

    monitor-enter v1

    .line 271
    :try_start_3
    iget-object v0, p0, LBx;->a:LBw;

    invoke-static {v0}, LBw;->a(LBw;)Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 274
    iget-object v0, p0, LBx;->a:LBw;

    invoke-static {v0}, LBw;->a(LBw;)Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 276
    :cond_14
    iget-object v0, p0, LBx;->a:LBw;

    invoke-static {v0}, LBw;->a(LBw;)Ldd;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 277
    iget-object v0, p0, LBx;->a:LBw;

    invoke-static {v0}, LBw;->a(LBw;)Ldd;

    move-result-object v0

    invoke-virtual {v0}, Ldd;->interrupt()V

    .line 279
    :cond_25
    monitor-exit v1

    .line 280
    return-void

    .line 279
    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v0
.end method
