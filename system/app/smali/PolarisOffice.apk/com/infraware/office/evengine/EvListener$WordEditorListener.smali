.class public interface abstract Lcom/infraware/office/evengine/EvListener$WordEditorListener;
.super Ljava/lang/Object;
.source "EvListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/evengine/EvListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WordEditorListener"
.end annotation


# virtual methods
.method public abstract OnWordCellDeleteMode()V
.end method

.method public abstract OnWordCellInsertMode()V
.end method

.method public abstract OnWordInsertStringMode()V
.end method

.method public abstract OnWordMultiSelectCellMode()V
.end method

.method public abstract OnWordOneSelectCellMode()V
.end method
