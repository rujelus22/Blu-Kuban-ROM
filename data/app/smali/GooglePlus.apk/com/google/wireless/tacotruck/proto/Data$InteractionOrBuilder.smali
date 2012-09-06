.class public interface abstract Lcom/google/wireless/tacotruck/proto/Data$InteractionOrBuilder;
.super Ljava/lang/Object;
.source "Data.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InteractionOrBuilder"
.end annotation


# virtual methods
.method public abstract getDate()J
.end method

.method public abstract getDuration()J
.end method

.method public abstract getName(I)Ljava/lang/String;
.end method

.method public abstract getNameCount()I
.end method

.method public abstract getNameList()Ljava/util/List;
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

.method public abstract getNumber()Ljava/lang/String;
.end method

.method public abstract getType()Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;
.end method

.method public abstract hasDate()Z
.end method

.method public abstract hasDuration()Z
.end method

.method public abstract hasNumber()Z
.end method

.method public abstract hasType()Z
.end method
