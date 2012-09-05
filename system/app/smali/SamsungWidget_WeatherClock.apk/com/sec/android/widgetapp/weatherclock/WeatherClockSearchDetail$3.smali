.class Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$3;
.super Ljava/lang/Object;
.source "WeatherClockSearchDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)V
    .registers 2
    .parameter

    .prologue
    .line 718
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$3;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 11
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const v7, 0x7f090075

    const v6, 0x7f090074

    const v5, 0x7f090073

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 721
    const-string v0, ""

    .line 722
    .local v0, inputPw:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$3;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mSlogEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->access$400(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_8d

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$3;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mSlogText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->access$200(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_8d

    .line 724
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$3;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mSlogEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->access$400(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 725
    const-string v1, "1234567890"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11b

    .line 727
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->access$100()I

    move-result v1

    if-nez v1, :cond_91

    .line 729
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->access$102(I)I

    .line 730
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$3;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mSlogText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->access$200(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SLog Current State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$3;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 731
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$3;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$3;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 768
    :goto_79
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$3;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->access$100()I

    move-result v2

    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setSLog(I)V
    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->access$500(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;I)V

    .line 769
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$3;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mSlogEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->access$400(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 771
    :cond_8d
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 772
    return-void

    .line 733
    :cond_91
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->access$100()I

    move-result v1

    if-ne v2, v1, :cond_d8

    .line 735
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->access$102(I)I

    .line 736
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$3;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mSlogText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->access$200(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SLog Current State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$3;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 737
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$3;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$3;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_79

    .line 741
    :cond_d8
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->access$102(I)I

    .line 742
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$3;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mSlogText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->access$200(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SLog Current State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$3;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 743
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$3;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$3;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_79

    .line 748
    :cond_11b
    sget v1, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->log_on:I

    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->access$102(I)I

    .line 749
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$3;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mSlogText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->access$200(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_12f

    .line 750
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->access$100()I

    move-result v1

    packed-switch v1, :pswitch_data_168

    .line 765
    :cond_12f
    :goto_12f
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$3;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Error"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_79

    .line 753
    :pswitch_140
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$3;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->LogGroup:Landroid/widget/RadioGroup;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->access$300(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)Landroid/widget/RadioGroup;

    move-result-object v1

    const v2, 0x7f0c0014

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_12f

    .line 757
    :pswitch_14d
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$3;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->LogGroup:Landroid/widget/RadioGroup;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->access$300(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)Landroid/widget/RadioGroup;

    move-result-object v1

    const v2, 0x7f0c0015

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_12f

    .line 761
    :pswitch_15a
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$3;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->LogGroup:Landroid/widget/RadioGroup;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->access$300(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)Landroid/widget/RadioGroup;

    move-result-object v1

    const v2, 0x7f0c0016

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_12f

    .line 750
    nop

    :pswitch_data_168
    .packed-switch 0x0
        :pswitch_140
        :pswitch_14d
        :pswitch_15a
    .end packed-switch
.end method
