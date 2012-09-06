.class synthetic Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$5;
.super Ljava/lang/Object;
.source "EsWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$wireless$tacotruck$proto$Data$Explanation$Type:[I

.field static final synthetic $SwitchMap$com$google$wireless$tacotruck$proto$Data$Media$Type:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 415
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->values()[Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$5;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$Media$Type:[I

    :try_start_9
    sget-object v0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$5;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$Media$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->POST:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_6c

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$5;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$Media$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->DOCUMENT:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_6a

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$5;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$Media$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->TITLE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_68

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$5;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$Media$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->IMAGE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_66

    :goto_35
    :try_start_35
    sget-object v0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$5;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$Media$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->VIDEO:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_64

    .line 383
    :goto_40
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->values()[Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$5;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$Explanation$Type:[I

    :try_start_49
    sget-object v0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$5;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$Explanation$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->SHARED_BY:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_62

    :goto_54
    :try_start_54
    sget-object v0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$5;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$Explanation$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->CHECKIN:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_60

    :goto_5f
    return-void

    :catch_60
    move-exception v0

    goto :goto_5f

    :catch_62
    move-exception v0

    goto :goto_54

    .line 415
    :catch_64
    move-exception v0

    goto :goto_40

    :catch_66
    move-exception v0

    goto :goto_35

    :catch_68
    move-exception v0

    goto :goto_2a

    :catch_6a
    move-exception v0

    goto :goto_1f

    :catch_6c
    move-exception v0

    goto :goto_14
.end method
