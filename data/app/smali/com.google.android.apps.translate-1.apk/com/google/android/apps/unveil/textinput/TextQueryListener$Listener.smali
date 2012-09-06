.class public interface abstract Lcom/google/android/apps/unveil/textinput/TextQueryListener$Listener;
.super Ljava/lang/Object;
.source "TextQueryListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/textinput/TextQueryListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract gotResult(Ljava/lang/String;)V
.end method

.method public abstract noResults()V
.end method

.method public abstract onNetworkError(I)V
.end method

.method public abstract onResult()V
.end method
