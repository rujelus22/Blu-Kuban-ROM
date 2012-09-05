.class public Lcom/samsung/dmhiddenmenu/OMADM_MSL_Check;
.super Landroid/app/Activity;
.source "OMADM_MSL_Check.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mInputPwd:Landroid/widget/EditText;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private userInput:Ljava/lang/String;

.field private visilePasswordsInitialStatus:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/dmhiddenmenu/OMADM_MSL_Check;->userInput:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/dmhiddenmenu/OMADM_MSL_Check;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/dmhiddenmenu/OMADM_MSL_Check;->visilePasswordsInitialStatus:Z

    .line 135
    new-instance v0, Lcom/samsung/dmhiddenmenu/OMADM_MSL_Check$1;

    invoke-direct {v0, p0}, Lcom/samsung/dmhiddenmenu/OMADM_MSL_Check$1;-><init>(Lcom/samsung/dmhiddenmenu/OMADM_MSL_Check;)V

    iput-object v0, p0, Lcom/samsung/dmhiddenmenu/OMADM_MSL_Check;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private checkMSLCode()V
    .registers 9

    .prologue
    .line 39
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 40
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 43
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x4

    .line 44
    .local v3, fileSize:I
    const/16 v4, 0x51

    :try_start_d
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 45
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 46
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_17} :catch_29

    .line 51
    iget-object v4, p0, Lcom/samsung/dmhiddenmenu/OMADM_MSL_Check;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/dmhiddenmenu/OMADM_MSL_Check;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x7ce

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 53
    :goto_28
    return-void

    .line 47
    :catch_29
    move-exception v2

    .line 48
    .local v2, e:Ljava/io/IOException;
    const-string v4, "OMADM_MSL_Check"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28
.end method


# virtual methods
.method public notifyResult(Ljava/lang/String;)V
    .registers 5
    .parameter "MSLstr"

    .prologue
    .line 119
    iget-object v1, p0, Lcom/samsung/dmhiddenmenu/OMADM_MSL_Check;->userInput:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 123
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.OMADM_Settings"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 125
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0, v0}, Lcom/samsung/dmhiddenmenu/OMADM_MSL_Check;->startActivity(Landroid/content/Intent;)V

    .line 127
    invoke-virtual {p0}, Lcom/samsung/dmhiddenmenu/OMADM_MSL_Check;->finish()V

    .line 133
    .end local v0           #i:Landroid/content/Intent;
    :goto_20
    return-void

    .line 129
    :cond_21
    const-string v1, "Invalid Lock Code!"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_20
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    .line 113
    :goto_7
    :pswitch_7
    return-void

    .line 102
    :pswitch_8
    iget-object v0, p0, Lcom/samsung/dmhiddenmenu/OMADM_MSL_Check;->mInputPwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmhiddenmenu/OMADM_MSL_Check;->userInput:Ljava/lang/String;

    .line 103
    invoke-direct {p0}, Lcom/samsung/dmhiddenmenu/OMADM_MSL_Check;->checkMSLCode()V

    goto :goto_7

    .line 109
    :pswitch_18
    invoke-virtual {p0}, Lcom/samsung/dmhiddenmenu/OMADM_MSL_Check;->finish()V

    goto :goto_7

    .line 100
    :pswitch_data_1c
    .packed-switch 0x7f070014
        :pswitch_8
        :pswitch_7
        :pswitch_18
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v2, 0x7f030002

    invoke-virtual {p0, v2}, Lcom/samsung/dmhiddenmenu/OMADM_MSL_Check;->setContentView(I)V

    .line 62
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/dmhiddenmenu/OMADM_MSL_Check;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 63
    const v2, 0x7f070015

    invoke-virtual {p0, v2}, Lcom/samsung/dmhiddenmenu/OMADM_MSL_Check;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/samsung/dmhiddenmenu/OMADM_MSL_Check;->mInputPwd:Landroid/widget/EditText;

    .line 66
    iget-object v2, p0, Lcom/samsung/dmhiddenmenu/OMADM_MSL_Check;->mInputPwd:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 69
    const v2, 0x7f070014

    invoke-virtual {p0, v2}, Lcom/samsung/dmhiddenmenu/OMADM_MSL_Check;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 70
    .local v1, ok_button:Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v2, 0x7f070016

    invoke-virtual {p0, v2}, Lcom/samsung/dmhiddenmenu/OMADM_MSL_Check;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 72
    .local v0, cancel_button:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    return-void
.end method

.method protected onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 88
    iget-boolean v0, p0, Lcom/samsung/dmhiddenmenu/OMADM_MSL_Check;->visilePasswordsInitialStatus:Z

    if-ne v0, v2, :cond_11

    .line 89
    invoke-virtual {p0}, Lcom/samsung/dmhiddenmenu/OMADM_MSL_Check;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_password"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 92
    :cond_11
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 78
    invoke-virtual {p0}, Lcom/samsung/dmhiddenmenu/OMADM_MSL_Check;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_password"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1f

    :goto_11
    iput-boolean v0, p0, Lcom/samsung/dmhiddenmenu/OMADM_MSL_Check;->visilePasswordsInitialStatus:Z

    if-eqz v0, :cond_1e

    .line 80
    invoke-virtual {p0}, Lcom/samsung/dmhiddenmenu/OMADM_MSL_Check;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "show_password"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 83
    :cond_1e
    return-void

    :cond_1f
    move v0, v1

    .line 78
    goto :goto_11
.end method
