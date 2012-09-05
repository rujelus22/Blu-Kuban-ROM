.class public interface abstract Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialogOrBuilder;
.super Ljava/lang/Object;
.source "Data.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OutOfBoxDialogOrBuilder"
.end annotation


# virtual methods
.method public abstract getAction(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
.end method

.method public abstract getActionCount()I
.end method

.method public abstract getActionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getError()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;
.end method

.method public abstract getHeader()Ljava/lang/String;
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract hasError()Z
.end method

.method public abstract hasHeader()Z
.end method

.method public abstract hasText()Z
.end method
