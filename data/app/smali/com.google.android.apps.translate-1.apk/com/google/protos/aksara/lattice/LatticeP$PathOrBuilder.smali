.class public interface abstract Lcom/google/protos/aksara/lattice/LatticeP$PathOrBuilder;
.super Ljava/lang/Object;
.source "LatticeP.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/aksara/lattice/LatticeP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PathOrBuilder"
.end annotation


# virtual methods
.method public abstract getCost(I)Lcom/google/protos/aksara/lattice/LatticeP$Cost;
.end method

.method public abstract getCostCount()I
.end method

.method public abstract getCostList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$Cost;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getDescriptionBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getEdgeIndex(I)I
.end method

.method public abstract getEdgeIndexCount()I
.end method

.method public abstract getEdgeIndexList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLabel(I)Ljava/lang/String;
.end method

.method public abstract getLabelBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getLabelCount()I
.end method

.method public abstract getLabelList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract getTextBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getWeightedCost()D
.end method

.method public abstract hasDescription()Z
.end method

.method public abstract hasText()Z
.end method

.method public abstract hasWeightedCost()Z
.end method
