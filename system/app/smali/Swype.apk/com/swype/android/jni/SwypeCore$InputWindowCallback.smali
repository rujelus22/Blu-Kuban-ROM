.class public interface abstract Lcom/swype/android/jni/SwypeCore$InputWindowCallback;
.super Ljava/lang/Object;
.source "SwypeCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/jni/SwypeCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InputWindowCallback"
.end annotation


# virtual methods
.method public abstract getChoiceWindowTextBounds(Ljava/lang/String;II)Landroid/graphics/Rect;
.end method

.method public abstract getScreenDimension()[I
.end method

.method public abstract hideNavigationBar()V
.end method

.method public abstract isShowingChoiceWindow()Z
.end method

.method public abstract isShowingHWCL()Z
.end method

.method public abstract onChoiceWindowDrawBitmap(Ljava/lang/String;II)V
.end method

.method public abstract onChoiceWindowDrawBitmapTiledX(Ljava/lang/String;III)V
.end method

.method public abstract onChoiceWindowDrawPolygon(I[S)V
.end method

.method public abstract onChoiceWindowDrawText(ZLjava/lang/String;IIIIIII)V
.end method

.method public abstract onHighlight(IIIIII)Z
.end method

.method public abstract onKBBeginDrawBuf(I)V
.end method

.method public abstract onKBDrawBackground(I)V
.end method

.method public abstract onKBDrawBegin()V
.end method

.method public abstract onKBDrawBitmap(Ljava/lang/String;Landroid/graphics/Rect;III)V
.end method

.method public abstract onKBDrawHighlight(IIIII)V
.end method

.method public abstract onKBDrawKeyboardBitmap(Ljava/lang/String;IIIZ)V
.end method

.method public abstract onKBDrawLine(IIIIII)V
.end method

.method public abstract onKBDrawText(Ljava/lang/String;IIIIIIIILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onKBDrawTrace(II[S)V
.end method

.method public abstract onKBFlushDrawingBuf(IIII)V
.end method

.method public abstract onKBInvalidate()V
.end method

.method public abstract onKBInvalidateRect(Landroid/graphics/Rect;)V
.end method

.method public abstract onKBSetClipping(IIII)V
.end method

.method public abstract onKeyFromCore(IIIIII)Z
.end method

.method public abstract onLanguageChanged()V
.end method

.method public abstract onResizeCanvas()V
.end method

.method public abstract onSetChoiceWindowBackground(I)V
.end method

.method public abstract onSetChoiceWindowPosition(Landroid/graphics/Rect;)V
.end method

.method public abstract onShowInputMethodSettingsLanguagesDialog()V
.end method

.method public abstract onShowLanguageList()V
.end method

.method public abstract onTranslateYToScreen(I)I
.end method

.method public abstract onWindowDrawFlush(I)V
.end method

.method public abstract showNavigationBar()V
.end method
