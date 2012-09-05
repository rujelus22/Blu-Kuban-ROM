.class synthetic Lcom/google/android/apps/plus/views/StreamRowView$4;
.super Ljava/lang/Object;
.source "StreamRowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/StreamRowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$wireless$tacotruck$proto$Data$Explanation$Type:[I

.field static final synthetic $SwitchMap$com$google$wireless$tacotruck$proto$Data$Media$Type:[I

.field static final synthetic $SwitchMap$com$google$wireless$tacotruck$proto$Data$Source$Type:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 3108
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->values()[Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/apps/plus/views/StreamRowView$4;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$Media$Type:[I

    :try_start_9
    sget-object v0, Lcom/google/android/apps/plus/views/StreamRowView$4;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$Media$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->POST:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_9c

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/android/apps/plus/views/StreamRowView$4;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$Media$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->TITLE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_9a

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/google/android/apps/plus/views/StreamRowView$4;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$Media$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->IMAGE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_98

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/google/android/apps/plus/views/StreamRowView$4;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$Media$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->VIDEO:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_96

    :goto_35
    :try_start_35
    sget-object v0, Lcom/google/android/apps/plus/views/StreamRowView$4;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$Media$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->DOCUMENT:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_94

    :goto_40
    :try_start_40
    sget-object v0, Lcom/google/android/apps/plus/views/StreamRowView$4;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$Media$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->SKYJAM_SONG:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_92

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/google/android/apps/plus/views/StreamRowView$4;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$Media$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->SKYJAM_ALBUM:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_90

    .line 3069
    :goto_56
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->values()[Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/apps/plus/views/StreamRowView$4;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$Explanation$Type:[I

    :try_start_5f
    sget-object v0, Lcom/google/android/apps/plus/views/StreamRowView$4;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$Explanation$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->SHARED_BY:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_8e

    :goto_6a
    :try_start_6a
    sget-object v0, Lcom/google/android/apps/plus/views/StreamRowView$4;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$Explanation$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->CHECKIN:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_8c

    .line 1205
    :goto_75
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->values()[Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/apps/plus/views/StreamRowView$4;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$Source$Type:[I

    :try_start_7e
    sget-object v0, Lcom/google/android/apps/plus/views/StreamRowView$4;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$Source$Type:[I

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->BUZZ:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_89} :catch_8a

    :goto_89
    return-void

    :catch_8a
    move-exception v0

    goto :goto_89

    .line 3069
    :catch_8c
    move-exception v0

    goto :goto_75

    :catch_8e
    move-exception v0

    goto :goto_6a

    .line 3108
    :catch_90
    move-exception v0

    goto :goto_56

    :catch_92
    move-exception v0

    goto :goto_4b

    :catch_94
    move-exception v0

    goto :goto_40

    :catch_96
    move-exception v0

    goto :goto_35

    :catch_98
    move-exception v0

    goto :goto_2a

    :catch_9a
    move-exception v0

    goto :goto_1f

    :catch_9c
    move-exception v0

    goto/16 :goto_14
.end method
