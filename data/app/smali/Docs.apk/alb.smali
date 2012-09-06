.class Lalb;
.super Laiv;
.source "SingletonImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Laiv",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0}, Laiv;-><init>()V

    .line 108
    iput-object p1, p0, Lalb;->a:Ljava/lang/Object;

    .line 109
    return-void
.end method


# virtual methods
.method public a()Lalu;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lalu",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lalb;->a:Ljava/lang/Object;

    invoke-static {v0}, LaiY;->a(Ljava/lang/Object;)Lalu;

    move-result-object v0

    return-object v0
.end method

.method a()Z
    .registers 2

    .prologue
    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lalb;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lalb;->a()Lalu;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 121
    const/4 v0, 0x1

    return v0
.end method
