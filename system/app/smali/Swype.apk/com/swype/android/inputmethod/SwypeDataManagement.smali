.class public Lcom/swype/android/inputmethod/SwypeDataManagement;
.super Landroid/app/Activity;
.source "SwypeDataManagement.java"


# static fields
.field private static final INTENT_PARAM_CHECK_FILE_NAME:Ljava/lang/String; = "CHECK_FILE_NAME"

.field private static final INTENT_PARAM_GET_VERSION:Ljava/lang/String; = "GET_VERSION"

.field private static final INTENT_PARAM_INSTALL_FILE_CONTENT:Ljava/lang/String; = "INTENT_PARAM_INSTALL_FILE_CONTENT"

.field private static final INTENT_PARAM_INSTALL_FILE_NAME:Ljava/lang/String; = "INSTALL_FILE_NAME"

.field private static final INTENT_RESPONSE_CONNECT:Ljava/lang/String; = "INTENT_RESPONSE_CONNECT"

.field private static final INTENT_RESPONSE_VERSION:Ljava/lang/String; = "INTENT_RESPONSE_VERSION"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 36
    const/4 v1, 0x0

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeDataManagement;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "INSTALL_FILE_NAME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 42
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeDataManagement;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "INSTALL_FILE_NAME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeDataManagement;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "INTENT_PARAM_INSTALL_FILE_CONTENT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    .line 44
    if-eqz v3, :cond_fa

    .line 45
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeDataManagement;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/swype/android/inputmethod/SwypeApplication;

    .line 47
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/swype/android/inputmethod/SwypeApplication;->NATIVE_DATA_FILE_DIR:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3f

    .line 49
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 51
    :cond_3f
    sget-object v4, Lcom/swype/android/inputmethod/SwypeApplication;->NATIVE_DATA_FILE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v4, v2, v3}, Lcom/swype/android/inputmethod/SwypeApplication;->writeDataToFile(Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result v0

    .line 87
    :goto_45
    if-eqz v0, :cond_f2

    .line 88
    if-eqz v1, :cond_ed

    .line 89
    invoke-virtual {p0, v7, v1}, Lcom/swype/android/inputmethod/SwypeDataManagement;->setResult(ILandroid/content/Intent;)V

    .line 97
    :goto_4c
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeDataManagement;->finish()V

    .line 98
    return-void

    .line 54
    :cond_50
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeDataManagement;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "CHECK_FILE_NAME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 55
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeDataManagement;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "CHECK_FILE_NAME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/swype/android/inputmethod/SwypeApplication;->NATIVE_DATA_FILE_DIR:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_fa

    move v0, v8

    .line 58
    goto :goto_45

    .line 61
    :cond_75
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeDataManagement;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "GET_VERSION"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fa

    .line 66
    invoke-static {p0, v6}, Lcom/swype/android/inputmethod/ScreenDefinition;->getCurrentScreenDefinition(Landroid/content/Context;I)Lcom/swype/android/inputmethod/ScreenDefinition;

    move-result-object v2

    .line 68
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeDataManagement;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/swype/android/inputmethod/SwypeApplication;

    .line 69
    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->getSwypeCore()Lcom/swype/android/jni/SwypeCore;

    move-result-object v0

    .line 70
    invoke-virtual {v2}, Lcom/swype/android/inputmethod/ScreenDefinition;->getOrientation()I

    move-result v3

    invoke-virtual {v2}, Lcom/swype/android/inputmethod/ScreenDefinition;->getType()Lcom/swype/android/inputmethod/ScreenType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/swype/android/inputmethod/ScreenType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/swype/android/jni/SwypeCore;->onCreate(ILjava/lang/String;)V

    .line 74
    :try_start_9e
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeDataManagement;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 75
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeDataManagement;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 77
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_b0} :catch_cb

    .line 78
    :try_start_b0
    const-string v1, "INTENT_RESPONSE_VERSION"

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v1, "INTENT_RESPONSE_CONNECT"

    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeDataManagement;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/swype/android/service/SwypeConnect;->isAvailable(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_c4} :catch_f7

    move-object v1, v3

    .line 84
    :goto_c5
    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->onDestroy()V

    move v0, v8

    goto/16 :goto_45

    .line 80
    :catch_cb
    move-exception v2

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    .line 81
    :goto_cf
    const-string v3, "Swype"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading package data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    goto :goto_c5

    .line 91
    :cond_ed
    invoke-virtual {p0, v7}, Lcom/swype/android/inputmethod/SwypeDataManagement;->setResult(I)V

    goto/16 :goto_4c

    .line 95
    :cond_f2
    invoke-virtual {p0, v6}, Lcom/swype/android/inputmethod/SwypeDataManagement;->setResult(I)V

    goto/16 :goto_4c

    .line 80
    :catch_f7
    move-exception v1

    move-object v2, v3

    goto :goto_cf

    :cond_fa
    move v0, v6

    goto/16 :goto_45
.end method
