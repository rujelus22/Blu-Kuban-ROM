.class public Lcom/android/samsungtest/FactoryTest/HdcpCheckDialog;
.super Landroid/app/Activity;
.source "HdcpCheckDialog.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mOkPopup:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 15
    const-string v0, "HdcpCheckDialog"

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/HdcpCheckDialog;->TAG:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/HdcpCheckDialog;->mOkPopup:Landroid/app/AlertDialog;

    return-void
.end method

.method private dialogOkPopup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "context"
    .parameter "title"
    .parameter "message"

    .prologue
    .line 37
    const-string v1, "HdcpCheckDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialogOkPopup : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/HdcpCheckDialog;->mOkPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/HdcpCheckDialog;->mOkPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 39
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/HdcpCheckDialog;->mOkPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 40
    :cond_33
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 41
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 42
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 43
    const v1, 0x7f080018

    new-instance v2, Lcom/android/samsungtest/FactoryTest/HdcpCheckDialog$1;

    invoke-direct {v2, p0}, Lcom/android/samsungtest/FactoryTest/HdcpCheckDialog$1;-><init>(Lcom/android/samsungtest/FactoryTest/HdcpCheckDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 50
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 51
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/FactoryTest/HdcpCheckDialog;->mOkPopup:Landroid/app/AlertDialog;

    .line 52
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/HdcpCheckDialog;->mOkPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 53
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 20
    const-string v3, "HdcpCheckDialog"

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v3, 0x7f030018

    invoke-virtual {p0, v3}, Lcom/android/samsungtest/FactoryTest/HdcpCheckDialog;->setContentView(I)V

    .line 24
    const-string v2, "FALSE"

    .line 26
    .local v2, result:Ljava/lang/String;
    :try_start_12
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/misc/radio/hatp/check_result"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x20

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, data:Ljava/lang/String;
    const-string v3, "OK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 28
    const-string v2, "TRUE"

    .line 29
    :cond_2a
    const-string v3, "HdcpCheckDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HDCP Check : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_4c} :catch_52

    .line 33
    .end local v0           #data:Ljava/lang/String;
    :goto_4c
    const-string v3, "HDCP"

    invoke-direct {p0, p0, v3, v2}, Lcom/android/samsungtest/FactoryTest/HdcpCheckDialog;->dialogOkPopup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void

    .line 30
    :catch_52
    move-exception v1

    .line 31
    .local v1, e:Ljava/io/IOException;
    const-string v3, "HdcpCheckDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HDCP Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c
.end method
