.class Lcom/google/android/apps/plus/settings/SettingsActivity$InstantUploadSettingsLoader;
.super Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/settings/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstantUploadSettingsLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/settings/SettingsActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/settings/SettingsActivity;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "context"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/google/android/apps/plus/settings/SettingsActivity$InstantUploadSettingsLoader;->this$0:Lcom/google/android/apps/plus/settings/SettingsActivity;

    .line 231
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 232
    return-void
.end method


# virtual methods
.method public esLoadInBackground()Ljava/lang/Object;
    .registers 10

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 241
    invoke-virtual {p0}, Lcom/google/android/apps/plus/settings/SettingsActivity$InstantUploadSettingsLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 242
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/google/android/apps/plus/iu/InstantUploadFacade;->settingsUri:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const-string v4, "auto_upload_enabled"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 245
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_37

    .line 247
    :try_start_1b
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 248
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v7, :cond_38

    .line 249
    .local v7, instantUploadEnabled:Z
    :goto_28
    iget-object v1, p0, Lcom/google/android/apps/plus/settings/SettingsActivity$InstantUploadSettingsLoader;->this$0:Lcom/google/android/apps/plus/settings/SettingsActivity;

    iget-object v1, v1, Lcom/google/android/apps/plus/settings/SettingsActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/apps/plus/settings/SettingsActivity$InstantUploadSettingsLoader$1;

    invoke-direct {v2, p0, v7}, Lcom/google/android/apps/plus/settings/SettingsActivity$InstantUploadSettingsLoader$1;-><init>(Lcom/google/android/apps/plus/settings/SettingsActivity$InstantUploadSettingsLoader;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_34
    .catchall {:try_start_1b .. :try_end_34} :catchall_3a

    .line 259
    .end local v7           #instantUploadEnabled:Z
    :cond_34
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 263
    :cond_37
    return-object v3

    :cond_38
    move v7, v8

    .line 248
    goto :goto_28

    .line 259
    :catchall_3a
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method protected onStartLoading()V
    .registers 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/google/android/apps/plus/settings/SettingsActivity$InstantUploadSettingsLoader;->forceLoad()V

    .line 237
    return-void
.end method
