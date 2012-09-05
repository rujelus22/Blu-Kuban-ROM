.class Lcom/google/android/finsky/services/ContentSyncService$CheckinHash;
.super Ljava/lang/Object;
.source "ContentSyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/services/ContentSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckinHash"
.end annotation


# instance fields
.field public account:Ljava/lang/String;

.field public localAssetHash:I

.field public systemAppHash:I

.field final synthetic this$0:Lcom/google/android/finsky/services/ContentSyncService;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/services/ContentSyncService;Ljava/lang/String;II)V
    .registers 5
    .parameter
    .parameter "account"
    .parameter "standardAppHash"
    .parameter "systemAppHash"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/android/finsky/services/ContentSyncService$CheckinHash;->this$0:Lcom/google/android/finsky/services/ContentSyncService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p2, p0, Lcom/google/android/finsky/services/ContentSyncService$CheckinHash;->account:Ljava/lang/String;

    .line 151
    iput p3, p0, Lcom/google/android/finsky/services/ContentSyncService$CheckinHash;->localAssetHash:I

    .line 152
    iput p4, p0, Lcom/google/android/finsky/services/ContentSyncService$CheckinHash;->systemAppHash:I

    .line 153
    return-void
.end method
