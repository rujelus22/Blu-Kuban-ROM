.class public interface abstract Lcom/android/email/activity/MessageListFragment$Callback;
.super Ljava/lang/Object;
.source "MessageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onAdvancingOpAccepted(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onDragEnded()V
.end method

.method public abstract onDragStarted()Z
.end method

.method public abstract onMailboxNotFound(Z)V
.end method

.method public abstract onMessageOpen(JJJI)V
.end method
