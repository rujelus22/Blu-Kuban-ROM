.class public abstract Lcom/google/protobuf/g;
.super Lcom/google/protobuf/b;
.source "SourceFile"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/protobuf/b;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Lcom/google/protobuf/g;
    .registers 3

    .prologue
    .line 58
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic c()Lcom/google/protobuf/b;
    .registers 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/protobuf/g;->b()Lcom/google/protobuf/g;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/protobuf/g;->b()Lcom/google/protobuf/g;

    move-result-object v0

    return-object v0
.end method
