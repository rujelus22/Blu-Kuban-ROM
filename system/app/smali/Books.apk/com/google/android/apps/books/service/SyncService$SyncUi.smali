.class public interface abstract Lcom/google/android/apps/books/service/SyncService$SyncUi;
.super Ljava/lang/Object;
.source "SyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/service/SyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SyncUi"
.end annotation


# virtual methods
.method public abstract deletedVolumes(Landroid/accounts/Account;Ljava/util/List;)V
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
.end method

.method public abstract finishedAllVolumeDownloads()V
.end method

.method public abstract finishedVolumeDownload(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract shouldNotifyByDefault()Z
.end method

.method public abstract startingVolumeDownload(II)V
.end method
