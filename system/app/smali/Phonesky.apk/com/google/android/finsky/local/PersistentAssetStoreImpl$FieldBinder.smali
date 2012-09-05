.class abstract Lcom/google/android/finsky/local/PersistentAssetStoreImpl$FieldBinder;
.super Ljava/lang/Object;
.source "PersistentAssetStoreImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/local/PersistentAssetStoreImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "FieldBinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 47
    .local p0, this:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$FieldBinder;,"Lcom/google/android/finsky/local/PersistentAssetStoreImpl$FieldBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/local/PersistentAssetStoreImpl$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    .local p0, this:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$FieldBinder;,"Lcom/google/android/finsky/local/PersistentAssetStoreImpl$FieldBinder<TT;>;"
    invoke-direct {p0}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$FieldBinder;-><init>()V

    return-void
.end method


# virtual methods
.method bind(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V
    .registers 4
    .parameter "stmt"
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteStatement;",
            "ITT;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, this:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$FieldBinder;,"Lcom/google/android/finsky/local/PersistentAssetStoreImpl$FieldBinder<TT;>;"
    .local p3, value:Ljava/lang/Object;,"TT;"
    if-nez p3, :cond_6

    .line 50
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 55
    :goto_5
    return-void

    .line 54
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$FieldBinder;->onBind(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    goto :goto_5
.end method

.method abstract onBind(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteStatement;",
            "ITT;)V"
        }
    .end annotation
.end method
