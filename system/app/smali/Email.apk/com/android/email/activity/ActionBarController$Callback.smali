.class public interface abstract Lcom/android/email/activity/ActionBarController$Callback;
.super Ljava/lang/Object;
.source "ActionBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/ActionBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract getMailboxId()J
.end method

.method public abstract getMessageSubject()Ljava/lang/String;
.end method

.method public abstract getSearchHint()Ljava/lang/String;
.end method

.method public abstract getTitleMode()I
.end method

.method public abstract getUIAccountId()J
.end method

.method public abstract onAccountSelected(J)V
.end method

.method public abstract onMailboxSelected(JJ)V
.end method

.method public abstract onNoAccountsFound()V
.end method

.method public abstract onSearchExit()V
.end method

.method public abstract onSearchStarted()V
.end method

.method public abstract onSearchSubmit(Ljava/lang/String;)V
.end method

.method public abstract shouldShowUp()Z
.end method
