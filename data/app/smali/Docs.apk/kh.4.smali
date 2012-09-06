.class public Lkh;
.super Ldd;
.source "AppCacheCleanupThread.java"


# instance fields
.field private final a:LQN;

.field private final a:Lkm;


# direct methods
.method public constructor <init>(Lkm;LQN;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ldd;-><init>()V

    .line 21
    iput-object p1, p0, Lkh;->a:Lkm;

    .line 22
    iput-object p2, p0, Lkh;->a:LQN;

    .line 23
    return-void
.end method


# virtual methods
.method protected c()V
    .registers 3

    .prologue
    .line 27
    const-string v0, "AppCacheCleanupThread"

    const-string v1, "Starting appCache cleanup"

    invoke-static {v0, v1}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object v0, p0, Lkh;->a:Lkm;

    invoke-interface {v0}, Lkm;->a()V

    .line 29
    const-string v0, "AppCacheCleanupThread"

    const-string v1, "Running GC"

    invoke-static {v0, v1}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object v0, p0, Lkh;->a:LQN;

    invoke-interface {v0}, LQN;->a()V

    .line 31
    return-void
.end method
