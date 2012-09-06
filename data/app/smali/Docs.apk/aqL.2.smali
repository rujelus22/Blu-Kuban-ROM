.class LaqL;
.super Ljava/lang/Object;
.source "ProviderLookup.java"

# interfaces
.implements LanD;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LanD",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:LaqK;


# direct methods
.method constructor <init>(LaqK;)V
    .registers 2
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, LaqL;->a:LaqK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, LaqL;->a:LaqK;

    invoke-static {v0}, LaqK;->a(LaqK;)LanD;

    move-result-object v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    :goto_9
    const-string v1, "This Provider cannot be used until the Injector has been created."

    invoke-static {v0, v1}, LafQ;->b(ZLjava/lang/Object;)V

    .line 90
    iget-object v0, p0, LaqL;->a:LaqK;

    invoke-static {v0}, LaqK;->a(LaqK;)LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 88
    :cond_19
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provider<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LaqL;->a:LaqK;

    invoke-static {v1}, LaqK;->a(LaqK;)Lant;

    move-result-object v1

    invoke-virtual {v1}, Lant;->a()LanP;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
