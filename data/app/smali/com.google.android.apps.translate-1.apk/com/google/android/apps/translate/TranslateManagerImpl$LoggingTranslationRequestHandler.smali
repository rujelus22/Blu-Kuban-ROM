.class Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandler;
.super Landroid/os/Handler;
.source "TranslateManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/TranslateManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoggingTranslationRequestHandler"
.end annotation


# static fields
.field private static final MSG_SEND_TRANSLATE_REQUEST:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/TranslateManagerImpl;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/translate/TranslateManagerImpl;)V
    .registers 2
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandler;->this$0:Lcom/google/android/apps/translate/TranslateManagerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/translate/TranslateManagerImpl;Lcom/google/android/apps/translate/TranslateManagerImpl$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandler;-><init>(Lcom/google/android/apps/translate/TranslateManagerImpl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    .line 191
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_5e

    .line 206
    invoke-static {}, Lcom/google/android/apps/translate/Logger;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 207
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid message="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 193
    :pswitch_26
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;

    .line 195
    .local v0, obj:Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;
    const-string v2, "TranslateManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending a translation request for logging. text="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #getter for: Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;->mInputText:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;->access$600(Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v2, p0, Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandler;->this$0:Lcom/google/android/apps/translate/TranslateManagerImpl;

    #getter for: Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;->mExtraParams:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;->access$700(Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;)Ljava/lang/String;

    move-result-object v3

    #getter for: Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;->mFromLangShortName:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;->access$800(Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;)Ljava/lang/String;

    move-result-object v4

    #getter for: Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;->mToLangShortName:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;->access$900(Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;)Ljava/lang/String;

    move-result-object v5

    #getter for: Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;->mInputText:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;->access$600(Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;)Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/google/android/apps/translate/TranslateManagerImpl;->doTranslateFromServiceSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3, v4, v5, v6}, Lcom/google/android/apps/translate/TranslateManagerImpl;->access$1000(Lcom/google/android/apps/translate/TranslateManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    .end local v0           #obj:Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;
    :cond_5c
    return-void

    .line 191
    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_26
    .end packed-switch
.end method

.method public sendTranslationRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "extraParams"
    .parameter "fromLangShortName"
    .parameter "toLangShortName"
    .parameter "inputText"

    .prologue
    const/4 v3, 0x0

    .line 214
    new-instance v0, Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;

    iget-object v1, p0, Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandler;->this$0:Lcom/google/android/apps/translate/TranslateManagerImpl;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;-><init>(Lcom/google/android/apps/translate/TranslateManagerImpl;Lcom/google/android/apps/translate/TranslateManagerImpl$1;)V

    .line 216
    .local v0, obj:Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;
    #setter for: Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;->mExtraParams:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;->access$702(Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    #setter for: Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;->mFromLangShortName:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;->access$802(Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;Ljava/lang/String;)Ljava/lang/String;

    .line 218
    #setter for: Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;->mToLangShortName:Ljava/lang/String;
    invoke-static {v0, p3}, Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;->access$902(Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;Ljava/lang/String;)Ljava/lang/String;

    .line 219
    #setter for: Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;->mInputText:Ljava/lang/String;
    invoke-static {v0, p4}, Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;->access$602(Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v3, v3, v0}, Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandler;->sendMessage(Landroid/os/Message;)Z

    .line 221
    return-void
.end method
