.class public Lcom/android/sprintmenu/Advanced;
.super Landroid/app/Activity;
.source "Advanced.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mInputPwd:Landroid/widget/EditText;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field userInput:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/sprintmenu/Advanced;->userInput:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sprintmenu/Advanced;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 125
    new-instance v0, Lcom/android/sprintmenu/Advanced$1;

    invoke-direct {v0, p0}, Lcom/android/sprintmenu/Advanced$1;-><init>(Lcom/android/sprintmenu/Advanced;)V

    iput-object v0, p0, Lcom/android/sprintmenu/Advanced;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private checkMSLCode()V
    .registers 9

    .prologue
    .line 43
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 44
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 48
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x4

    .line 49
    .local v3, fileSize:I
    const/16 v4, 0x51

    :try_start_d
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 50
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 51
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_17} :catch_29

    .line 57
    iget-object v4, p0, Lcom/android/sprintmenu/Advanced;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/sprintmenu/Advanced;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x7ce

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 58
    :goto_28
    return-void

    .line 53
    :catch_29
    move-exception v2

    .line 55
    .local v2, e:Ljava/io/IOException;
    goto :goto_28
.end method


# virtual methods
.method public notifyResult(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 99
    const-string v0, "Advanced"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSL result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/android/sprintmenu/Advanced;->userInput:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 103
    const-string v0, "Advanced"

    const-string v1, "Successfully Matching MSL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    const-class v1, Lcom/android/sprintmenu/TerminalMode;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 107
    const-string v1, "keyString"

    const-string v2, "DATA_ADV"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0, v0}, Lcom/android/sprintmenu/Advanced;->startActivity(Landroid/content/Intent;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/sprintmenu/Advanced;->finish()V

    .line 122
    :goto_45
    return-void

    .line 120
    :cond_46
    const-string v0, "Invalid Lock Code!"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_45
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 78
    const-string v1, "edittext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/sprintmenu/Advanced;->mInputPwd:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v1, p0, Lcom/android/sprintmenu/Advanced;->mInputPwd:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, str:Ljava/lang/String;
    const-string v1, "edittext"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_4e

    .line 94
    :goto_38
    return-void

    .line 85
    :sswitch_39
    iget-object v1, p0, Lcom/android/sprintmenu/Advanced;->mInputPwd:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sprintmenu/Advanced;->userInput:Ljava/lang/String;

    .line 86
    invoke-direct {p0}, Lcom/android/sprintmenu/Advanced;->checkMSLCode()V

    goto :goto_38

    .line 90
    :sswitch_49
    invoke-virtual {p0}, Lcom/android/sprintmenu/Advanced;->finish()V

    goto :goto_38

    .line 82
    nop

    :sswitch_data_4e
    .sparse-switch
        0x7f070003 -> :sswitch_49
        0x7f070009 -> :sswitch_39
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v2, 0x7f030005

    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/Advanced;->setContentView(I)V

    .line 67
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sprintmenu/Advanced;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 69
    const v2, 0x7f070008

    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/Advanced;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/sprintmenu/Advanced;->mInputPwd:Landroid/widget/EditText;

    .line 70
    const v2, 0x7f070009

    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/Advanced;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 71
    .local v1, ok_button:Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v2, 0x7f070003

    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/Advanced;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, cancel_button:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method
