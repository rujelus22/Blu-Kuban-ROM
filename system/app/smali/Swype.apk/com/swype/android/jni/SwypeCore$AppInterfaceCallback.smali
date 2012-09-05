.class public interface abstract Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;
.super Ljava/lang/Object;
.source "SwypeCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/jni/SwypeCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AppInterfaceCallback"
.end annotation


# virtual methods
.method public abstract getAdditionalEditorProperty(I)I
.end method

.method public abstract getApplicationId()I
.end method

.method public abstract getEditorProperty(I)Z
.end method

.method public abstract getEditorText()Ljava/lang/String;
.end method

.method public abstract getSelectedTextRegion()[I
.end method

.method public abstract isReturnKeyUsedAsEmoticon()Z
.end method

.method public abstract onActivateConversionIME(B)V
.end method

.method public abstract onBeginBatchEdit()V
.end method

.method public abstract onControlChar(C)V
.end method

.method public abstract onDetectZ1Path()V
.end method

.method public abstract onEndBatchEdit()V
.end method

.method public abstract onInputChar(CZI)Z
.end method

.method public abstract onInputString(Ljava/lang/String;)Z
.end method

.method public abstract onInputVKC(IZZZZI)V
.end method

.method public abstract performHapticFeedback()V
.end method

.method public abstract playBeep()V
.end method

.method public abstract playKeyTapSound(I)V
.end method

.method public abstract replaceText(ILjava/lang/String;)Z
.end method

.method public abstract selectTextRegion(IIZ)V
.end method

.method public abstract sendStats(Ljava/lang/String;Z)V
.end method

.method public abstract showMessage(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract showTipNotify(Ljava/lang/String;I)V
.end method

.method public abstract showUserQuery(Ljava/lang/String;Ljava/lang/String;I)V
.end method
