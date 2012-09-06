.class public interface abstract Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponseOrBuilder;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SuggestionsResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getRequestError()Ljava/lang/String;
.end method

.method public abstract getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
.end method

.method public abstract getSuggestion(I)Lcom/google/wireless/realtimechat/proto/Client$Suggestion;
.end method

.method public abstract getSuggestionCount()I
.end method

.method public abstract getSuggestionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$Suggestion;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasRequestError()Z
.end method

.method public abstract hasStatus()Z
.end method
