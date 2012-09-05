.class public Lcom/google/android/youtube/videos/store/PurchaseRequests;
.super Ljava/lang/Object;
.source "PurchaseRequests.java"


# static fields
.field private static final ACTIVE_AND_RECENTLY_EXPIRED_CLAUSE:Ljava/lang/String;

.field private static final ACTIVE_CLAUSE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "purchase_type = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/core/model/Purchase$ItemType;->MOVIE:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Purchase$ItemType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "purchase_status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/core/model/Purchase$Status;->ACTIVE:Lcom/google/android/youtube/core/model/Purchase$Status;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Purchase$Status;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/videos/store/PurchaseRequests;->ACTIVE_CLAUSE:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "purchase_type = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/core/model/Purchase$ItemType;->MOVIE:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Purchase$ItemType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "purchase_status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/core/model/Purchase$Status;->ACTIVE:Lcom/google/android/youtube/core/model/Purchase$Status;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Purchase$Status;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "purchase_expiration_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > ?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/videos/store/PurchaseRequests;->ACTIVE_AND_RECENTLY_EXPIRED_CLAUSE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createActiveAndRecentlyExpiredPurchasesRequest(Lcom/google/android/youtube/core/model/UserAuth;J)Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;
    .registers 10
    .parameter "userAuth"
    .parameter "expiredWithinMillis"

    .prologue
    .line 33
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v0, v2, p1

    .line 34
    .local v0, minExpiration:J
    new-instance v2, Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;

    sget-object v3, Lcom/google/android/youtube/videos/store/PurchaseRequests;->ACTIVE_AND_RECENTLY_EXPIRED_CLAUSE:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v2, p0, v3, v4}, Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;-><init>(Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v2
.end method

.method public static createActivePurchasesRequest(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;
    .registers 4
    .parameter "userAuth"

    .prologue
    .line 28
    new-instance v0, Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;

    sget-object v1, Lcom/google/android/youtube/videos/store/PurchaseRequests;->ACTIVE_CLAUSE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;-><init>(Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method
