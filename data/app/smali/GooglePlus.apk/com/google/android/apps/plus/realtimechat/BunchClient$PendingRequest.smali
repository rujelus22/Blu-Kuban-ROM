.class Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
.super Ljava/lang/Object;
.source "BunchClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/realtimechat/BunchClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingRequest"
.end annotation


# instance fields
.field mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

.field public mRequest:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

.field public mRequestId:I

.field public mRetryCount:I

.field public mTimestamp:J

.field final synthetic this$0:Lcom/google/android/apps/plus/realtimechat/BunchClient;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/realtimechat/BunchClient;ILcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;JI)V
    .registers 7
    .parameter
    .parameter "requestId"
    .parameter "request"
    .parameter "timestamp"
    .parameter "retryCount"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->this$0:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput p2, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mRequestId:I

    .line 120
    iput-object p3, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mRequest:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    .line 121
    iput-wide p4, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mTimestamp:J

    .line 122
    iput p6, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mRetryCount:I

    .line 123
    return-void
.end method
