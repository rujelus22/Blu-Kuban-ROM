.class public interface abstract Lcom/google/protos/aksara/lattice/LatticeP$StateOrBuilder;
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
    name = "StateOrBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder",
        "<",
        "Lcom/google/protos/aksara/lattice/LatticeP$State;",
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

.method public abstract getState()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasState()Z
.end method
