.class public Lcom/google/android/finsky/model/PurchaseStatusTracker;
.super Ljava/lang/Object;
.source "PurchaseStatusTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;,
        Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;,
        Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;,
        Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatusListener;
    }
.end annotation


# instance fields
.field private final mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mPurchaseStatusMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/model/PurchaseStatusTracker;->mListeners:Ljava/util/HashSet;

    .line 82
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/model/PurchaseStatusTracker;->mPurchaseStatusMap:Ljava/util/Map;

    return-void
.end method

.method private notifyPurchaseStateChanged(Ljava/lang/String;Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;)V
    .registers 6
    .parameter "docId"
    .parameter "offerType"

    .prologue
    .line 107
    iget-object v2, p0, Lcom/google/android/finsky/model/PurchaseStatusTracker;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatusListener;

    .line 108
    .local v1, listener:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatusListener;
    invoke-interface {v1, p1, p2}, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatusListener;->onPurchaseStatusChanged(Ljava/lang/String;Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;)V

    goto :goto_6

    .line 110
    .end local v1           #listener:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatusListener;
    :cond_16
    return-void
.end method

.method private switchState(Ljava/lang/String;ILcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;)V
    .registers 8
    .parameter "docId"
    .parameter "offerType"
    .parameter "newState"
    .parameter "error"

    .prologue
    .line 148
    if-nez p1, :cond_a

    .line 149
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot track the purchase of an item with a null doc ID"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :cond_a
    iget-object v1, p0, Lcom/google/android/finsky/model/PurchaseStatusTracker;->mPurchaseStatusMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 154
    iget-object v1, p0, Lcom/google/android/finsky/model/PurchaseStatusTracker;->mPurchaseStatusMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;

    .line 160
    .local v0, status:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;
    :goto_1a
    iput-object p1, v0, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;->docId:Ljava/lang/String;

    .line 161
    iput-object p3, v0, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;->state:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

    .line 162
    iput-object p4, v0, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;->error:Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;->lastUpdate:J

    .line 164
    sget-object v1, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;->PURCHASE_INITIATED:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

    if-ne p3, v1, :cond_2d

    if-nez p2, :cond_2d

    .line 165
    const/4 p2, 0x1

    .line 167
    :cond_2d
    iput p2, v0, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;->offerType:I

    .line 168
    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/model/PurchaseStatusTracker;->notifyPurchaseStateChanged(Ljava/lang/String;Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;)V

    .line 169
    return-void

    .line 157
    .end local v0           #status:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;
    :cond_33
    new-instance v0, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;-><init>(Lcom/google/android/finsky/model/PurchaseStatusTracker;)V

    .line 158
    .restart local v0       #status:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;
    iget-object v1, p0, Lcom/google/android/finsky/model/PurchaseStatusTracker;->mPurchaseStatusMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a
.end method


# virtual methods
.method public attach(Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatusListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/finsky/model/PurchaseStatusTracker;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method public clearPurchaseStatusMap()V
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/finsky/model/PurchaseStatusTracker;->mPurchaseStatusMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 219
    return-void
.end method

.method public detach(Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatusListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/finsky/model/PurchaseStatusTracker;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method public getPurchaseStatus(Ljava/lang/String;)Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;
    .registers 3
    .parameter "docId"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/finsky/model/PurchaseStatusTracker;->mPurchaseStatusMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;

    return-object v0
.end method

.method public isPendingPurchase(Ljava/lang/String;)Z
    .registers 4
    .parameter "docId"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/finsky/model/PurchaseStatusTracker;->mPurchaseStatusMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/finsky/model/PurchaseStatusTracker;->mPurchaseStatusMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;

    iget-object v0, v0, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;->state:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

    sget-object v1, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;->PURCHASE_INITIATED:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

    if-ne v0, v1, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3
    .parameter "docId"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/finsky/model/PurchaseStatusTracker;->mPurchaseStatusMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 199
    iget-object v0, p0, Lcom/google/android/finsky/model/PurchaseStatusTracker;->mPurchaseStatusMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_d
    return-void
.end method

.method public switchState(Ljava/lang/String;ILcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;)V
    .registers 6
    .parameter "docId"
    .parameter "offerType"
    .parameter "stateChange"

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, error:Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;
    sget-object v1, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;->PURCHASE_COMPLETED_WITH_ERROR:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

    if-ne p3, v1, :cond_a

    .line 123
    new-instance v0, Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;

    .end local v0           #error:Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;
    invoke-direct {v0}, Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;-><init>()V

    .line 125
    .restart local v0       #error:Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;
    :cond_a
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/finsky/model/PurchaseStatusTracker;->switchState(Ljava/lang/String;ILcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;)V

    .line 126
    return-void
.end method

.method public switchToError(Ljava/lang/String;ILcom/google/android/finsky/model/PurchaseStatusTracker$Error;)V
    .registers 5
    .parameter "docId"
    .parameter "offerType"
    .parameter "error"

    .prologue
    .line 136
    sget-object v0, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;->PURCHASE_COMPLETED_WITH_ERROR:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/finsky/model/PurchaseStatusTracker;->switchState(Ljava/lang/String;ILcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;)V

    .line 137
    return-void
.end method
