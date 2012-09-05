.class Lcom/vlingo/client/asr/ProgressView$1;
.super Landroid/os/Handler;
.source "ProgressView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/asr/ProgressView;->init(Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;Lcom/vlingo/client/android/core/asr/ProgressHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/asr/ProgressView;


# direct methods
.method constructor <init>(Lcom/vlingo/client/asr/ProgressView;)V
    .registers 2
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/vlingo/client/asr/ProgressView$1;->this$0:Lcom/vlingo/client/asr/ProgressView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/vlingo/client/asr/ProgressView$1;->this$0:Lcom/vlingo/client/asr/ProgressView;

    iget v1, p1, Landroid/os/Message;->what:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/vlingo/client/asr/ProgressView;->updateDisplay(II)V
    invoke-static {v0, v1, v2}, Lcom/vlingo/client/asr/ProgressView;->access$000(Lcom/vlingo/client/asr/ProgressView;II)V

    .line 217
    return-void
.end method
