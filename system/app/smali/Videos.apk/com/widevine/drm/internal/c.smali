.class final synthetic Lcom/widevine/drm/internal/c;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/widevine/drmapi/android/WVEvent;->values()[Lcom/widevine/drmapi/android/WVEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/widevine/drm/internal/c;->b:[I

    :try_start_9
    sget-object v0, Lcom/widevine/drm/internal/c;->b:[I

    sget-object v1, Lcom/widevine/drmapi/android/WVEvent;->LicenseReceived:Lcom/widevine/drmapi/android/WVEvent;

    invoke-virtual {v1}, Lcom/widevine/drmapi/android/WVEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_1ba

    :goto_14
    :try_start_14
    sget-object v0, Lcom/widevine/drm/internal/c;->b:[I

    sget-object v1, Lcom/widevine/drmapi/android/WVEvent;->QueryStatus:Lcom/widevine/drmapi/android/WVEvent;

    invoke-virtual {v1}, Lcom/widevine/drmapi/android/WVEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1b7

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/widevine/drm/internal/c;->b:[I

    sget-object v1, Lcom/widevine/drmapi/android/WVEvent;->Registered:Lcom/widevine/drmapi/android/WVEvent;

    invoke-virtual {v1}, Lcom/widevine/drmapi/android/WVEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_1b4

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/widevine/drm/internal/c;->b:[I

    sget-object v1, Lcom/widevine/drmapi/android/WVEvent;->LicenseRequestFailed:Lcom/widevine/drmapi/android/WVEvent;

    invoke-virtual {v1}, Lcom/widevine/drmapi/android/WVEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_1b1

    :goto_35
    :try_start_35
    sget-object v0, Lcom/widevine/drm/internal/c;->b:[I

    sget-object v1, Lcom/widevine/drmapi/android/WVEvent;->Playing:Lcom/widevine/drmapi/android/WVEvent;

    invoke-virtual {v1}, Lcom/widevine/drmapi/android/WVEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_1ae

    :goto_40
    :try_start_40
    sget-object v0, Lcom/widevine/drm/internal/c;->b:[I

    sget-object v1, Lcom/widevine/drmapi/android/WVEvent;->PlayFailed:Lcom/widevine/drmapi/android/WVEvent;

    invoke-virtual {v1}, Lcom/widevine/drmapi/android/WVEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_1ab

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/widevine/drm/internal/c;->b:[I

    sget-object v1, Lcom/widevine/drmapi/android/WVEvent;->Stopped:Lcom/widevine/drmapi/android/WVEvent;

    invoke-virtual {v1}, Lcom/widevine/drmapi/android/WVEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_1a8

    :goto_56
    :try_start_56
    sget-object v0, Lcom/widevine/drm/internal/c;->b:[I

    sget-object v1, Lcom/widevine/drmapi/android/WVEvent;->LicenseRemoved:Lcom/widevine/drmapi/android/WVEvent;

    invoke-virtual {v1}, Lcom/widevine/drmapi/android/WVEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_1a5

    :goto_62
    :try_start_62
    sget-object v0, Lcom/widevine/drm/internal/c;->b:[I

    sget-object v1, Lcom/widevine/drmapi/android/WVEvent;->Unregistered:Lcom/widevine/drmapi/android/WVEvent;

    invoke-virtual {v1}, Lcom/widevine/drmapi/android/WVEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_1a2

    :goto_6e
    :try_start_6e
    sget-object v0, Lcom/widevine/drm/internal/c;->b:[I

    sget-object v1, Lcom/widevine/drmapi/android/WVEvent;->InitializeFailed:Lcom/widevine/drmapi/android/WVEvent;

    invoke-virtual {v1}, Lcom/widevine/drmapi/android/WVEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_19f

    :goto_7a
    :try_start_7a
    sget-object v0, Lcom/widevine/drm/internal/c;->b:[I

    sget-object v1, Lcom/widevine/drmapi/android/WVEvent;->EndOfList:Lcom/widevine/drmapi/android/WVEvent;

    invoke-virtual {v1}, Lcom/widevine/drmapi/android/WVEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_19c

    :goto_86
    :try_start_86
    sget-object v0, Lcom/widevine/drm/internal/c;->b:[I

    sget-object v1, Lcom/widevine/drmapi/android/WVEvent;->SecureStore:Lcom/widevine/drmapi/android/WVEvent;

    invoke-virtual {v1}, Lcom/widevine/drmapi/android/WVEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_92} :catch_199

    :goto_92
    :try_start_92
    sget-object v0, Lcom/widevine/drm/internal/c;->b:[I

    sget-object v1, Lcom/widevine/drmapi/android/WVEvent;->Initialized:Lcom/widevine/drmapi/android/WVEvent;

    invoke-virtual {v1}, Lcom/widevine/drmapi/android/WVEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9e} :catch_196

    :goto_9e
    :try_start_9e
    sget-object v0, Lcom/widevine/drm/internal/c;->b:[I

    sget-object v1, Lcom/widevine/drmapi/android/WVEvent;->Terminated:Lcom/widevine/drmapi/android/WVEvent;

    invoke-virtual {v1}, Lcom/widevine/drmapi/android/WVEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_aa} :catch_193

    :goto_aa
    invoke-static {}, Lcom/widevine/drm/internal/x;->values()[Lcom/widevine/drm/internal/x;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/widevine/drm/internal/c;->a:[I

    :try_start_b3
    sget-object v0, Lcom/widevine/drm/internal/c;->a:[I

    sget-object v1, Lcom/widevine/drm/internal/x;->a:Lcom/widevine/drm/internal/x;

    invoke-virtual {v1}, Lcom/widevine/drm/internal/x;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_be
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b3 .. :try_end_be} :catch_190

    :goto_be
    :try_start_be
    sget-object v0, Lcom/widevine/drm/internal/c;->a:[I

    sget-object v1, Lcom/widevine/drm/internal/x;->b:Lcom/widevine/drm/internal/x;

    invoke-virtual {v1}, Lcom/widevine/drm/internal/x;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_c9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_be .. :try_end_c9} :catch_18d

    :goto_c9
    :try_start_c9
    sget-object v0, Lcom/widevine/drm/internal/c;->a:[I

    sget-object v1, Lcom/widevine/drm/internal/x;->d:Lcom/widevine/drm/internal/x;

    invoke-virtual {v1}, Lcom/widevine/drm/internal/x;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_d4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c9 .. :try_end_d4} :catch_18a

    :goto_d4
    :try_start_d4
    sget-object v0, Lcom/widevine/drm/internal/c;->a:[I

    sget-object v1, Lcom/widevine/drm/internal/x;->e:Lcom/widevine/drm/internal/x;

    invoke-virtual {v1}, Lcom/widevine/drm/internal/x;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_df
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d4 .. :try_end_df} :catch_187

    :goto_df
    :try_start_df
    sget-object v0, Lcom/widevine/drm/internal/c;->a:[I

    sget-object v1, Lcom/widevine/drm/internal/x;->f:Lcom/widevine/drm/internal/x;

    invoke-virtual {v1}, Lcom/widevine/drm/internal/x;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_ea
    .catch Ljava/lang/NoSuchFieldError; {:try_start_df .. :try_end_ea} :catch_184

    :goto_ea
    :try_start_ea
    sget-object v0, Lcom/widevine/drm/internal/c;->a:[I

    sget-object v1, Lcom/widevine/drm/internal/x;->h:Lcom/widevine/drm/internal/x;

    invoke-virtual {v1}, Lcom/widevine/drm/internal/x;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_f5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ea .. :try_end_f5} :catch_181

    :goto_f5
    :try_start_f5
    sget-object v0, Lcom/widevine/drm/internal/c;->a:[I

    sget-object v1, Lcom/widevine/drm/internal/x;->g:Lcom/widevine/drm/internal/x;

    invoke-virtual {v1}, Lcom/widevine/drm/internal/x;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_100
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f5 .. :try_end_100} :catch_17f

    :goto_100
    :try_start_100
    sget-object v0, Lcom/widevine/drm/internal/c;->a:[I

    sget-object v1, Lcom/widevine/drm/internal/x;->j:Lcom/widevine/drm/internal/x;

    invoke-virtual {v1}, Lcom/widevine/drm/internal/x;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_10c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_100 .. :try_end_10c} :catch_17d

    :goto_10c
    :try_start_10c
    sget-object v0, Lcom/widevine/drm/internal/c;->a:[I

    sget-object v1, Lcom/widevine/drm/internal/x;->l:Lcom/widevine/drm/internal/x;

    invoke-virtual {v1}, Lcom/widevine/drm/internal/x;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_118
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10c .. :try_end_118} :catch_17b

    :goto_118
    :try_start_118
    sget-object v0, Lcom/widevine/drm/internal/c;->a:[I

    sget-object v1, Lcom/widevine/drm/internal/x;->m:Lcom/widevine/drm/internal/x;

    invoke-virtual {v1}, Lcom/widevine/drm/internal/x;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_124
    .catch Ljava/lang/NoSuchFieldError; {:try_start_118 .. :try_end_124} :catch_179

    :goto_124
    :try_start_124
    sget-object v0, Lcom/widevine/drm/internal/c;->a:[I

    sget-object v1, Lcom/widevine/drm/internal/x;->o:Lcom/widevine/drm/internal/x;

    invoke-virtual {v1}, Lcom/widevine/drm/internal/x;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_130
    .catch Ljava/lang/NoSuchFieldError; {:try_start_124 .. :try_end_130} :catch_177

    :goto_130
    :try_start_130
    sget-object v0, Lcom/widevine/drm/internal/c;->a:[I

    sget-object v1, Lcom/widevine/drm/internal/x;->p:Lcom/widevine/drm/internal/x;

    invoke-virtual {v1}, Lcom/widevine/drm/internal/x;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_13c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_130 .. :try_end_13c} :catch_175

    :goto_13c
    :try_start_13c
    sget-object v0, Lcom/widevine/drm/internal/c;->a:[I

    sget-object v1, Lcom/widevine/drm/internal/x;->q:Lcom/widevine/drm/internal/x;

    invoke-virtual {v1}, Lcom/widevine/drm/internal/x;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_148
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13c .. :try_end_148} :catch_173

    :goto_148
    :try_start_148
    sget-object v0, Lcom/widevine/drm/internal/c;->a:[I

    sget-object v1, Lcom/widevine/drm/internal/x;->i:Lcom/widevine/drm/internal/x;

    invoke-virtual {v1}, Lcom/widevine/drm/internal/x;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_154
    .catch Ljava/lang/NoSuchFieldError; {:try_start_148 .. :try_end_154} :catch_171

    :goto_154
    :try_start_154
    sget-object v0, Lcom/widevine/drm/internal/c;->a:[I

    sget-object v1, Lcom/widevine/drm/internal/x;->n:Lcom/widevine/drm/internal/x;

    invoke-virtual {v1}, Lcom/widevine/drm/internal/x;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_160
    .catch Ljava/lang/NoSuchFieldError; {:try_start_154 .. :try_end_160} :catch_16f

    :goto_160
    :try_start_160
    sget-object v0, Lcom/widevine/drm/internal/c;->a:[I

    sget-object v1, Lcom/widevine/drm/internal/x;->k:Lcom/widevine/drm/internal/x;

    invoke-virtual {v1}, Lcom/widevine/drm/internal/x;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_16c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_160 .. :try_end_16c} :catch_16d

    :goto_16c
    return-void

    :catch_16d
    move-exception v0

    goto :goto_16c

    :catch_16f
    move-exception v0

    goto :goto_160

    :catch_171
    move-exception v0

    goto :goto_154

    :catch_173
    move-exception v0

    goto :goto_148

    :catch_175
    move-exception v0

    goto :goto_13c

    :catch_177
    move-exception v0

    goto :goto_130

    :catch_179
    move-exception v0

    goto :goto_124

    :catch_17b
    move-exception v0

    goto :goto_118

    :catch_17d
    move-exception v0

    goto :goto_10c

    :catch_17f
    move-exception v0

    goto :goto_100

    :catch_181
    move-exception v0

    goto/16 :goto_f5

    :catch_184
    move-exception v0

    goto/16 :goto_ea

    :catch_187
    move-exception v0

    goto/16 :goto_df

    :catch_18a
    move-exception v0

    goto/16 :goto_d4

    :catch_18d
    move-exception v0

    goto/16 :goto_c9

    :catch_190
    move-exception v0

    goto/16 :goto_be

    :catch_193
    move-exception v0

    goto/16 :goto_aa

    :catch_196
    move-exception v0

    goto/16 :goto_9e

    :catch_199
    move-exception v0

    goto/16 :goto_92

    :catch_19c
    move-exception v0

    goto/16 :goto_86

    :catch_19f
    move-exception v0

    goto/16 :goto_7a

    :catch_1a2
    move-exception v0

    goto/16 :goto_6e

    :catch_1a5
    move-exception v0

    goto/16 :goto_62

    :catch_1a8
    move-exception v0

    goto/16 :goto_56

    :catch_1ab
    move-exception v0

    goto/16 :goto_4b

    :catch_1ae
    move-exception v0

    goto/16 :goto_40

    :catch_1b1
    move-exception v0

    goto/16 :goto_35

    :catch_1b4
    move-exception v0

    goto/16 :goto_2a

    :catch_1b7
    move-exception v0

    goto/16 :goto_1f

    :catch_1ba
    move-exception v0

    goto/16 :goto_14
.end method
