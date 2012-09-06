.class Lcom/google/android/apps/translate/editor/InstantTranslateHandler$SourceTextUpdateHandler;
.super Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TextUpdateHandler;
.source "InstantTranslateHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/editor/InstantTranslateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SourceTextUpdateHandler"
.end annotation


# static fields
.field private static final FORCE_TRANSLATION_MILLIS:I = 0x1f4

.field private static final MSG_FORCE_TRANSLATION:I = 0x2

.field private static final MSG_SRCTEXT_DONE:I = 0x1

.field private static final MSG_SRCTEXT_UPDATE:I


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)V
    .registers 3
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$SourceTextUpdateHandler;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TextUpdateHandler;-><init>(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;Lcom/google/android/apps/translate/editor/InstantTranslateHandler$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;Lcom/google/android/apps/translate/editor/InstantTranslateHandler$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$SourceTextUpdateHandler;-><init>(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)V

    return-void
.end method


# virtual methods
.method public commit()V
    .registers 2

    .prologue
    .line 141
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$SourceTextUpdateHandler;->sendMessage(I)Z

    .line 142
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$SourceTextUpdateHandler;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    #getter for: Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mCallback:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;
    invoke-static {v0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->access$300(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$SourceTextUpdateHandler;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    #getter for: Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mCallback:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;
    invoke-static {v0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->access$300(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 135
    :cond_16
    :goto_16
    return-void

    .line 112
    :cond_17
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_90

    .line 130
    invoke-static {}, Lcom/google/android/apps/translate/Logger;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :pswitch_3d
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$SourceTextUpdateHandler;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    #getter for: Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mCallback:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;
    invoke-static {v0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->access$300(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$SourceTextUpdateHandler;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    #getter for: Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mSrcTextComposing:Landroid/text/SpannableStringBuilder;
    invoke-static {v1}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->access$500(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;->onSourceTextUpdate(Landroid/text/SpannableStringBuilder;)V

    .line 115
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$SourceTextUpdateHandler;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    const/4 v1, 0x1

    #calls: Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->setTranslateText(Z)V
    invoke-static {v0, v1}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->access$600(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;Z)V

    goto :goto_16

    .line 118
    :pswitch_53
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$SourceTextUpdateHandler;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    #getter for: Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mSrcTextComposing:Landroid/text/SpannableStringBuilder;
    invoke-static {v0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->access$500(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 119
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$SourceTextUpdateHandler;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    #getter for: Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mCallback:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;
    invoke-static {v0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->access$300(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$SourceTextUpdateHandler;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    #getter for: Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mSrcTextComposing:Landroid/text/SpannableStringBuilder;
    invoke-static {v1}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->access$500(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;->onSourceTextDone(Landroid/text/SpannableStringBuilder;)V

    .line 120
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$SourceTextUpdateHandler;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    #getter for: Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mCallback:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;
    invoke-static {v1}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->access$300(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$SourceTextUpdateHandler;->removeMessages(ILjava/lang/Object;)V

    goto :goto_16

    .line 123
    :pswitch_76
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$SourceTextUpdateHandler;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    #getter for: Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mTrgHandler:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;
    invoke-static {v0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->access$100(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;

    move-result-object v0

    if-eqz v0, :cond_88

    .line 124
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$SourceTextUpdateHandler;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    #getter for: Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mTrgHandler:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;
    invoke-static {v0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->access$100(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->startSendingTranslationRequests()V

    goto :goto_16

    .line 126
    :cond_88
    const/4 v0, 0x2

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$SourceTextUpdateHandler;->sendMessageDelayed(IJ)Z

    goto :goto_16

    .line 112
    nop

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_53
        :pswitch_76
    .end packed-switch
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 144
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$SourceTextUpdateHandler;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    #getter for: Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mCallback:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;
    invoke-static {v1}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->access$300(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$SourceTextUpdateHandler;->removeMessages(ILjava/lang/Object;)V

    .line 145
    return-void
.end method

.method public updateSourceText()V
    .registers 2

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$SourceTextUpdateHandler;->sendMessage(I)Z

    .line 138
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$SourceTextUpdateHandler;->sendMessage(I)Z

    .line 139
    return-void
.end method
