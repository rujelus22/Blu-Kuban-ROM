.class Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$KeyVolume;
.super Ljava/lang/Object;
.source "BulkSessionKeyUpgradeTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyVolume"
.end annotation


# instance fields
.field sessionKeyId:J

.field volumeId:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$KeyVolume;->sessionKeyId:J

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$KeyVolume;->volumeId:Ljava/lang/String;

    .line 301
    return-void
.end method
