.class Lacm;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"

# interfaces
.implements LWZ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LWZ",
        "<",
        "Lacj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lack;


# direct methods
.method constructor <init>(Lack;)V
    .registers 2
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lacm;->a:Lack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lacj;
    .registers 2

    .prologue
    .line 87
    invoke-static {}, Lacn;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacj;

    return-object v0
.end method

.method public a()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lacm;->a()Lacj;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 107
    invoke-static {}, Lacn;->a()V

    .line 108
    return-void
.end method

.method public a(LanD;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanD",
            "<",
            "Lacj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {p1}, Lacn;->a(LanD;)V

    .line 103
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 92
    invoke-static {p1}, Lacn;->a(LanG;)V

    .line 93
    return-void
.end method
