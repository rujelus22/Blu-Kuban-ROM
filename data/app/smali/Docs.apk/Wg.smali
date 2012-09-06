.class LWg;
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
        "Ljava/lang/Integer;",
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
    .line 953
    iput-object p1, p0, LWg;->a:LWa;

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
    .line 966
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 956
    invoke-static {}, LWw;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 953
    invoke-virtual {p0}, LWg;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 976
    invoke-static {}, LWw;->a()V

    .line 977
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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 971
    invoke-static {p1}, LWw;->a(LanD;)V

    .line 972
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 961
    invoke-static {p1}, LWw;->a(LanG;)V

    .line 962
    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .registers 2
    .parameter

    .prologue
    .line 981
    invoke-static {p1}, LWw;->a(Ljava/lang/Integer;)V

    .line 982
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 953
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, LWg;->a(Ljava/lang/Integer;)V

    return-void
.end method
