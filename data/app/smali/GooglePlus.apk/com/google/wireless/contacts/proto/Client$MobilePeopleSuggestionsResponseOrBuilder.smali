.class public interface abstract Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponseOrBuilder;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MobilePeopleSuggestionsResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getSuggestion(I)Lcom/google/wireless/contacts/proto/Contact$MobileContact;
.end method

.method public abstract getSuggestionCount()I
.end method

.method public abstract getSuggestionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContact;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSuggestionType()Lcom/google/wireless/contacts/proto/Contact$SuggestionType;
.end method

.method public abstract hasSuggestionType()Z
.end method
