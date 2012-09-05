.class final Lcom/google/android/finsky/local/PersistentAssetStoreImpl$2;
.super Lcom/google/android/finsky/local/PersistentAssetStoreImpl$FieldBinder;
.source "PersistentAssetStoreImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/local/PersistentAssetStoreImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/local/PersistentAssetStoreImpl$FieldBinder",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$FieldBinder;-><init>(Lcom/google/android/finsky/local/PersistentAssetStoreImpl$1;)V

    return-void
.end method


# virtual methods
.method bridge synthetic onBind(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$2;->onBind(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    return-void
.end method

.method onBind(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V
    .registers 4
    .parameter "stmt"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 76
    invoke-virtual {p1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 77
    return-void
.end method
