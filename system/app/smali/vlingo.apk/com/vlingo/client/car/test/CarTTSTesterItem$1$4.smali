.class Lcom/vlingo/client/car/test/CarTTSTesterItem$1$4;
.super Ljava/lang/Object;
.source "CarTTSTesterItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/test/CarTTSTesterItem$1;->onCancel(Lcom/vlingo/client/core/tts/TTSDemand;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/car/test/CarTTSTesterItem$1;

.field final synthetic val$request:Lcom/vlingo/client/core/tts/TTSDemand;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/test/CarTTSTesterItem$1;Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem$1$4;->this$1:Lcom/vlingo/client/car/test/CarTTSTesterItem$1;

    iput-object p2, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem$1$4;->val$request:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 143
    iget-object v0, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem$1$4;->this$1:Lcom/vlingo/client/car/test/CarTTSTesterItem$1;

    iget-object v0, v0, Lcom/vlingo/client/car/test/CarTTSTesterItem$1;->this$0:Lcom/vlingo/client/car/test/CarTTSTesterItem;

    #getter for: Lcom/vlingo/client/car/test/CarTTSTesterItem;->textView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/vlingo/client/car/test/CarTTSTesterItem;->access$000(Lcom/vlingo/client/car/test/CarTTSTesterItem;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCancel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem$1$4;->val$request:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem$1$4;->this$1:Lcom/vlingo/client/car/test/CarTTSTesterItem$1;

    iget-object v2, v2, Lcom/vlingo/client/car/test/CarTTSTesterItem$1;->this$0:Lcom/vlingo/client/car/test/CarTTSTesterItem;

    #getter for: Lcom/vlingo/client/car/test/CarTTSTesterItem;->textView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/vlingo/client/car/test/CarTTSTesterItem;->access$000(Lcom/vlingo/client/car/test/CarTTSTesterItem;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    return-void
.end method
