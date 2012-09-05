.class public Lcom/google/android/apps/books/service/SyncService$StubSyncUi;
.super Ljava/lang/Object;
.source "SyncService.java"

# interfaces
.implements Lcom/google/android/apps/books/service/SyncService$SyncUi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/service/SyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StubSyncUi"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deletedVolumes(Landroid/accounts/Account;Ljava/util/List;)V
    .registers 3
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p2, titles:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public finishedAllVolumeDownloads()V
    .registers 1

    .prologue
    .line 268
    return-void
.end method

.method public finishedVolumeDownload(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "account"
    .parameter "volumeId"
    .parameter "title"

    .prologue
    .line 264
    return-void
.end method

.method public shouldNotifyByDefault()Z
    .registers 2

    .prologue
    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public startingVolumeDownload(II)V
    .registers 3
    .parameter "volumeNumber"
    .parameter "volumeCount"

    .prologue
    .line 260
    return-void
.end method
