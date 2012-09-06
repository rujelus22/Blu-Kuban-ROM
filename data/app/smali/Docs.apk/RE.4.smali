.class LRE;
.super Ljava/lang/Object;
.source "GDataModule.java"

# interfaces
.implements LRS;


# instance fields
.field a:LanD;
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LRU;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lmo;)LRR;
    .registers 4
    .parameter

    .prologue
    .line 36
    new-instance v1, LRT;

    iget-object v0, p0, LRE;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LRU;

    invoke-direct {v1, p1, v0}, LRT;-><init>(Lmo;LRU;)V

    return-object v1
.end method
