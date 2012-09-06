.class public interface abstract Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponseOrBuilder;
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
    name = "MobileAddressBookResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getResult(I)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;
.end method

.method public abstract getResultCount()I
.end method

.method public abstract getResultList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;",
            ">;"
        }
    .end annotation
.end method
