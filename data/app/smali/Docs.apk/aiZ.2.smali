.class final LaiZ;
.super Lalu;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lalu",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Lalu;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 71
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
