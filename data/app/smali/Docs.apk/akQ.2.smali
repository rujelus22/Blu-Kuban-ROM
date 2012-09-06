.class LakQ;
.super Laiv;
.source "RegularImmutableMap.java"


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
.field final a:LakK;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LakK",
            "<*TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(LakK;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LakK",
            "<*TV;>;)V"
        }
    .end annotation

    .prologue
    .line 257
    invoke-direct {p0}, Laiv;-><init>()V

    .line 258
    iput-object p1, p0, LakQ;->a:LakK;

    .line 259
    return-void
.end method


# virtual methods
.method public a()Lalu;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lalu",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 267
    new-instance v0, LakR;

    iget-object v1, p0, LakQ;->a:LakK;

    invoke-static {v1}, LakK;->a(LakK;)[LakN;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, p0, v1}, LakR;-><init>(LakQ;I)V

    return-object v0
.end method

.method a()Z
    .registers 2

    .prologue
    .line 279
    const/4 v0, 0x1

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 275
    iget-object v0, p0, LakQ;->a:LakK;

    invoke-virtual {v0, p1}, LakK;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 253
    invoke-virtual {p0}, LakQ;->a()Lalu;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 263
    iget-object v0, p0, LakQ;->a:LakK;

    invoke-static {v0}, LakK;->a(LakK;)[LakN;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
