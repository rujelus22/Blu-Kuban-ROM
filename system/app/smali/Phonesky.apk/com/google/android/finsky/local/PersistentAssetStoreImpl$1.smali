.class final Lcom/google/android/finsky/local/PersistentAssetStoreImpl$1;
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$FieldBinder;-><init>(Lcom/google/android/finsky/local/PersistentAssetStoreImpl$1;)V

    return-void
.end method


# virtual methods
.method onBind(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V
    .registers 7
    .parameter "stmt"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 63
    instance-of v0, p3, Ljava/lang/Long;

    if-eqz v0, :cond_e

    .line 64
    check-cast p3, Ljava/lang/Long;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 70
    :goto_d
    return-void

    .line 65
    .restart local p3
    :cond_e
    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_26

    .line 66
    new-instance v0, Ljava/lang/Long;

    check-cast p3, Ljava/lang/Integer;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_d

    .line 68
    .restart local p3
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expecting int or long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
