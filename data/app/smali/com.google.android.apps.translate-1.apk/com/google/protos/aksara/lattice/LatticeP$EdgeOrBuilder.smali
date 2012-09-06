.class public interface abstract Lcom/google/protos/aksara/lattice/LatticeP$EdgeOrBuilder;
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
    name = "EdgeOrBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder",
        "<",
        "Lcom/google/protos/aksara/lattice/LatticeP$Edge;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getBounds()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;
.end method

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

.method public abstract getDescription(I)Ljava/lang/String;
.end method

.method public abstract getDescriptionBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getDescriptionCount()I
.end method

.method public abstract getDescriptionList()Ljava/util/List;
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

.method public abstract getLabel()Ljava/lang/String;
.end method

.method public abstract getLabelBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTarget()I
.end method

.method public abstract hasBounds()Z
.end method

.method public abstract hasLabel()Z
.end method

.method public abstract hasTarget()Z
.end method
