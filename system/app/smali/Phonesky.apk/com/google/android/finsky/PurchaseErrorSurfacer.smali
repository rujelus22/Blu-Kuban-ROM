.class public Lcom/google/android/finsky/PurchaseErrorSurfacer;
.super Ljava/lang/Object;
.source "PurchaseErrorSurfacer.java"


# static fields
.field private static sPurchaseStatusTracker:Lcom/google/android/finsky/model/PurchaseStatusTracker;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize(Lcom/google/android/finsky/model/PurchaseStatusTracker;)V
    .registers 3
    .parameter "statusTracker"

    .prologue
    .line 21
    sget-object v0, Lcom/google/android/finsky/PurchaseErrorSurfacer;->sPurchaseStatusTracker:Lcom/google/android/finsky/model/PurchaseStatusTracker;

    if-eqz v0, :cond_c

    .line 22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_c
    sput-object p0, Lcom/google/android/finsky/PurchaseErrorSurfacer;->sPurchaseStatusTracker:Lcom/google/android/finsky/model/PurchaseStatusTracker;

    .line 25
    new-instance v0, Lcom/google/android/finsky/PurchaseErrorSurfacer$1;

    invoke-direct {v0}, Lcom/google/android/finsky/PurchaseErrorSurfacer$1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/model/PurchaseStatusTracker;->attach(Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatusListener;)V

    .line 41
    return-void
.end method
