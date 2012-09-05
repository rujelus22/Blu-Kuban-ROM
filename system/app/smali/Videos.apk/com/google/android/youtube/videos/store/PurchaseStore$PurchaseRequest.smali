.class public Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;
.super Ljava/lang/Object;
.source "PurchaseStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/store/PurchaseStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PurchaseRequest"
.end annotation


# instance fields
.field public final userAuth:Lcom/google/android/youtube/core/model/UserAuth;

.field private final whereArgs:[Ljava/lang/String;

.field private final whereClause:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8
    .parameter "userAuth"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    const/4 v3, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const-string v1, "whereClause cannot be null"

    invoke-static {p2, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v1, "userAuth cannot be null"

    invoke-static {p1, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/UserAuth;

    iput-object v1, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "account = ? AND ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;->whereClause:Ljava/lang/String;

    .line 82
    if-nez p3, :cond_3a

    .line 83
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;->whereArgs:[Ljava/lang/String;

    .line 91
    :cond_39
    return-void

    .line 85
    :cond_3a
    array-length v1, p3

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;->whereArgs:[Ljava/lang/String;

    .line 86
    iget-object v1, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;->whereArgs:[Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 87
    const/4 v0, 0x0

    .local v0, i:I
    :goto_48
    array-length v1, p3

    if-ge v0, v1, :cond_39

    .line 88
    iget-object v1, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;->whereArgs:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v3, p3, v0

    aput-object v3, v1, v2

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_48
.end method

.method static synthetic access$500(Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;->whereClause:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;->whereArgs:[Ljava/lang/String;

    return-object v0
.end method
