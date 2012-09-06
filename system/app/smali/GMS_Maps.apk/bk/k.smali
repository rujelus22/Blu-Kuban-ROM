.class public abstract Lbk/k;
.super Lbk/b;
.source "SourceFile"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Lbk/b;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lbk/k;->d()Lbk/k;

    move-result-object v0

    return-object v0
.end method

.method public d()Lbk/k;
    .registers 3

    .prologue
    .line 69
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic e()Lbk/b;
    .registers 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lbk/k;->d()Lbk/k;

    move-result-object v0

    return-object v0
.end method
