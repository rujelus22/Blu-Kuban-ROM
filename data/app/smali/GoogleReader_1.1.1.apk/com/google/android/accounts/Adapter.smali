.class Lcom/google/android/accounts/Adapter;
.super Ljava/lang/Object;
.source "AbstractSyncService.java"


# static fields
.field private static final AUTO_INITIALIZE:Z = true


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSyncAdapter:Lcom/google/android/accounts/AbstractSyncAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/accounts/AbstractSyncAdapter;)V
    .registers 3
    .parameter "context"
    .parameter "syncAdapter"

    .prologue
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput-object p1, p0, Lcom/google/android/accounts/Adapter;->mContext:Landroid/content/Context;

    .line 269
    iput-object p2, p0, Lcom/google/android/accounts/Adapter;->mSyncAdapter:Lcom/google/android/accounts/AbstractSyncAdapter;

    .line 270
    return-void
.end method

.method static synthetic access$000(Landroid/accounts/Account;)Lcom/google/android/accounts/Account;
    .registers 2
    .parameter "x0"

    .prologue
    .line 255
    invoke-static {p0}, Lcom/google/android/accounts/Adapter;->convertAccount(Landroid/accounts/Account;)Lcom/google/android/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/accounts/Adapter;)Lcom/google/android/accounts/AbstractSyncAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/accounts/Adapter;->mSyncAdapter:Lcom/google/android/accounts/AbstractSyncAdapter;

    return-object v0
.end method

.method private static convertAccount(Landroid/accounts/Account;)Lcom/google/android/accounts/Account;
    .registers 4
    .parameter "account"

    .prologue
    .line 260
    new-instance v0, Lcom/google/android/accounts/Account;

    iget-object v1, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getSyncAdapterBinder()Landroid/os/IBinder;
    .registers 4

    .prologue
    .line 273
    new-instance v0, Lcom/google/android/accounts/Adapter$1;

    iget-object v1, p0, Lcom/google/android/accounts/Adapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/accounts/Adapter$1;-><init>(Lcom/google/android/accounts/Adapter;Landroid/content/Context;Z)V

    invoke-virtual {v0}, Lcom/google/android/accounts/Adapter$1;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
