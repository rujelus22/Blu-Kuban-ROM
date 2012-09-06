.class public Lcom/jme3/shader/Uniform;
.super Lcom/jme3/shader/ShaderVariable;
.source "Uniform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/shader/Uniform$1;
    }
.end annotation


# static fields
.field private static final ZERO_BUF:Ljava/nio/FloatBuffer;

.field private static final ZERO_FLT:Ljava/lang/Float;

.field private static final ZERO_INT:Ljava/lang/Integer;


# instance fields
.field protected binding:Lcom/jme3/shader/UniformBinding;

.field protected multiData:Ljava/nio/FloatBuffer;

.field protected setByCurrentMaterial:Z

.field protected value:Ljava/lang/Object;

.field protected varType:Lcom/jme3/shader/VarType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/jme3/shader/Uniform;->ZERO_INT:Ljava/lang/Integer;

    .line 47
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/jme3/shader/Uniform;->ZERO_FLT:Ljava/lang/Float;

    .line 48
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/jme3/shader/Uniform;->ZERO_BUF:Ljava/nio/FloatBuffer;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Lcom/jme3/shader/ShaderVariable;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    .line 54
    iput-object v0, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/shader/Uniform;->setByCurrentMaterial:Z

    return-void
.end method


# virtual methods
.method public clearSetByCurrentMaterial()V
    .registers 2

    .prologue
    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/shader/Uniform;->setByCurrentMaterial:Z

    .line 202
    return-void
.end method

.method public clearUpdateNeeded()V
    .registers 2

    .prologue
    .line 423
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/shader/Uniform;->updateNeeded:Z

    .line 424
    return-void
.end method

