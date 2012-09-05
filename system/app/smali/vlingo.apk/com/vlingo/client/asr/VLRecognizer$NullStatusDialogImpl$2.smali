.class Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl$2;
.super Ljava/lang/Object;
.source "VLRecognizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl;->onRecordInfo(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl;

.field final synthetic val$lastEnergy:I


# direct methods
.method constructor <init>(Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl$2;->this$1:Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl;

    iput p2, p0, Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl$2;->val$lastEnergy:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 299
    iget-object v0, p0, Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl$2;->this$1:Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl;

    iget-object v0, v0, Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl;->this$0:Lcom/vlingo/client/asr/VLRecognizer;

    #getter for: Lcom/vlingo/client/asr/VLRecognizer;->m_listener:Lcom/vlingo/client/asr/VLRecognizerListener;
    invoke-static {v0}, Lcom/vlingo/client/asr/VLRecognizer;->access$200(Lcom/vlingo/client/asr/VLRecognizer;)Lcom/vlingo/client/asr/VLRecognizerListener;

    move-result-object v0

    iget v1, p0, Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl$2;->val$lastEnergy:I

    int-to-float v1, v1

    invoke-interface {v0, v1}, Lcom/vlingo/client/asr/VLRecognizerListener;->onRmsChanged(F)V

    .line 300
    return-void
.end method
