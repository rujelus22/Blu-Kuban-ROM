.class final Lcom/google/android/apps/books/model/VolumeStatesEditor$SaveCallable;
.super Ljava/lang/Object;
.source "VolumeStatesEditor.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/model/VolumeStatesEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SaveCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mValues:Landroid/content/ContentValues;


# direct methods
.method private constructor <init>(Landroid/content/ContentResolver;Landroid/accounts/Account;Landroid/content/ContentValues;)V
    .registers 4
    .parameter "resolver"
    .parameter "account"
    .parameter "values"

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p1, p0, Lcom/google/android/apps/books/model/VolumeStatesEditor$SaveCallable;->mResolver:Landroid/content/ContentResolver;

    .line 228
    iput-object p2, p0, Lcom/google/android/apps/books/model/VolumeStatesEditor$SaveCallable;->mAccount:Landroid/accounts/Account;

    .line 229
    iput-object p3, p0, Lcom/google/android/apps/books/model/VolumeStatesEditor$SaveCallable;->mValues:Landroid/content/ContentValues;

    .line 230
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/ContentResolver;Landroid/accounts/Account;Landroid/content/ContentValues;Lcom/google/android/apps/books/model/VolumeStatesEditor$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 220
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/books/model/VolumeStatesEditor$SaveCallable;-><init>(Landroid/content/ContentResolver;Landroid/accounts/Account;Landroid/content/ContentValues;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/google/android/apps/books/model/VolumeStatesEditor$SaveCallable;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 233
    new-instance v0, Lcom/google/android/apps/books/sync/TableSynchronizer;

    new-instance v1, Lcom/google/android/apps/books/sync/StatesLocalSynchronizable;

    iget-object v2, p0, Lcom/google/android/apps/books/model/VolumeStatesEditor$SaveCallable;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/google/android/apps/books/model/VolumeStatesEditor$SaveCallable;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/apps/books/sync/StatesLocalSynchronizable;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/sync/TableSynchronizer;-><init>(Lcom/google/android/apps/books/sync/Synchronizable;)V

    .line 235
    .local v0, syncher:Lcom/google/android/apps/books/sync/TableSynchronizer;
    iget-object v1, p0, Lcom/google/android/apps/books/model/VolumeStatesEditor$SaveCallable;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/sync/TableSynchronizer;->syncRow(Landroid/content/ContentValues;)V

    .line 236
    const-string v1, "VolumeStatesEditor"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 237
    const-string v1, "VolumeStatesEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saved "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/books/model/VolumeStatesEditor$SaveCallable;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_39
    const/4 v1, 0x0

    return-object v1
.end method
