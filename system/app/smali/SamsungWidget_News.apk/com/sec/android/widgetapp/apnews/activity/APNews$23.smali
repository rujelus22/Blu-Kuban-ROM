.class Lcom/sec/android/widgetapp/apnews/activity/APNews$23;
.super Ljava/lang/Object;
.source "APNews.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/apnews/activity/APNews;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/apnews/activity/APNews;)V
    .registers 2
    .parameter

    .prologue
    .line 1519
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$23;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 11
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const v7, 0x7f0a0025

    const v6, 0x7f0a0024

    const v5, 0x7f0a0023

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1522
    const-string v0, ""

    .line 1523
    .local v0, inputPw:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$23;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSlogEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$1500(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_8d

    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$23;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSlogText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$1200(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_8d

    .line 1524
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$23;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSlogEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$1500(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1526
    const-string v1, "1234567890"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_122

    .line 1527
    invoke-static {}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$1100()I

    move-result v1

    if-nez v1, :cond_98

    .line 1529
    invoke-static {v4}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$1102(I)I

    .line 1530
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$23;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSlogText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$1200(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SLog Current State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$23;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1531
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$23;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$23;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1567
    :goto_79
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$23;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-static {}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$1100()I

    move-result v2

    #calls: Lcom/sec/android/widgetapp/apnews/activity/APNews;->setSLog(I)V
    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$1600(Lcom/sec/android/widgetapp/apnews/activity/APNews;I)V

    .line 1569
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$23;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSlogEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$1500(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1571
    :cond_8d
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$23;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    const-string v2, ""

    #calls: Lcom/sec/android/widgetapp/apnews/activity/APNews;->setKeyBuffer(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v4}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$1400(Lcom/sec/android/widgetapp/apnews/activity/APNews;Ljava/lang/String;Z)V

    .line 1572
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1573
    return-void

    .line 1533
    :cond_98
    invoke-static {}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$1100()I

    move-result v1

    if-ne v2, v1, :cond_df

    .line 1535
    invoke-static {v2}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$1102(I)I

    .line 1536
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$23;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSlogText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$1200(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SLog Current State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$23;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1537
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$23;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$23;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_79

    .line 1541
    :cond_df
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$1102(I)I

    .line 1542
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$23;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSlogText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$1200(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SLog Current State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$23;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1543
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$23;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$23;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_79

    .line 1546
    :cond_122
    sget v1, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->log_on:I

    invoke-static {v1}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$1102(I)I

    .line 1547
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$23;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSlogText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$1200(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_136

    .line 1548
    invoke-static {}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$1100()I

    move-result v1

    packed-switch v1, :pswitch_data_16e

    .line 1563
    :cond_136
    :goto_136
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$23;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Error"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_79

    .line 1551
    :pswitch_147
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$23;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->LogGroup:Landroid/widget/RadioGroup;
    invoke-static {v1}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$1300(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Landroid/widget/RadioGroup;

    move-result-object v1

    const v2, 0x7f0c0054

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_136

    .line 1555
    :pswitch_154
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$23;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->LogGroup:Landroid/widget/RadioGroup;
    invoke-static {v1}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$1300(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Landroid/widget/RadioGroup;

    move-result-object v1

    const v2, 0x7f0c0055

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_136

    .line 1559
    :pswitch_161
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$23;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->LogGroup:Landroid/widget/RadioGroup;
    invoke-static {v1}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$1300(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Landroid/widget/RadioGroup;

    move-result-object v1

    const v2, 0x7f0c0056

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_136

    .line 1548
    :pswitch_data_16e
    .packed-switch 0x0
        :pswitch_147
        :pswitch_154
        :pswitch_161
    .end packed-switch
.end method
