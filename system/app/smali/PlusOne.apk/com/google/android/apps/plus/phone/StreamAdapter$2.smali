.class synthetic Lcom/google/android/apps/plus/phone/StreamAdapter$2;
.super Ljava/lang/Object;
.source "StreamAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/StreamAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$wireless$tacotruck$proto$Data$Source$Type:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 217
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->values()[Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/apps/plus/phone/StreamAdapter$2;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$Source$Type:[I

    :try_start_9
    sget-object v0, Lcom/google/android/apps/plus/phone/StreamAdapter$2;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$Source$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->BUZZ:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    goto :goto_14
.end method
