.class public Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;
.super Ljava/lang/Object;
.source "PurchaseStatusTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/model/PurchaseStatusTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PurchaseStatus"
.end annotation


# instance fields
.field public docId:Ljava/lang/String;

.field public error:Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;

.field public lastUpdate:J

.field public offerType:I

.field public state:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

.field final synthetic this$0:Lcom/google/android/finsky/model/PurchaseStatusTracker;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/model/PurchaseStatusTracker;)V
    .registers 2
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;->this$0:Lcom/google/android/finsky/model/PurchaseStatusTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
