.class public interface abstract Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponseOrBuilder;
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
    name = "GetEditableContentResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getEditableContent()Ljava/lang/String;
.end method

.method public abstract getMention(I)Lcom/google/wireless/tacotruck/proto/Data$Mention;
.end method

.method public abstract getMentionCount()I
.end method

.method public abstract getMentionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Mention;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasEditableContent()Z
.end method
