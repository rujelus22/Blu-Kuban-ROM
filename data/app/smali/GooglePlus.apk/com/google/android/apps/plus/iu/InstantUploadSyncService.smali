.class public final Lcom/google/android/apps/plus/iu/InstantUploadSyncService;
.super Landroid/app/Service;
.source "InstantUploadSyncService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/iu/InstantUploadSyncService$CarryOverDummyReceiver;,
        Lcom/google/android/apps/plus/iu/InstantUploadSyncService$InstantUploadSyncAdapter;
    }
.end annotation


# static fields
.field private static sSyncAdapter:Lcom/google/android/apps/plus/iu/InstantUploadSyncService$InstantUploadSyncAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 198
    return-void
.end method

.method public static activateAccount(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "accountName"

    .prologue
    const/4 v2, 0x1

    .line 50
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .local v0, account:Landroid/accounts/Account;
    const-string v1, "com.google.android.apps.plus.iu.EsGoogleIuProvider"

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 52
    const-string v1, "com.google.android.apps.plus.iu.EsGoogleIuProvider"

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 53
    const-string v1, "com.google.android.apps.plus.iu.EsGoogleIuProvider"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 55
    invoke-static {p0}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->get(Landroid/content/Context;)Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->onAccountInitialized(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static deactivateAccount(Ljava/lang/String;)V
    .registers 4
    .parameter "accountName"

    .prologue
    .line 64
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v0, p0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .local v0, account:Landroid/accounts/Account;
    const-string v1, "com.google.android.apps.plus.iu.EsGoogleIuProvider"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 66
    const-string v1, "com.google.android.apps.plus.iu.EsGoogleIuProvider"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method private static declared-synchronized getSyncAdapter(Landroid/content/Context;)Lcom/google/android/apps/plus/iu/InstantUploadSyncService$InstantUploadSyncAdapter;
    .registers 3
    .parameter "context"

    .prologue
    .line 33
    const-class v1, Lcom/google/android/apps/plus/iu/InstantUploadSyncService;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/apps/plus/iu/InstantUploadSyncService;->sSyncAdapter:Lcom/google/android/apps/plus/iu/InstantUploadSyncService$InstantUploadSyncAdapter;

    if-nez v0, :cond_e

    .line 34
    new-instance v0, Lcom/google/android/apps/plus/iu/InstantUploadSyncService$InstantUploadSyncAdapter;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/iu/InstantUploadSyncService$InstantUploadSyncAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/apps/plus/iu/InstantUploadSyncService;->sSyncAdapter:Lcom/google/android/apps/plus/iu/InstantUploadSyncService$InstantUploadSyncAdapter;

    .line 36
    :cond_e
    sget-object v0, Lcom/google/android/apps/plus/iu/InstantUploadSyncService;->sSyncAdapter:Lcom/google/android/apps/plus/iu/InstantUploadSyncService$InstantUploadSyncAdapter;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 33
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 41
    invoke-static {p0}, Lcom/google/android/apps/plus/iu/InstantUploadSyncService;->getSyncAdapter(Landroid/content/Context;)Lcom/google/android/apps/plus/iu/InstantUploadSyncService$InstantUploadSyncAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/iu/InstantUploadSyncService$InstantUploadSyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
