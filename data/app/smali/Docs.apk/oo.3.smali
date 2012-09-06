.class public Loo;
.super Lanf;
.source "DialogRegistryModule.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lanf;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    .prologue
    .line 15
    const-class v0, Loj;

    invoke-virtual {p0, v0}, Loo;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    sget-object v1, Lok;->a:Lok;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Object;)V

    .line 16
    return-void
.end method
