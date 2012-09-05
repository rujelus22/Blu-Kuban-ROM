.class public interface abstract Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestOrBuilder;
.super Ljava/lang/Object;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MobileAddressBookRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getEntry(I)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;
.end method

.method public abstract getEntryCount()I
.end method

.method public abstract getEntryList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;",
            ">;"
        }
    .end annotation
.end method
