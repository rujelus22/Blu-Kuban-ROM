.class final Lcom/vlingo/client/core/tts/TTSEngine$TTSTimeoutTask;
.super Ljava/util/TimerTask;
.source "TTSEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/tts/TTSEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TTSTimeoutTask"
.end annotation


# instance fields
.field private final item:Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;)V
    .registers 2
    .parameter "item"

    .prologue
    .line 797
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 798
    iput-object p1, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSTimeoutTask;->item:Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;

    .line 799
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 802
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSTimeoutTask;->item:Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;

    const/4 v1, 0x0

    #calls: Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->cancel(Z)Z
    invoke-static {v0, v1}, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->access$300(Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;Z)Z

    .line 803
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstanceShared()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v0

    const-string v1, "safereader-readback-timeout"

    invoke-virtual {v0, v1}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->helpPageViewed(Ljava/lang/String;)V

    .line 804
    return-void
.end method
