.class public Lcom/android/sprintmenu/AKEY2;
.super Landroid/app/Activity;
.source "AKEY2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mInputPwd:Landroid/widget/EditText;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sprintmenu/AKEY2;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 177
    new-instance v0, Lcom/android/sprintmenu/AKEY2$1;

    invoke-direct {v0, p0}, Lcom/android/sprintmenu/AKEY2$1;-><init>(Lcom/android/sprintmenu/AKEY2;)V

    iput-object v0, p0, Lcom/android/sprintmenu/AKEY2;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private sendOemData(Ljava/lang/String;I)V
    .registers 11
    .parameter "value_akey"
    .parameter "akey_size"

    .prologue
    .line 49
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 50
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 52
    .local v1, dos:Ljava/io/DataOutputStream;
    const-string v4, "AKEY2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendOemData : value_akey="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    add-int/lit8 v3, p2, 0x3

    .line 57
    .local v3, fileSize:I
    const/16 v4, 0x51

    :try_start_30
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 58
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 59
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, p2}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_44} :catch_56

    .line 67
    iget-object v4, p0, Lcom/android/sprintmenu/AKEY2;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/sprintmenu/AKEY2;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x7cf

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 68
    :goto_55
    return-void

    .line 63
    :catch_56
    move-exception v2

    .line 65
    .local v2, e:Ljava/io/IOException;
    goto :goto_55
.end method


# virtual methods
.method public notifyResult(Z)V
    .registers 12
    .parameter "result"

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f050006

    const/16 v7, 0x7d8

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 137
    const-string v2, "AKEY2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AKEY result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    if-eqz p1, :cond_56

    .line 143
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "AKEY OK."

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 148
    .local v1, newDialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/Window;->setType(I)V

    .line 149
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/Window;->addFlags(I)V

    .line 150
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 155
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/AKEY2;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 156
    .local v0, mPowerManager:Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->systemReboot()V

    .line 174
    .end local v0           #mPowerManager:Landroid/os/PowerManager;
    :goto_55
    return-void

    .line 163
    .end local v1           #newDialog:Landroid/app/AlertDialog;
    :cond_56
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "AKey Failed!"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 168
    .restart local v1       #newDialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/Window;->setType(I)V

    .line 169
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/Window;->addFlags(I)V

    .line 170
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_55
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 113
    iget-object v1, p0, Lcom/android/sprintmenu/AKEY2;->mInputPwd:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, str:Ljava/lang/String;
    const-string v1, "AKEY2"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_2a

    .line 132
    :goto_16
    return-void

    .line 120
    :sswitch_17
    const-string v1, "AKEY2"

    const-string v2, "OK clicked!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/sprintmenu/AKEY2;->sendOemData(Ljava/lang/String;I)V

    goto :goto_16

    .line 128
    :sswitch_26
    invoke-virtual {p0}, Lcom/android/sprintmenu/AKEY2;->finish()V

    goto :goto_16

    .line 116
    :sswitch_data_2a
    .sparse-switch
        0x7f070003 -> :sswitch_26
        0x7f070009 -> :sswitch_17
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const v2, 0x7f030006

    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/AKEY2;->setContentView(I)V

    .line 103
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sprintmenu/AKEY2;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 105
    const v2, 0x7f07000a

    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/AKEY2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/sprintmenu/AKEY2;->mInputPwd:Landroid/widget/EditText;

    .line 106
    const v2, 0x7f070009

    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/AKEY2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 107
    .local v1, ok_button:Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v2, 0x7f070003

    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/AKEY2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 109
    .local v0, cancel_button:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    return-void
.end method
