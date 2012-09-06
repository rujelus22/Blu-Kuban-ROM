.class synthetic Lcom/google/android/apps/plus/phone/LocationController$3;
.super Ljava/lang/Object;
.source "LocationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/LocationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$wireless$tacotruck$proto$Data$ReverseGeocode$GranularityEnum:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 362
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;->values()[Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/apps/plus/phone/LocationController$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$ReverseGeocode$GranularityEnum:[I

    :try_start_9
    sget-object v0, Lcom/google/android/apps/plus/phone/LocationController$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$ReverseGeocode$GranularityEnum:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;->FINEST:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_22

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/android/apps/plus/phone/LocationController$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$ReverseGeocode$GranularityEnum:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;->LOCALITY:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    goto :goto_1f

    :catch_22
    move-exception v0

    goto :goto_14
.end method
