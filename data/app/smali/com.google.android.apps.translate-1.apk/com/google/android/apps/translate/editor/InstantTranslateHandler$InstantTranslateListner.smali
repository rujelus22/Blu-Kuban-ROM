.class public interface abstract Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;
.super Ljava/lang/Object;
.source "InstantTranslateHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/editor/InstantTranslateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InstantTranslateListner"
.end annotation


# virtual methods
.method public abstract onLongPause(Landroid/text/SpannableStringBuilder;Landroid/text/SpannableStringBuilder;)V
.end method

.method public abstract onSourceTextDone(Landroid/text/SpannableStringBuilder;)V
.end method

.method public abstract onSourceTextUpdate(Landroid/text/SpannableStringBuilder;)V
.end method

.method public abstract onTargetTextDone(Landroid/text/SpannableStringBuilder;)V
.end method

.method public abstract onTargetTextUpdate(Landroid/text/SpannableStringBuilder;)V
.end method
