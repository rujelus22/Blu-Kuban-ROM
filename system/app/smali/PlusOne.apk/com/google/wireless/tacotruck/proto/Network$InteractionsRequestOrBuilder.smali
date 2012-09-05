.class public interface abstract Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequestOrBuilder;
.super Ljava/lang/Object;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InteractionsRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getInteraction(I)Lcom/google/wireless/tacotruck/proto/Data$Interaction;
.end method

.method public abstract getInteractionCount()I
.end method

.method public abstract getInteractionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Interaction;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNumber()Ljava/lang/String;
.end method

.method public abstract hasNumber()Z
.end method
