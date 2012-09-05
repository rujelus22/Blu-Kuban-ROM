.class public Lcom/sec/android/socialhub/print/MobilePrintUtil;
.super Ljava/lang/Object;
.source "MobilePrintUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static print(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Bitmap$CompressFormat;)Z
    .registers 16
    .parameter "context"
    .parameter "view"
    .parameter "format"

    .prologue
    .line 21
    const/4 v5, 0x0

    .line 24
    .local v5, mBitmap:Landroid/graphics/Bitmap;
    move-object v7, p1

    .line 26
    .local v7, printView:Landroid/view/View;
    if-eqz v7, :cond_6

    if-nez p0, :cond_11

    .line 28
    :cond_6
    const-string v9, "MobilePrintUtil"

    const-string v10, "print()"

    const-string v11, "printView null or context null"

    invoke-static {v9, v10, v11}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const/4 v9, 0x0

    .line 97
    :goto_10
    return v9

    .line 32
    :cond_11
    invoke-virtual {v7}, Landroid/view/View;->buildDrawingCache()V

    .line 34
    invoke-virtual {v7}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 36
    if-eqz v5, :cond_c6

    .line 40
    :try_start_1a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "socialhub_print_img.png"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 41
    .local v8, strPrintImgName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .local v1, captureFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 46
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 48
    .local v6, outStream:Ljava/io/FileOutputStream;
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x64

    invoke-virtual {v5, v9, v10, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    .line 50
    .local v0, bRet:Z
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 52
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "chmod 666 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 54
    const/4 v9, 0x1

    if-ne v0, v9, :cond_b2

    .line 58
    new-instance v4, Landroid/content/Intent;

    const-string v9, "com.sec.android.app.mobileprint.PRINT"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .local v4, intentForPrint:Landroid/content/Intent;
    const-string v9, "android.intent.extra.STREAM"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 61
    const-string v9, "android.intent.extra.TITLE"

    const-string v10, "SocialHub"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const/high16 v9, 0x1000

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 66
    const-string v9, "MobilePrintUtil"

    const-string v10, "print()"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bitmap output complete-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1a .. :try_end_a5} :catch_bc
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_a5} :catch_c1

    .line 74
    .end local v4           #intentForPrint:Landroid/content/Intent;
    :goto_a5
    const/4 v6, 0x0

    .line 95
    .end local v0           #bRet:Z
    .end local v1           #captureFile:Ljava/io/File;
    .end local v6           #outStream:Ljava/io/FileOutputStream;
    .end local v8           #strPrintImgName:Ljava/lang/String;
    :goto_a6
    const-string v9, "MobilePrintUtil"

    const-string v10, "print()"

    const-string v11, "print will be started"

    invoke-static {v9, v10, v11}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const/4 v9, 0x1

    goto/16 :goto_10

    .line 71
    .restart local v0       #bRet:Z
    .restart local v1       #captureFile:Ljava/io/File;
    .restart local v6       #outStream:Ljava/io/FileOutputStream;
    .restart local v8       #strPrintImgName:Ljava/lang/String;
    :cond_b2
    :try_start_b2
    const-string v9, "MobilePrintUtil"

    const-string v10, "print()"

    const-string v11, "Bitmap error"

    invoke-static {v9, v10, v11}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bb
    .catch Landroid/content/ActivityNotFoundException; {:try_start_b2 .. :try_end_bb} :catch_bc
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_bb} :catch_c1

    goto :goto_a5

    .line 78
    .end local v0           #bRet:Z
    .end local v1           #captureFile:Ljava/io/File;
    .end local v6           #outStream:Ljava/io/FileOutputStream;
    .end local v8           #strPrintImgName:Ljava/lang/String;
    :catch_bc
    move-exception v3

    .line 80
    .local v3, ex:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v3}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_a6

    .line 82
    .end local v3           #ex:Landroid/content/ActivityNotFoundException;
    :catch_c1
    move-exception v2

    .line 84
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a6

    .line 89
    .end local v2           #e:Ljava/lang/Exception;
    :cond_c6
    const-string v9, "MobilePrintUtil"

    const-string v10, "print()"

    const-string v11, "mBitmap is NULL"

    invoke-static {v9, v10, v11}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f08010c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 91
    const/4 v9, 0x0

    goto/16 :goto_10
.end method
