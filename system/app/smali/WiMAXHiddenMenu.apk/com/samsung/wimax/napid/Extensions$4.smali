.class Lcom/samsung/wimax/napid/Extensions$4;
.super Ljava/lang/Object;
.source "Extensions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/napid/Extensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/napid/Extensions;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/napid/Extensions;)V
    .registers 2
    .parameter

    .prologue
    .line 779
    iput-object p1, p0, Lcom/samsung/wimax/napid/Extensions$4;->this$0:Lcom/samsung/wimax/napid/Extensions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11
    .parameter "arg0"

    .prologue
    const/16 v8, 0x708

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x5

    .line 782
    iget-object v2, p0, Lcom/samsung/wimax/napid/Extensions$4;->this$0:Lcom/samsung/wimax/napid/Extensions;

    iget-object v2, v2, Lcom/samsung/wimax/napid/Extensions;->dlgText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_27

    .line 784
    iget-object v2, p0, Lcom/samsung/wimax/napid/Extensions$4;->this$0:Lcom/samsung/wimax/napid/Extensions;

    const-string v3, "Value should not be Empty!!"

    iput-object v3, v2, Lcom/samsung/wimax/napid/Extensions;->WRNG_MSG:Ljava/lang/String;

    .line 785
    iget-object v2, p0, Lcom/samsung/wimax/napid/Extensions$4;->this$0:Lcom/samsung/wimax/napid/Extensions;

    invoke-virtual {v2, v5}, Lcom/samsung/wimax/napid/Extensions;->showDialog(I)V

    .line 869
    :goto_26
    return-void

    .line 788
    :cond_27
    iget-object v2, p0, Lcom/samsung/wimax/napid/Extensions$4;->this$0:Lcom/samsung/wimax/napid/Extensions;

    iget-object v2, v2, Lcom/samsung/wimax/napid/Extensions;->dlgText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 789
    .local v0, dlgVal:I
    iget-object v2, p0, Lcom/samsung/wimax/napid/Extensions$4;->this$0:Lcom/samsung/wimax/napid/Extensions;

    iget-object v2, v2, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dlgVal = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    sget-object v2, Lcom/samsung/wimax/napid/Extensions$6;->$SwitchMap$com$samsung$wimax$napid$Extensions$Type:[I

    iget-object v3, p0, Lcom/samsung/wimax/napid/Extensions$4;->this$0:Lcom/samsung/wimax/napid/Extensions;

    iget-object v3, v3, Lcom/samsung/wimax/napid/Extensions;->type:Lcom/samsung/wimax/napid/Extensions$Type;

    invoke-virtual {v3}, Lcom/samsung/wimax/napid/Extensions$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_132

    .line 864
    :cond_68
    iget-object v2, p0, Lcom/samsung/wimax/napid/Extensions$4;->this$0:Lcom/samsung/wimax/napid/Extensions;

    #getter for: Lcom/samsung/wimax/napid/Extensions;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/wimax/napid/Extensions;->access$700(Lcom/samsung/wimax/napid/Extensions;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 865
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/samsung/wimax/napid/Extensions$4;->this$0:Lcom/samsung/wimax/napid/Extensions;

    iget-object v2, v2, Lcom/samsung/wimax/napid/Extensions;->dlgText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 866
    iget-object v2, p0, Lcom/samsung/wimax/napid/Extensions$4;->this$0:Lcom/samsung/wimax/napid/Extensions;

    #getter for: Lcom/samsung/wimax/napid/Extensions;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/wimax/napid/Extensions;->access$700(Lcom/samsung/wimax/napid/Extensions;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 867
    iget-object v2, p0, Lcom/samsung/wimax/napid/Extensions$4;->this$0:Lcom/samsung/wimax/napid/Extensions;

    iget-object v2, v2, Lcom/samsung/wimax/napid/Extensions;->dlgText:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 868
    iget-object v2, p0, Lcom/samsung/wimax/napid/Extensions$4;->this$0:Lcom/samsung/wimax/napid/Extensions;

    invoke-virtual {v2, v7}, Lcom/samsung/wimax/napid/Extensions;->dismissDialog(I)V

    goto :goto_26

    .line 793
    .end local v1           #msg:Landroid/os/Message;
    :pswitch_9d
    if-lt v0, v6, :cond_a1

    if-le v0, v5, :cond_68

    .line 794
    :cond_a1
    iget-object v2, p0, Lcom/samsung/wimax/napid/Extensions$4;->this$0:Lcom/samsung/wimax/napid/Extensions;

    const-string v3, "Please Enter the value between 1-5"

    iput-object v3, v2, Lcom/samsung/wimax/napid/Extensions;->WRNG_MSG:Ljava/lang/String;

    .line 795
    iget-object v2, p0, Lcom/samsung/wimax/napid/Extensions$4;->this$0:Lcom/samsung/wimax/napid/Extensions;

    invoke-virtual {v2, v5}, Lcom/samsung/wimax/napid/Extensions;->showDialog(I)V

    goto/16 :goto_26

    .line 801
    :pswitch_ae
    if-lt v0, v6, :cond_b2

    if-le v0, v8, :cond_68

    .line 802
    :cond_b2
    iget-object v2, p0, Lcom/samsung/wimax/napid/Extensions$4;->this$0:Lcom/samsung/wimax/napid/Extensions;

    const-string v3, "Please Enter the value between 1-1800"

    iput-object v3, v2, Lcom/samsung/wimax/napid/Extensions;->WRNG_MSG:Ljava/lang/String;

    .line 803
    iget-object v2, p0, Lcom/samsung/wimax/napid/Extensions$4;->this$0:Lcom/samsung/wimax/napid/Extensions;

    invoke-virtual {v2, v5}, Lcom/samsung/wimax/napid/Extensions;->showDialog(I)V

    goto/16 :goto_26

    .line 810
    :pswitch_bf
    if-lt v0, v5, :cond_c5

    const/16 v2, 0x12c

    if-le v0, v2, :cond_68

    .line 811
    :cond_c5
    iget-object v2, p0, Lcom/samsung/wimax/napid/Extensions$4;->this$0:Lcom/samsung/wimax/napid/Extensions;

    const-string v3, "Please Enter the value between 5-300"

    iput-object v3, v2, Lcom/samsung/wimax/napid/Extensions;->WRNG_MSG:Ljava/lang/String;

    .line 812
    iget-object v2, p0, Lcom/samsung/wimax/napid/Extensions$4;->this$0:Lcom/samsung/wimax/napid/Extensions;

    invoke-virtual {v2, v5}, Lcom/samsung/wimax/napid/Extensions;->showDialog(I)V

    goto/16 :goto_26

    .line 819
    :pswitch_d2
    const/16 v2, -0x3c

    if-gt v0, v2, :cond_da

    const/16 v2, -0x6e

    if-ge v0, v2, :cond_68

    .line 820
    :cond_da
    iget-object v2, p0, Lcom/samsung/wimax/napid/Extensions$4;->this$0:Lcom/samsung/wimax/napid/Extensions;

    const-string v3, "Please Enter the value between -60 to -110"

    iput-object v3, v2, Lcom/samsung/wimax/napid/Extensions;->WRNG_MSG:Ljava/lang/String;

    .line 821
    iget-object v2, p0, Lcom/samsung/wimax/napid/Extensions$4;->this$0:Lcom/samsung/wimax/napid/Extensions;

    invoke-virtual {v2, v5}, Lcom/samsung/wimax/napid/Extensions;->showDialog(I)V

    goto/16 :goto_26

    .line 828
    :pswitch_e7
    if-lt v0, v7, :cond_ed

    const/16 v2, 0xa

    if-le v0, v2, :cond_68

    .line 829
    :cond_ed
    iget-object v2, p0, Lcom/samsung/wimax/napid/Extensions$4;->this$0:Lcom/samsung/wimax/napid/Extensions;

    const-string v3, "Please Enter the value between 4-10"

    iput-object v3, v2, Lcom/samsung/wimax/napid/Extensions;->WRNG_MSG:Ljava/lang/String;

    .line 830
    iget-object v2, p0, Lcom/samsung/wimax/napid/Extensions$4;->this$0:Lcom/samsung/wimax/napid/Extensions;

    invoke-virtual {v2, v5}, Lcom/samsung/wimax/napid/Extensions;->showDialog(I)V

    goto/16 :goto_26

    .line 837
    :pswitch_fa
    if-ltz v0, :cond_fe

    if-le v0, v8, :cond_68

    .line 838
    :cond_fe
    iget-object v2, p0, Lcom/samsung/wimax/napid/Extensions$4;->this$0:Lcom/samsung/wimax/napid/Extensions;

    const-string v3, "Please Enter the value between 0-1800"

    iput-object v3, v2, Lcom/samsung/wimax/napid/Extensions;->WRNG_MSG:Ljava/lang/String;

    .line 839
    iget-object v2, p0, Lcom/samsung/wimax/napid/Extensions$4;->this$0:Lcom/samsung/wimax/napid/Extensions;

    invoke-virtual {v2, v5}, Lcom/samsung/wimax/napid/Extensions;->showDialog(I)V

    goto/16 :goto_26

    .line 846
    :pswitch_10b
    if-ltz v0, :cond_111

    const/16 v2, 0x8

    if-le v0, v2, :cond_68

    .line 847
    :cond_111
    iget-object v2, p0, Lcom/samsung/wimax/napid/Extensions$4;->this$0:Lcom/samsung/wimax/napid/Extensions;

    const-string v3, "Please Enter the value between 0-8"

    iput-object v3, v2, Lcom/samsung/wimax/napid/Extensions;->WRNG_MSG:Ljava/lang/String;

    .line 848
    iget-object v2, p0, Lcom/samsung/wimax/napid/Extensions$4;->this$0:Lcom/samsung/wimax/napid/Extensions;

    invoke-virtual {v2, v5}, Lcom/samsung/wimax/napid/Extensions;->showDialog(I)V

    goto/16 :goto_26

    .line 855
    :pswitch_11e
    if-ltz v0, :cond_124

    const/16 v2, 0x258

    if-le v0, v2, :cond_68

    .line 856
    :cond_124
    iget-object v2, p0, Lcom/samsung/wimax/napid/Extensions$4;->this$0:Lcom/samsung/wimax/napid/Extensions;

    const-string v3, "Please Enter the value between 0-600"

    iput-object v3, v2, Lcom/samsung/wimax/napid/Extensions;->WRNG_MSG:Ljava/lang/String;

    .line 857
    iget-object v2, p0, Lcom/samsung/wimax/napid/Extensions$4;->this$0:Lcom/samsung/wimax/napid/Extensions;

    invoke-virtual {v2, v5}, Lcom/samsung/wimax/napid/Extensions;->showDialog(I)V

    goto/16 :goto_26

    .line 790
    nop

    :pswitch_data_132
    .packed-switch 0x9
        :pswitch_9d
        :pswitch_ae
        :pswitch_bf
        :pswitch_d2
        :pswitch_e7
        :pswitch_fa
        :pswitch_10b
        :pswitch_11e
    .end packed-switch
.end method
