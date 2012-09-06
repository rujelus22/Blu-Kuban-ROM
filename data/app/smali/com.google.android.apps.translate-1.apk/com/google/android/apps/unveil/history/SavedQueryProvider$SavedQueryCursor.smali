.class public interface abstract Lcom/google/android/apps/unveil/history/SavedQueryProvider$SavedQueryCursor;
.super Ljava/lang/Object;
.source "SavedQueryProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/history/SavedQueryProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SavedQueryCursor"
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract getCount()I
.end method

.method public abstract hasNext()Z
.end method

.method public abstract moveTo(I)V
.end method

.method public abstract next()Lcom/google/android/apps/unveil/history/SavedQuery;
.end method
