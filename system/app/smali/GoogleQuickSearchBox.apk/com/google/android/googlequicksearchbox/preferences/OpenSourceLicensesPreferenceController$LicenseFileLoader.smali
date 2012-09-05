.class Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController$LicenseFileLoader;
.super Ljava/lang/Object;
.source "OpenSourceLicensesPreferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LicenseFileLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;)V
    .registers 2
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController$LicenseFileLoader;->this$0:Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/16 v8, 0x800

    .line 184
    const/4 v6, 0x0

    .line 186
    .local v6, status:I
    const/4 v2, 0x0

    .line 187
    .local v2, inputReader:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 189
    .local v0, data:Ljava/lang/StringBuilder;
    const/16 v8, 0x800

    :try_start_b
    new-array v7, v8, [C

    .line 191
    .local v7, tmp:[C
    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v8, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController$LicenseFileLoader;->this$0:Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;

    #getter for: Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->access$600(Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "licenses.txt"

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_63
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_22} :catch_71

    .line 192
    .end local v2           #inputReader:Ljava/io/InputStreamReader;
    .local v3, inputReader:Ljava/io/InputStreamReader;
    :goto_22
    :try_start_22
    invoke-virtual {v3, v7}, Ljava/io/InputStreamReader;->read([C)I

    move-result v5

    .local v5, numRead:I
    if-ltz v5, :cond_59

    .line 193
    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_6e
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2c} :catch_2d

    goto :goto_22

    .line 195
    .end local v5           #numRead:I
    :catch_2d
    move-exception v1

    move-object v2, v3

    .line 196
    .end local v3           #inputReader:Ljava/io/InputStreamReader;
    .end local v7           #tmp:[C
    .local v1, e:Ljava/io/IOException;
    .restart local v2       #inputReader:Ljava/io/InputStreamReader;
    :goto_2f
    :try_start_2f
    const-string v8, "QSB.OpenSourceLicensesController"

    const-string v9, "failed to load licenses"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_63

    .line 197
    const/4 v6, 0x2

    .line 200
    if-eqz v2, :cond_3c

    .line 201
    :try_start_39
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_6a

    .line 208
    .end local v1           #e:Ljava/io/IOException;
    :cond_3c
    :goto_3c
    iget-object v8, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController$LicenseFileLoader;->this$0:Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;

    #getter for: Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->access$700(Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 209
    .local v4, msg:Landroid/os/Message;
    if-nez v6, :cond_4f

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 212
    :cond_4f
    iget-object v8, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController$LicenseFileLoader;->this$0:Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;

    #getter for: Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->access$700(Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 213
    return-void

    .line 200
    .end local v2           #inputReader:Ljava/io/InputStreamReader;
    .end local v4           #msg:Landroid/os/Message;
    .restart local v3       #inputReader:Ljava/io/InputStreamReader;
    .restart local v5       #numRead:I
    .restart local v7       #tmp:[C
    :cond_59
    if-eqz v3, :cond_5e

    .line 201
    :try_start_5b
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_60

    :cond_5e
    move-object v2, v3

    .line 204
    .end local v3           #inputReader:Ljava/io/InputStreamReader;
    .restart local v2       #inputReader:Ljava/io/InputStreamReader;
    goto :goto_3c

    .line 203
    .end local v2           #inputReader:Ljava/io/InputStreamReader;
    .restart local v3       #inputReader:Ljava/io/InputStreamReader;
    :catch_60
    move-exception v8

    move-object v2, v3

    .line 205
    .end local v3           #inputReader:Ljava/io/InputStreamReader;
    .restart local v2       #inputReader:Ljava/io/InputStreamReader;
    goto :goto_3c

    .line 199
    .end local v5           #numRead:I
    .end local v7           #tmp:[C
    :catchall_63
    move-exception v8

    .line 200
    :goto_64
    if-eqz v2, :cond_69

    .line 201
    :try_start_66
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_6c

    .line 204
    :cond_69
    :goto_69
    throw v8

    .line 203
    .restart local v1       #e:Ljava/io/IOException;
    :catch_6a
    move-exception v8

    goto :goto_3c

    .end local v1           #e:Ljava/io/IOException;
    :catch_6c
    move-exception v9

    goto :goto_69

    .line 199
    .end local v2           #inputReader:Ljava/io/InputStreamReader;
    .restart local v3       #inputReader:Ljava/io/InputStreamReader;
    .restart local v7       #tmp:[C
    :catchall_6e
    move-exception v8

    move-object v2, v3

    .end local v3           #inputReader:Ljava/io/InputStreamReader;
    .restart local v2       #inputReader:Ljava/io/InputStreamReader;
    goto :goto_64

    .line 195
    .end local v7           #tmp:[C
    :catch_71
    move-exception v1

    goto :goto_2f
.end method
