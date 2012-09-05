.class public interface abstract Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchListAdapterListener;
.super Ljava/lang/Object;
.source "PeopleSearchListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;
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

.method public abstract onPersonSelected(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V
.end method

.method public abstract onSearchListAdapterStateChange(Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;)V
.end method
