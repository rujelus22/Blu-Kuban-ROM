.class public Labs;
.super Lanf;
.source "ActionBarModule.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lanf;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    .prologue
    .line 36
    const-class v0, LIk;

    invoke-virtual {p0, v0}, Labs;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, Labt;

    invoke-interface {v0, v1}, LanQ;->b(Ljava/lang/Class;)LanV;

    .line 37
    const-class v0, Labt;

    invoke-virtual {p0, v0}, Labs;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, LanN;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)V

    .line 38
    const-class v0, LIi;

    invoke-virtual {p0, v0}, Labs;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, LIi;

    invoke-static {v1}, LeC;->a(Ljava/lang/Class;)LanD;

    move-result-object v1

    invoke-interface {v0, v1}, LanQ;->a(LanD;)LanV;

    .line 39
    return-void
.end method
