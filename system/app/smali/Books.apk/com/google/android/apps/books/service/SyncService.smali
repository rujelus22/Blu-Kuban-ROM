.class public Lcom/google/android/apps/books/service/SyncService;
.super Landroid/app/Service;
.source "SyncService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/service/SyncService$StubSyncUi;,
        Lcom/google/android/apps/books/service/SyncService$SyncUi;
    }
.end annotation


# static fields
.field public static final sSyncLock:Ljava/lang/Object;


# instance fields
.field private mSyncAdapter:Lcom/google/android/apps/books/service/SyncAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 186
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/apps/books/service/SyncService;->sSyncLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 251
    return-void
.end method

.method public static getVolumeIds(Landroid/os/Bundle;)[Ljava/lang/String;
    .registers 5
    .parameter "bundle"

    .prologue
    .line 239
    :try_start_0
    const-string v1, "SyncService.VOLUME_IDS"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/books/service/SyncService;->jsonToStringArray(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    .line 244
    :goto_a
    return-object v1

    .line 240
    :catch_b
    move-exception v0

    .line 241
    .local v0, e:Lorg/json/JSONException;
    const-string v1, "BooksSync"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 242
    const-string v1, "BooksSync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error decoding volume IDs extra: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_2d
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public static jsonToStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 224
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 225
    .local v0, array:Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 226
    .local v2, result:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, index:I
    :goto_c
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1b

    .line 227
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 226
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 229
    :cond_1b
    return-object v2
.end method

.method public static setVolumeIds(Landroid/os/Bundle;[Ljava/lang/String;)V
    .registers 4
    .parameter "bundle"
    .parameter "volumeIds"

    .prologue
    .line 216
    invoke-static {p1}, Lcom/google/android/apps/books/service/SyncService;->stringArrayToJson([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, encodedIds:Ljava/lang/String;
    const-string v1, "SyncService.VOLUME_IDS"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public static stringArrayToJson([Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "strings"

    .prologue
    .line 205
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 206
    .local v1, array:Lorg/json/JSONArray;
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_8
    if-ge v2, v3, :cond_12

    aget-object v4, v0, v2

    .line 207
    .local v4, string:Ljava/lang/String;
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 206
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 209
    .end local v4           #string:Ljava/lang/String;
    :cond_12
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/apps/books/service/SyncService;->mSyncAdapter:Lcom/google/android/apps/books/service/SyncAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/books/service/SyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 192
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 193
    new-instance v0, Lcom/google/android/apps/books/service/SyncAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/books/service/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/service/SyncAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/books/service/SyncService;->mSyncAdapter:Lcom/google/android/apps/books/service/SyncAdapter;

    .line 194
    return-void
.end method
