.class public interface abstract Lcom/google/android/apps/books/render/ReaderController;
.super Ljava/lang/Object;
.source "ReaderController.java"


# virtual methods
.method public abstract applySettings(Lcom/google/android/apps/books/render/ReaderSettings;FI)V
.end method

.method public abstract clearPendingTasks()V
.end method

.method public abstract initializeJavascript(Landroid/accounts/Account;Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;)V
.end method

.method public abstract loadPage(IILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)I
.end method

.method public abstract loadPosition(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)I
.end method

.method public abstract loadRangeBounds(Lcom/google/android/apps/books/render/TextRange;)I
.end method

.method public abstract requestPassageText(ILjava/lang/String;)I
.end method

.method public abstract setHighlight(Ljava/lang/String;)V
.end method
