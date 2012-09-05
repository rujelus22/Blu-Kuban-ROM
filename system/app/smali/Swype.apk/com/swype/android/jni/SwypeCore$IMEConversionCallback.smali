.class public interface abstract Lcom/swype/android/jni/SwypeCore$IMEConversionCallback;
.super Ljava/lang/Object;
.source "SwypeCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/jni/SwypeCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IMEConversionCallback"
.end annotation


# virtual methods
.method public abstract getDefaultCandidateIndex()I
.end method

.method public abstract hasMaximumSpellingSegmentReached()Z
.end method

.method public abstract onSetComposingRegion(II)Z
.end method

.method public abstract onUpdateCandidates([Ljava/lang/String;[I)V
.end method

.method public abstract onUpdateSpellingText([Ljava/lang/String;[B)Z
.end method
