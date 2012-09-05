.class public Lcom/google/android/finsky/local/LocalAssetRecord;
.super Ljava/lang/Object;
.source "LocalAssetRecord.java"

# interfaces
.implements Lcom/google/android/finsky/local/Writable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/local/LocalAssetRecord$1;
    }
.end annotation


# instance fields
.field private final mAccountString:Ljava/lang/String;

.field private final mAutoUpdateState:Lcom/google/android/finsky/local/AutoUpdateState;

.field private final mPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/local/AutoUpdateState;)V
    .registers 4
    .parameter "packageName"
    .parameter "accountString"
    .parameter "autoUpdateState"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/android/finsky/local/LocalAssetRecord;->mPackage:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/google/android/finsky/local/LocalAssetRecord;->mAccountString:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/google/android/finsky/local/LocalAssetRecord;->mAutoUpdateState:Lcom/google/android/finsky/local/AutoUpdateState;

    .line 22
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    if-ne p0, p1, :cond_5

    .line 65
    :cond_4
    :goto_4
    return v1

    .line 52
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    .line 53
    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 55
    check-cast v0, Lcom/google/android/finsky/local/LocalAssetRecord;

    .line 57
    .local v0, that:Lcom/google/android/finsky/local/LocalAssetRecord;
    iget-object v3, p0, Lcom/google/android/finsky/local/LocalAssetRecord;->mAccountString:Ljava/lang/String;

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/google/android/finsky/local/LocalAssetRecord;->mAccountString:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/local/LocalAssetRecord;->mAccountString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    :cond_24
    move v1, v2

    .line 59
    goto :goto_4

    .line 57
    :cond_26
    iget-object v3, v0, Lcom/google/android/finsky/local/LocalAssetRecord;->mAccountString:Ljava/lang/String;

    if-nez v3, :cond_24

    .line 60
    :cond_2a
    iget-object v3, p0, Lcom/google/android/finsky/local/LocalAssetRecord;->mAutoUpdateState:Lcom/google/android/finsky/local/AutoUpdateState;

    iget-object v4, v0, Lcom/google/android/finsky/local/LocalAssetRecord;->mAutoUpdateState:Lcom/google/android/finsky/local/AutoUpdateState;

    if-eq v3, v4, :cond_32

    move v1, v2

    .line 61
    goto :goto_4

    .line 62
    :cond_32
    iget-object v3, p0, Lcom/google/android/finsky/local/LocalAssetRecord;->mPackage:Ljava/lang/String;

    if-eqz v3, :cond_42

    iget-object v3, p0, Lcom/google/android/finsky/local/LocalAssetRecord;->mPackage:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/local/LocalAssetRecord;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_40
    move v1, v2

    .line 63
    goto :goto_4

    .line 62
    :cond_42
    iget-object v3, v0, Lcom/google/android/finsky/local/LocalAssetRecord;->mPackage:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_40
.end method

.method protected getAccountString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/finsky/local/LocalAssetRecord;->mAccountString:Ljava/lang/String;

    return-object v0
.end method

.method public getAutoUpdateState()Lcom/google/android/finsky/local/AutoUpdateState;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/finsky/local/LocalAssetRecord;->mAutoUpdateState:Lcom/google/android/finsky/local/AutoUpdateState;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/finsky/local/LocalAssetRecord;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 70
    iget-object v2, p0, Lcom/google/android/finsky/local/LocalAssetRecord;->mPackage:Ljava/lang/String;

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/google/android/finsky/local/LocalAssetRecord;->mPackage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 71
    .local v0, result:I
    :goto_b
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/finsky/local/LocalAssetRecord;->mAccountString:Ljava/lang/String;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/google/android/finsky/local/LocalAssetRecord;->mAccountString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int v0, v3, v2

    .line 72
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/google/android/finsky/local/LocalAssetRecord;->mAutoUpdateState:Lcom/google/android/finsky/local/AutoUpdateState;

    if-eqz v3, :cond_25

    iget-object v1, p0, Lcom/google/android/finsky/local/LocalAssetRecord;->mAutoUpdateState:Lcom/google/android/finsky/local/AutoUpdateState;

    invoke-virtual {v1}, Lcom/google/android/finsky/local/AutoUpdateState;->hashCode()I

    move-result v1

    :cond_25
    add-int v0, v2, v1

    .line 73
    return v0

    .end local v0           #result:I
    :cond_28
    move v0, v1

    .line 70
    goto :goto_b

    .restart local v0       #result:I
    :cond_2a
    move v2, v1

    .line 71
    goto :goto_17
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x27

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalAssetRecord{mPackage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/local/LocalAssetRecord;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAccountString=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/local/LocalAssetRecord;->mAccountString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAutoUpdateState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/local/LocalAssetRecord;->mAutoUpdateState:Lcom/google/android/finsky/local/AutoUpdateState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/google/android/finsky/local/PersistentAssetStore;Lcom/google/android/finsky/local/Writer$Op;)V
    .registers 5
    .parameter "store"
    .parameter "op"

    .prologue
    .line 38
    sget-object v0, Lcom/google/android/finsky/local/LocalAssetRecord$1;->$SwitchMap$com$google$android$finsky$local$Writer$Op:[I

    invoke-virtual {p2}, Lcom/google/android/finsky/local/Writer$Op;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_18

    .line 46
    :goto_b
    return-void

    .line 40
    :pswitch_c
    invoke-interface {p1, p0}, Lcom/google/android/finsky/local/PersistentAssetStore;->insertAsset(Lcom/google/android/finsky/local/LocalAssetRecord;)V

    goto :goto_b

    .line 43
    :pswitch_10
    invoke-virtual {p0}, Lcom/google/android/finsky/local/LocalAssetRecord;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/finsky/local/PersistentAssetStore;->deleteAsset(Ljava/lang/String;)V

    goto :goto_b

    .line 38
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_c
        :pswitch_10
    .end packed-switch
.end method
