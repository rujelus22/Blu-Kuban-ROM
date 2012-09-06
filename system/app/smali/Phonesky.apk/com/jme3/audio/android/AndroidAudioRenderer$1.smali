.class synthetic Lcom/jme3/audio/android/AndroidAudioRenderer$1;
.super Ljava/lang/Object;
.source "AndroidAudioRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/audio/android/AndroidAudioRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$jme3$audio$AudioParam:[I

.field static final synthetic $SwitchMap$com$jme3$audio$ListenerParam:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 201
    invoke-static {}, Lcom/jme3/audio/ListenerParam;->values()[Lcom/jme3/audio/ListenerParam;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/jme3/audio/android/AndroidAudioRenderer$1;->$SwitchMap$com$jme3$audio$ListenerParam:[I

    :try_start_9
    sget-object v0, Lcom/jme3/audio/android/AndroidAudioRenderer$1;->$SwitchMap$com$jme3$audio$ListenerParam:[I

    sget-object v1, Lcom/jme3/audio/ListenerParam;->Position:Lcom/jme3/audio/ListenerParam;

    invoke-virtual {v1}, Lcom/jme3/audio/ListenerParam;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_118

    :goto_14
    :try_start_14
    sget-object v0, Lcom/jme3/audio/android/AndroidAudioRenderer$1;->$SwitchMap$com$jme3$audio$ListenerParam:[I

    sget-object v1, Lcom/jme3/audio/ListenerParam;->Rotation:Lcom/jme3/audio/ListenerParam;

    invoke-virtual {v1}, Lcom/jme3/audio/ListenerParam;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_115

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/jme3/audio/android/AndroidAudioRenderer$1;->$SwitchMap$com$jme3$audio$ListenerParam:[I

    sget-object v1, Lcom/jme3/audio/ListenerParam;->Velocity:Lcom/jme3/audio/ListenerParam;

    invoke-virtual {v1}, Lcom/jme3/audio/ListenerParam;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_112

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/jme3/audio/android/AndroidAudioRenderer$1;->$SwitchMap$com$jme3$audio$ListenerParam:[I

    sget-object v1, Lcom/jme3/audio/ListenerParam;->Volume:Lcom/jme3/audio/ListenerParam;

    invoke-virtual {v1}, Lcom/jme3/audio/ListenerParam;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_10f

    .line 103
    :goto_35
    invoke-static {}, Lcom/jme3/audio/AudioParam;->values()[Lcom/jme3/audio/AudioParam;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/jme3/audio/android/AndroidAudioRenderer$1;->$SwitchMap$com$jme3$audio$AudioParam:[I

    :try_start_3e
    sget-object v0, Lcom/jme3/audio/android/AndroidAudioRenderer$1;->$SwitchMap$com$jme3$audio$AudioParam:[I

    sget-object v1, Lcom/jme3/audio/AudioParam;->Position:Lcom/jme3/audio/AudioParam;

    invoke-virtual {v1}, Lcom/jme3/audio/AudioParam;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_10c

    :goto_49
    :try_start_49
    sget-object v0, Lcom/jme3/audio/android/AndroidAudioRenderer$1;->$SwitchMap$com$jme3$audio$AudioParam:[I

    sget-object v1, Lcom/jme3/audio/AudioParam;->Velocity:Lcom/jme3/audio/AudioParam;

    invoke-virtual {v1}, Lcom/jme3/audio/AudioParam;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_109

    :goto_54
    :try_start_54
    sget-object v0, Lcom/jme3/audio/android/AndroidAudioRenderer$1;->$SwitchMap$com$jme3$audio$AudioParam:[I

    sget-object v1, Lcom/jme3/audio/AudioParam;->MaxDistance:Lcom/jme3/audio/AudioParam;

    invoke-virtual {v1}, Lcom/jme3/audio/AudioParam;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_106

    :goto_5f
    :try_start_5f
    sget-object v0, Lcom/jme3/audio/android/AndroidAudioRenderer$1;->$SwitchMap$com$jme3$audio$AudioParam:[I

    sget-object v1, Lcom/jme3/audio/AudioParam;->RefDistance:Lcom/jme3/audio/AudioParam;

    invoke-virtual {v1}, Lcom/jme3/audio/AudioParam;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_103

    :goto_6a
    :try_start_6a
    sget-object v0, Lcom/jme3/audio/android/AndroidAudioRenderer$1;->$SwitchMap$com$jme3$audio$AudioParam:[I

    sget-object v1, Lcom/jme3/audio/AudioParam;->ReverbFilter:Lcom/jme3/audio/AudioParam;

    invoke-virtual {v1}, Lcom/jme3/audio/AudioParam;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_100

    :goto_75
    :try_start_75
    sget-object v0, Lcom/jme3/audio/android/AndroidAudioRenderer$1;->$SwitchMap$com$jme3$audio$AudioParam:[I

    sget-object v1, Lcom/jme3/audio/AudioParam;->ReverbEnabled:Lcom/jme3/audio/AudioParam;

    invoke-virtual {v1}, Lcom/jme3/audio/AudioParam;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_80} :catch_fe

    :goto_80
    :try_start_80
    sget-object v0, Lcom/jme3/audio/android/AndroidAudioRenderer$1;->$SwitchMap$com$jme3$audio$AudioParam:[I

    sget-object v1, Lcom/jme3/audio/AudioParam;->IsPositional:Lcom/jme3/audio/AudioParam;

    invoke-virtual {v1}, Lcom/jme3/audio/AudioParam;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_8b} :catch_fc

    :goto_8b
    :try_start_8b
    sget-object v0, Lcom/jme3/audio/android/AndroidAudioRenderer$1;->$SwitchMap$com$jme3$audio$AudioParam:[I

    sget-object v1, Lcom/jme3/audio/AudioParam;->Direction:Lcom/jme3/audio/AudioParam;

    invoke-virtual {v1}, Lcom/jme3/audio/AudioParam;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_97
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b .. :try_end_97} :catch_fa

    :goto_97
    :try_start_97
    sget-object v0, Lcom/jme3/audio/android/AndroidAudioRenderer$1;->$SwitchMap$com$jme3$audio$AudioParam:[I

    sget-object v1, Lcom/jme3/audio/AudioParam;->InnerAngle:Lcom/jme3/audio/AudioParam;

    invoke-virtual {v1}, Lcom/jme3/audio/AudioParam;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_a3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_97 .. :try_end_a3} :catch_f8

    :goto_a3
    :try_start_a3
    sget-object v0, Lcom/jme3/audio/android/AndroidAudioRenderer$1;->$SwitchMap$com$jme3$audio$AudioParam:[I

    sget-object v1, Lcom/jme3/audio/AudioParam;->OuterAngle:Lcom/jme3/audio/AudioParam;

    invoke-virtual {v1}, Lcom/jme3/audio/AudioParam;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_af
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a3 .. :try_end_af} :catch_f6

    :goto_af
    :try_start_af
    sget-object v0, Lcom/jme3/audio/android/AndroidAudioRenderer$1;->$SwitchMap$com$jme3$audio$AudioParam:[I

    sget-object v1, Lcom/jme3/audio/AudioParam;->IsDirectional:Lcom/jme3/audio/AudioParam;

    invoke-virtual {v1}, Lcom/jme3/audio/AudioParam;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_bb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_af .. :try_end_bb} :catch_f4

    :goto_bb
    :try_start_bb
    sget-object v0, Lcom/jme3/audio/android/AndroidAudioRenderer$1;->$SwitchMap$com$jme3$audio$AudioParam:[I

    sget-object v1, Lcom/jme3/audio/AudioParam;->DryFilter:Lcom/jme3/audio/AudioParam;

    invoke-virtual {v1}, Lcom/jme3/audio/AudioParam;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_c7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bb .. :try_end_c7} :catch_f2

    :goto_c7
    :try_start_c7
    sget-object v0, Lcom/jme3/audio/android/AndroidAudioRenderer$1;->$SwitchMap$com$jme3$audio$AudioParam:[I

    sget-object v1, Lcom/jme3/audio/AudioParam;->Looping:Lcom/jme3/audio/AudioParam;

    invoke-virtual {v1}, Lcom/jme3/audio/AudioParam;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_d3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c7 .. :try_end_d3} :catch_f0

    :goto_d3
    :try_start_d3
    sget-object v0, Lcom/jme3/audio/android/AndroidAudioRenderer$1;->$SwitchMap$com$jme3$audio$AudioParam:[I

    sget-object v1, Lcom/jme3/audio/AudioParam;->Volume:Lcom/jme3/audio/AudioParam;

    invoke-virtual {v1}, Lcom/jme3/audio/AudioParam;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_df
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d3 .. :try_end_df} :catch_ee

    :goto_df
    :try_start_df
    sget-object v0, Lcom/jme3/audio/android/AndroidAudioRenderer$1;->$SwitchMap$com$jme3$audio$AudioParam:[I

    sget-object v1, Lcom/jme3/audio/AudioParam;->Pitch:Lcom/jme3/audio/AudioParam;

    invoke-virtual {v1}, Lcom/jme3/audio/AudioParam;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_eb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_df .. :try_end_eb} :catch_ec

    :goto_eb
    return-void

    :catch_ec
    move-exception v0

    goto :goto_eb

    :catch_ee
    move-exception v0

    goto :goto_df

    :catch_f0
    move-exception v0

    goto :goto_d3

    :catch_f2
    move-exception v0

    goto :goto_c7

    :catch_f4
    move-exception v0

    goto :goto_bb

    :catch_f6
    move-exception v0

    goto :goto_af

    :catch_f8
    move-exception v0

    goto :goto_a3

    :catch_fa
    move-exception v0

    goto :goto_97

    :catch_fc
    move-exception v0

    goto :goto_8b

    :catch_fe
    move-exception v0

    goto :goto_80

    :catch_100
    move-exception v0

    goto/16 :goto_75

    :catch_103
    move-exception v0

    goto/16 :goto_6a

    :catch_106
    move-exception v0

    goto/16 :goto_5f

    :catch_109
    move-exception v0

    goto/16 :goto_54

    :catch_10c
    move-exception v0

    goto/16 :goto_49

    .line 201
    :catch_10f
    move-exception v0

    goto/16 :goto_35

    :catch_112
    move-exception v0

    goto/16 :goto_2a

    :catch_115
    move-exception v0

    goto/16 :goto_1f

    :catch_118
    move-exception v0

    goto/16 :goto_14
.end method
