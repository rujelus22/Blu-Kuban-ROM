.class public interface abstract Lcom/google/android/apps/books/render/TextReader;
.super Ljava/lang/Object;
.source "TextReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/render/TextReader$HighlightSearch;
    }
.end annotation


# virtual methods
.method public abstract applySettings(Lcom/google/android/apps/books/render/ReaderSettings;FI)V
.end method

.method public abstract initializeJavascript(Landroid/accounts/Account;Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;)V
.end method

.method public abstract loadPage(IILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;I)V
.end method

.method public abstract loadPosition(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Integer;)V
.end method

.method public abstract loadRangeBounds(Lcom/google/android/apps/books/render/TextRange;I)V
.end method

.method public abstract requestPassageText(ILjava/lang/String;I)V
.end method

.method public abstract setHighlight(Ljava/lang/String;)V
.end method

.method public abstract setPreviewContent(Ljava/lang/String;)V
.end method
