.class public interface abstract Lcom/swype/android/jni/SwypeCore$UserDictionaryCallback;
.super Ljava/lang/Object;
.source "SwypeCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/jni/SwypeCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UserDictionaryCallback"
.end annotation


# virtual methods
.method public abstract onFoundUserWords([Ljava/lang/String;)V
.end method

.method public abstract onUserWordDeleted(Ljava/lang/String;)V
.end method

.method public abstract onUserWordsAdded([Ljava/lang/String;)V
.end method
