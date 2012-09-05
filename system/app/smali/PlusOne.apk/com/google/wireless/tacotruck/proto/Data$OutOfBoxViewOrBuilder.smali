.class public interface abstract Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxViewOrBuilder;
.super Ljava/lang/Object;
.source "Data.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OutOfBoxViewOrBuilder"
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

.method public abstract getDialog()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;
.end method

.method public abstract getField(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;
.end method

.method public abstract getFieldCount()I
.end method

.method public abstract getFieldList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHeader()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract hasDialog()Z
.end method

.method public abstract hasHeader()Z
.end method

.method public abstract hasTitle()Z
.end method
