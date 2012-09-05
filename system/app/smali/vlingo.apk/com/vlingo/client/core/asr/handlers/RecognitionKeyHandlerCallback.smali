.class public interface abstract Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandlerCallback;
.super Ljava/lang/Object;
.source "RecognitionKeyHandlerCallback.java"


# static fields
.field public static final KEY_HANDLER_EVENT_ABORT_KEY:I = 0xbbd

.field public static final KEY_HANDLER_EVENT_ASR_KEY_DOWN:I = 0xbb9

.field public static final KEY_HANDLER_EVENT_ASR_KEY_UP:I = 0xbba


# virtual methods
.method public abstract isRecognitionActive()Z
.end method

.method public abstract onRecognitionKeyHandlerKeyEvent(Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler;III)Z
.end method
