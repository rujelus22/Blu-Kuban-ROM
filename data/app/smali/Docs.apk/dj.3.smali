.class public Ldj;
.super Lanf;
.source "AccountFlagsModule.java"


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
    const-class v0, Ldg;

    invoke-virtual {p0, v0}, Ldj;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, Ldi;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)LanV;

    move-result-object v0

    sget-object v1, LanI;->a:LanG;

    invoke-interface {v0, v1}, LanV;->a(LanG;)V

    .line 17
    return-void
.end method
