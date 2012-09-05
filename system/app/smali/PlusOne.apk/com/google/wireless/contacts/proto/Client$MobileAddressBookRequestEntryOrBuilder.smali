.class public interface abstract Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntryOrBuilder;
.super Ljava/lang/Object;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MobileAddressBookRequestEntryOrBuilder"
.end annotation


# virtual methods
.method public abstract getAddressBookKey()Ljava/lang/String;
.end method

.method public abstract getFirstName()Ljava/lang/String;
.end method

.method public abstract getId(I)Ljava/lang/String;
.end method

.method public abstract getIdCount()I
.end method

.method public abstract getIdList()Ljava/util/List;
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

.method public abstract getLastName()Ljava/lang/String;
.end method

.method public abstract hasAddressBookKey()Z
.end method

.method public abstract hasFirstName()Z
.end method

.method public abstract hasLastName()Z
.end method
