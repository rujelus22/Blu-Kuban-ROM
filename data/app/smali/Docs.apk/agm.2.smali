.class final Lagm;
.super Ljava/lang/Object;
.source "CacheBuilder.java"

# interfaces
.implements Laga;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Laga",
        "<",
        "Lagh;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lagh;
    .registers 2

    .prologue
    .line 170
    new-instance v0, Lagh;

    invoke-direct {v0}, Lagh;-><init>()V

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 167
    invoke-virtual {p0}, Lagm;->a()Lagh;

    move-result-object v0

    return-object v0
.end method
