.class public LVA;
.super Lanf;
.source "FileSynchronizerModule.java"


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
    .line 16
    const-class v0, LVJ;

    invoke-virtual {p0, v0}, LVA;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, LVL;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)LanV;

    .line 17
    const-class v0, LVg;

    invoke-virtual {p0, v0}, LVA;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, LVy;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)LanV;

    .line 18
    return-void
.end method
