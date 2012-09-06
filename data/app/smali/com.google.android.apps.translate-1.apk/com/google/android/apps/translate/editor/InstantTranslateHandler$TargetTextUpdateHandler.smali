.class Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;
.super Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TextUpdateHandler;
.source "InstantTranslateHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/editor/InstantTranslateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TargetTextUpdateHandler"
.end annotation


# static fields
.field private static final LONG_PAUSE_MILLIS:I = 0x5dc

.field private static final MSG_LONG_PAUSE:I = 0x2

.field private static final MSG_REMOVE_ELLIPSE:I = 0x3

.field private static final MSG_SEND_TRANSLATE_REQUEST:I = 0x1

.field private static final MSG_TRGTEXT_DONE:I = 0x0

.field private static final REMOVE_ELLIPSE_MILLIS:I = 0x1f4


# instance fields
.field private mLastSrcText:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)V
    .registers 3
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TextUpdateHandler;-><init>(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;Lcom/google/android/apps/translate/editor/InstantTranslateHandler$1;)V

    .line 155
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->mLastSrcText:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;Lcom/google/android/apps/translate/editor/InstantTranslateHandler$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;-><init>(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)V

    return-void
.end method

.method private doTranslationRequestPostProcessing()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x3

    .line 219
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    #getter for: Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mCallback:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;
    invoke-static {v0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->access$300(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->removeMessages(ILjava/lang/Object;)V

    .line 220
    const-wide/16 v0, 0x5dc

    invoke-virtual {p0, v3, v0, v1}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->sendMessageDelayed(IJ)Z

    .line 221
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    #getter for: Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mCallback:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;
    invoke-static {v0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->access$300(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->removeMessages(ILjava/lang/Object;)V

    .line 222
    invoke-virtual {p0, v2}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->sendMessage(I)Z

    .line 225
    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->sendMessageDelayed(IJ)Z

    .line 226
    return-void
.end method


# virtual methods
.method public commit()V
    .registers 2

    .prologue
    .line 228
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->sendMessage(I)Z

    .line 229
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 158
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    #getter for: Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mCallback:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;
    invoke-static {v1}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->access$300(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;

    move-result-object v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    #getter for: Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mCallback:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;
    invoke-static {v1}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->access$300(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 203
    :cond_16
    :goto_16
    return-void

    .line 161
    :cond_17
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_a4

    .line 198
    invoke-static {}, Lcom/google/android/apps/translate/Logger;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 199
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid message="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 163
    :pswitch_3d
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    #getter for: Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mTranslateComposing:Landroid/text/SpannableStringBuilder;
    invoke-static {v1}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->access$700(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 164
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    #getter for: Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->access$800(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler$1;-><init>(Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_16

    .line 171
    :pswitch_55
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    #getter for: Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mSrcTextComposing:Landroid/text/SpannableStringBuilder;
    invoke-static {v1}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->access$500(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, newSrcText:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->mLastSrcText:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_81

    .line 173
    iput-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->mLastSrcText:Ljava/lang/String;

    .line 174
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    const/4 v2, 0x1

    #calls: Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->setTranslateText(Z)V
    invoke-static {v1, v2}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->access$600(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;Z)V

    .line 175
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    #getter for: Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mSourceLanguage:Lcom/google/android/apps/translate/Language;
    invoke-static {v2}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->access$900(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)Lcom/google/android/apps/translate/Language;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    #getter for: Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mTargetLanguage:Lcom/google/android/apps/translate/Language;
    invoke-static {v3}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->access$1000(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)Lcom/google/android/apps/translate/Language;

    move-result-object v3

    #calls: Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->doTextTranslateSync(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;)V
    invoke-static {v1, v2, v3, v0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->access$1100(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;)V

    goto :goto_16

    .line 178
    :cond_81
    invoke-direct {p0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->doTranslationRequestPostProcessing()V

    goto :goto_16

    .line 182
    .end local v0           #newSrcText:Ljava/lang/String;
    :pswitch_85
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    #getter for: Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->access$800(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler$2;

    invoke-direct {v2, p0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler$2;-><init>(Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_16

    .line 191
    :pswitch_94
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    #getter for: Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->access$800(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler$3;

    invoke-direct {v2, p0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler$3;-><init>(Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_16

    .line 161
    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_55
        :pswitch_94
        :pswitch_85
    .end packed-switch
.end method

.method public handleTranslationResult(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "srcText"
    .parameter "trgText"

    .prologue
    .line 213
    new-instance v0, Landroid/text/SpannableStringBuilder;

    if-nez p2, :cond_6

    const-string p2, ""

    .end local p2
    :cond_6
    invoke-direct {v0, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 215
    .local v0, addString:Landroid/text/SpannableStringBuilder;
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    #setter for: Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mTranslateComposing:Landroid/text/SpannableStringBuilder;
    invoke-static {v1, v0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->access$702(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    .line 216
    invoke-direct {p0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->doTranslationRequestPostProcessing()V

    .line 217
    return-void
.end method

.method public init()V
    .registers 2

    .prologue
    .line 205
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->mLastSrcText:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public startSendingTranslationRequests()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 208
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    #getter for: Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mCallback:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;
    invoke-static {v1}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->access$300(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->removeMessages(ILjava/lang/Object;)V

    .line 209
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    #getter for: Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mCallback:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;
    invoke-static {v0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->access$300(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->removeMessages(ILjava/lang/Object;)V

    .line 210
    invoke-virtual {p0, v2}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->sendMessage(I)Z

    .line 211
    return-void
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 231
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    #getter for: Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mCallback:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;
    invoke-static {v1}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->access$300(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->removeMessages(ILjava/lang/Object;)V

    .line 232
    return-void
.end method
