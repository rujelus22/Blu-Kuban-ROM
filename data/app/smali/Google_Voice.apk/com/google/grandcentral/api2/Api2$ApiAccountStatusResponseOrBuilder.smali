.class public interface abstract Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponseOrBuilder;
.super Ljava/lang/Object;
.source "Api2.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ApiAccountStatusResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getAccountBalance()I
.end method

.method public abstract getActiveInUse()Z
.end method

.method public abstract getAlternateDid(I)Ljava/lang/String;
.end method

.method public abstract getAlternateDidBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getAlternateDidCount()I
.end method

.method public abstract getAlternateDidFormatted(I)Ljava/lang/String;
.end method

.method public abstract getAlternateDidFormattedBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getAlternateDidFormattedCount()I
.end method

.method public abstract getAlternateDidFormattedList()Ljava/util/List;
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

.method public abstract getAlternateDidList()Ljava/util/List;
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

.method public abstract getDisplayableAccountBalance()Ljava/lang/String;
.end method

.method public abstract getDisplayableAccountBalanceBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getDisplayableMaxBalance()Ljava/lang/String;
.end method

.method public abstract getDisplayableMaxBalanceBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getDisplayableValidAmount(I)Ljava/lang/String;
.end method

.method public abstract getDisplayableValidAmountBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getDisplayableValidAmountCount()I
.end method

.method public abstract getDisplayableValidAmountList()Ljava/util/List;
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

.method public abstract getLabel(I)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;
.end method

.method public abstract getLabelCount()I
.end method

.method public abstract getLabelList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaxBalance()I
.end method

.method public abstract getPaidCredit()I
.end method

.method public abstract getPrimaryDid()Ljava/lang/String;
.end method

.method public abstract getPrimaryDidBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPrimaryDidFormatted()Ljava/lang/String;
.end method

.method public abstract getPrimaryDidFormattedBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;
.end method

.method public abstract getType()I
.end method

.method public abstract getValidAmount(I)I
.end method

.method public abstract getValidAmountCount()I
.end method

.method public abstract getValidAmountList()Ljava/util/List;
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

.method public abstract hasAccountBalance()Z
.end method

.method public abstract hasActiveInUse()Z
.end method

.method public abstract hasDisplayableAccountBalance()Z
.end method

.method public abstract hasDisplayableMaxBalance()Z
.end method

.method public abstract hasMaxBalance()Z
.end method

.method public abstract hasPaidCredit()Z
.end method

.method public abstract hasPrimaryDid()Z
.end method

.method public abstract hasPrimaryDidFormatted()Z
.end method

.method public abstract hasStatus()Z
.end method

.method public abstract hasType()Z
.end method
