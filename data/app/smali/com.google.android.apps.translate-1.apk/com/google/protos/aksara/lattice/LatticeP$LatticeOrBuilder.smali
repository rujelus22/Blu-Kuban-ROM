.class public interface abstract Lcom/google/protos/aksara/lattice/LatticeP$LatticeOrBuilder;
.super Ljava/lang/Object;
.source "LatticeP.java"

# interfaces
.implements Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/aksara/lattice/LatticeP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LatticeOrBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder",
        "<",
        "Lcom/google/protos/aksara/lattice/LatticeP$Lattice;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getCostType(I)Lcom/google/protos/aksara/lattice/LatticeP$CostType;
.end method

.method public abstract getCostTypeCount()I
.end method

.method public abstract getCostTypeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$CostType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaxEdgeFactor()D
.end method

.method public abstract getNode(I)Lcom/google/protos/aksara/lattice/LatticeP$Node;
.end method

.method public abstract getNodeCount()I
.end method

.method public abstract getNodeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$Node;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPath(I)Lcom/google/protos/aksara/lattice/LatticeP$Path;
.end method

.method public abstract getPathCount()I
.end method

.method public abstract getPathList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$Path;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStateType(I)Lcom/google/protos/aksara/lattice/LatticeP$StateType;
.end method

.method public abstract getStateTypeCount()I
.end method

.method public abstract getStateTypeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$StateType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasMaxEdgeFactor()Z
.end method
