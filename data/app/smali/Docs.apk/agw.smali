.class final Lagw;
.super Ljava/util/AbstractQueue;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractQueue",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1010
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1033
    invoke-static {}, LaiY;->a()Lalu;

    move-result-object v0

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 1013
    const/4 v0, 0x1

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1018
    const/4 v0, 0x0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1023
    const/4 v0, 0x0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 1028
    const/4 v0, 0x0

    return v0
.end method
