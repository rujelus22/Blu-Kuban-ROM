.class public LanF;
.super Ljava/lang/RuntimeException;
.source "ProvisionException.java"


# instance fields
.field protected final a:LaiE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LaiE",
            "<",
            "LaqF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "LaqF;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 47
    invoke-static {p1}, LaiE;->a(Ljava/lang/Iterable;)LaiE;

    move-result-object v0

    iput-object v0, p0, LanF;->a:LaiE;

    .line 48
    iget-object v0, p0, LanF;->a:LaiE;

    invoke-virtual {v0}, LaiE;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    :goto_12
    invoke-static {v0}, LafQ;->a(Z)V

    .line 49
    iget-object v0, p0, LanF;->a:LaiE;

    invoke-static {v0}, Laoy;->a(Ljava/util/Collection;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, LanF;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 50
    return-void

    .line 48
    :cond_1f
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 58
    new-instance v0, LaqF;

    invoke-direct {v0, p1}, LaqF;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LaiE;->a(Ljava/lang/Object;)LaiE;

    move-result-object v0

    iput-object v0, p0, LanF;->a:LaiE;

    .line 59
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "LaqF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, LanF;->a:LaiE;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 67
    const-string v0, "Guice provision errors"

    iget-object v1, p0, LanF;->a:LaiE;

    invoke-static {v0, v1}, Laoy;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
