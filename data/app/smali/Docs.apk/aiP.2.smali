.class LaiP;
.super Laiv;
.source "ImmutableSortedMap.java"


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
.field private final a:LaiK;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LaiK",
            "<*TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(LaiK;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LaiK",
            "<*TV;>;)V"
        }
    .end annotation

    .prologue
    .line 575
    invoke-direct {p0}, Laiv;-><init>()V

    .line 576
    iput-object p1, p0, LaiP;->a:LaiK;

    .line 577
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
    .line 585
    iget-object v0, p0, LaiP;->a:LaiK;

    invoke-virtual {v0}, LaiK;->a()Lalu;

    move-result-object v0

    return-object v0
.end method

.method a()Z
    .registers 2

    .prologue
    .line 593
    const/4 v0, 0x1

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 589
    iget-object v0, p0, LaiP;->a:LaiK;

    invoke-virtual {v0, p1}, LaiK;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 571
    invoke-virtual {p0}, LaiP;->a()Lalu;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 581
    iget-object v0, p0, LaiP;->a:LaiK;

    invoke-virtual {v0}, LaiK;->size()I

    move-result v0

    return v0
.end method
