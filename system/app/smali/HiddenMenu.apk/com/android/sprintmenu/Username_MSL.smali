.class public Lcom/android/sprintmenu/Username_MSL;
.super Landroid/app/Activity;
.source "Username_MSL.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field eroorMsg:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mInputPwd:Landroid/widget/EditText;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field userInput:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/sprintmenu/Username_MSL;->userInput:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sprintmenu/Username_MSL;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 123
    new-instance v0, Lcom/android/sprintmenu/Username_MSL$1;

    invoke-direct {v0, p0}, Lcom/android/sprintmenu/Username_MSL$1;-><init>(Lcom/android/sprintmenu/Username_MSL;)V

    iput-object v0, p0, Lcom/android/sprintmenu/Username_MSL;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private checkMSLCode()V
    .registers 9

    .prologue
    .line 47
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 48
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 52
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x3

    .line 53
    .local v3, fileSize:I
    const/16 v4, 0x51

    :try_start_d
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 54
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 55
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_18} :catch_2a

    .line 61
    iget-object v4, p0, Lcom/android/sprintmenu/Username_MSL;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/sprintmenu/Username_MSL;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x7ce

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 62
    :goto_29
    return-void

    .line 57
    :catch_2a
    move-exception v2

    .line 59
    .local v2, e:Ljava/io/IOException;
    goto :goto_29
.end method


# virtual methods
.method public notifyResult(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 105
    const-string v0, "Username_MSL"

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

    .line 109
    const-string v0, "Username_MSL"

    const-string v1, "Successfully Matching MSL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    const-class v1, Lcom/android/sprintmenu/Username_Edit;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 113
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 114
    invoke-virtual {p0, v0}, Lcom/android/sprintmenu/Username_MSL;->startActivity(Landroid/content/Intent;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/sprintmenu/Username_MSL;->finish()V

    .line 120
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 83
    const-string v1, "Username_MSL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/sprintmenu/Username_MSL;->mInputPwd:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v1, p0, Lcom/android/sprintmenu/Username_MSL;->mInputPwd:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, str:Ljava/lang/String;
    const-string v1, "Username_MSL"

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

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_60

    .line 100
    :goto_4b
    return-void

    .line 90
    :sswitch_4c
    iget-object v1, p0, Lcom/android/sprintmenu/Username_MSL;->mInputPwd:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sprintmenu/Username_MSL;->userInput:Ljava/lang/String;

    .line 91
    invoke-direct {p0}, Lcom/android/sprintmenu/Username_MSL;->checkMSLCode()V

    goto :goto_4b

    .line 96
    :sswitch_5c
    invoke-virtual {p0}, Lcom/android/sprintmenu/Username_MSL;->finish()V

    goto :goto_4b

    .line 87
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
    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v2, 0x7f030005

    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/Username_MSL;->setContentView(I)V

    .line 72
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sprintmenu/Username_MSL;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 74
    const v2, 0x7f070008

    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/Username_MSL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/sprintmenu/Username_MSL;->mInputPwd:Landroid/widget/EditText;

    .line 75
    const v2, 0x7f070009

    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/Username_MSL;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 76
    .local v1, ok_button:Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v2, 0x7f070003

    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/Username_MSL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, cancel_button:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 167
    packed-switch p1, :pswitch_data_28

    .line 186
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 169
    :pswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f05001b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sprintmenu/Username_MSL;->eroorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f05003d

    new-instance v2, Lcom/android/sprintmenu/Username_MSL$2;

    invoke-direct {v2, p0}, Lcom/android/sprintmenu/Username_MSL$2;-><init>(Lcom/android/sprintmenu/Username_MSL;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_4

    .line 167
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method
