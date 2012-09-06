.class public interface abstract Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;
.super Ljava/lang/Object;
.source "PeopleSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SearchListAdapterListener"
.end annotation


# virtual methods
.method public abstract onAddPersonToCirclesAction(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V
.end method

.method public abstract onCircleSelected(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Circle;)V
.end method

.method public abstract onDismissSuggestionAction(Ljava/lang/String;)V
.end method

.method public abstract onPersonSelected(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V
.end method

.method public abstract onSearchListAdapterStateChange(Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;)V
.end method

.method public abstract onUnblockPersonAction(Ljava/lang/String;Z)V
.end method
