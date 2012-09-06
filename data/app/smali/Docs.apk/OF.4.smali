.class public LOF;
.super Lanf;
.source "SearchModule.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lanf;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    .prologue
    .line 18
    const-class v0, LOC;

    invoke-virtual {p0, v0}, LOF;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, LOk;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)LanV;

    .line 19
    const-class v0, LOE;

    invoke-virtual {p0, v0}, LOF;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, LOz;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)LanV;

    .line 23
    return-void
.end method
