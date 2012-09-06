.class public interface abstract Lcom/google/wireless/tacotruck/proto/Network$CountriesResponseOrBuilder;
.super Ljava/lang/Object;
.source "Network.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CountriesResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getCountry(I)Lcom/google/wireless/tacotruck/proto/Data$Country;
.end method

.method public abstract getCountryCount()I
.end method

.method public abstract getCountryList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Country;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCurrentCountry()Lcom/google/wireless/tacotruck/proto/Data$Country;
.end method

.method public abstract getKnownPhoneNumber()Lcom/google/wireless/tacotruck/proto/Data$Phone;
.end method

.method public abstract hasCurrentCountry()Z
.end method

.method public abstract hasKnownPhoneNumber()Z
.end method
