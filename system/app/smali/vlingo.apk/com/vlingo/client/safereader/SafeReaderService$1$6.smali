.class Lcom/vlingo/client/safereader/SafeReaderService$1$6;
.super Ljava/lang/Object;
.source "SafeReaderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/safereader/SafeReaderService$1;->resume(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;

.field final synthetic val$component:I


# direct methods
.method constructor <init>(Lcom/vlingo/client/safereader/SafeReaderService$1;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$6;->this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;

    iput p2, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$6;->val$component:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$6;->this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    invoke-static {v0}, Lcom/vlingo/client/safereader/SafeReaderNotificationManager;->setContext(Landroid/content/Context;)V

    .line 162
    invoke-static {}, Lcom/vlingo/client/core/audio/AudioPlayer;->getInstance()Lcom/vlingo/client/core/audio/AudioPlayer;

    move-result-object v0

    iget v1, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$6;->val$component:I

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/audio/AudioPlayer;->resume(I)V

    .line 163
    return-void
.end method
