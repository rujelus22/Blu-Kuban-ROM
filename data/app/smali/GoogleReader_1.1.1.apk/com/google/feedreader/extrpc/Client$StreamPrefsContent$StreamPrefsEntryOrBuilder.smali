.class public interface abstract Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntryOrBuilder;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StreamPrefsEntryOrBuilder"
.end annotation


# virtual methods
.method public abstract getPrefs(I)Lcom/google/feedreader/extrpc/Client$PrefPair;
.end method

.method public abstract getPrefsCount()I
.end method

.method public abstract getPrefsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$PrefPair;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStreamid()Ljava/lang/String;
.end method

.method public abstract hasStreamid()Z
.end method
