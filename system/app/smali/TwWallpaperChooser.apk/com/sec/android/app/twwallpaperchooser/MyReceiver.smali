.class public Lcom/sec/android/app/twwallpaperchooser/MyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MyReceiver.java"


# instance fields
.field private mMyReceiverContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private changeWallpaperToDefault()V
    .registers 10

    .prologue
    .line 25
    iget-object v7, p0, Lcom/sec/android/app/twwallpaperchooser/MyReceiver;->mMyReceiverContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 27
    .local v5, mContext:Landroid/content/Context;
    const-string v7, "wallpaper"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/WallpaperManager;

    .line 28
    .local v6, wpm:Landroid/app/WallpaperManager;
    new-instance v2, Ljava/io/File;

    const-string v7, "/system/wallpaper/default_wallpaper/default_wallpaper.jpg"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .local v2, file:Ljava/io/File;
    const/4 v3, 0x0

    .line 32
    .local v3, is:Ljava/io/InputStream;
    :try_start_16
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_40

    move-result v7

    if-eqz v7, :cond_47

    .line 34
    :try_start_1c
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_40
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_21} :catch_2b

    .line 35
    .end local v3           #is:Ljava/io/InputStream;
    .local v4, is:Ljava/io/InputStream;
    :try_start_21
    invoke-virtual {v6, v4}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_65
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_68

    move-object v3, v4

    .line 55
    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    :goto_25
    if-eqz v3, :cond_2a

    .line 56
    :try_start_27
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_5b

    .line 61
    :cond_2a
    :goto_2a
    return-void

    .line 36
    :catch_2b
    move-exception v0

    .line 37
    .local v0, e:Ljava/io/IOException;
    :goto_2c
    :try_start_2c
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1080223

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_40

    move-result-object v3

    .line 39
    :try_start_37
    invoke-virtual {v6, v3}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_40
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_25

    .line 40
    :catch_3b
    move-exception v1

    .line 41
    .local v1, e1:Ljava/io/IOException;
    :try_start_3c
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_25

    .line 54
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #e1:Ljava/io/IOException;
    :catchall_40
    move-exception v7

    .line 55
    :goto_41
    if-eqz v3, :cond_46

    .line 56
    :try_start_43
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_60

    .line 59
    :cond_46
    :goto_46
    throw v7

    .line 46
    :cond_47
    :try_start_47
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1080223

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_51
    .catchall {:try_start_47 .. :try_end_51} :catchall_40

    move-result-object v3

    .line 48
    :try_start_52
    invoke-virtual {v6, v3}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_40
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_25

    .line 49
    :catch_56
    move-exception v0

    .line 50
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_57
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_40

    goto :goto_25

    .line 57
    .end local v0           #e:Ljava/io/IOException;
    :catch_5b
    move-exception v0

    .line 58
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2a

    .line 57
    .end local v0           #e:Ljava/io/IOException;
    :catch_60
    move-exception v0

    .line 58
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_46

    .line 54
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    :catchall_65
    move-exception v7

    move-object v3, v4

    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    goto :goto_41

    .line 36
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    :catch_68
    move-exception v0

    move-object v3, v4

    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    goto :goto_2c
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 14
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 15
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MULTI_CSC_CLEAR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 17
    iput-object p1, p0, Lcom/sec/android/app/twwallpaperchooser/MyReceiver;->mMyReceiverContext:Landroid/content/Context;

    .line 18
    invoke-direct {p0}, Lcom/sec/android/app/twwallpaperchooser/MyReceiver;->changeWallpaperToDefault()V

    .line 20
    :cond_11
    return-void
.end method
