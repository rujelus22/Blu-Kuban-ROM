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
.field public mBunchCommand:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

.field public mRequestId:I

.field final synthetic this$0:Lcom/google/android/apps/plus/realtimechat/BunchClient;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/realtimechat/BunchClient;ILcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V
    .registers 4
    .parameter
    .parameter "requestId"
    .parameter "bunchCommand"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->this$0:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p2, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mRequestId:I

    .line 68
    iput-object p3, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mBunchCommand:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    .line 69
    return-void
.end method
