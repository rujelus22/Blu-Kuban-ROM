.class synthetic Lcom/jme3/scene/Mesh$1;
.super Ljava/lang/Object;
.source "Mesh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/scene/Mesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$jme3$scene$Mesh$Mode:[I

.field static final synthetic $SwitchMap$com$jme3$scene$VertexBuffer$Format:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 654
    invoke-static {}, Lcom/jme3/scene/Mesh$Mode;->values()[Lcom/jme3/scene/Mesh$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/jme3/scene/Mesh$1;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    :try_start_9
    sget-object v0, Lcom/jme3/scene/Mesh$1;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->Triangles:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v1}, Lcom/jme3/scene/Mesh$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_e9

    :goto_14
    :try_start_14
    sget-object v0, Lcom/jme3/scene/Mesh$1;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->TriangleFan:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v1}, Lcom/jme3/scene/Mesh$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_e6

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/jme3/scene/Mesh$1;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->TriangleStrip:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v1}, Lcom/jme3/scene/Mesh$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_e3

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/jme3/scene/Mesh$1;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->Points:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v1}, Lcom/jme3/scene/Mesh$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_e0

    :goto_35
    :try_start_35
    sget-object v0, Lcom/jme3/scene/Mesh$1;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->Lines:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v1}, Lcom/jme3/scene/Mesh$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_dd

    :goto_40
    :try_start_40
    sget-object v0, Lcom/jme3/scene/Mesh$1;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->LineLoop:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v1}, Lcom/jme3/scene/Mesh$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_da

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/jme3/scene/Mesh$1;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->LineStrip:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v1}, Lcom/jme3/scene/Mesh$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_d7

    .line 603
    :goto_56
    invoke-static {}, Lcom/jme3/scene/VertexBuffer$Format;->values()[Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/jme3/scene/Mesh$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    :try_start_5f
    sget-object v0, Lcom/jme3/scene/Mesh$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_d5

    :goto_6a
    :try_start_6a
    sget-object v0, Lcom/jme3/scene/Mesh$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Format;->Byte:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_d3

    :goto_75
    :try_start_75
    sget-object v0, Lcom/jme3/scene/Mesh$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedByte:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_80} :catch_d1

    :goto_80
    :try_start_80
    sget-object v0, Lcom/jme3/scene/Mesh$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Format;->Half:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_8b} :catch_cf

    :goto_8b
    :try_start_8b
    sget-object v0, Lcom/jme3/scene/Mesh$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Format;->Short:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_96
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b .. :try_end_96} :catch_cd

    :goto_96
    :try_start_96
    sget-object v0, Lcom/jme3/scene/Mesh$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedShort:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_a1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_96 .. :try_end_a1} :catch_cb

    :goto_a1
    :try_start_a1
    sget-object v0, Lcom/jme3/scene/Mesh$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Format;->Int:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_ac
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a1 .. :try_end_ac} :catch_c9

    :goto_ac
    :try_start_ac
    sget-object v0, Lcom/jme3/scene/Mesh$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedInt:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer$Format;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_b8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ac .. :try_end_b8} :catch_c7

    :goto_b8
    :try_start_b8
    sget-object v0, Lcom/jme3/scene/Mesh$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Format;->Double:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer$Format;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_c4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b8 .. :try_end_c4} :catch_c5

    :goto_c4
    return-void

    :catch_c5
    move-exception v0

    goto :goto_c4

    :catch_c7
    move-exception v0

    goto :goto_b8

    :catch_c9
    move-exception v0

    goto :goto_ac

    :catch_cb
    move-exception v0

    goto :goto_a1

    :catch_cd
    move-exception v0

    goto :goto_96

    :catch_cf
    move-exception v0

    goto :goto_8b

    :catch_d1
    move-exception v0

    goto :goto_80

    :catch_d3
    move-exception v0

    goto :goto_75

    :catch_d5
    move-exception v0

    goto :goto_6a

    .line 654
    :catch_d7
    move-exception v0

    goto/16 :goto_56

    :catch_da
    move-exception v0

    goto/16 :goto_4b

    :catch_dd
    move-exception v0

    goto/16 :goto_40

    :catch_e0
    move-exception v0

    goto/16 :goto_35

    :catch_e3
    move-exception v0

    goto/16 :goto_2a

    :catch_e6
    move-exception v0

    goto/16 :goto_1f

    :catch_e9
    move-exception v0

    goto/16 :goto_14
.end method
