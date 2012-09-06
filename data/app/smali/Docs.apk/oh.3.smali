.class public Loh;
.super Lanf;
.source "DialogModule.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lanf;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    .prologue
    .line 20
    const-class v0, LpL;

    invoke-virtual {p0, v0}, Loh;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, LpL;

    invoke-static {v1}, LeC;->a(Ljava/lang/Class;)LanD;

    move-result-object v1

    invoke-interface {v0, v1}, LanQ;->a(LanD;)LanV;

    .line 22
    const-class v0, Low;

    invoke-virtual {p0, v0}, Loh;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, Low;

    invoke-static {v1}, LeC;->a(Ljava/lang/Class;)LanD;

    move-result-object v1

    invoke-interface {v0, v1}, LanQ;->a(LanD;)LanV;

    .line 24
    const-class v0, LpF;

    invoke-virtual {p0, v0}, Loh;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, LpF;

    invoke-static {v1}, LeC;->a(Ljava/lang/Class;)LanD;

    move-result-object v1

    invoke-interface {v0, v1}, LanQ;->a(LanD;)LanV;

    .line 26
    return-void
.end method
