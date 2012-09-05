.class Lcom/vlingo/client/safereader/SafeReaderService$1$13;
.super Ljava/lang/Object;
.source "SafeReaderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/safereader/SafeReaderService$1;->setLanguage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;

.field final synthetic val$lang:I


# direct methods
.method constructor <init>(Lcom/vlingo/client/safereader/SafeReaderService$1;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$13;->this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;

    iput p2, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$13;->val$lang:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 300
    const-string v0, "en-US"

    .line 301
    .local v0, language:Ljava/lang/String;
    iget v1, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$13;->val$lang:I

    packed-switch v1, :pswitch_data_32

    .line 333
    :goto_7
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->setLanguage(Ljava/lang/String;Z)V

    .line 334
    invoke-static {}, Lcom/vlingo/client/core/tts/TTSEngine;->getInstance()Lcom/vlingo/client/core/tts/TTSEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/core/tts/TTSEngine;->reloadOnboardTTS()V

    .line 335
    return-void

    .line 303
    :pswitch_13
    const-string v0, "en-GB"

    .line 304
    goto :goto_7

    .line 306
    :pswitch_16
    const-string v0, "zh-CN"

    .line 307
    goto :goto_7

    .line 309
    :pswitch_19
    const-string v0, "de-DE"

    .line 310
    goto :goto_7

    .line 312
    :pswitch_1c
    const-string v0, "es-ES"

    .line 313
    goto :goto_7

    .line 315
    :pswitch_1f
    const-string v0, "fr-FR"

    .line 316
    goto :goto_7

    .line 318
    :pswitch_22
    const-string v0, "it-IT"

    .line 319
    goto :goto_7

    .line 321
    :pswitch_25
    const-string v0, "v-es-LA"

    .line 322
    goto :goto_7

    .line 324
    :pswitch_28
    const-string v0, "ja-JP"

    .line 325
    goto :goto_7

    .line 327
    :pswitch_2b
    const-string v0, "ko-KR"

    .line 328
    goto :goto_7

    .line 330
    :pswitch_2e
    const-string v0, "ru-RU"

    goto :goto_7

    .line 301
    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_13
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
    .end packed-switch
.end method
