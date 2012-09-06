.class public interface abstract Lcom/google/android/apps/googlevoice/model/ActionModel;
.super Ljava/lang/Object;
.source "ActionModel.java"


# virtual methods
.method public abstract addAction(Lcom/google/android/apps/googlevoice/core/Conversation;I)Lcom/google/android/apps/googlevoice/core/Action;
.end method

.method public abstract clear()V
.end method

.method public abstract getAction(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Action;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getActions()[Lcom/google/android/apps/googlevoice/core/Action;
.end method

.method public abstract loadFromDatabase(Ljava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/googlevoice/core/Conversation;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeAction(Lcom/google/android/apps/googlevoice/core/Conversation;I)Lcom/google/android/apps/googlevoice/core/Action;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract saveToDatabase(Lcom/google/android/apps/googlevoice/BackgroundThread;)V
.end method
