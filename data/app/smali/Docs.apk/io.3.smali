.class Lio;
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
        "Ljk;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lik;


# direct methods
.method constructor <init>(Lik;)V
    .registers 2
    .parameter

    .prologue
    .line 1161
    iput-object p1, p0, Lio;->a:Lik;

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
    .line 1174
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1161
    invoke-virtual {p0}, Lio;->a()Ljk;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljk;
    .registers 2

    .prologue
    .line 1164
    invoke-static {}, LiX;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljk;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 1184
    invoke-static {}, LiX;->a()V

    .line 1185
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
            "Ljk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1179
    invoke-static {p1}, LiX;->a(LanD;)V

    .line 1180
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 1169
    invoke-static {p1}, LiX;->a(LanG;)V

    .line 1170
    return-void
.end method
