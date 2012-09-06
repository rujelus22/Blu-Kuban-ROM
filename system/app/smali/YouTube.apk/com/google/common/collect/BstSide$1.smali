.class final enum Lcom/google/common/collect/BstSide$1;
.super Lcom/google/common/collect/BstSide;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/BstSide;-><init>(Ljava/lang/String;ILcom/google/common/collect/BstSide$1;)V

    return-void
.end method


# virtual methods
.method public final other()Lcom/google/common/collect/BstSide;
    .registers 2

    .prologue
    .line 29
    sget-object v0, Lcom/google/common/collect/BstSide$1;->RIGHT:Lcom/google/common/collect/BstSide;

    return-object v0
.end method
