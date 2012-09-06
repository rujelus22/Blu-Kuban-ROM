.class public interface abstract Lcom/google/android/apps/plus/views/SearchViewAdapter$OnQueryChangeListener;
.super Ljava/lang/Object;
.source "SearchViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/SearchViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnQueryChangeListener"
.end annotation


# virtual methods
.method public abstract onQueryClose()V
.end method

.method public abstract onQueryTextChanged(Ljava/lang/CharSequence;)V
.end method

.method public abstract onQueryTextSubmitted(Ljava/lang/CharSequence;)V
.end method
