.class Lcom/google/android/picasasync/PicasaSyncManager$SyncRequest;
.super Ljava/lang/Object;
.source "PicasaSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/PicasaSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncRequest"
.end annotation


# instance fields
.field public account:Ljava/lang/String;

.field public state:Lcom/google/android/picasasync/SyncState;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/picasasync/SyncState;)V
    .registers 3
    .parameter "account"
    .parameter "state"

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/google/android/picasasync/PicasaSyncManager$SyncRequest;->account:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Lcom/google/android/picasasync/PicasaSyncManager$SyncRequest;->state:Lcom/google/android/picasasync/SyncState;

    .line 102
    return-void
.end method
