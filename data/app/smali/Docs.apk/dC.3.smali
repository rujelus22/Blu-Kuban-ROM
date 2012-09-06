.class LdC;
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
        "LdE;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LdA;


# direct methods
.method constructor <init>(LdA;)V
    .registers 2
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, LdC;->a:LdA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LdE;
    .registers 2

    .prologue
    .line 102
    invoke-static {}, LdD;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdE;

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
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 99
    invoke-virtual {p0}, LdC;->a()LdE;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 122
    invoke-static {}, LdD;->a()V

    .line 123
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
            "LdE;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {p1}, LdD;->a(LanD;)V

    .line 118
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 107
    invoke-static {p1}, LdD;->a(LanG;)V

    .line 108
    return-void
.end method
