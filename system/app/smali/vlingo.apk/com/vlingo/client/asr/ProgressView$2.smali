.class Lcom/vlingo/client/asr/ProgressView$2;
.super Ljava/lang/Object;
.source "ProgressView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 231
    iput-object p1, p0, Lcom/vlingo/client/asr/ProgressView$2;->this$0:Lcom/vlingo/client/asr/ProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/vlingo/client/asr/ProgressView$2;->this$0:Lcom/vlingo/client/asr/ProgressView;

    #getter for: Lcom/vlingo/client/asr/ProgressView;->m_RecoDialog:Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;
    invoke-static {v0}, Lcom/vlingo/client/asr/ProgressView;->access$100(Lcom/vlingo/client/asr/ProgressView;)Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_26

    .line 249
    :goto_d
    return-void

    .line 235
    :pswitch_e
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->processRecognition()V

    .line 236
    iget-object v0, p0, Lcom/vlingo/client/asr/ProgressView$2;->this$0:Lcom/vlingo/client/asr/ProgressView;

    #getter for: Lcom/vlingo/client/asr/ProgressView;->m_StopRecording:Landroid/widget/Button;
    invoke-static {v0}, Lcom/vlingo/client/asr/ProgressView;->access$200(Lcom/vlingo/client/asr/ProgressView;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 237
    iget-object v0, p0, Lcom/vlingo/client/asr/ProgressView$2;->this$0:Lcom/vlingo/client/asr/ProgressView;

    #getter for: Lcom/vlingo/client/asr/ProgressView;->m_RecoDialog:Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;
    invoke-static {v0}, Lcom/vlingo/client/asr/ProgressView;->access$100(Lcom/vlingo/client/asr/ProgressView;)Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->setProcessing()V

    goto :goto_d

    .line 233
    nop

    :pswitch_data_26
    .packed-switch 0x2
        :pswitch_e
    .end packed-switch
.end method
