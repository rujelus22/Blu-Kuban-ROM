.class final enum Lcom/google/common/collect/MapMaker$RemovalCause$5;
.super Lcom/google/common/collect/MapMaker$RemovalCause;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 823
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/MapMaker$RemovalCause;-><init>(Ljava/lang/String;ILcom/google/common/collect/fq;)V

    return-void
.end method


# virtual methods
.method final wasEvicted()Z
    .registers 2

    .prologue
    .line 826
    const/4 v0, 0x1

    return v0
.end method
