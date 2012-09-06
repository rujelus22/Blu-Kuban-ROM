.class public interface abstract Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpecOrBuilder;
.super Ljava/lang/Object;
.source "OndeviceSpec.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/research_handwriting/OndeviceSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WordRecognizerSpecOrBuilder"
.end annotation


# virtual methods
.method public abstract getBeamSize()I
.end method

.method public abstract getClassifierType()Ljava/lang/String;
.end method

.method public abstract getInkreader()Ljava/lang/String;
.end method

.method public abstract getLanguageModel()Ljava/lang/String;
.end method

.method public abstract getLmOrder()I
.end method

.method public abstract getModel()Ljava/lang/String;
.end method

.method public abstract getSymbols()Ljava/lang/String;
.end method

.method public abstract getWeights(I)F
.end method

.method public abstract getWeightsCount()I
.end method

.method public abstract getWeightsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasBeamSize()Z
.end method

.method public abstract hasClassifierType()Z
.end method

.method public abstract hasInkreader()Z
.end method

.method public abstract hasLanguageModel()Z
.end method

.method public abstract hasLmOrder()Z
.end method

.method public abstract hasModel()Z
.end method

.method public abstract hasSymbols()Z
.end method
