.class Lcom/vlingo/client/car/tts/CarTTSCachedRequests$3$1;
.super Ljava/lang/Object;
.source "CarTTSCachedRequests.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/tts/CarTTSCachedRequests$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/car/tts/CarTTSCachedRequests$3;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/tts/CarTTSCachedRequests$3;)V
    .registers 2
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$3$1;->this$1:Lcom/vlingo/client/car/tts/CarTTSCachedRequests$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 314
    iget-object v0, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$3$1;->this$1:Lcom/vlingo/client/car/tts/CarTTSCachedRequests$3;

    iget-object v0, v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$3;->val$lang:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->setLanguage(Ljava/lang/String;Z)V

    .line 315
    return-void
.end method
