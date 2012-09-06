.class public interface abstract Lcom/google/protos/aksara/lattice/LatticeP$NodeOrBuilder;
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
    name = "NodeOrBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder",
        "<",
        "Lcom/google/protos/aksara/lattice/LatticeP$Node;",
        ">;"
    }
.end annotation


# virtual methods
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

.method public abstract getEdge(I)Lcom/google/protos/aksara/lattice/LatticeP$Edge;
.end method

.method public abstract getEdgeCount()I
.end method

.method public abstract getEdgeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$Edge;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPixel()I
.end method

.method public abstract getPosterior()F
.end method

.method public abstract getState(I)Lcom/google/protos/aksara/lattice/LatticeP$State;
.end method

.method public abstract getStateCount()I
.end method

.method public abstract getStateList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/aksara/lattice/LatticeP$State;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasPixel()Z
.end method

.method public abstract hasPosterior()Z
.end method
