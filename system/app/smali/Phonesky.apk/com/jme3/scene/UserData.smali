.class public final Lcom/jme3/scene/UserData;
.super Ljava/lang/Object;
.source "UserData.java"

# interfaces
.implements Lcom/jme3/export/Savable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected type:B

.field protected value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-class v0, Lcom/jme3/scene/UserData;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/jme3/scene/UserData;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(BLjava/lang/Object;)V
    .registers 4
    .parameter "type"
    .parameter "value"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    sget-boolean v0, Lcom/jme3/scene/UserData;->$assertionsDisabled:Z

    if-nez v0, :cond_12

    if-ltz p1, :cond_c

    const/4 v0, 0x4

    if-le p1, v0, :cond_12

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 73
    :cond_12
    iput-byte p1, p0, Lcom/jme3/scene/UserData;->type:B

    .line 74
    iput-object p2, p0, Lcom/jme3/scene/UserData;->value:Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public static getObjectType(Ljava/lang/Object;)B
    .registers 4
    .parameter "type"

    .prologue
    .line 87
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 88
    const/4 v0, 0x0

    .line 96
    :goto_5
    return v0

    .line 89
    :cond_6
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_c

    .line 90
    const/4 v0, 0x1

    goto :goto_5

    .line 91
    :cond_c
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_12

    .line 92
    const/4 v0, 0x2

    goto :goto_5

    .line 93
    :cond_12
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 94
    const/4 v0, 0x3

    goto :goto_5

    .line 95
    :cond_18
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_1e

    .line 96
    const/4 v0, 0x4

    goto :goto_5

    .line 98
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/jme3/scene/UserData;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .registers 6
    .parameter "im"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 133
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    .line 134
    .local v0, ic:Lcom/jme3/export/InputCapsule;
    const-string v1, "type"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readByte(Ljava/lang/String;B)B

    move-result v1

    iput-byte v1, p0, Lcom/jme3/scene/UserData;->type:B

    .line 136
    iget-byte v1, p0, Lcom/jme3/scene/UserData;->type:B

    packed-switch v1, :pswitch_data_5a

    .line 153
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 138
    :pswitch_18
    const-string v1, "intVal"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/scene/UserData;->value:Ljava/lang/Object;

    .line 155
    :goto_24
    return-void

    .line 141
    :pswitch_25
    const-string v1, "floatVal"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/scene/UserData;->value:Ljava/lang/Object;

    goto :goto_24

    .line 144
    :pswitch_33
    const-string v1, "boolVal"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/scene/UserData;->value:Ljava/lang/Object;

    goto :goto_24

    .line 147
    :pswitch_40
    const-string v1, "strVal"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/scene/UserData;->value:Ljava/lang/Object;

    goto :goto_24

    .line 150
    :pswitch_4a
    const-string v1, "longVal"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/jme3/export/InputCapsule;->readLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/scene/UserData;->value:Ljava/lang/Object;

    goto :goto_24

    .line 136
    nop

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_18
        :pswitch_25
        :pswitch_33
        :pswitch_40
        :pswitch_4a
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/jme3/scene/UserData;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
