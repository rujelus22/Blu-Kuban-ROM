.class public interface abstract Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequestOrBuilder;
.super Ljava/lang/Object;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OutOfBoxRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getAction()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
.end method

.method public abstract getContinueUrl()Ljava/lang/String;
.end method

.method public abstract getInput(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;
.end method

.method public abstract getInputCount()I
.end method

.method public abstract getInputList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIntegrated()Z
.end method

.method public abstract getUpgradeType()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;
.end method

.method public abstract hasAction()Z
.end method

.method public abstract hasContinueUrl()Z
.end method

.method public abstract hasIntegrated()Z
.end method

.method public abstract hasUpgradeType()Z
.end method
