.class public interface abstract Lcom/google/wireless/contacts/proto/Client$PersonResponseOrBuilder;
.super Ljava/lang/Object;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PersonResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getPerson(I)Lcom/google/wireless/contacts/proto/Contact$MobileContact;
.end method

.method public abstract getPersonCount()I
.end method

.method public abstract getPersonList()Ljava/util/List;
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
