.class Lcom/vlingo/client/safereader/SafeReaderService$1$9;
.super Ljava/lang/Object;
.source "SafeReaderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/safereader/SafeReaderService$1;->reloadOnboardTTS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;


# direct methods
.method constructor <init>(Lcom/vlingo/client/safereader/SafeReaderService$1;)V
    .registers 2
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$9;->this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 221
    invoke-static {}, Lcom/vlingo/client/core/tts/TTSEngine;->getInstance()Lcom/vlingo/client/core/tts/TTSEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/core/tts/TTSEngine;->reloadOnboardTTS()V

    .line 222
    return-void
.end method
