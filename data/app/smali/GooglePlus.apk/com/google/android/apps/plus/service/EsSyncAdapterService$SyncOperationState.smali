.class public final Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncOperationState;
.super Ljava/lang/Object;
.source "EsSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/service/EsSyncAdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncOperationState"
.end annotation


# instance fields
.field public count:I

.field public duration:J

.field public metrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

.field public operation:Ljava/lang/String;

.field public subCount:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
