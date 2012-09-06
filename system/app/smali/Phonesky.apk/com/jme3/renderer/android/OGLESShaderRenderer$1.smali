.class synthetic Lcom/jme3/renderer/android/OGLESShaderRenderer$1;
.super Ljava/lang/Object;
.source "OGLESShaderRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/renderer/android/OGLESShaderRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$jme3$material$RenderState$BlendMode:[I

.field static final synthetic $SwitchMap$com$jme3$material$RenderState$FaceCullMode:[I

.field static final synthetic $SwitchMap$com$jme3$scene$Mesh$Mode:[I

.field static final synthetic $SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

.field static final synthetic $SwitchMap$com$jme3$scene$VertexBuffer$Usage:[I

.field static final synthetic $SwitchMap$com$jme3$shader$Shader$ShaderType:[I

.field static final synthetic $SwitchMap$com$jme3$shader$VarType:[I

.field static final synthetic $SwitchMap$com$jme3$texture$Texture$MagFilter:[I

.field static final synthetic $SwitchMap$com$jme3$texture$Texture$MinFilter:[I

.field static final synthetic $SwitchMap$com$jme3$texture$Texture$Type:[I

.field static final synthetic $SwitchMap$com$jme3$texture$Texture$WrapMode:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 2551
    invoke-static {}, Lcom/jme3/scene/Mesh$Mode;->values()[Lcom/jme3/scene/Mesh$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    :try_start_9
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->Points:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v1}, Lcom/jme3/scene/Mesh$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_3c4

    :goto_14
    :try_start_14
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->Lines:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v1}, Lcom/jme3/scene/Mesh$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_3c1

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->LineLoop:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v1}, Lcom/jme3/scene/Mesh$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_3be

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->LineStrip:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v1}, Lcom/jme3/scene/Mesh$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_3bb

    :goto_35
    :try_start_35
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->Triangles:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v1}, Lcom/jme3/scene/Mesh$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_3b8

    :goto_40
    :try_start_40
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->TriangleFan:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v1}, Lcom/jme3/scene/Mesh$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_3b5

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->TriangleStrip:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v1}, Lcom/jme3/scene/Mesh$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_3b2

    .line 2050
    :goto_56
    invoke-static {}, Lcom/jme3/scene/VertexBuffer$Format;->values()[Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    :try_start_5f
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Format;->Byte:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_3af

    :goto_6a
    :try_start_6a
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedByte:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_3ac

    :goto_75
    :try_start_75
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Format;->Short:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_80} :catch_3a9

    :goto_80
    :try_start_80
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedShort:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_8b} :catch_3a6

    :goto_8b
    :try_start_8b
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Format;->Int:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_96
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b .. :try_end_96} :catch_3a3

    :goto_96
    :try_start_96
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedInt:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_a1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_96 .. :try_end_a1} :catch_3a0

    :goto_a1
    :try_start_a1
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_ac
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a1 .. :try_end_ac} :catch_39d

    :goto_ac
    :try_start_ac
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Format;->Double:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer$Format;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_b8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ac .. :try_end_b8} :catch_39a

    .line 2037
    :goto_b8
    invoke-static {}, Lcom/jme3/scene/VertexBuffer$Usage;->values()[Lcom/jme3/scene/VertexBuffer$Usage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Usage:[I

    :try_start_c1
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Usage:[I

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Usage;->Static:Lcom/jme3/scene/VertexBuffer$Usage;

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer$Usage;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c1 .. :try_end_cc} :catch_397

    :goto_cc
    :try_start_cc
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Usage:[I

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Usage;->Dynamic:Lcom/jme3/scene/VertexBuffer$Usage;

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer$Usage;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_d7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cc .. :try_end_d7} :catch_394

    :goto_d7
    :try_start_d7
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Usage:[I

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Usage;->Stream:Lcom/jme3/scene/VertexBuffer$Usage;

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer$Usage;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_e2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d7 .. :try_end_e2} :catch_391

    .line 1761
    :goto_e2
    invoke-static {}, Lcom/jme3/texture/Texture$WrapMode;->values()[Lcom/jme3/texture/Texture$WrapMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$WrapMode:[I

    :try_start_eb
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$WrapMode:[I

    sget-object v1, Lcom/jme3/texture/Texture$WrapMode;->BorderClamp:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$WrapMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_f6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_eb .. :try_end_f6} :catch_38e

    :goto_f6
    :try_start_f6
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$WrapMode:[I

    sget-object v1, Lcom/jme3/texture/Texture$WrapMode;->Clamp:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$WrapMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_101
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f6 .. :try_end_101} :catch_38b

    :goto_101
    :try_start_101
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$WrapMode:[I

    sget-object v1, Lcom/jme3/texture/Texture$WrapMode;->EdgeClamp:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$WrapMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_10c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_101 .. :try_end_10c} :catch_388

    :goto_10c
    :try_start_10c
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$WrapMode:[I

    sget-object v1, Lcom/jme3/texture/Texture$WrapMode;->Repeat:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$WrapMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_117
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10c .. :try_end_117} :catch_385

    :goto_117
    :try_start_117
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$WrapMode:[I

    sget-object v1, Lcom/jme3/texture/Texture$WrapMode;->MirroredRepeat:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$WrapMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_122
    .catch Ljava/lang/NoSuchFieldError; {:try_start_117 .. :try_end_122} :catch_382

    .line 1742
    :goto_122
    invoke-static {}, Lcom/jme3/texture/Texture$MinFilter;->values()[Lcom/jme3/texture/Texture$MinFilter;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$MinFilter:[I

    :try_start_12b
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$MinFilter:[I

    sget-object v1, Lcom/jme3/texture/Texture$MinFilter;->Trilinear:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$MinFilter;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_136
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12b .. :try_end_136} :catch_37f

    :goto_136
    :try_start_136
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$MinFilter:[I

    sget-object v1, Lcom/jme3/texture/Texture$MinFilter;->BilinearNearestMipMap:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$MinFilter;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_141
    .catch Ljava/lang/NoSuchFieldError; {:try_start_136 .. :try_end_141} :catch_37c

    :goto_141
    :try_start_141
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$MinFilter:[I

    sget-object v1, Lcom/jme3/texture/Texture$MinFilter;->NearestLinearMipMap:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$MinFilter;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_14c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_141 .. :try_end_14c} :catch_379

    :goto_14c
    :try_start_14c
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$MinFilter:[I

    sget-object v1, Lcom/jme3/texture/Texture$MinFilter;->NearestNearestMipMap:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$MinFilter;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_157
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14c .. :try_end_157} :catch_376

    :goto_157
    :try_start_157
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$MinFilter:[I

    sget-object v1, Lcom/jme3/texture/Texture$MinFilter;->BilinearNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$MinFilter;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_162
    .catch Ljava/lang/NoSuchFieldError; {:try_start_157 .. :try_end_162} :catch_373

    :goto_162
    :try_start_162
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$MinFilter:[I

    sget-object v1, Lcom/jme3/texture/Texture$MinFilter;->NearestNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$MinFilter;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_16d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_162 .. :try_end_16d} :catch_370

    .line 1731
    :goto_16d
    invoke-static {}, Lcom/jme3/texture/Texture$MagFilter;->values()[Lcom/jme3/texture/Texture$MagFilter;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$MagFilter:[I

    :try_start_176
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$MagFilter:[I

    sget-object v1, Lcom/jme3/texture/Texture$MagFilter;->Bilinear:Lcom/jme3/texture/Texture$MagFilter;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$MagFilter;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_181
    .catch Ljava/lang/NoSuchFieldError; {:try_start_176 .. :try_end_181} :catch_36d

    :goto_181
    :try_start_181
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$MagFilter:[I

    sget-object v1, Lcom/jme3/texture/Texture$MagFilter;->Nearest:Lcom/jme3/texture/Texture$MagFilter;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$MagFilter;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_18c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_181 .. :try_end_18c} :catch_36a

    .line 1716
    :goto_18c
    invoke-static {}, Lcom/jme3/texture/Texture$Type;->values()[Lcom/jme3/texture/Texture$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$Type:[I

    :try_start_195
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$Type:[I

    sget-object v1, Lcom/jme3/texture/Texture$Type;->TwoDimensional:Lcom/jme3/texture/Texture$Type;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1a0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_195 .. :try_end_1a0} :catch_367

    :goto_1a0
    :try_start_1a0
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$Type:[I

    sget-object v1, Lcom/jme3/texture/Texture$Type;->CubeMap:Lcom/jme3/texture/Texture$Type;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1ab
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a0 .. :try_end_1ab} :catch_364

    :goto_1ab
    :try_start_1ab
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$Type:[I

    sget-object v1, Lcom/jme3/texture/Texture$Type;->ThreeDimensional:Lcom/jme3/texture/Texture$Type;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ab .. :try_end_1b6} :catch_361

    :goto_1b6
    :try_start_1b6
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$Type:[I

    sget-object v1, Lcom/jme3/texture/Texture$Type;->TwoDimensionalArray:Lcom/jme3/texture/Texture$Type;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1c1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b6 .. :try_end_1c1} :catch_35e

    .line 949
    :goto_1c1
    invoke-static {}, Lcom/jme3/shader/Shader$ShaderType;->values()[Lcom/jme3/shader/Shader$ShaderType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$shader$Shader$ShaderType:[I

    :try_start_1ca
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$shader$Shader$ShaderType:[I

    sget-object v1, Lcom/jme3/shader/Shader$ShaderType;->Fragment:Lcom/jme3/shader/Shader$ShaderType;

    invoke-virtual {v1}, Lcom/jme3/shader/Shader$ShaderType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1d5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ca .. :try_end_1d5} :catch_35b

    :goto_1d5
    :try_start_1d5
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$shader$Shader$ShaderType:[I

    sget-object v1, Lcom/jme3/shader/Shader$ShaderType;->Vertex:Lcom/jme3/shader/Shader$ShaderType;

    invoke-virtual {v1}, Lcom/jme3/shader/Shader$ShaderType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1e0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d5 .. :try_end_1e0} :catch_358

    .line 815
    :goto_1e0
    invoke-static {}, Lcom/jme3/shader/VarType;->values()[Lcom/jme3/shader/VarType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$shader$VarType:[I

    :try_start_1e9
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$shader$VarType:[I

    sget-object v1, Lcom/jme3/shader/VarType;->Float:Lcom/jme3/shader/VarType;

    invoke-virtual {v1}, Lcom/jme3/shader/VarType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1f4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e9 .. :try_end_1f4} :catch_355

    :goto_1f4
    :try_start_1f4
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$shader$VarType:[I

    sget-object v1, Lcom/jme3/shader/VarType;->Vector2:Lcom/jme3/shader/VarType;

    invoke-virtual {v1}, Lcom/jme3/shader/VarType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1ff
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f4 .. :try_end_1ff} :catch_352

    :goto_1ff
    :try_start_1ff
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$shader$VarType:[I

    sget-object v1, Lcom/jme3/shader/VarType;->Vector3:Lcom/jme3/shader/VarType;

    invoke-virtual {v1}, Lcom/jme3/shader/VarType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_20a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ff .. :try_end_20a} :catch_34f

    :goto_20a
    :try_start_20a
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$shader$VarType:[I

    sget-object v1, Lcom/jme3/shader/VarType;->Vector4:Lcom/jme3/shader/VarType;

    invoke-virtual {v1}, Lcom/jme3/shader/VarType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_215
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20a .. :try_end_215} :catch_34c

    :goto_215
    :try_start_215
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$shader$VarType:[I

    sget-object v1, Lcom/jme3/shader/VarType;->Boolean:Lcom/jme3/shader/VarType;

    invoke-virtual {v1}, Lcom/jme3/shader/VarType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_220
    .catch Ljava/lang/NoSuchFieldError; {:try_start_215 .. :try_end_220} :catch_349

    :goto_220
    :try_start_220
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$shader$VarType:[I

    sget-object v1, Lcom/jme3/shader/VarType;->Matrix3:Lcom/jme3/shader/VarType;

    invoke-virtual {v1}, Lcom/jme3/shader/VarType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_22b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_220 .. :try_end_22b} :catch_346

    :goto_22b
    :try_start_22b
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$shader$VarType:[I

    sget-object v1, Lcom/jme3/shader/VarType;->Matrix4:Lcom/jme3/shader/VarType;

    invoke-virtual {v1}, Lcom/jme3/shader/VarType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_236
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22b .. :try_end_236} :catch_343

    :goto_236
    :try_start_236
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$shader$VarType:[I

    sget-object v1, Lcom/jme3/shader/VarType;->FloatArray:Lcom/jme3/shader/VarType;

    invoke-virtual {v1}, Lcom/jme3/shader/VarType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_242
    .catch Ljava/lang/NoSuchFieldError; {:try_start_236 .. :try_end_242} :catch_340

    :goto_242
    :try_start_242
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$shader$VarType:[I

    sget-object v1, Lcom/jme3/shader/VarType;->Vector2Array:Lcom/jme3/shader/VarType;

    invoke-virtual {v1}, Lcom/jme3/shader/VarType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_24e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_242 .. :try_end_24e} :catch_33d

    :goto_24e
    :try_start_24e
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$shader$VarType:[I

    sget-object v1, Lcom/jme3/shader/VarType;->Vector3Array:Lcom/jme3/shader/VarType;

    invoke-virtual {v1}, Lcom/jme3/shader/VarType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_25a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24e .. :try_end_25a} :catch_33a

    :goto_25a
    :try_start_25a
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$shader$VarType:[I

    sget-object v1, Lcom/jme3/shader/VarType;->Vector4Array:Lcom/jme3/shader/VarType;

    invoke-virtual {v1}, Lcom/jme3/shader/VarType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_266
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25a .. :try_end_266} :catch_337

    :goto_266
    :try_start_266
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$shader$VarType:[I

    sget-object v1, Lcom/jme3/shader/VarType;->Matrix4Array:Lcom/jme3/shader/VarType;

    invoke-virtual {v1}, Lcom/jme3/shader/VarType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_272
    .catch Ljava/lang/NoSuchFieldError; {:try_start_266 .. :try_end_272} :catch_334

    :goto_272
    :try_start_272
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$shader$VarType:[I

    sget-object v1, Lcom/jme3/shader/VarType;->Int:Lcom/jme3/shader/VarType;

    invoke-virtual {v1}, Lcom/jme3/shader/VarType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_27e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_272 .. :try_end_27e} :catch_331

    .line 611
    :goto_27e
    invoke-static {}, Lcom/jme3/material/RenderState$BlendMode;->values()[Lcom/jme3/material/RenderState$BlendMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendMode:[I

    :try_start_287
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendMode:[I

    sget-object v1, Lcom/jme3/material/RenderState$BlendMode;->Off:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v1}, Lcom/jme3/material/RenderState$BlendMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_292
    .catch Ljava/lang/NoSuchFieldError; {:try_start_287 .. :try_end_292} :catch_32e

    :goto_292
    :try_start_292
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendMode:[I

    sget-object v1, Lcom/jme3/material/RenderState$BlendMode;->Additive:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v1}, Lcom/jme3/material/RenderState$BlendMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_29d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_292 .. :try_end_29d} :catch_32b

    :goto_29d
    :try_start_29d
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendMode:[I

    sget-object v1, Lcom/jme3/material/RenderState$BlendMode;->AlphaAdditive:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v1}, Lcom/jme3/material/RenderState$BlendMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29d .. :try_end_2a8} :catch_328

    :goto_2a8
    :try_start_2a8
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendMode:[I

    sget-object v1, Lcom/jme3/material/RenderState$BlendMode;->Color:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v1}, Lcom/jme3/material/RenderState$BlendMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a8 .. :try_end_2b3} :catch_326

    :goto_2b3
    :try_start_2b3
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendMode:[I

    sget-object v1, Lcom/jme3/material/RenderState$BlendMode;->Alpha:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v1}, Lcom/jme3/material/RenderState$BlendMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2be
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b3 .. :try_end_2be} :catch_324

    :goto_2be
    :try_start_2be
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendMode:[I

    sget-object v1, Lcom/jme3/material/RenderState$BlendMode;->PremultAlpha:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v1}, Lcom/jme3/material/RenderState$BlendMode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2c9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2be .. :try_end_2c9} :catch_322

    :goto_2c9
    :try_start_2c9
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendMode:[I

    sget-object v1, Lcom/jme3/material/RenderState$BlendMode;->Modulate:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v1}, Lcom/jme3/material/RenderState$BlendMode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2d4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c9 .. :try_end_2d4} :catch_320

    :goto_2d4
    :try_start_2d4
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendMode:[I

    sget-object v1, Lcom/jme3/material/RenderState$BlendMode;->ModulateX2:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v1}, Lcom/jme3/material/RenderState$BlendMode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_2e0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d4 .. :try_end_2e0} :catch_31e

    .line 569
    :goto_2e0
    invoke-static {}, Lcom/jme3/material/RenderState$FaceCullMode;->values()[Lcom/jme3/material/RenderState$FaceCullMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$material$RenderState$FaceCullMode:[I

    :try_start_2e9
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$material$RenderState$FaceCullMode:[I

    sget-object v1, Lcom/jme3/material/RenderState$FaceCullMode;->Off:Lcom/jme3/material/RenderState$FaceCullMode;

    invoke-virtual {v1}, Lcom/jme3/material/RenderState$FaceCullMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2f4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e9 .. :try_end_2f4} :catch_31c

    :goto_2f4
    :try_start_2f4
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$material$RenderState$FaceCullMode:[I

    sget-object v1, Lcom/jme3/material/RenderState$FaceCullMode;->Back:Lcom/jme3/material/RenderState$FaceCullMode;

    invoke-virtual {v1}, Lcom/jme3/material/RenderState$FaceCullMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2ff
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f4 .. :try_end_2ff} :catch_31a

    :goto_2ff
    :try_start_2ff
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$material$RenderState$FaceCullMode:[I

    sget-object v1, Lcom/jme3/material/RenderState$FaceCullMode;->Front:Lcom/jme3/material/RenderState$FaceCullMode;

    invoke-virtual {v1}, Lcom/jme3/material/RenderState$FaceCullMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_30a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2ff .. :try_end_30a} :catch_318

    :goto_30a
    :try_start_30a
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$material$RenderState$FaceCullMode:[I

    sget-object v1, Lcom/jme3/material/RenderState$FaceCullMode;->FrontAndBack:Lcom/jme3/material/RenderState$FaceCullMode;

    invoke-virtual {v1}, Lcom/jme3/material/RenderState$FaceCullMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_315
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30a .. :try_end_315} :catch_316

    :goto_315
    return-void

    :catch_316
    move-exception v0

    goto :goto_315

    :catch_318
    move-exception v0

    goto :goto_30a

    :catch_31a
    move-exception v0

    goto :goto_2ff

    :catch_31c
    move-exception v0

    goto :goto_2f4

    .line 611
    :catch_31e
    move-exception v0

    goto :goto_2e0

    :catch_320
    move-exception v0

    goto :goto_2d4

    :catch_322
    move-exception v0

    goto :goto_2c9

    :catch_324
    move-exception v0

    goto :goto_2be

    :catch_326
    move-exception v0

    goto :goto_2b3

    :catch_328
    move-exception v0

    goto/16 :goto_2a8

    :catch_32b
    move-exception v0

    goto/16 :goto_29d

    :catch_32e
    move-exception v0

    goto/16 :goto_292

    .line 815
    :catch_331
    move-exception v0

    goto/16 :goto_27e

    :catch_334
    move-exception v0

    goto/16 :goto_272

    :catch_337
    move-exception v0

    goto/16 :goto_266

    :catch_33a
    move-exception v0

    goto/16 :goto_25a

    :catch_33d
    move-exception v0

    goto/16 :goto_24e

    :catch_340
    move-exception v0

    goto/16 :goto_242

    :catch_343
    move-exception v0

    goto/16 :goto_236

    :catch_346
    move-exception v0

    goto/16 :goto_22b

    :catch_349
    move-exception v0

    goto/16 :goto_220

    :catch_34c
    move-exception v0

    goto/16 :goto_215

    :catch_34f
    move-exception v0

    goto/16 :goto_20a

    :catch_352
    move-exception v0

    goto/16 :goto_1ff

    :catch_355
    move-exception v0

    goto/16 :goto_1f4

    .line 949
    :catch_358
    move-exception v0

    goto/16 :goto_1e0

    :catch_35b
    move-exception v0

    goto/16 :goto_1d5

    .line 1716
    :catch_35e
    move-exception v0

    goto/16 :goto_1c1

    :catch_361
    move-exception v0

    goto/16 :goto_1b6

    :catch_364
    move-exception v0

    goto/16 :goto_1ab

    :catch_367
    move-exception v0

    goto/16 :goto_1a0

    .line 1731
    :catch_36a
    move-exception v0

    goto/16 :goto_18c

    :catch_36d
    move-exception v0

    goto/16 :goto_181

    .line 1742
    :catch_370
    move-exception v0

    goto/16 :goto_16d

    :catch_373
    move-exception v0

    goto/16 :goto_162

    :catch_376
    move-exception v0

    goto/16 :goto_157

    :catch_379
    move-exception v0

    goto/16 :goto_14c

    :catch_37c
    move-exception v0

    goto/16 :goto_141

    :catch_37f
    move-exception v0

    goto/16 :goto_136

    .line 1761
    :catch_382
    move-exception v0

    goto/16 :goto_122

    :catch_385
    move-exception v0

    goto/16 :goto_117

    :catch_388
    move-exception v0

    goto/16 :goto_10c

    :catch_38b
    move-exception v0

    goto/16 :goto_101

    :catch_38e
    move-exception v0

    goto/16 :goto_f6

    .line 2037
    :catch_391
    move-exception v0

    goto/16 :goto_e2

    :catch_394
    move-exception v0

    goto/16 :goto_d7

    :catch_397
    move-exception v0

    goto/16 :goto_cc

    .line 2050
    :catch_39a
    move-exception v0

    goto/16 :goto_b8

    :catch_39d
    move-exception v0

    goto/16 :goto_ac

    :catch_3a0
    move-exception v0

    goto/16 :goto_a1

    :catch_3a3
    move-exception v0

    goto/16 :goto_96

    :catch_3a6
    move-exception v0

    goto/16 :goto_8b

    :catch_3a9
    move-exception v0

    goto/16 :goto_80

    :catch_3ac
    move-exception v0

    goto/16 :goto_75

    :catch_3af
    move-exception v0

    goto/16 :goto_6a

    .line 2551
    :catch_3b2
    move-exception v0

    goto/16 :goto_56

    :catch_3b5
    move-exception v0

    goto/16 :goto_4b

    :catch_3b8
    move-exception v0

    goto/16 :goto_40

    :catch_3bb
    move-exception v0

    goto/16 :goto_35

    :catch_3be
    move-exception v0

    goto/16 :goto_2a

    :catch_3c1
    move-exception v0

    goto/16 :goto_1f

    :catch_3c4
    move-exception v0

    goto/16 :goto_14
.end method
