.class public interface abstract Lcom/vlingo/client/car/TaskController;
.super Ljava/lang/Object;
.source "TaskController.java"

# interfaces
.implements Lcom/vlingo/client/car/asr/RecoResponder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/car/TaskController$TaskType;
    }
.end annotation


# virtual methods
.method public abstract getCommandForItem(Lcom/vlingo/client/car/CarScrollableItem;)Ljava/lang/String;
.end method

.method public abstract getFieldIDForItem(Lcom/vlingo/client/car/CarScrollableItem;)Ljava/lang/String;
.end method

.method public abstract getTaskIconResourceID()I
.end method

.method public abstract getTaskName()Ljava/lang/String;
.end method

.method public abstract getType()Lcom/vlingo/client/car/TaskController$TaskType;
.end method
