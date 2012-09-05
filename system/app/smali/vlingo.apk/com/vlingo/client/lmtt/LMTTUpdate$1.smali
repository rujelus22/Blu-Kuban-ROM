.class synthetic Lcom/vlingo/client/lmtt/LMTTUpdate$1;
.super Ljava/lang/Object;
.source "LMTTUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/lmtt/LMTTUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$vlingo$client$lmtt$LMTTItem$LmttItemType:[I

.field static final synthetic $SwitchMap$com$vlingo$client$lmtt$LMTTUpdate$LmttUpdateType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 588
    invoke-static {}, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->values()[Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/vlingo/client/lmtt/LMTTUpdate$1;->$SwitchMap$com$vlingo$client$lmtt$LMTTItem$LmttItemType:[I

    :try_start_9
    sget-object v0, Lcom/vlingo/client/lmtt/LMTTUpdate$1;->$SwitchMap$com$vlingo$client$lmtt$LMTTItem$LmttItemType:[I

    sget-object v1, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->TYPE_CONTACT:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    invoke-virtual {v1}, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_52

    :goto_14
    :try_start_14
    sget-object v0, Lcom/vlingo/client/lmtt/LMTTUpdate$1;->$SwitchMap$com$vlingo$client$lmtt$LMTTItem$LmttItemType:[I

    sget-object v1, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->TYPE_SONG:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    invoke-virtual {v1}, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_50

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/vlingo/client/lmtt/LMTTUpdate$1;->$SwitchMap$com$vlingo$client$lmtt$LMTTItem$LmttItemType:[I

    sget-object v1, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->TYPE_PLAYLIST:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    invoke-virtual {v1}, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_4e

    .line 139
    :goto_2a
    invoke-static {}, Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;->values()[Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/vlingo/client/lmtt/LMTTUpdate$1;->$SwitchMap$com$vlingo$client$lmtt$LMTTUpdate$LmttUpdateType:[I

    :try_start_33
    sget-object v0, Lcom/vlingo/client/lmtt/LMTTUpdate$1;->$SwitchMap$com$vlingo$client$lmtt$LMTTUpdate$LmttUpdateType:[I

    sget-object v1, Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;->LMTT_MUSIC_UPDATE:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    invoke-virtual {v1}, Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_4c

    :goto_3e
    :try_start_3e
    sget-object v0, Lcom/vlingo/client/lmtt/LMTTUpdate$1;->$SwitchMap$com$vlingo$client$lmtt$LMTTUpdate$LmttUpdateType:[I

    sget-object v1, Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;->LMTT_CONTACT_UPDATE:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    invoke-virtual {v1}, Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_4a

    :goto_49
    return-void

    :catch_4a
    move-exception v0

    goto :goto_49

    :catch_4c
    move-exception v0

    goto :goto_3e

    .line 588
    :catch_4e
    move-exception v0

    goto :goto_2a

    :catch_50
    move-exception v0

    goto :goto_1f

    :catch_52
    move-exception v0

    goto :goto_14
.end method
