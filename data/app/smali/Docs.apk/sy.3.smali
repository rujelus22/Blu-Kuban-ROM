.class public Lsy;
.super Ljava/lang/Object;
.source "UnmodifiableDriveAppSet.java"

# interfaces
.implements LrQ;


# instance fields
.field private final a:LrQ;


# direct methods
.method private constructor <init>(LrQ;)V
    .registers 3
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LrQ;

    iput-object v0, p0, Lsy;->a:LrQ;

    .line 22
    return-void
.end method

.method public static a(LrQ;)Lsy;
    .registers 2
    .parameter

    .prologue
    .line 25
    instance-of v0, p0, Lsy;

    if-eqz v0, :cond_7

    .line 26
    check-cast p0, Lsy;

    .line 28
    :goto_6
    return-object p0

    :cond_7
    new-instance v0, Lsy;

    invoke-direct {v0, p0}, Lsy;-><init>(LrQ;)V

    move-object p0, v0

    goto :goto_6
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "LSE;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lsy;->a:LrQ;

    invoke-interface {v0}, LrQ;->a()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/Set;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "LSE;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lsy;->a:LrQ;

    invoke-interface {v0, p1}, LrQ;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/util/Set;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "LSE;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lsy;->a:LrQ;

    invoke-interface {v0, p1}, LrQ;->b(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lsy;->a:LrQ;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
