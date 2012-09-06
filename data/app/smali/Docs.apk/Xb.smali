.class final LXb;
.super Laqh;
.source "Bindings.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laqh",
        "<",
        "Ljava/lang/Class",
        "<+",
        "Ljava/lang/annotation/Annotation;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Laqh;-><init>()V

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
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    return-object p1
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 19
    invoke-virtual {p0}, LXb;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 19
    invoke-virtual {p0, p1}, LXb;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
