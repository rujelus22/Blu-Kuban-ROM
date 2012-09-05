.class public interface abstract Lcom/android/email/activity/MessagesAdapter$Callback;
.super Ljava/lang/Object;
.source "MessagesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessagesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract needRefreshList()V
.end method

.method public abstract onAdapterFavoriteChanged(Lcom/android/email/activity/MessageListItemContainer;Z)V
.end method

.method public abstract onAdapterFollowUpChanged(Lcom/android/email/activity/MessageListItemContainer;I)V
.end method

.method public abstract onAdapterSelectedAllChanged()V
.end method

.method public abstract onAdapterSelectedChanged(Lcom/android/email/activity/MessageListItemContainer;ZI)V
.end method

.method public abstract onReDrawList()V
.end method

.method public abstract setItemCheckboxPressed(ZLcom/android/email/activity/MessageListItemContainer;)V
.end method

.method public abstract setSubItemCheckboxPressed(ZLcom/android/email/activity/MessageListItemContainer;)V
.end method
