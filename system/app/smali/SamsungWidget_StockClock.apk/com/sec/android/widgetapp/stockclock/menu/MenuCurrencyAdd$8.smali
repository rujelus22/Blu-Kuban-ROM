.class Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$8;
.super Ljava/lang/Object;
.source "MenuCurrencyAdd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;)V
    .registers 2
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$8;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 11
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const v7, 0x7f090056

    const v6, 0x7f090055

    const v5, 0x7f090054

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 319
    const-string v0, ""

    .line 320
    .local v0, inputPw:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$8;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mSlogEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->access$900(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_8d

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$8;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mSlogText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->access$700(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_8d

    .line 321
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$8;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mSlogEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->access$900(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 323
    const-string v1, "1234567890"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11b

    .line 324
    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->access$600()I

    move-result v1

    if-nez v1, :cond_91

    .line 326
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->access$602(I)I

    .line 327
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$8;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mSlogText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->access$700(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SLog Current State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$8;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$8;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$8;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 364
    :goto_79
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$8;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->access$600()I

    move-result v2

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->setSLog(I)V
    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->access$1000(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;I)V

    .line 366
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$8;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mSlogEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->access$900(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 369
    :cond_8d
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 370
    return-void

    .line 330
    :cond_91
    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->access$600()I

    move-result v1

    if-ne v2, v1, :cond_d8

    .line 332
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->access$602(I)I

    .line 333
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$8;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mSlogText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->access$700(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SLog Current State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$8;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$8;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$8;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_79

    .line 338
    :cond_d8
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->access$602(I)I

    .line 339
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$8;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mSlogText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->access$700(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SLog Current State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$8;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$8;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$8;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_79

    .line 343
    :cond_11b
    sget v1, Lcom/sec/android/widgetapp/stockclock/common/SLog;->log_on:I

    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->access$602(I)I

    .line 344
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$8;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mSlogText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->access$700(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_12f

    .line 345
    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->access$600()I

    move-result v1

    packed-switch v1, :pswitch_data_168

    .line 360
    :cond_12f
    :goto_12f
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$8;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Error"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_79

    .line 348
    :pswitch_140
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$8;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->LogGroup:Landroid/widget/RadioGroup;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->access$800(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;)Landroid/widget/RadioGroup;

    move-result-object v1

    const v2, 0x7f0b0076

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_12f

    .line 352
    :pswitch_14d
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$8;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->LogGroup:Landroid/widget/RadioGroup;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->access$800(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;)Landroid/widget/RadioGroup;

    move-result-object v1

    const v2, 0x7f0b0075

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_12f

    .line 356
    :pswitch_15a
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$8;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->LogGroup:Landroid/widget/RadioGroup;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->access$800(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;)Landroid/widget/RadioGroup;

    move-result-object v1

    const v2, 0x7f0b0077

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_12f

    .line 345
    nop

    :pswitch_data_168
    .packed-switch 0x0
        :pswitch_140
        :pswitch_14d
        :pswitch_15a
    .end packed-switch
.end method