.method public clearValue()V
    .registers 4

    .prologue
    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/shader/Uniform;->updateNeeded:Z

    .line 215
    iget-object v0, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_38

    .line 216
    sget-object v0, Lcom/jme3/shader/Uniform;->ZERO_BUF:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 217
    iget-object v0, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 219
    :goto_11
    iget-object v0, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_32

    .line 220
    sget-object v0, Lcom/jme3/shader/Uniform;->ZERO_BUF:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    .line 221
    iget-object v0, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/jme3/shader/Uniform;->ZERO_BUF:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    goto :goto_11

    .line 224
    :cond_32
    iget-object v0, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 259
    :cond_37
    :goto_37
    return-void

    .line 229
    :cond_38
    iget-object v0, p0, Lcom/jme3/shader/Uniform;->varType:Lcom/jme3/shader/VarType;

    if-eqz v0, :cond_37

    .line 232
    sget-object v0, Lcom/jme3/shader/Uniform$1;->$SwitchMap$com$jme3$shader$VarType:[I

    iget-object v1, p0, Lcom/jme3/shader/Uniform;->varType:Lcom/jme3/shader/VarType;

    invoke-virtual {v1}, Lcom/jme3/shader/VarType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_74

    :pswitch_49
    goto :goto_37

    .line 237
    :pswitch_4a
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    goto :goto_37

    .line 234
    :pswitch_4f
    sget-object v0, Lcom/jme3/shader/Uniform;->ZERO_INT:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    goto :goto_37

    .line 240
    :pswitch_54
    sget-object v0, Lcom/jme3/shader/Uniform;->ZERO_FLT:Ljava/lang/Float;

    iput-object v0, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    goto :goto_37

    .line 243
    :pswitch_59
    sget-object v0, Lcom/jme3/math/Vector2f;->ZERO:Lcom/jme3/math/Vector2f;

    iput-object v0, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    goto :goto_37

    .line 246
    :pswitch_5e
    sget-object v0, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    goto :goto_37

    .line 249
    :pswitch_63
    iget-object v0, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    instance-of v0, v0, Lcom/jme3/math/ColorRGBA;

    if-eqz v0, :cond_6e

    .line 250
    sget-object v0, Lcom/jme3/math/ColorRGBA;->BlackNoAlpha:Lcom/jme3/math/ColorRGBA;

    iput-object v0, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    goto :goto_37

    .line 252
    :cond_6e
    sget-object v0, Lcom/jme3/math/Quaternion;->ZERO:Lcom/jme3/math/Quaternion;

    iput-object v0, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    goto :goto_37

    .line 232
    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_54
        :pswitch_49
        :pswitch_4f
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_59
        :pswitch_5e
        :pswitch_49
        :pswitch_63
    .end packed-switch
.end method

.method public getBinding()Lcom/jme3/shader/UniformBinding;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/jme3/shader/Uniform;->binding:Lcom/jme3/shader/UniformBinding;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public getVarType()Lcom/jme3/shader/VarType;
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/jme3/shader/Uniform;->varType:Lcom/jme3/shader/VarType;

    return-object v0
.end method

.method public isSetByCurrentMaterial()Z
    .registers 2

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/jme3/shader/Uniform;->setByCurrentMaterial:Z

    return v0
.end method

.method public isUpdateNeeded()Z
    .registers 2

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/jme3/shader/Uniform;->updateNeeded:Z

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 118
    invoke-super {p0, p1}, Lcom/jme3/shader/ShaderVariable;->read(Lcom/jme3/export/JmeImporter;)V

    .line 119
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v1

    .line 120
    const-string v0, "varType"

    const-class v2, Lcom/jme3/shader/VarType;

    invoke-interface {v1, v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/shader/VarType;

    iput-object v0, p0, Lcom/jme3/shader/Uniform;->varType:Lcom/jme3/shader/VarType;

    .line 121
    const-string v0, "binding"

    const-class v2, Lcom/jme3/shader/UniformBinding;

    invoke-interface {v1, v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/shader/UniformBinding;

    iput-object v0, p0, Lcom/jme3/shader/Uniform;->binding:Lcom/jme3/shader/UniformBinding;

    .line 122
    sget-object v0, Lcom/jme3/shader/Uniform$1;->$SwitchMap$com$jme3$shader$VarType:[I

    iget-object v2, p0, Lcom/jme3/shader/Uniform;->varType:Lcom/jme3/shader/VarType;

    invoke-virtual {v2}, Lcom/jme3/shader/VarType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_a8

    .line 159
    :goto_2e
    :pswitch_2e
    return-void

    .line 124
    :pswitch_2f
    const-string v0, "valueBoolean"

    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    goto :goto_2e

    .line 127
    :pswitch_3c
    const-string v0, "valueFloat"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    goto :goto_2e

    .line 130
    :pswitch_4a
    const-string v0, "valueFloatArray"

    invoke-interface {v1, v0, v3}, Lcom/jme3/export/InputCapsule;->readFloatBuffer(Ljava/lang/String;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    goto :goto_2e

    .line 133
    :pswitch_53
    const-string v0, "valueInt"

    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    goto :goto_2e

    .line 136
    :pswitch_60
    const-string v0, "valueMatrix3"

    invoke-interface {v1, v0, v3}, Lcom/jme3/export/InputCapsule;->readFloatBuffer(Ljava/lang/String;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    .line 137
    iget-object v0, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    goto :goto_2e

    .line 140
    :pswitch_6d
    const-string v0, "valueMatrix4"

    invoke-interface {v1, v0, v3}, Lcom/jme3/export/InputCapsule;->readFloatBuffer(Ljava/lang/String;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    .line 141
    iget-object v0, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    goto :goto_2e

    .line 144
    :pswitch_7a
    const-string v0, "valueVector2"

    invoke-interface {v1, v0, v3}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    goto :goto_2e

    .line 147
    :pswitch_83
    const-string v0, "valueVector3"

    invoke-interface {v1, v0, v3}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    goto :goto_2e

    .line 150
    :pswitch_8c
    const-string v0, "valueVector3Array"

    invoke-interface {v1, v0, v3}, Lcom/jme3/export/InputCapsule;->readFloatBuffer(Ljava/lang/String;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    goto :goto_2e

    .line 153
    :pswitch_95
    const-string v0, "valueVector4"

    invoke-interface {v1, v0, v3}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    goto :goto_2e

    .line 156
    :pswitch_9e
    const-string v0, "valueVector4Array"

    invoke-interface {v1, v0, v3}, Lcom/jme3/export/InputCapsule;->readFloatBuffer(Ljava/lang/String;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    goto :goto_2e

    .line 122
    nop

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_3c
        :pswitch_4a
        :pswitch_53
        :pswitch_60
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_6d
        :pswitch_7a
        :pswitch_83
        :pswitch_8c
        :pswitch_95
        :pswitch_9e
    .end packed-switch
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 427
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/shader/Uniform;->setByCurrentMaterial:Z

    .line 428
    const/4 v0, -0x2

    iput v0, p0, Lcom/jme3/shader/Uniform;->location:I

    .line 429
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/shader/Uniform;->updateNeeded:Z

    .line 430
    return-void
.end method

.method public setBinding(Lcom/jme3/shader/UniformBinding;)V
    .registers 2
    .parameter "binding"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/jme3/shader/Uniform;->binding:Lcom/jme3/shader/UniformBinding;

    .line 182
    return-void
.end method

.method public setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V
    .registers 15
    .parameter "type"
    .parameter "value"

    .prologue
    const/4 v11, 0x1

    .line 262
    iget v9, p0, Lcom/jme3/shader/Uniform;->location:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_7

    .line 387
    .end local p2
    :cond_6
    :goto_6
    return-void

    .line 265
    .restart local p2
    :cond_7
    iget-object v9, p0, Lcom/jme3/shader/Uniform;->varType:Lcom/jme3/shader/VarType;

    if-eqz v9, :cond_34

    iget-object v9, p0, Lcom/jme3/shader/Uniform;->varType:Lcom/jme3/shader/VarType;

    if-eq v9, p1, :cond_34

    .line 266
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Expected a "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/jme3/shader/Uniform;->varType:Lcom/jme3/shader/VarType;

    invoke-virtual {v11}, Lcom/jme3/shader/VarType;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " value!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 268
    :cond_34
    if-nez p2, :cond_3c

    .line 269
    new-instance v9, Ljava/lang/NullPointerException;

    invoke-direct {v9}, Ljava/lang/NullPointerException;-><init>()V

    throw v9

    .line 271
    :cond_3c
    iput-boolean v11, p0, Lcom/jme3/shader/Uniform;->setByCurrentMaterial:Z

    .line 273
    sget-object v9, Lcom/jme3/shader/Uniform$1;->$SwitchMap$com$jme3$shader$VarType:[I

    invoke-virtual {p1}, Lcom/jme3/shader/VarType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_1b6

    .line 378
    :pswitch_49
    iput-object p2, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    .line 382
    .end local p2
    :goto_4b
    iget-object v9, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    if-eqz v9, :cond_53

    .line 383
    iget-object v9, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    iput-object v9, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    .line 385
    :cond_53
    iput-object p1, p0, Lcom/jme3/shader/Uniform;->varType:Lcom/jme3/shader/VarType;

    .line 386
    iput-boolean v11, p0, Lcom/jme3/shader/Uniform;->updateNeeded:Z

    goto :goto_6

    .restart local p2
    :pswitch_58
    move-object v2, p2

    .line 275
    check-cast v2, Lcom/jme3/math/Matrix3f;

    .line 276
    .local v2, m3:Lcom/jme3/math/Matrix3f;
    iget-object v9, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    if-nez v9, :cond_67

    .line 277
    const/16 v9, 0x9

    invoke-static {v9}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v9

    iput-object v9, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    .line 279
    :cond_67
    iget-object v9, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v9, v11}, Lcom/jme3/math/Matrix3f;->fillFloatBuffer(Ljava/nio/FloatBuffer;Z)Ljava/nio/FloatBuffer;

    .line 280
    iget-object v9, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    invoke-virtual {v9}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_4b

    .end local v2           #m3:Lcom/jme3/math/Matrix3f;
    :pswitch_72
    move-object v4, p2

    .line 283
    check-cast v4, Lcom/jme3/math/Matrix4f;

    .line 284
    .local v4, m4:Lcom/jme3/math/Matrix4f;
    iget-object v9, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    if-nez v9, :cond_81

    .line 285
    const/16 v9, 0x10

    invoke-static {v9}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v9

    iput-object v9, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    .line 287
    :cond_81
    iget-object v9, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v9, v11}, Lcom/jme3/math/Matrix4f;->fillFloatBuffer(Ljava/nio/FloatBuffer;Z)Ljava/nio/FloatBuffer;

    .line 288
    iget-object v9, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    invoke-virtual {v9}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_4b

    .line 291
    .end local v4           #m4:Lcom/jme3/math/Matrix4f;
    :pswitch_8c
    check-cast p2, [F

    .end local p2
    move-object v0, p2

    check-cast v0, [F

    .line 292
    .local v0, fa:[F
    iget-object v9, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    if-nez v9, :cond_a6

    .line 293
    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v9

    iput-object v9, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    .line 298
    :goto_9b
    iget-object v9, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    invoke-virtual {v9, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 299
    iget-object v9, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    invoke-virtual {v9}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_4b

    .line 295
    :cond_a6
    iget-object v9, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    array-length v10, v0

    invoke-static {v9, v10}, Lcom/jme3/util/BufferUtils;->ensureLargeEnough(Ljava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;

    move-result-object v9

    iput-object v9, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    goto :goto_9b

    .line 302
    .end local v0           #fa:[F
    .restart local p2
    :pswitch_b0
    check-cast p2, [Lcom/jme3/math/Vector2f;

    .end local p2
    move-object v6, p2

    check-cast v6, [Lcom/jme3/math/Vector2f;

    .line 303
    .local v6, v2a:[Lcom/jme3/math/Vector2f;
    iget-object v9, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    if-nez v9, :cond_cd

    .line 304
    invoke-static {v6}, Lcom/jme3/util/BufferUtils;->createFloatBuffer([Lcom/jme3/math/Vector2f;)Ljava/nio/FloatBuffer;

    move-result-object v9

    iput-object v9, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    .line 309
    :goto_bf
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c0
    array-length v9, v6

    if-ge v1, v9, :cond_d9

    .line 310
    aget-object v9, v6, v1

    iget-object v10, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    invoke-static {v9, v10, v1}, Lcom/jme3/util/BufferUtils;->setInBuffer(Lcom/jme3/math/Vector2f;Ljava/nio/FloatBuffer;I)V

    .line 309
    add-int/lit8 v1, v1, 0x1

    goto :goto_c0

    .line 306
    .end local v1           #i:I
    :cond_cd
    iget-object v9, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    array-length v10, v6

    mul-int/lit8 v10, v10, 0x2

    invoke-static {v9, v10}, Lcom/jme3/util/BufferUtils;->ensureLargeEnough(Ljava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;

    move-result-object v9

    iput-object v9, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    goto :goto_bf

    .line 312
    .restart local v1       #i:I
    :cond_d9
    iget-object v9, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    invoke-virtual {v9}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    goto/16 :goto_4b

    .line 315
    .end local v1           #i:I
    .end local v6           #v2a:[Lcom/jme3/math/Vector2f;
    .restart local p2
    :pswitch_e0
    check-cast p2, [Lcom/jme3/math/Vector3f;

    .end local p2
    move-object v7, p2

    check-cast v7, [Lcom/jme3/math/Vector3f;

    .line 316
    .local v7, v3a:[Lcom/jme3/math/Vector3f;
    iget-object v9, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    if-nez v9, :cond_fd

    .line 317
    invoke-static {v7}, Lcom/jme3/util/BufferUtils;->createFloatBuffer([Lcom/jme3/math/Vector3f;)Ljava/nio/FloatBuffer;

    move-result-object v9

    iput-object v9, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    .line 322
    :goto_ef
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_f0
    array-length v9, v7

    if-ge v1, v9, :cond_109

    .line 323
    aget-object v9, v7, v1

    iget-object v10, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    invoke-static {v9, v10, v1}, Lcom/jme3/util/BufferUtils;->setInBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    .line 322
    add-int/lit8 v1, v1, 0x1

    goto :goto_f0

    .line 319
    .end local v1           #i:I
    :cond_fd
    iget-object v9, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    array-length v10, v7

    mul-int/lit8 v10, v10, 0x3

    invoke-static {v9, v10}, Lcom/jme3/util/BufferUtils;->ensureLargeEnough(Ljava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;

    move-result-object v9

    iput-object v9, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    goto :goto_ef

    .line 325
    .restart local v1       #i:I
    :cond_109
    iget-object v9, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    invoke-virtual {v9}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    goto/16 :goto_4b

    .line 328
    .end local v1           #i:I
    .end local v7           #v3a:[Lcom/jme3/math/Vector3f;
    .restart local p2
    :pswitch_110
    check-cast p2, [Lcom/jme3/math/Quaternion;

    .end local p2
    move-object v8, p2

    check-cast v8, [Lcom/jme3/math/Quaternion;

    .line 329
    .local v8, v4a:[Lcom/jme3/math/Quaternion;
    iget-object v9, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    if-nez v9, :cond_12d

    .line 330
    invoke-static {v8}, Lcom/jme3/util/BufferUtils;->createFloatBuffer([Lcom/jme3/math/Quaternion;)Ljava/nio/FloatBuffer;

    move-result-object v9

    iput-object v9, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    .line 335
    :goto_11f
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_120
    array-length v9, v8

    if-ge v1, v9, :cond_139

    .line 336
    aget-object v9, v8, v1

    iget-object v10, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    invoke-static {v9, v10, v1}, Lcom/jme3/util/BufferUtils;->setInBuffer(Lcom/jme3/math/Quaternion;Ljava/nio/FloatBuffer;I)V

    .line 335
    add-int/lit8 v1, v1, 0x1

    goto :goto_120

    .line 332
    .end local v1           #i:I
    :cond_12d
    iget-object v9, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    array-length v10, v8

    mul-int/lit8 v10, v10, 0x4

    invoke-static {v9, v10}, Lcom/jme3/util/BufferUtils;->ensureLargeEnough(Ljava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;

    move-result-object v9

    iput-object v9, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    goto :goto_11f

    .line 338
    .restart local v1       #i:I
    :cond_139
    iget-object v9, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    invoke-virtual {v9}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    goto/16 :goto_4b

    .line 341
    .end local v1           #i:I
    .end local v8           #v4a:[Lcom/jme3/math/Quaternion;
    .restart local p2
    :pswitch_140
    check-cast p2, [Lcom/jme3/math/Matrix3f;

    .end local p2
    move-object v3, p2

    check-cast v3, [Lcom/jme3/math/Matrix3f;

    .line 343
    .local v3, m3a:[Lcom/jme3/math/Matrix3f;
    iget-object v9, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    if-nez v9, :cond_160

    .line 344
    array-length v9, v3

    mul-int/lit8 v9, v9, 0x9

    invoke-static {v9}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v9

    iput-object v9, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    .line 349
    :goto_152
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_153
    array-length v9, v3

    if-ge v1, v9, :cond_16c

    .line 350
    aget-object v9, v3, v1

    iget-object v10, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    invoke-virtual {v9, v10, v11}, Lcom/jme3/math/Matrix3f;->fillFloatBuffer(Ljava/nio/FloatBuffer;Z)Ljava/nio/FloatBuffer;

    .line 349
    add-int/lit8 v1, v1, 0x1

    goto :goto_153

    .line 346
    .end local v1           #i:I
    :cond_160
    iget-object v9, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    array-length v10, v3

    mul-int/lit8 v10, v10, 0x9

    invoke-static {v9, v10}, Lcom/jme3/util/BufferUtils;->ensureLargeEnough(Ljava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;

    move-result-object v9

    iput-object v9, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    goto :goto_152

    .line 352
    .restart local v1       #i:I
    :cond_16c
    iget-object v9, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    invoke-virtual {v9}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    goto/16 :goto_4b

    .line 355
    .end local v1           #i:I
    .end local v3           #m3a:[Lcom/jme3/math/Matrix3f;
    .restart local p2
    :pswitch_173
    check-cast p2, [Lcom/jme3/math/Matrix4f;

    .end local p2
    move-object v5, p2

    check-cast v5, [Lcom/jme3/math/Matrix4f;

    .line 357
    .local v5, m4a:[Lcom/jme3/math/Matrix4f;
    iget-object v9, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    if-nez v9, :cond_193

    .line 358
    array-length v9, v5

    mul-int/lit8 v9, v9, 0x10

    invoke-static {v9}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v9

    iput-object v9, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    .line 363
    :goto_185
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_186
    array-length v9, v5

    if-ge v1, v9, :cond_19f

    .line 364
    aget-object v9, v5, v1

    iget-object v10, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    invoke-virtual {v9, v10, v11}, Lcom/jme3/math/Matrix4f;->fillFloatBuffer(Ljava/nio/FloatBuffer;Z)Ljava/nio/FloatBuffer;

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_186

    .line 360
    .end local v1           #i:I
    :cond_193
    iget-object v9, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    array-length v10, v5

    mul-int/lit8 v10, v10, 0x10

    invoke-static {v9, v10}, Lcom/jme3/util/BufferUtils;->ensureLargeEnough(Ljava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;

    move-result-object v9

    iput-object v9, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    goto :goto_185

    .line 366
    .restart local v1       #i:I
    :cond_19f
    iget-object v9, p0, Lcom/jme3/shader/Uniform;->multiData:Ljava/nio/FloatBuffer;

    invoke-virtual {v9}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    goto/16 :goto_4b

    .line 372
    .end local v1           #i:I
    .end local v5           #m4a:[Lcom/jme3/math/Matrix4f;
    .restart local p2
    :pswitch_1a6
    iget-object v9, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    if-eqz v9, :cond_1b2

    iget-object v9, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    invoke-virtual {v9, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 375
    :cond_1b2
    iput-object p2, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    goto/16 :goto_4b

    .line 273
    :pswitch_data_1b6
    .packed-switch 0x1
        :pswitch_1a6
        :pswitch_1a6
        :pswitch_8c
        :pswitch_1a6
        :pswitch_58
        :pswitch_140
        :pswitch_173
        :pswitch_b0
        :pswitch_72
        :pswitch_49
        :pswitch_49
        :pswitch_e0
        :pswitch_49
        :pswitch_110
    .end packed-switch
.end method

.method public setVector4InArray(FFFFI)V
    .registers 10
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "w"
    .parameter "index"

    .prologue
    const/4 v3, 0x1

    .line 404
    iget v1, p0, Lcom/jme3/shader/Uniform;->location:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    .line 416
    :goto_6
    return-void

    .line 407
    :cond_7
    iget-object v1, p0, Lcom/jme3/shader/Uniform;->varType:Lcom/jme3/shader/VarType;

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/jme3/shader/Uniform;->varType:Lcom/jme3/shader/VarType;

    sget-object v2, Lcom/jme3/shader/VarType;->Vector4Array:Lcom/jme3/shader/VarType;

    if-eq v1, v2, :cond_36

    .line 408
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jme3/shader/Uniform;->varType:Lcom/jme3/shader/VarType;

    invoke-virtual {v3}, Lcom/jme3/shader/VarType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 410
    :cond_36
    iget-object v0, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    check-cast v0, Ljava/nio/FloatBuffer;

    .line 411
    .local v0, fb:Ljava/nio/FloatBuffer;
    mul-int/lit8 v1, p5, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 412
    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 413
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 414
    iput-boolean v3, p0, Lcom/jme3/shader/Uniform;->updateNeeded:Z

    .line 415
    iput-boolean v3, p0, Lcom/jme3/shader/Uniform;->setByCurrentMaterial:Z

    goto :goto_6
.end method

.method public setVector4Length(I)V
    .registers 6
    .parameter "length"

    .prologue
    const/4 v3, 0x1

    .line 390
    iget v1, p0, Lcom/jme3/shader/Uniform;->location:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    .line 401
    :goto_6
    return-void

    .line 393
    :cond_7
    iget-object v0, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    check-cast v0, Ljava/nio/FloatBuffer;

    .line 394
    .local v0, fb:Ljava/nio/FloatBuffer;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    if-ge v1, p1, :cond_1b

    .line 395
    :cond_13
    mul-int/lit8 v1, p1, 0x4

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    .line 398
    :cond_1b
    sget-object v1, Lcom/jme3/shader/VarType;->Vector4Array:Lcom/jme3/shader/VarType;

    iput-object v1, p0, Lcom/jme3/shader/Uniform;->varType:Lcom/jme3/shader/VarType;

    .line 399
    iput-boolean v3, p0, Lcom/jme3/shader/Uniform;->updateNeeded:Z

    .line 400
    iput-boolean v3, p0, Lcom/jme3/shader/Uniform;->setByCurrentMaterial:Z

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/jme3/shader/Uniform;->name:Ljava/lang/String;

    if-eqz v1, :cond_2b

    .line 165
    const-string v1, "Uniform[name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget-object v1, p0, Lcom/jme3/shader/Uniform;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget-object v1, p0, Lcom/jme3/shader/Uniform;->varType:Lcom/jme3/shader/VarType;

    if-eqz v1, :cond_35

    .line 168
    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget-object v1, p0, Lcom/jme3/shader/Uniform;->varType:Lcom/jme3/shader/VarType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-object v1, p0, Lcom/jme3/shader/Uniform;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    :cond_2b
    :goto_2b
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 173
    :cond_35
    const-string v1, ", value=<not set>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2b
.end method
