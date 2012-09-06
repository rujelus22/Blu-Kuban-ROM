.class public LNT;
.super Lanf;
.source "PunchWebViewModule.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lanf;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 4

    .prologue
    .line 15
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, LMA;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, LNT;->a([Ljava/lang/Class;)V

    .line 17
    const-class v0, LNq;

    invoke-virtual {p0, v0}, LNT;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, LNq;

    invoke-static {v1}, LeC;->a(Ljava/lang/Class;)LanD;

    move-result-object v1

    invoke-interface {v0, v1}, LanQ;->a(LanD;)LanV;

    .line 18
    const-class v0, LNt;

    invoke-virtual {p0, v0}, LNT;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, LNq;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)LanV;

    .line 19
    const-class v0, LNn;

    invoke-virtual {p0, v0}, LNT;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, LNt;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)LanV;

    .line 20
    const-class v0, LNp;

    invoke-virtual {p0, v0}, LNT;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, LNB;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)LanV;

    .line 22
    const-class v0, LMD;

    invoke-virtual {p0, v0}, LNT;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, LNV;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)LanV;

    .line 23
    const-class v0, LNJ;

    invoke-virtual {p0, v0}, LNT;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, LNS;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)LanV;

    .line 24
    const-class v0, LNV;

    invoke-virtual {p0, v0}, LNT;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, LNV;

    invoke-static {v1}, LeC;->a(Ljava/lang/Class;)LanD;

    move-result-object v1

    invoke-interface {v0, v1}, LanQ;->a(LanD;)LanV;

    .line 26
    const-class v0, LNU;

    invoke-virtual {p0, v0}, LNT;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, LNU;

    invoke-static {v1}, LeC;->a(Ljava/lang/Class;)LanD;

    move-result-object v1

    invoke-interface {v0, v1}, LanQ;->a(LanD;)LanV;

    .line 27
    const-class v0, LNS;

    invoke-virtual {p0, v0}, LNT;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, LNS;

    invoke-static {v1}, LeC;->a(Ljava/lang/Class;)LanD;

    move-result-object v1

    invoke-interface {v0, v1}, LanQ;->a(LanD;)LanV;

    .line 29
    return-void
.end method
