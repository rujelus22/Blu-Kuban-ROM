.class public interface abstract Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntryOrBuilder;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UnreadCountEntryOrBuilder"
.end annotation


# virtual methods
.method public abstract getCount()I
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getLastReadItemTimestampUsec()J
.end method

.method public abstract getNewestItemTimestampUsec()J
.end method

.method public abstract hasCount()Z
.end method

.method public abstract hasId()Z
.end method

.method public abstract hasLastReadItemTimestampUsec()Z
.end method

.method public abstract hasNewestItemTimestampUsec()Z
.end method
