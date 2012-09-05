.class interface abstract Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$SessionKeyVolumeQuery;
.super Ljava/lang/Object;
.source "BulkSessionKeyUpgradeTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "SessionKeyVolumeQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 282
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "volume_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$SessionKeyVolumeQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
