.class public Lko;
.super Lanf;
.source "AppCacheManagerModule.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lanf;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    .prologue
    .line 18
    const-class v0, Lkm;

    invoke-virtual {p0, v0}, Lko;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, Lkn;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)LanV;

    move-result-object v0

    sget-object v1, LanI;->a:LanG;

    invoke-interface {v0, v1}, LanV;->a(LanG;)V

    .line 19
    const-class v0, Llu;

    invoke-virtual {p0, v0}, Lko;->a(Ljava/lang/Class;)V

    .line 20
    const-class v0, Lki;

    invoke-virtual {p0, v0}, Lko;->a(Ljava/lang/Class;)V

    .line 21
    const-class v0, LQN;

    invoke-virtual {p0, v0}, Lko;->a(Ljava/lang/Class;)V

    .line 22
    return-void
.end method
