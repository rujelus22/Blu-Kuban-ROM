.class Lcom/sprint/w/installer/VoicemailService$1;
.super Ljava/lang/Thread;
.source "VoicemailService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/VoicemailService;->ensureVoicemailIsInstalled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/VoicemailService;

.field final synthetic val$pm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/VoicemailService;Landroid/content/pm/PackageManager;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sprint/w/installer/VoicemailService$1;->this$0:Lcom/sprint/w/installer/VoicemailService;

    iput-object p2, p0, Lcom/sprint/w/installer/VoicemailService$1;->val$pm:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 68
    const/4 v3, 0x0

    .line 70
    .local v3, f:Ljava/io/File;
    :try_start_1
    iget-object v8, p0, Lcom/sprint/w/installer/VoicemailService$1;->this$0:Lcom/sprint/w/installer/VoicemailService;

    #getter for: Lcom/sprint/w/installer/VoicemailService;->log:Lcom/sprint/id/logger/Logger;
    invoke-static {v8}, Lcom/sprint/w/installer/VoicemailService;->access$000(Lcom/sprint/w/installer/VoicemailService;)Lcom/sprint/id/logger/Logger;

    move-result-object v8

    const-string v9, "Voicemail is not installed"

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 73
    iget-object v8, p0, Lcom/sprint/w/installer/VoicemailService$1;->this$0:Lcom/sprint/w/installer/VoicemailService;

    invoke-virtual {v8}, Lcom/sprint/w/installer/VoicemailService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "voicemail.apk"

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 74
    .local v5, is:Ljava/io/InputStream;
    iget-object v8, p0, Lcom/sprint/w/installer/VoicemailService$1;->this$0:Lcom/sprint/w/installer/VoicemailService;

    const-string v9, "voicemail.apk"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/sprint/w/installer/VoicemailService;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 75
    .local v4, fos:Ljava/io/FileOutputStream;
    const/16 v8, 0x5000

    new-array v0, v8, [B

    .line 77
    .local v0, b:[B
    :goto_25
    const/4 v8, -0x1

    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, c:I
    if-eq v8, v1, :cond_3e

    .line 78
    const/4 v8, 0x0

    invoke-virtual {v4, v0, v8, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_30} :catch_31

    goto :goto_25

    .line 95
    .end local v0           #b:[B
    .end local v1           #c:I
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v5           #is:Ljava/io/InputStream;
    :catch_31
    move-exception v2

    .line 96
    .local v2, e:Ljava/lang/Exception;
    iget-object v8, p0, Lcom/sprint/w/installer/VoicemailService$1;->this$0:Lcom/sprint/w/installer/VoicemailService;

    #getter for: Lcom/sprint/w/installer/VoicemailService;->log:Lcom/sprint/id/logger/Logger;
    invoke-static {v8}, Lcom/sprint/w/installer/VoicemailService;->access$000(Lcom/sprint/w/installer/VoicemailService;)Lcom/sprint/id/logger/Logger;

    move-result-object v8

    const-string v9, "Failed to install Voicemail application: "

    invoke-virtual {v8, v9, v2}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    .end local v2           #e:Ljava/lang/Exception;
    :goto_3d
    return-void

    .line 80
    .restart local v0       #b:[B
    .restart local v1       #c:I
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    :cond_3e
    :try_start_3e
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 81
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 83
    iget-object v8, p0, Lcom/sprint/w/installer/VoicemailService$1;->this$0:Lcom/sprint/w/installer/VoicemailService;

    const-string v9, "voicemail.apk"

    invoke-virtual {v8, v9}, Lcom/sprint/w/installer/VoicemailService;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 84
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 85
    .local v6, path:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 86
    .local v7, uri:Landroid/net/Uri;
    iget-object v8, p0, Lcom/sprint/w/installer/VoicemailService$1;->this$0:Lcom/sprint/w/installer/VoicemailService;

    #getter for: Lcom/sprint/w/installer/VoicemailService;->log:Lcom/sprint/id/logger/Logger;
    invoke-static {v8}, Lcom/sprint/w/installer/VoicemailService;->access$000(Lcom/sprint/w/installer/VoicemailService;)Lcom/sprint/id/logger/Logger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Installing Voicemail apk, path="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_87} :catch_31

    .line 89
    :try_start_87
    iget-object v8, p0, Lcom/sprint/w/installer/VoicemailService$1;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v9, p0, Lcom/sprint/w/installer/VoicemailService$1;->this$0:Lcom/sprint/w/installer/VoicemailService;

    iget-object v9, v9, Lcom/sprint/w/installer/VoicemailService;->mInstallObserver:Landroid/content/pm/IPackageInstallObserver;

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/sprint/w/installer/VoicemailService$1;->this$0:Lcom/sprint/w/installer/VoicemailService;

    invoke-virtual {v11}, Lcom/sprint/w/installer/VoicemailService;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v7, v9, v10, v11}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_97} :catch_98

    goto :goto_3d

    .line 90
    :catch_98
    move-exception v2

    .line 91
    .restart local v2       #e:Ljava/lang/Exception;
    :try_start_99
    iget-object v8, p0, Lcom/sprint/w/installer/VoicemailService$1;->this$0:Lcom/sprint/w/installer/VoicemailService;

    #getter for: Lcom/sprint/w/installer/VoicemailService;->log:Lcom/sprint/id/logger/Logger;
    invoke-static {v8}, Lcom/sprint/w/installer/VoicemailService;->access$000(Lcom/sprint/w/installer/VoicemailService;)Lcom/sprint/id/logger/Logger;

    move-result-object v8

    const-string v9, "Failed to invoke installPackage"

    invoke-virtual {v8, v9, v2}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    iget-object v8, p0, Lcom/sprint/w/installer/VoicemailService$1;->this$0:Lcom/sprint/w/installer/VoicemailService;

    #getter for: Lcom/sprint/w/installer/VoicemailService;->log:Lcom/sprint/id/logger/Logger;
    invoke-static {v8}, Lcom/sprint/w/installer/VoicemailService;->access$000(Lcom/sprint/w/installer/VoicemailService;)Lcom/sprint/id/logger/Logger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Removing file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->i(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_c3} :catch_31

    goto/16 :goto_3d
.end method
