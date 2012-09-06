.class synthetic Lcom/jme3/material/Material$1;
.super Ljava/lang/Object;
.source "Material.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/material/Material;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$jme3$light$Light$Type:[I

.field static final synthetic $SwitchMap$com$jme3$material$TechniqueDef$LightMode:[I

.field static final synthetic $SwitchMap$com$jme3$texture$Texture$Type:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1015
    invoke-static {}, Lcom/jme3/material/TechniqueDef$LightMode;->values()[Lcom/jme3/material/TechniqueDef$LightMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/jme3/material/Material$1;->$SwitchMap$com$jme3$material$TechniqueDef$LightMode:[I

    :try_start_9
    sget-object v0, Lcom/jme3/material/Material$1;->$SwitchMap$com$jme3$material$TechniqueDef$LightMode:[I

    sget-object v1, Lcom/jme3/material/TechniqueDef$LightMode;->Disable:Lcom/jme3/material/TechniqueDef$LightMode;

    invoke-virtual {v1}, Lcom/jme3/material/TechniqueDef$LightMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_b8

    :goto_14
    :try_start_14
    sget-object v0, Lcom/jme3/material/Material$1;->$SwitchMap$com$jme3$material$TechniqueDef$LightMode:[I

    sget-object v1, Lcom/jme3/material/TechniqueDef$LightMode;->SinglePass:Lcom/jme3/material/TechniqueDef$LightMode;

    invoke-virtual {v1}, Lcom/jme3/material/TechniqueDef$LightMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_b5

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/jme3/material/Material$1;->$SwitchMap$com$jme3$material$TechniqueDef$LightMode:[I

    sget-object v1, Lcom/jme3/material/TechniqueDef$LightMode;->FixedPipeline:Lcom/jme3/material/TechniqueDef$LightMode;

    invoke-virtual {v1}, Lcom/jme3/material/TechniqueDef$LightMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_b2

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/jme3/material/Material$1;->$SwitchMap$com$jme3$material$TechniqueDef$LightMode:[I

    sget-object v1, Lcom/jme3/material/TechniqueDef$LightMode;->MultiPass:Lcom/jme3/material/TechniqueDef$LightMode;

    invoke-virtual {v1}, Lcom/jme3/material/TechniqueDef$LightMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_b0

    .line 674
    :goto_35
    invoke-static {}, Lcom/jme3/light/Light$Type;->values()[Lcom/jme3/light/Light$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/jme3/material/Material$1;->$SwitchMap$com$jme3$light$Light$Type:[I

    :try_start_3e
    sget-object v0, Lcom/jme3/material/Material$1;->$SwitchMap$com$jme3$light$Light$Type:[I

    sget-object v1, Lcom/jme3/light/Light$Type;->Directional:Lcom/jme3/light/Light$Type;

    invoke-virtual {v1}, Lcom/jme3/light/Light$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_ae

    :goto_49
    :try_start_49
    sget-object v0, Lcom/jme3/material/Material$1;->$SwitchMap$com$jme3$light$Light$Type:[I

    sget-object v1, Lcom/jme3/light/Light$Type;->Point:Lcom/jme3/light/Light$Type;

    invoke-virtual {v1}, Lcom/jme3/light/Light$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_ac

    :goto_54
    :try_start_54
    sget-object v0, Lcom/jme3/material/Material$1;->$SwitchMap$com$jme3$light$Light$Type:[I

    sget-object v1, Lcom/jme3/light/Light$Type;->Spot:Lcom/jme3/light/Light$Type;

    invoke-virtual {v1}, Lcom/jme3/light/Light$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_aa

    :goto_5f
    :try_start_5f
    sget-object v0, Lcom/jme3/material/Material$1;->$SwitchMap$com$jme3$light$Light$Type:[I

    sget-object v1, Lcom/jme3/light/Light$Type;->Ambient:Lcom/jme3/light/Light$Type;

    invoke-virtual {v1}, Lcom/jme3/light/Light$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_a8

    .line 517
    :goto_6a
    invoke-static {}, Lcom/jme3/texture/Texture$Type;->values()[Lcom/jme3/texture/Texture$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/jme3/material/Material$1;->$SwitchMap$com$jme3$texture$Texture$Type:[I

    :try_start_73
    sget-object v0, Lcom/jme3/material/Material$1;->$SwitchMap$com$jme3$texture$Texture$Type:[I

    sget-object v1, Lcom/jme3/texture/Texture$Type;->TwoDimensional:Lcom/jme3/texture/Texture$Type;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73 .. :try_end_7e} :catch_a6

    :goto_7e
    :try_start_7e
    sget-object v0, Lcom/jme3/material/Material$1;->$SwitchMap$com$jme3$texture$Texture$Type:[I

    sget-object v1, Lcom/jme3/texture/Texture$Type;->TwoDimensionalArray:Lcom/jme3/texture/Texture$Type;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_89} :catch_a4

    :goto_89
    :try_start_89
    sget-object v0, Lcom/jme3/material/Material$1;->$SwitchMap$com$jme3$texture$Texture$Type:[I

    sget-object v1, Lcom/jme3/texture/Texture$Type;->ThreeDimensional:Lcom/jme3/texture/Texture$Type;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_94
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_94} :catch_a2

    :goto_94
    :try_start_94
    sget-object v0, Lcom/jme3/material/Material$1;->$SwitchMap$com$jme3$texture$Texture$Type:[I

    sget-object v1, Lcom/jme3/texture/Texture$Type;->CubeMap:Lcom/jme3/texture/Texture$Type;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_94 .. :try_end_9f} :catch_a0

    :goto_9f
    return-void

    :catch_a0
    move-exception v0

    goto :goto_9f

    :catch_a2
    move-exception v0

    goto :goto_94

    :catch_a4
    move-exception v0

    goto :goto_89

    :catch_a6
    move-exception v0

    goto :goto_7e

    .line 674
    :catch_a8
    move-exception v0

    goto :goto_6a

    :catch_aa
    move-exception v0

    goto :goto_5f

    :catch_ac
    move-exception v0

    goto :goto_54

    :catch_ae
    move-exception v0

    goto :goto_49

    .line 1015
    :catch_b0
    move-exception v0

    goto :goto_35

    :catch_b2
    move-exception v0

    goto/16 :goto_2a

    :catch_b5
    move-exception v0

    goto/16 :goto_1f

    :catch_b8
    move-exception v0

    goto/16 :goto_14
.end method
