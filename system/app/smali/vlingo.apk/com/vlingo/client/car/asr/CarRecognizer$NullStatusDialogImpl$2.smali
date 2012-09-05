.class Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl$2;
.super Ljava/lang/Object;
.source "CarRecognizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl;->onRecordInfo(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl;

.field final synthetic val$lastEnergy:I


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl$2;->this$1:Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl;

    iput p2, p0, Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl$2;->val$lastEnergy:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 320
    iget-object v0, p0, Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl$2;->this$1:Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl;

    iget-object v0, v0, Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl;->this$0:Lcom/vlingo/client/car/asr/CarRecognizer;

    #getter for: Lcom/vlingo/client/car/asr/CarRecognizer;->m_listener:Lcom/vlingo/client/car/asr/CarRecognizerListener;
    invoke-static {v0}, Lcom/vlingo/client/car/asr/CarRecognizer;->access$200(Lcom/vlingo/client/car/asr/CarRecognizer;)Lcom/vlingo/client/car/asr/CarRecognizerListener;

    move-result-object v0

    iget v1, p0, Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl$2;->val$lastEnergy:I

    int-to-float v1, v1

    invoke-interface {v0, v1}, Lcom/vlingo/client/car/asr/CarRecognizerListener;->onRmsChanged(F)V

    .line 321
    return-void
.end method
