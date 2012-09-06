.class public Lkf;
.super Lanf;
.source "TabletModule.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lanf;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    .prologue
    .line 28
    const-class v0, LHG;

    invoke-virtual {p0, v0}, Lkf;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, Lkc;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)LanV;

    .line 29
    const-class v0, LeQ;

    invoke-virtual {p0, v0}, Lkf;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, Lkc;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)LanV;

    .line 30
    const-class v0, LHT;

    invoke-virtual {p0, v0}, Lkf;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, Lkc;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)LanV;

    .line 31
    const-class v0, Labq;

    invoke-virtual {p0, v0}, Lkf;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, Lkc;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)LanV;

    .line 33
    const-class v0, Lkc;

    invoke-virtual {p0, v0}, Lkf;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, Lkc;

    invoke-static {v1}, LeC;->a(Ljava/lang/Class;)LanD;

    move-result-object v1

    invoke-interface {v0, v1}, LanQ;->a(LanD;)LanV;

    .line 34
    const-class v0, Lkd;

    invoke-virtual {p0, v0}, Lkf;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, Lkd;

    invoke-static {v1}, LeC;->a(Ljava/lang/Class;)LanD;

    move-result-object v1

    invoke-interface {v0, v1}, LanQ;->a(LanD;)LanV;

    .line 35
    const-class v0, LjE;

    invoke-virtual {p0, v0}, Lkf;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, LjE;

    invoke-static {v1}, LeC;->a(Ljava/lang/Class;)LanD;

    move-result-object v1

    invoke-interface {v0, v1}, LanQ;->a(LanD;)LanV;

    .line 36
    const-class v0, LjD;

    invoke-virtual {p0, v0}, Lkf;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, LjD;

    invoke-static {v1}, LeC;->a(Ljava/lang/Class;)LanD;

    move-result-object v1

    invoke-interface {v0, v1}, LanQ;->a(LanD;)LanV;

    .line 37
    return-void
.end method
