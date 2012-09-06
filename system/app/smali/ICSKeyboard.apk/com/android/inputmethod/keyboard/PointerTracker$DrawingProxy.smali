.class public interface abstract Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;
.super Ljava/lang/Object;
.source "PointerTracker.java"

# interfaces
.implements Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/PointerTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DrawingProxy"
.end annotation


# virtual methods
.method public abstract cancelShowKeyPreview(Lcom/android/inputmethod/keyboard/PointerTracker;)V
.end method

.method public abstract dismissKeyPreview(Lcom/android/inputmethod/keyboard/PointerTracker;)V
.end method

.method public abstract inflateKeyPreviewText()Landroid/widget/TextView;
.end method

.method public abstract invalidateKey(Lcom/android/inputmethod/keyboard/Key;)V
.end method

.method public abstract showKeyPreview(ILcom/android/inputmethod/keyboard/PointerTracker;)V
.end method
