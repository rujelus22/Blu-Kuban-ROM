.class public Lcom/android/sprintmenu/AKEY;
.super Landroid/app/Activity;
.source "AKEY.java"

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
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/sprintmenu/AKEY;->userInput:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sprintmenu/AKEY;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 115
    new-instance v0, Lcom/android/sprintmenu/AKEY$1;

    invoke-direct {v0, p0}, Lcom/android/sprintmenu/AKEY$1;-><init>(Lcom/android/sprintmenu/AKEY;)V

    iput-object v0, p0, Lcom/android/sprintmenu/AKEY;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private checkMSLCode()V
    .registers 9

    .prologue
    .line 38
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 39
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 43
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x3

    .line 44
    .local v3, fileSize:I
    const/16 v4, 0x51

    :try_start_d
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 45
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 46
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_18} :catch_2a

    .line 53
    iget-object v4, p0, Lcom/android/sprintmenu/AKEY;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/sprintmenu/AKEY;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x7ce

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 55
    :goto_29
    return-void

    .line 48
    :catch_2a
    move-exception v2

    .line 50
    .local v2, e:Ljava/io/IOException;
    goto :goto_29
.end method


# virtual methods
.method public notifyResult(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 97
    const-string v0, "AKEY"

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

    .line 99
    iget-object v0, p0, Lcom/android/sprintmenu/AKEY;->userInput:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 101
    const-string v0, "AKEY"

    const-string v1, "Successfully Matching MSL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    const-class v1, Lcom/android/sprintmenu/AKEY2;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 105
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0, v0}, Lcom/android/sprintmenu/AKEY;->startActivity(Landroid/content/Intent;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/sprintmenu/AKEY;->finish()V

    .line 112
    :goto_3e
    return-void

    .line 110
    :cond_3f
    const-string v0, "Invalid Lock Code!"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3e
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 75
    const-string v1, "AKEY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/sprintmenu/AKEY;->mInputPwd:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v1, p0, Lcom/android/sprintmenu/AKEY;->mInputPwd:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, str:Ljava/lang/String;
    const-string v1, "AKEY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "input code : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_60

    .line 92
    :goto_4b
    return-void

    .line 82
    :sswitch_4c
    iget-object v1, p0, Lcom/android/sprintmenu/AKEY;->mInputPwd:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sprintmenu/AKEY;->userInput:Ljava/lang/String;

    .line 83
    invoke-direct {p0}, Lcom/android/sprintmenu/AKEY;->checkMSLCode()V

    goto :goto_4b

    .line 88
    :sswitch_5c
    invoke-virtual {p0}, Lcom/android/sprintmenu/AKEY;->finish()V

    goto :goto_4b

    .line 79
    :sswitch_data_60
    .sparse-switch
        0x7f070003 -> :sswitch_5c
        0x7f070009 -> :sswitch_4c
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sprintmenu/AKEY;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 65
    const v2, 0x7f030005

    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/AKEY;->setContentView(I)V

    .line 66
    const v2, 0x7f070008

    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/AKEY;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/sprintmenu/AKEY;->mInputPwd:Landroid/widget/EditText;

    .line 67
    const v2, 0x7f070009

    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/AKEY;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 68
    .local v1, ok_button:Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v2, 0x7f070003

    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/AKEY;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 70
    .local v0, cancel_button:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method
