.class public interface abstract Lcom/google/feedreader/extrpc/Client$StreamPrefsContentOrBuilder;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StreamPrefsContentOrBuilder"
.end annotation


# virtual methods
.method public abstract getStreamprefs(I)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;
.end method

.method public abstract getStreamprefsCount()I
.end method

.method public abstract getStreamprefsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;",
            ">;"
        }
    .end annotation
.end method
