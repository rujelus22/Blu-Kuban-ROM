.class Lcom/vlingo/client/safereader/SafeReaderService$1$11;
.super Ljava/lang/Object;
.source "SafeReaderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/safereader/SafeReaderService$1;->setFeature(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;

.field final synthetic val$feature:I

.field final synthetic val$onOff:Z


# direct methods
.method constructor <init>(Lcom/vlingo/client/safereader/SafeReaderService$1;IZ)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$11;->this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;

    iput p2, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$11;->val$feature:I

    iput-boolean p3, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$11;->val$onOff:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 243
    iget v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$11;->val$feature:I

    packed-switch v0, :pswitch_data_56

    .line 279
    :goto_5
    :pswitch_5
    return-void

    .line 245
    :pswitch_6
    iget-boolean v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$11;->val$onOff:Z

    invoke-static {v0}, Lcom/vlingo/client/settings/Settings;->setSMSReadbackEnabled(Z)V

    goto :goto_5

    .line 248
    :pswitch_c
    iget-boolean v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$11;->val$onOff:Z

    invoke-static {v0}, Lcom/vlingo/client/settings/Settings;->setEMailReadbackEnabled(Z)V

    .line 249
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$11;->this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService;->messageReadbackListener:Lcom/vlingo/client/safereader/MessageReadbackListener;

    iget-boolean v1, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$11;->val$onOff:Z

    invoke-virtual {v0, v1}, Lcom/vlingo/client/safereader/MessageReadbackListener;->enableEmail(Z)V

    goto :goto_5

    .line 252
    :pswitch_1d
    iget-boolean v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$11;->val$onOff:Z

    invoke-static {v0}, Lcom/vlingo/client/settings/Settings;->setTTSEnabled(Z)V

    goto :goto_5

    .line 255
    :pswitch_23
    iget-boolean v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$11;->val$onOff:Z

    invoke-static {v0}, Lcom/vlingo/client/settings/Settings;->setTTSCarModeConfirmationEnabled(Z)V

    goto :goto_5

    .line 258
    :pswitch_29
    iget-boolean v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$11;->val$onOff:Z

    invoke-static {v0}, Lcom/vlingo/client/settings/Settings;->setTTSCarModePromptEnabled(Z)V

    goto :goto_5

    .line 261
    :pswitch_2f
    iget-boolean v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$11;->val$onOff:Z

    invoke-static {v0}, Lcom/vlingo/client/settings/Settings;->setShakeToSkip(Z)V

    goto :goto_5

    .line 264
    :pswitch_35
    iget-boolean v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$11;->val$onOff:Z

    invoke-static {v0}, Lcom/vlingo/client/settings/Settings;->setReadMessage(Z)V

    goto :goto_5

    .line 267
    :pswitch_3b
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$11;->this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService;->messageReadbackListener:Lcom/vlingo/client/safereader/MessageReadbackListener;

    invoke-virtual {v0}, Lcom/vlingo/client/safereader/MessageReadbackListener;->onSettingsUpdated()V

    goto :goto_5

    .line 270
    :pswitch_45
    invoke-static {}, Lcom/vlingo/client/core/tts/TTSEngine;->updateTTS_URL()V

    goto :goto_5

    .line 273
    :pswitch_49
    iget-boolean v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$11;->val$onOff:Z

    invoke-static {v0}, Lcom/vlingo/client/settings/Settings;->setInCarMode(Z)V

    goto :goto_5

    .line 276
    :pswitch_4f
    iget-boolean v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$11;->val$onOff:Z

    invoke-static {v0}, Lcom/vlingo/client/settings/Settings;->setUseNetworkTTS(Z)V

    goto :goto_5

    .line 243
    nop

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_6
        :pswitch_c
        :pswitch_1d
        :pswitch_2f
        :pswitch_3b
        :pswitch_45
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_23
        :pswitch_29
        :pswitch_49
        :pswitch_4f
        :pswitch_35
    .end packed-switch
.end method
