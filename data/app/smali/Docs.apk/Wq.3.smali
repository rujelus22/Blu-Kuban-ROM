.class LWq;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"

# interfaces
.implements LWX;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LWX",
        "<",
        "Ljava/lang/String;",
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
    .line 798
    iput-object p1, p0, LWq;->a:LWa;

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
    .line 811
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 798
    invoke-virtual {p0}, LWq;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 801
    invoke-static {}, LWD;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 821
    invoke-static {}, LWD;->a()V

    .line 822
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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 816
    invoke-static {p1}, LWD;->a(LanD;)V

    .line 817
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 806
    invoke-static {p1}, LWD;->a(LanG;)V

    .line 807
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 798
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, LWq;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 826
    invoke-static {p1}, LWD;->a(Ljava/lang/String;)V

    .line 827
    return-void
.end method
