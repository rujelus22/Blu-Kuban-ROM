.class Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TextUpdateHandler;
.super Landroid/os/Handler;
.source "InstantTranslateHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/editor/InstantTranslateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextUpdateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TextUpdateHandler;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;Lcom/google/android/apps/translate/editor/InstantTranslateHandler$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TextUpdateHandler;-><init>(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)V

    return-void
.end method

.method private obtainMessageForCallback(I)Landroid/os/Message;
    .registers 4
    .parameter "what"

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TextUpdateHandler;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    #getter for: Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mCallback:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;
    invoke-static {v0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->access$300(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TextUpdateHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final sendMessage(I)Z
    .registers 3
    .parameter "msgId"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TextUpdateHandler;->obtainMessageForCallback(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TextUpdateHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public final sendMessageDelayed(IJ)Z
    .registers 5
    .parameter "msgId"
    .parameter "delayMillis"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TextUpdateHandler;->obtainMessageForCallback(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TextUpdateHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method
