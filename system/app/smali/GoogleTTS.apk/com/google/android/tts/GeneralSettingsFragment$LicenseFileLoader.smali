.class Lcom/google/android/tts/GeneralSettingsFragment$LicenseFileLoader;
.super Ljava/lang/Object;
.source "GeneralSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/tts/GeneralSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LicenseFileLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/tts/GeneralSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/tts/GeneralSettingsFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/android/tts/GeneralSettingsFragment$LicenseFileLoader;->this$0:Lcom/google/android/tts/GeneralSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/16 v8, 0x800

    .line 126
    const/4 v6, 0x0

    .line 128
    .local v6, status:I
    const/4 v2, 0x0

    .line 129
    .local v2, inputReader:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 131
    .local v0, data:Ljava/lang/StringBuilder;
    const/16 v8, 0x800

    :try_start_b
    new-array v7, v8, [C

    .line 133
    .local v7, tmp:[C
    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v8, p0, Lcom/google/android/tts/GeneralSettingsFragment$LicenseFileLoader;->this$0:Lcom/google/android/tts/GeneralSettingsFragment;

    #getter for: Lcom/google/android/tts/GeneralSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/google/android/tts/GeneralSettingsFragment;->access$500(Lcom/google/android/tts/GeneralSettingsFragment;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "licenses.txt"

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_5c
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_22} :catch_6a

    .line 134
    .end local v2           #inputReader:Ljava/io/InputStreamReader;
    .local v3, inputReader:Ljava/io/InputStreamReader;
    :goto_22
    :try_start_22
    invoke-virtual {v3, v7}, Ljava/io/InputStreamReader;->read([C)I

    move-result v5

    .local v5, numRead:I
    if-ltz v5, :cond_52

    .line 135
    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_67
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2c} :catch_2d

    goto :goto_22

    .line 137
    .end local v5           #numRead:I
    :catch_2d
    move-exception v1

    move-object v2, v3

    .line 138
    .end local v3           #inputReader:Ljava/io/InputStreamReader;
    .end local v7           #tmp:[C
    .local v1, e:Ljava/io/IOException;
    .restart local v2       #inputReader:Ljava/io/InputStreamReader;
    :goto_2f
    const/4 v6, 0x2

    .line 141
    if-eqz v2, :cond_35

    .line 142
    :try_start_32
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_63

    .line 149
    .end local v1           #e:Ljava/io/IOException;
    :cond_35
    :goto_35
    iget-object v8, p0, Lcom/google/android/tts/GeneralSettingsFragment$LicenseFileLoader;->this$0:Lcom/google/android/tts/GeneralSettingsFragment;

    #getter for: Lcom/google/android/tts/GeneralSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/google/android/tts/GeneralSettingsFragment;->access$600(Lcom/google/android/tts/GeneralSettingsFragment;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 150
    .local v4, msg:Landroid/os/Message;
    if-nez v6, :cond_48

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 153
    :cond_48
    iget-object v8, p0, Lcom/google/android/tts/GeneralSettingsFragment$LicenseFileLoader;->this$0:Lcom/google/android/tts/GeneralSettingsFragment;

    #getter for: Lcom/google/android/tts/GeneralSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/google/android/tts/GeneralSettingsFragment;->access$600(Lcom/google/android/tts/GeneralSettingsFragment;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 154
    return-void

    .line 141
    .end local v2           #inputReader:Ljava/io/InputStreamReader;
    .end local v4           #msg:Landroid/os/Message;
    .restart local v3       #inputReader:Ljava/io/InputStreamReader;
    .restart local v5       #numRead:I
    .restart local v7       #tmp:[C
    :cond_52
    if-eqz v3, :cond_57

    .line 142
    :try_start_54
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_59

    :cond_57
    move-object v2, v3

    .line 145
    .end local v3           #inputReader:Ljava/io/InputStreamReader;
    .restart local v2       #inputReader:Ljava/io/InputStreamReader;
    goto :goto_35

    .line 144
    .end local v2           #inputReader:Ljava/io/InputStreamReader;
    .restart local v3       #inputReader:Ljava/io/InputStreamReader;
    :catch_59
    move-exception v8

    move-object v2, v3

    .line 146
    .end local v3           #inputReader:Ljava/io/InputStreamReader;
    .restart local v2       #inputReader:Ljava/io/InputStreamReader;
    goto :goto_35

    .line 140
    .end local v5           #numRead:I
    .end local v7           #tmp:[C
    :catchall_5c
    move-exception v8

    .line 141
    :goto_5d
    if-eqz v2, :cond_62

    .line 142
    :try_start_5f
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_65

    .line 145
    :cond_62
    :goto_62
    throw v8

    .line 144
    .restart local v1       #e:Ljava/io/IOException;
    :catch_63
    move-exception v8

    goto :goto_35

    .end local v1           #e:Ljava/io/IOException;
    :catch_65
    move-exception v9

    goto :goto_62

    .line 140
    .end local v2           #inputReader:Ljava/io/InputStreamReader;
    .restart local v3       #inputReader:Ljava/io/InputStreamReader;
    .restart local v7       #tmp:[C
    :catchall_67
    move-exception v8

    move-object v2, v3

    .end local v3           #inputReader:Ljava/io/InputStreamReader;
    .restart local v2       #inputReader:Ljava/io/InputStreamReader;
    goto :goto_5d

    .line 137
    .end local v7           #tmp:[C
    :catch_6a
    move-exception v1

    goto :goto_2f
.end method
