.class Lcom/vlingo/client/car/util/TextMessageAdapter$1;
.super Ljava/lang/Object;
.source "TextMessageAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/util/TextMessageAdapter;->populateAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/util/TextMessageAdapter;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/util/TextMessageAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/vlingo/client/car/util/TextMessageAdapter$1;->this$0:Lcom/vlingo/client/car/util/TextMessageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 59
    :try_start_0
    iget-object v2, p0, Lcom/vlingo/client/car/util/TextMessageAdapter$1;->this$0:Lcom/vlingo/client/car/util/TextMessageAdapter;

    invoke-virtual {v2}, Lcom/vlingo/client/car/util/TextMessageAdapter;->fetchMessages()Ljava/util/Vector;

    move-result-object v1

    .line 60
    .local v1, messages:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/util/SMSUtil$TextMessage;>;"
    new-instance v2, Lcom/vlingo/client/car/util/TextMessageAdapter$1$1;

    invoke-direct {v2, p0, v1}, Lcom/vlingo/client/car/util/TextMessageAdapter$1$1;-><init>(Lcom/vlingo/client/car/util/TextMessageAdapter$1;Ljava/util/Vector;)V

    invoke-static {v2}, Lcom/vlingo/client/util/ActivityUtil;->scheduleOnMainThread(Ljava/lang/Runnable;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 69
    .end local v1           #messages:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/util/SMSUtil$TextMessage;>;"
    :goto_e
    return-void

    .line 66
    :catch_f
    move-exception v0

    .line 67
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method
