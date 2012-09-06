.class public Lcom/google/android/music/store/MediaStoreImportService$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaStoreImportService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/store/MediaStoreImportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Receiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 204
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 213
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 215
    const-string v3, "android.provider.action.MTP_SESSION_END"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 248
    :goto_e
    if-eqz v0, :cond_2c

    .line 250
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/music/store/MediaStoreImportService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 252
    invoke-static {}, Lcom/google/android/music/store/MediaStoreImportService;->access$500()Z

    move-result v1

    if-eqz v1, :cond_24

    const-string v1, "MediaStoreImportService"

    const-string v2, "Scanner finished. Starting media store import"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_24
    const-string v1, "MediaStoreImportService.import"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 257
    :cond_2c
    return-void

    .line 217
    :cond_2d
    const-string v3, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 218
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_45

    const-string v2, "file:///system/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    :goto_43
    move v0, v1

    .line 228
    goto :goto_e

    .line 223
    :cond_45
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/google/android/music/store/MediaStoreImportService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    const-string v2, "MediaStoreImportService.import_pending"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 226
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.music.IMPORT_PENDING"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_43

    .line 228
    :cond_5f
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_95

    .line 229
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 230
    if-eqz v2, :cond_77

    const-string v3, "file:///system/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_77

    move v0, v1

    .line 232
    goto :goto_e

    .line 239
    :cond_77
    invoke-static {p1}, Lcom/google/android/music/store/MediaStoreImporter;->requestMediaStoreVersionCheck(Landroid/content/Context;)V

    .line 241
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/music/store/MediaStoreImportService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 242
    const-string v2, "MediaStoreImportService.import_pending"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 244
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.music.IMPORT_PENDING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_e

    :cond_95
    move v0, v1

    goto/16 :goto_e
.end method
