.class public Lmr;
.super Lanf;
.source "OperationsModule.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lanf;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    .prologue
    .line 71
    const-class v0, Lmj;

    invoke-virtual {p0, v0}, Lmr;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, Lms;

    invoke-interface {v0, v1}, LanQ;->b(Ljava/lang/Class;)LanV;

    .line 72
    const-class v0, Lms;

    invoke-virtual {p0, v0}, Lmr;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, LanN;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)V

    .line 73
    const-class v0, Lmi;

    invoke-virtual {p0, v0}, Lmr;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, Lmj;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)LanV;

    .line 74
    const-class v0, LTL;

    invoke-virtual {p0, v0}, Lmr;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, Lmj;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)LanV;

    .line 75
    const-class v0, LOh;

    invoke-virtual {p0, v0}, Lmr;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, Lmn;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)LanV;

    .line 76
    return-void
.end method
