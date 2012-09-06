.class LWi;
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
        "Ljavax/crypto/KeyGenerator;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LWa;


# direct methods
.method constructor <init>(LWa;)V
    .registers 2
    .parameter

    .prologue
    .line 1011
    iput-object p1, p0, LWi;->a:LWa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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
    .line 1024
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1011
    invoke-virtual {p0}, LWi;->a()Ljavax/crypto/KeyGenerator;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljavax/crypto/KeyGenerator;
    .registers 2

    .prologue
    .line 1014
    invoke-static {}, LWF;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/KeyGenerator;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 1034
    invoke-static {}, LWF;->a()V

    .line 1035
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
            "Ljavax/crypto/KeyGenerator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1029
    invoke-static {p1}, LWF;->a(LanD;)V

    .line 1030
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 1019
    invoke-static {p1}, LWF;->a(LanG;)V

    .line 1020
    return-void
.end method
