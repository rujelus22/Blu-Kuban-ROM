.class Lcom/google/android/music/LicenseActivity$LicenseFileLoader;
.super Ljava/lang/Object;
.source "LicenseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/LicenseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LicenseFileLoader"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/google/android/music/LicenseActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/music/LicenseActivity;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "handler"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/music/LicenseActivity$LicenseFileLoader;->this$0:Lcom/google/android/music/LicenseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p2, p0, Lcom/google/android/music/LicenseActivity$LicenseFileLoader;->mHandler:Landroid/os/Handler;

    .line 44
    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/16 v8, 0x800

    .line 48
    const/4 v6, 0x0

    .line 50
    .local v6, status:I
    const/4 v2, 0x0

    .line 51
    .local v2, inputReader:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 53
    .local v0, data:Ljava/lang/StringBuilder;
    const/16 v8, 0x800

    :try_start_b
    new-array v7, v8, [C

    .line 56
    .local v7, tmp:[C
    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/util/zip/GZIPInputStream;

    iget-object v9, p0, Lcom/google/android/music/LicenseActivity$LicenseFileLoader;->this$0:Lcom/google/android/music/LicenseActivity;

    invoke-virtual {v9}, Lcom/google/android/music/LicenseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/high16 v10, 0x7f07

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_23
    .catchall {:try_start_b .. :try_end_23} :catchall_6c
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_23} :catch_7a

    .line 59
    .end local v2           #inputReader:Ljava/io/InputStreamReader;
    .local v3, inputReader:Ljava/io/InputStreamReader;
    :goto_23
    :try_start_23
    invoke-virtual {v3, v7}, Ljava/io/InputStreamReader;->read([C)I

    move-result v5

    .local v5, numRead:I
    if-ltz v5, :cond_62

    .line 60
    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_77
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2d} :catch_2e

    goto :goto_23

    .line 62
    .end local v5           #numRead:I
    :catch_2e
    move-exception v1

    move-object v2, v3

    .line 63
    .end local v3           #inputReader:Ljava/io/InputStreamReader;
    .end local v7           #tmp:[C
    .local v1, e:Ljava/io/IOException;
    .restart local v2       #inputReader:Ljava/io/InputStreamReader;
    :goto_30
    :try_start_30
    const-string v8, "LicenseActivity"

    const-string v9, "Error reading license HTML file"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_6c

    .line 64
    const/4 v6, 0x1

    .line 67
    if-eqz v2, :cond_3d

    .line 68
    :try_start_3a
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_73

    .line 74
    .end local v1           #e:Ljava/io/IOException;
    :cond_3d
    :goto_3d
    if-nez v6, :cond_4d

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4d

    .line 75
    const-string v8, "LicenseActivity"

    const-string v9, "License HTML is empty"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v6, 0x2

    .line 80
    :cond_4d
    iget-object v8, p0, Lcom/google/android/music/LicenseActivity$LicenseFileLoader;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 81
    .local v4, msg:Landroid/os/Message;
    if-nez v6, :cond_5c

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 84
    :cond_5c
    iget-object v8, p0, Lcom/google/android/music/LicenseActivity$LicenseFileLoader;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 85
    return-void

    .line 67
    .end local v2           #inputReader:Ljava/io/InputStreamReader;
    .end local v4           #msg:Landroid/os/Message;
    .restart local v3       #inputReader:Ljava/io/InputStreamReader;
    .restart local v5       #numRead:I
    .restart local v7       #tmp:[C
    :cond_62
    if-eqz v3, :cond_67

    .line 68
    :try_start_64
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_69

    :cond_67
    move-object v2, v3

    .line 71
    .end local v3           #inputReader:Ljava/io/InputStreamReader;
    .restart local v2       #inputReader:Ljava/io/InputStreamReader;
    goto :goto_3d

    .line 70
    .end local v2           #inputReader:Ljava/io/InputStreamReader;
    .restart local v3       #inputReader:Ljava/io/InputStreamReader;
    :catch_69
    move-exception v8

    move-object v2, v3

    .line 72
    .end local v3           #inputReader:Ljava/io/InputStreamReader;
    .restart local v2       #inputReader:Ljava/io/InputStreamReader;
    goto :goto_3d

    .line 66
    .end local v5           #numRead:I
    .end local v7           #tmp:[C
    :catchall_6c
    move-exception v8

    .line 67
    :goto_6d
    if-eqz v2, :cond_72

    .line 68
    :try_start_6f
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_75

    .line 71
    :cond_72
    :goto_72
    throw v8

    .line 70
    .restart local v1       #e:Ljava/io/IOException;
    :catch_73
    move-exception v8

    goto :goto_3d

    .end local v1           #e:Ljava/io/IOException;
    :catch_75
    move-exception v9

    goto :goto_72

    .line 66
    .end local v2           #inputReader:Ljava/io/InputStreamReader;
    .restart local v3       #inputReader:Ljava/io/InputStreamReader;
    .restart local v7       #tmp:[C
    :catchall_77
    move-exception v8

    move-object v2, v3

    .end local v3           #inputReader:Ljava/io/InputStreamReader;
    .restart local v2       #inputReader:Ljava/io/InputStreamReader;
    goto :goto_6d

    .line 62
    .end local v7           #tmp:[C
    :catch_7a
    move-exception v1

    goto :goto_30
.end method
