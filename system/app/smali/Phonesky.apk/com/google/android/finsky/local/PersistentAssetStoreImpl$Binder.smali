.class Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Binder;
.super Ljava/lang/Object;
.source "PersistentAssetStoreImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/local/PersistentAssetStoreImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Binder"
.end annotation


# instance fields
.field private final mStatement:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method private constructor <init>(Landroid/database/sqlite/SQLiteStatement;)V
    .registers 2
    .parameter "mStatement"

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p1, p0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Binder;->mStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 185
    return-void
.end method

.method synthetic constructor <init>(Landroid/database/sqlite/SQLiteStatement;Lcom/google/android/finsky/local/PersistentAssetStoreImpl$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Binder;-><init>(Landroid/database/sqlite/SQLiteStatement;)V

    return-void
.end method


# virtual methods
.method public bind(Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;Ljava/lang/Object;)V
    .registers 6
    .parameter "column"
    .parameter "value"

    .prologue
    .line 189
    invoke-interface {p1}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;->getType()Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;->binder:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$FieldBinder;

    iget-object v1, p0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Binder;->mStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-interface {p1}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;->index()I

    move-result v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$FieldBinder;->bind(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 190
    return-void
.end method
