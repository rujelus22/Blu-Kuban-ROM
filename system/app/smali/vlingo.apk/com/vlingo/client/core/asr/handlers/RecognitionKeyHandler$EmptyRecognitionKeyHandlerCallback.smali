.class final Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler$EmptyRecognitionKeyHandlerCallback;
.super Ljava/lang/Object;
.source "RecognitionKeyHandler.java"

# interfaces
.implements Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandlerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmptyRecognitionKeyHandlerCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler$EmptyRecognitionKeyHandlerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public isRecognitionActive()Z
    .registers 2

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public onRecognitionKeyHandlerKeyEvent(Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler;III)Z
    .registers 6
    .parameter "handler"
    .parameter "event"
    .parameter "keycode"
    .parameter "time"

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method
