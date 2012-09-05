.class public Lcom/sprint/w/installer/dev/DevModeHandlerActivity;
.super Landroid/app/Activity;
.source "DevModeHandlerActivity.java"


# instance fields
.field private log:Lcom/sprint/id/logger/Logger;

.field secureToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    const-class v0, Lcom/sprint/w/installer/dev/DevModeHandlerActivity;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/dev/DevModeHandlerActivity;->log:Lcom/sprint/id/logger/Logger;

    return-void
.end method


# virtual methods
.method public connect(Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .parameter "url"

    .prologue
    const/4 v9, 0x0

    .line 82
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 83
    .local v2, httpclient:Lorg/apache/http/client/HttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 85
    .local v3, httpget:Lorg/apache/http/client/methods/HttpGet;
    const/4 v4, 0x0

    .line 87
    .local v4, is:Ljava/io/InputStream;
    :try_start_c
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 88
    .local v7, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    const/16 v11, 0xc8

    if-eq v10, v11, :cond_42

    .line 89
    iget-object v10, p0, Lcom/sprint/w/installer/dev/DevModeHandlerActivity;->log:Lcom/sprint/id/logger/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "responseStatus "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_c .. :try_end_3c} :catchall_100
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_c .. :try_end_3c} :catch_79
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_3c} :catch_b2
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3c} :catch_d9

    .line 111
    if-eqz v4, :cond_41

    .line 112
    :try_start_3e
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_107

    .line 117
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    :cond_41
    :goto_41
    return-object v9

    .line 92
    .restart local v7       #response:Lorg/apache/http/HttpResponse;
    :cond_42
    :try_start_42
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 93
    .local v1, entity:Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_aa

    .line 94
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 95
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 96
    .local v6, reader:Ljava/io/BufferedReader;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v8, sb:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 98
    .local v5, line:Ljava/lang/String;
    :goto_5c
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9e

    .line 99
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_78
    .catchall {:try_start_42 .. :try_end_78} :catchall_100
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_42 .. :try_end_78} :catch_79
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_78} :catch_b2
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_78} :catch_d9

    goto :goto_5c

    .line 103
    .end local v1           #entity:Lorg/apache/http/HttpEntity;
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #reader:Ljava/io/BufferedReader;
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    .end local v8           #sb:Ljava/lang/StringBuilder;
    :catch_79
    move-exception v0

    .line 104
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    :try_start_7a
    iget-object v10, p0, Lcom/sprint/w/installer/dev/DevModeHandlerActivity;->log:Lcom/sprint/id/logger/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CleintProtocolException "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V
    :try_end_96
    .catchall {:try_start_7a .. :try_end_96} :catchall_100

    .line 111
    if-eqz v4, :cond_41

    .line 112
    :try_start_98
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_9c

    goto :goto_41

    .line 114
    :catch_9c
    move-exception v10

    goto :goto_41

    .line 101
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    .restart local v1       #entity:Lorg/apache/http/HttpEntity;
    .restart local v5       #line:Ljava/lang/String;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    .restart local v7       #response:Lorg/apache/http/HttpResponse;
    .restart local v8       #sb:Ljava/lang/StringBuilder;
    :cond_9e
    :try_start_9e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_a1
    .catchall {:try_start_9e .. :try_end_a1} :catchall_100
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_9e .. :try_end_a1} :catch_79
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_b2
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a1} :catch_d9

    move-result-object v9

    .line 111
    if-eqz v4, :cond_41

    .line 112
    :try_start_a4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_a8

    goto :goto_41

    .line 114
    :catch_a8
    move-exception v10

    goto :goto_41

    .line 111
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #reader:Ljava/io/BufferedReader;
    .end local v8           #sb:Ljava/lang/StringBuilder;
    :cond_aa
    if-eqz v4, :cond_41

    .line 112
    :try_start_ac
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_b0

    goto :goto_41

    .line 114
    :catch_b0
    move-exception v10

    goto :goto_41

    .line 105
    .end local v1           #entity:Lorg/apache/http/HttpEntity;
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    :catch_b2
    move-exception v0

    .line 106
    .local v0, e:Ljava/io/IOException;
    :try_start_b3
    iget-object v10, p0, Lcom/sprint/w/installer/dev/DevModeHandlerActivity;->log:Lcom/sprint/id/logger/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IOException "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V
    :try_end_cf
    .catchall {:try_start_b3 .. :try_end_cf} :catchall_100

    .line 111
    if-eqz v4, :cond_41

    .line 112
    :try_start_d1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_d4} :catch_d6

    goto/16 :goto_41

    .line 114
    :catch_d6
    move-exception v10

    goto/16 :goto_41

    .line 107
    .end local v0           #e:Ljava/io/IOException;
    :catch_d9
    move-exception v0

    .line 108
    .local v0, e:Ljava/lang/Exception;
    :try_start_da
    iget-object v10, p0, Lcom/sprint/w/installer/dev/DevModeHandlerActivity;->log:Lcom/sprint/id/logger/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V
    :try_end_f6
    .catchall {:try_start_da .. :try_end_f6} :catchall_100

    .line 111
    if-eqz v4, :cond_41

    .line 112
    :try_start_f8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_fb
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_fb} :catch_fd

    goto/16 :goto_41

    .line 114
    :catch_fd
    move-exception v10

    goto/16 :goto_41

    .line 110
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_100
    move-exception v9

    .line 111
    if-eqz v4, :cond_106

    .line 112
    :try_start_103
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_106
    .catch Ljava/io/IOException; {:try_start_103 .. :try_end_106} :catch_10a

    .line 115
    :cond_106
    :goto_106
    throw v9

    .line 114
    .restart local v7       #response:Lorg/apache/http/HttpResponse;
    :catch_107
    move-exception v10

    goto/16 :goto_41

    .end local v7           #response:Lorg/apache/http/HttpResponse;
    :catch_10a
    move-exception v10

    goto :goto_106
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/dev/DevModeHandlerActivity;->setContentView(I)V

    .line 43
    invoke-virtual {p0}, Lcom/sprint/w/installer/dev/DevModeHandlerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/dev/DevModeHandlerActivity;->secureToken:Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Lcom/sprint/w/installer/dev/DevModeHandlerActivity;->startProcessing()V

    .line 45
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 7
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 121
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 122
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0600f2

    invoke-virtual {p0, v2}, Lcom/sprint/w/installer/dev/DevModeHandlerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 123
    packed-switch p1, :pswitch_data_6a

    .line 152
    const/4 v2, 0x0

    :goto_14
    return-object v2

    .line 125
    :pswitch_15
    new-instance v1, Lcom/sprint/w/installer/dev/DeveloperPermissions;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/dev/DeveloperPermissions;-><init>(Landroid/content/Context;)V

    .line 126
    .local v1, dp:Lcom/sprint/w/installer/dev/DeveloperPermissions;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Your developer status has been updated!\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sprint/w/installer/dev/DeveloperPermissions;->toUserFriendlyMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 127
    const-string v2, "OK"

    new-instance v3, Lcom/sprint/w/installer/dev/DevModeHandlerActivity$2;

    invoke-direct {v3, p0}, Lcom/sprint/w/installer/dev/DevModeHandlerActivity$2;-><init>(Lcom/sprint/w/installer/dev/DevModeHandlerActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 136
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_14

    .line 138
    .end local v1           #dp:Lcom/sprint/w/installer/dev/DeveloperPermissions;
    :pswitch_47
    const-string v2, "Failed to update developer status!"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 139
    const-string v2, "Retry"

    new-instance v3, Lcom/sprint/w/installer/dev/DevModeHandlerActivity$3;

    invoke-direct {v3, p0}, Lcom/sprint/w/installer/dev/DevModeHandlerActivity$3;-><init>(Lcom/sprint/w/installer/dev/DevModeHandlerActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 144
    const-string v2, "Cancel"

    new-instance v3, Lcom/sprint/w/installer/dev/DevModeHandlerActivity$4;

    invoke-direct {v3, p0}, Lcom/sprint/w/installer/dev/DevModeHandlerActivity$4;-><init>(Lcom/sprint/w/installer/dev/DevModeHandlerActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 150
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_14

    .line 123
    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_15
        :pswitch_47
    .end packed-switch
.end method

.method public startProcessing()V
    .registers 6

    .prologue
    .line 48
    const v2, 0x7f0600f2

    invoke-virtual {p0, v2}, Lcom/sprint/w/installer/dev/DevModeHandlerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0600f3

    invoke-virtual {p0, v3}, Lcom/sprint/w/installer/dev/DevModeHandlerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 49
    .local v0, dialog:Landroid/app/ProgressDialog;
    new-instance v1, Lcom/sprint/w/installer/dev/DeveloperPermissions;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/dev/DeveloperPermissions;-><init>(Landroid/content/Context;)V

    .line 50
    .local v1, dp:Lcom/sprint/w/installer/dev/DeveloperPermissions;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/sprint/w/installer/dev/DevModeHandlerActivity$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/sprint/w/installer/dev/DevModeHandlerActivity$1;-><init>(Lcom/sprint/w/installer/dev/DevModeHandlerActivity;Landroid/app/ProgressDialog;Lcom/sprint/w/installer/dev/DeveloperPermissions;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 78
    return-void
.end method
