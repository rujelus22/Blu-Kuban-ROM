.class final Lagv;
.super Ljava/lang/Object;
.source "LocalCache.java"

# interfaces
.implements Lahi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lahi",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 687
    const/4 v0, 0x0

    return v0
.end method

.method public a()LagU;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LagU",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 692
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/ref/ReferenceQueue;LagU;)Lahi;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "LagU",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lahi",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 698
    return-object p0
.end method

.method public a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 713
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 717
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 703
    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 708
    const/4 v0, 0x0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 682
    const/4 v0, 0x0

    return-object v0
.end method
