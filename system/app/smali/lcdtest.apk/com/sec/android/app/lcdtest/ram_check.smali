.class public Lcom/sec/android/app/lcdtest/ram_check;
.super Landroid/app/Activity;
.source "ram_check.java"


# instance fields
.field private config:Lcom/sec/android/app/lcdtest/appConfig;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    invoke-static {}, Lcom/sec/android/app/lcdtest/appConfig;->getInstance()Lcom/sec/android/app/lcdtest/appConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/ram_check;->config:Lcom/sec/android/app/lcdtest/appConfig;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 26
    .local v6, tv:Landroid/widget/TextView;
    const/16 v7, 0x64

    new-array v0, v7, [B

    .line 27
    .local v0, buffer:[B
    const/4 v2, 0x0

    .line 28
    .local v2, in:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 30
    .local v4, s:Ljava/lang/String;
    :try_start_e
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/sec/android/app/lcdtest/ram_check;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v9, "PATH_RAM_CHECK"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_c1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_20} :catch_88

    .line 31
    .end local v2           #in:Ljava/io/InputStream;
    .local v3, in:Ljava/io/InputStream;
    :try_start_20
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-eqz v7, :cond_64

    .line 32
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_2b
    .catchall {:try_start_20 .. :try_end_2b} :catchall_e2
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2b} :catch_e9

    .line 33
    .end local v4           #s:Ljava/lang/String;
    .local v5, s:Ljava/lang/String;
    :try_start_2b
    const-string v7, "ram_check"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "read version : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_2b .. :try_end_43} :catchall_e5
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_43} :catch_ec

    move-object v4, v5

    .line 40
    .end local v5           #s:Ljava/lang/String;
    .restart local v4       #s:Ljava/lang/String;
    :goto_44
    if-eqz v3, :cond_f0

    .line 42
    :try_start_46
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_6d

    move-object v2, v3

    .line 48
    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    :cond_4a
    :goto_4a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RAM version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {p0, v6}, Lcom/sec/android/app/lcdtest/ram_check;->setContentView(Landroid/view/View;)V

    .line 50
    return-void

    .line 35
    .end local v2           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    :cond_64
    :try_start_64
    new-instance v5, Ljava/lang/String;

    const-string v7, "Read Fail"

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_6b
    .catchall {:try_start_64 .. :try_end_6b} :catchall_e2
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_6b} :catch_e9

    .end local v4           #s:Ljava/lang/String;
    .restart local v5       #s:Ljava/lang/String;
    move-object v4, v5

    .end local v5           #s:Ljava/lang/String;
    .restart local v4       #s:Ljava/lang/String;
    goto :goto_44

    .line 43
    :catch_6d
    move-exception v1

    .line 44
    .local v1, e:Ljava/io/IOException;
    const-string v7, "ram_check"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 45
    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_4a

    .line 37
    .end local v1           #e:Ljava/io/IOException;
    :catch_88
    move-exception v1

    .line 38
    .local v1, e:Ljava/lang/Exception;
    :goto_89
    :try_start_89
    const-string v7, "ram_check"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catchall {:try_start_89 .. :try_end_a1} :catchall_c1

    .line 40
    if-eqz v2, :cond_4a

    .line 42
    :try_start_a3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_a7

    goto :goto_4a

    .line 43
    :catch_a7
    move-exception v1

    .line 44
    .local v1, e:Ljava/io/IOException;
    const-string v7, "ram_check"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 40
    .end local v1           #e:Ljava/io/IOException;
    :catchall_c1
    move-exception v7

    :goto_c2
    if-eqz v2, :cond_c7

    .line 42
    :try_start_c4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_c7} :catch_c8

    .line 45
    :cond_c7
    :goto_c7
    throw v7

    .line 43
    :catch_c8
    move-exception v1

    .line 44
    .restart local v1       #e:Ljava/io/IOException;
    const-string v8, "ram_check"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c7

    .line 40
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    :catchall_e2
    move-exception v7

    move-object v2, v3

    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_c2

    .end local v2           #in:Ljava/io/InputStream;
    .end local v4           #s:Ljava/lang/String;
    .restart local v3       #in:Ljava/io/InputStream;
    .restart local v5       #s:Ljava/lang/String;
    :catchall_e5
    move-exception v7

    move-object v4, v5

    .end local v5           #s:Ljava/lang/String;
    .restart local v4       #s:Ljava/lang/String;
    move-object v2, v3

    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_c2

    .line 37
    .end local v2           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    :catch_e9
    move-exception v1

    move-object v2, v3

    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_89

    .end local v2           #in:Ljava/io/InputStream;
    .end local v4           #s:Ljava/lang/String;
    .restart local v3       #in:Ljava/io/InputStream;
    .restart local v5       #s:Ljava/lang/String;
    :catch_ec
    move-exception v1

    move-object v4, v5

    .end local v5           #s:Ljava/lang/String;
    .restart local v4       #s:Ljava/lang/String;
    move-object v2, v3

    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_89

    .end local v2           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    :cond_f0
    move-object v2, v3

    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto/16 :goto_4a
.end method
