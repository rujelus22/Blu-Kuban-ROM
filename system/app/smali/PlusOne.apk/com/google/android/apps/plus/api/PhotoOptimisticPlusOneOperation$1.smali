.class synthetic Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation$1;
.super Ljava/lang/Object;
.source "PhotoOptimisticPlusOneOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$wireless$tacotruck$proto$Network$PhotoActionRequest$Type:[I

.field static final synthetic $SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 115
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->values()[Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    :try_start_9
    sget-object v0, Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->PHOTO_ACTION:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_38

    .line 88
    :goto_14
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->values()[Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$PhotoActionRequest$Type:[I

    :try_start_1d
    sget-object v0, Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$PhotoActionRequest$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->CREATE_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_36

    :goto_28
    :try_start_28
    sget-object v0, Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$PhotoActionRequest$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->DELETE_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_34

    :goto_33
    return-void

    :catch_34
    move-exception v0

    goto :goto_33

    :catch_36
    move-exception v0

    goto :goto_28

    .line 115
    :catch_38
    move-exception v0

    goto :goto_14
.end method
