.class public Lcom/jme3/scene/plugins/ogre/SceneLoader;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SceneLoader.java"

# interfaces
.implements Lcom/jme3/asset/AssetLoader;


# static fields
.field private static final logger:Ljava/util/logging/Logger;

.field private static volatile sceneIdx:I


# instance fields
.field private assetManager:Lcom/jme3/asset/AssetManager;

.field private elementStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private entityNode:Lcom/jme3/scene/Node;

.field private folderName:Ljava/lang/String;

.field private key:Lcom/jme3/asset/AssetKey;

.field private light:Lcom/jme3/light/Light;

.field private materialList:Lcom/jme3/material/MaterialList;

.field private node:Lcom/jme3/scene/Node;

.field private nodeIdx:I

.field private root:Lcom/jme3/scene/Node;

.field private sceneName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 63
    const-class v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->logger:Ljava/util/logging/Logger;

    .line 76
    const/4 v0, 0x0

    sput v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->sceneIdx:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 65
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->elementStack:Ljava/util/Stack;

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->nodeIdx:I

    .line 80
    return-void
.end method

.method private checkTopNode(Ljava/lang/String;)V
    .registers 5
    .parameter "topNode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->elementStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 105
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dotScene parse error: Expected parent node to be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_27
    return-void
.end method

.method private parseLight(Lorg/xml/sax/Attributes;)V
    .registers 7
    .parameter "attribs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 200
    iget-object v1, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->node:Lcom/jme3/scene/Node;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->node:Lcom/jme3/scene/Node;

    invoke-virtual {v1}, Lcom/jme3/scene/Node;->getParent()Lcom/jme3/scene/Node;

    move-result-object v1

    if-nez v1, :cond_14

    .line 201
    :cond_c
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "dotScene parse error: light can only appear under a node"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    :cond_14
    const-string v1, "node"

    invoke-direct {p0, v1}, Lcom/jme3/scene/plugins/ogre/SceneLoader;->checkTopNode(Ljava/lang/String;)V

    .line 205
    const-string v1, "type"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "point"

    invoke-static {v1, v2}, Lcom/jme3/util/xml/SAXUtil;->parseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, lightType:Ljava/lang/String;
    const-string v1, "point"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 207
    new-instance v1, Lcom/jme3/light/PointLight;

    invoke-direct {v1}, Lcom/jme3/light/PointLight;-><init>()V

    iput-object v1, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->light:Lcom/jme3/light/Light;

    .line 217
    :goto_34
    sget-object v1, Lcom/jme3/scene/plugins/ogre/SceneLoader;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v3, "{0} created."

    iget-object v4, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->light:Lcom/jme3/light/Light;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    const-string v1, "visible"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/jme3/util/xml/SAXUtil;->parseBool(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 224
    :cond_4c
    iget-object v1, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->light:Lcom/jme3/light/Light;

    if-eqz v1, :cond_5b

    .line 225
    iget-object v1, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->node:Lcom/jme3/scene/Node;

    invoke-virtual {v1}, Lcom/jme3/scene/Node;->getParent()Lcom/jme3/scene/Node;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->light:Lcom/jme3/light/Light;

    invoke-virtual {v1, v2}, Lcom/jme3/scene/Node;->addLight(Lcom/jme3/light/Light;)V

    .line 226
    :cond_5b
    return-void

    .line 208
    :cond_5c
    const-string v1, "directional"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6c

    const-string v1, "sun"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 209
    :cond_6c
    new-instance v1, Lcom/jme3/light/DirectionalLight;

    invoke-direct {v1}, Lcom/jme3/light/DirectionalLight;-><init>()V

    iput-object v1, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->light:Lcom/jme3/light/Light;

    .line 211
    iget-object v1, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->light:Lcom/jme3/light/Light;

    check-cast v1, Lcom/jme3/light/DirectionalLight;

    sget-object v2, Lcom/jme3/math/Vector3f;->UNIT_Z:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/light/DirectionalLight;->setDirection(Lcom/jme3/math/Vector3f;)V

    goto :goto_34

    .line 212
    :cond_7d
    const-string v1, "spotLight"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8d

    const-string v1, "spot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 213
    :cond_8d
    new-instance v1, Lcom/jme3/light/SpotLight;

    invoke-direct {v1}, Lcom/jme3/light/SpotLight;-><init>()V

    iput-object v1, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->light:Lcom/jme3/light/Light;

    goto :goto_34

    .line 215
    :cond_95
    sget-object v1, Lcom/jme3/scene/plugins/ogre/SceneLoader;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "No matching jME3 LightType found for OGRE LightType: {0}"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_34
.end method

.method private parseLightAttenuation(Lorg/xml/sax/Attributes;)V
    .registers 10
    .parameter "attribs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    .line 158
    const-string v5, "light"

    invoke-direct {p0, v5}, Lcom/jme3/scene/plugins/ogre/SceneLoader;->checkTopNode(Ljava/lang/String;)V

    .line 160
    iget-object v5, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->light:Lcom/jme3/light/Light;

    instance-of v5, v5, Lcom/jme3/light/PointLight;

    if-nez v5, :cond_14

    iget-object v5, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->light:Lcom/jme3/light/Light;

    instance-of v5, v5, Lcom/jme3/light/SpotLight;

    if-eqz v5, :cond_5f

    .line 161
    :cond_14
    const-string v5, "range"

    invoke-interface {p1, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 162
    .local v4, range:F
    const-string v5, "constant"

    invoke-interface {p1, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 163
    .local v0, constant:F
    const-string v5, "linear"

    invoke-interface {p1, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 165
    .local v1, linear:F
    const-string v5, "quadratic"

    invoke-interface {p1, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, quadraticStr:Ljava/lang/String;
    if-nez v3, :cond_40

    .line 167
    const-string v5, "quadric"

    invoke-interface {p1, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 169
    :cond_40
    invoke-static {v3}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 171
    .local v2, quadratic:F
    cmpl-float v5, v0, v7

    if-nez v5, :cond_52

    cmpl-float v5, v2, v6

    if-nez v5, :cond_52

    cmpl-float v5, v1, v6

    if-lez v5, :cond_52

    .line 172
    div-float v4, v7, v1

    .line 175
    :cond_52
    iget-object v5, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->light:Lcom/jme3/light/Light;

    instance-of v5, v5, Lcom/jme3/light/PointLight;

    if-eqz v5, :cond_60

    .line 176
    iget-object v5, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->light:Lcom/jme3/light/Light;

    check-cast v5, Lcom/jme3/light/PointLight;

    invoke-virtual {v5, v4}, Lcom/jme3/light/PointLight;->setRadius(F)V

    .line 181
    .end local v0           #constant:F
    .end local v1           #linear:F
    .end local v2           #quadratic:F
    .end local v3           #quadraticStr:Ljava/lang/String;
    .end local v4           #range:F
    :cond_5f
    :goto_5f
    return-void

    .line 178
    .restart local v0       #constant:F
    .restart local v1       #linear:F
    .restart local v2       #quadratic:F
    .restart local v3       #quadraticStr:Ljava/lang/String;
    .restart local v4       #range:F
    :cond_60
    iget-object v5, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->light:Lcom/jme3/light/Light;

    check-cast v5, Lcom/jme3/light/SpotLight;

    invoke-virtual {v5, v4}, Lcom/jme3/light/SpotLight;->setSpotRange(F)V

    goto :goto_5f
.end method

.method private parseLightNormal(Lorg/xml/sax/Attributes;)V
    .registers 4
    .parameter "attribs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 145
    const-string v0, "light"

    invoke-direct {p0, v0}, Lcom/jme3/scene/plugins/ogre/SceneLoader;->checkTopNode(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->light:Lcom/jme3/light/Light;

    instance-of v0, v0, Lcom/jme3/light/DirectionalLight;

    if-eqz v0, :cond_17

    .line 149
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->light:Lcom/jme3/light/Light;

    check-cast v0, Lcom/jme3/light/DirectionalLight;

    invoke-static {p1}, Lcom/jme3/util/xml/SAXUtil;->parseVector3(Lorg/xml/sax/Attributes;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/light/DirectionalLight;->setDirection(Lcom/jme3/math/Vector3f;)V

    .line 153
    :cond_16
    :goto_16
    return-void

    .line 150
    :cond_17
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->light:Lcom/jme3/light/Light;

    instance-of v0, v0, Lcom/jme3/light/SpotLight;

    if-eqz v0, :cond_16

    .line 151
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->light:Lcom/jme3/light/Light;

    check-cast v0, Lcom/jme3/light/SpotLight;

    invoke-static {p1}, Lcom/jme3/util/xml/SAXUtil;->parseVector3(Lorg/xml/sax/Attributes;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/light/SpotLight;->setDirection(Lcom/jme3/math/Vector3f;)V

    goto :goto_16
.end method

.method private parseLightSpotLightRange(Lorg/xml/sax/Attributes;)V
    .registers 7
    .parameter "attribs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/high16 v4, 0x3f00

    .line 184
    const-string v3, "light"

    invoke-direct {p0, v3}, Lcom/jme3/scene/plugins/ogre/SceneLoader;->checkTopNode(Ljava/lang/String;)V

    .line 186
    const-string v3, "outer"

    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 187
    .local v1, outer:F
    const-string v3, "inner"

    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 189
    .local v0, inner:F
    iget-object v3, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->light:Lcom/jme3/light/Light;

    instance-of v3, v3, Lcom/jme3/light/SpotLight;

    if-nez v3, :cond_29

    .line 190
    new-instance v3, Lorg/xml/sax/SAXException;

    const-string v4, "dotScene parse error: spotLightRange can only appear under \'spot\' light elements"

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 194
    :cond_29
    iget-object v2, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->light:Lcom/jme3/light/Light;

    check-cast v2, Lcom/jme3/light/SpotLight;

    .line 195
    .local v2, sl:Lcom/jme3/light/SpotLight;
    mul-float v3, v0, v4

    invoke-virtual {v2, v3}, Lcom/jme3/light/SpotLight;->setSpotInnerAngle(F)V

    .line 196
    mul-float v3, v1, v4

    invoke-virtual {v2, v3}, Lcom/jme3/light/SpotLight;->setSpotOuterAngle(F)V

    .line 197
    return-void
.end method

.method private parseQuat(Lorg/xml/sax/Attributes;)Lcom/jme3/math/Quaternion;
    .registers 15
    .parameter "attribs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 110
    const-string v12, "x"

    invoke-interface {p1, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_36

    .line 112
    const-string v12, "x"

    invoke-interface {p1, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v9

    .line 113
    .local v9, x:F
    const-string v12, "y"

    invoke-interface {p1, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 114
    .local v10, y:F
    const-string v12, "z"

    invoke-interface {p1, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v11

    .line 115
    .local v11, z:F
    const-string v12, "w"

    invoke-interface {p1, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v8

    .line 116
    .local v8, w:F
    new-instance v7, Lcom/jme3/math/Quaternion;

    invoke-direct {v7, v9, v10, v11, v8}, Lcom/jme3/math/Quaternion;-><init>(FFFF)V

    .line 140
    .end local v8           #w:F
    .end local v9           #x:F
    .end local v10           #y:F
    .end local v11           #z:F
    :goto_35
    return-object v7

    .line 117
    :cond_36
    const-string v12, "qx"

    invoke-interface {p1, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6c

    .line 119
    const-string v12, "qx"

    invoke-interface {p1, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v9

    .line 120
    .restart local v9       #x:F
    const-string v12, "qy"

    invoke-interface {p1, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 121
    .restart local v10       #y:F
    const-string v12, "qz"

    invoke-interface {p1, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v11

    .line 122
    .restart local v11       #z:F
    const-string v12, "qw"

    invoke-interface {p1, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v8

    .line 123
    .restart local v8       #w:F
    new-instance v7, Lcom/jme3/math/Quaternion;

    invoke-direct {v7, v9, v10, v11, v8}, Lcom/jme3/math/Quaternion;-><init>(FFFF)V

    goto :goto_35

    .line 124
    .end local v8           #w:F
    .end local v9           #x:F
    .end local v10           #y:F
    .end local v11           #z:F
    :cond_6c
    const-string v12, "angle"

    invoke-interface {p1, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_aa

    .line 126
    const-string v12, "angle"

    invoke-interface {p1, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 127
    .local v0, angle:F
    const-string v12, "axisX"

    invoke-interface {p1, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 128
    .local v4, axisX:F
    const-string v12, "axisY"

    invoke-interface {p1, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 129
    .local v5, axisY:F
    const-string v12, "axisZ"

    invoke-interface {p1, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 130
    .local v6, axisZ:F
    new-instance v7, Lcom/jme3/math/Quaternion;

    invoke-direct {v7}, Lcom/jme3/math/Quaternion;-><init>()V

    .line 131
    .local v7, q:Lcom/jme3/math/Quaternion;
    new-instance v12, Lcom/jme3/math/Vector3f;

    invoke-direct {v12, v4, v5, v6}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v7, v0, v12}, Lcom/jme3/math/Quaternion;->fromAngleAxis(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    goto :goto_35

    .line 135
    .end local v0           #angle:F
    .end local v4           #axisX:F
    .end local v5           #axisY:F
    .end local v6           #axisZ:F
    .end local v7           #q:Lcom/jme3/math/Quaternion;
    :cond_aa
    const-string v12, "angleX"

    invoke-interface {p1, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 136
    .local v1, angleX:F
    const-string v12, "angleY"

    invoke-interface {p1, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 137
    .local v2, angleY:F
    const-string v12, "angleZ"

    invoke-interface {p1, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 138
    .local v3, angleZ:F
    new-instance v7, Lcom/jme3/math/Quaternion;

    invoke-direct {v7}, Lcom/jme3/math/Quaternion;-><init>()V

    .line 139
    .restart local v7       #q:Lcom/jme3/math/Quaternion;
    invoke-virtual {v7, v1, v2, v3}, Lcom/jme3/math/Quaternion;->fromAngles(FFF)Lcom/jme3/math/Quaternion;

    goto/16 :goto_35
.end method

.method private reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->elementStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->nodeIdx:I

    .line 97
    iput-object v1, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->root:Lcom/jme3/scene/Node;

    .line 98
    iput-object v1, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->node:Lcom/jme3/scene/Node;

    .line 99
    iput-object v1, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->entityNode:Lcom/jme3/scene/Node;

    .line 100
    iput-object v1, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->light:Lcom/jme3/light/Light;

    .line 101
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 4
    .parameter "ch"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 410
    return-void
.end method

.method public endDocument()V
    .registers 1

    .prologue
    .line 88
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "uri"
    .parameter "name"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 369
    const-string v6, "node"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 370
    iget-object v6, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->node:Lcom/jme3/scene/Node;

    invoke-virtual {v6}, Lcom/jme3/scene/Node;->getParent()Lcom/jme3/scene/Node;

    move-result-object v6

    iput-object v6, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->node:Lcom/jme3/scene/Node;

    .line 404
    :cond_11
    :goto_11
    invoke-direct {p0, p3}, Lcom/jme3/scene/plugins/ogre/SceneLoader;->checkTopNode(Ljava/lang/String;)V

    .line 405
    iget-object v6, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->elementStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 406
    return-void

    .line 371
    :cond_1a
    const-string v6, "nodes"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 372
    iput-object v7, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->node:Lcom/jme3/scene/Node;

    goto :goto_11

    .line 373
    :cond_25
    const-string v6, "entity"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 374
    iget-object v6, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->entityNode:Lcom/jme3/scene/Node;

    invoke-virtual {v6}, Lcom/jme3/scene/Node;->getParent()Lcom/jme3/scene/Node;

    move-result-object v6

    iput-object v6, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->node:Lcom/jme3/scene/Node;

    .line 375
    iput-object v7, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->entityNode:Lcom/jme3/scene/Node;

    goto :goto_11

    .line 376
    :cond_38
    const-string v6, "light"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 378
    iget-object v6, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->root:Lcom/jme3/scene/Node;

    invoke-virtual {v6}, Lcom/jme3/scene/Node;->updateGeometricState()V

    .line 379
    iget-object v6, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->light:Lcom/jme3/light/Light;

    if-eqz v6, :cond_63

    .line 380
    iget-object v6, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->light:Lcom/jme3/light/Light;

    instance-of v6, v6, Lcom/jme3/light/DirectionalLight;

    if-eqz v6, :cond_66

    .line 381
    iget-object v1, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->light:Lcom/jme3/light/Light;

    check-cast v1, Lcom/jme3/light/DirectionalLight;

    .line 382
    .local v1, dl:Lcom/jme3/light/DirectionalLight;
    iget-object v6, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->node:Lcom/jme3/scene/Node;

    invoke-virtual {v6}, Lcom/jme3/scene/Node;->getWorldRotation()Lcom/jme3/math/Quaternion;

    move-result-object v4

    .line 383
    .local v4, q:Lcom/jme3/math/Quaternion;
    invoke-virtual {v1}, Lcom/jme3/light/DirectionalLight;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v0

    .line 384
    .local v0, dir:Lcom/jme3/math/Vector3f;
    invoke-virtual {v4, v0}, Lcom/jme3/math/Quaternion;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 385
    invoke-virtual {v1, v0}, Lcom/jme3/light/DirectionalLight;->setDirection(Lcom/jme3/math/Vector3f;)V

    .line 402
    .end local v0           #dir:Lcom/jme3/math/Vector3f;
    .end local v1           #dl:Lcom/jme3/light/DirectionalLight;
    .end local v4           #q:Lcom/jme3/math/Quaternion;
    :cond_63
    :goto_63
    iput-object v7, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->light:Lcom/jme3/light/Light;

    goto :goto_11

    .line 386
    :cond_66
    iget-object v6, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->light:Lcom/jme3/light/Light;

    instance-of v6, v6, Lcom/jme3/light/PointLight;

    if-eqz v6, :cond_7a

    .line 387
    iget-object v2, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->light:Lcom/jme3/light/Light;

    check-cast v2, Lcom/jme3/light/PointLight;

    .line 388
    .local v2, pl:Lcom/jme3/light/PointLight;
    iget-object v6, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->node:Lcom/jme3/scene/Node;

    invoke-virtual {v6}, Lcom/jme3/scene/Node;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v3

    .line 389
    .local v3, pos:Lcom/jme3/math/Vector3f;
    invoke-virtual {v2, v3}, Lcom/jme3/light/PointLight;->setPosition(Lcom/jme3/math/Vector3f;)V

    goto :goto_63

    .line 390
    .end local v2           #pl:Lcom/jme3/light/PointLight;
    .end local v3           #pos:Lcom/jme3/math/Vector3f;
    :cond_7a
    iget-object v6, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->light:Lcom/jme3/light/Light;

    instance-of v6, v6, Lcom/jme3/light/SpotLight;

    if-eqz v6, :cond_63

    .line 391
    iget-object v5, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->light:Lcom/jme3/light/Light;

    check-cast v5, Lcom/jme3/light/SpotLight;

    .line 393
    .local v5, sl:Lcom/jme3/light/SpotLight;
    iget-object v6, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->node:Lcom/jme3/scene/Node;

    invoke-virtual {v6}, Lcom/jme3/scene/Node;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v3

    .line 394
    .restart local v3       #pos:Lcom/jme3/math/Vector3f;
    invoke-virtual {v5, v3}, Lcom/jme3/light/SpotLight;->setPosition(Lcom/jme3/math/Vector3f;)V

    .line 396
    iget-object v6, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->node:Lcom/jme3/scene/Node;

    invoke-virtual {v6}, Lcom/jme3/scene/Node;->getWorldRotation()Lcom/jme3/math/Quaternion;

    move-result-object v4

    .line 397
    .restart local v4       #q:Lcom/jme3/math/Quaternion;
    invoke-virtual {v5}, Lcom/jme3/light/SpotLight;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v0

    .line 398
    .restart local v0       #dir:Lcom/jme3/math/Vector3f;
    invoke-virtual {v4, v0}, Lcom/jme3/math/Quaternion;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 399
    invoke-virtual {v5, v0}, Lcom/jme3/light/SpotLight;->setDirection(Lcom/jme3/math/Vector3f;)V

    goto :goto_63
.end method

.method public load(Lcom/jme3/asset/AssetInfo;)Ljava/lang/Object;
    .registers 16
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 416
    :try_start_0
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v8

    iput-object v8, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->key:Lcom/jme3/asset/AssetKey;

    .line 417
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getManager()Lcom/jme3/asset/AssetManager;

    move-result-object v8

    iput-object v8, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    .line 418
    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->key:Lcom/jme3/asset/AssetKey;

    invoke-virtual {v8}, Lcom/jme3/asset/AssetKey;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->sceneName:Ljava/lang/String;

    .line 419
    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->key:Lcom/jme3/asset/AssetKey;

    invoke-virtual {v8}, Lcom/jme3/asset/AssetKey;->getExtension()Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, ext:Ljava/lang/String;
    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->key:Lcom/jme3/asset/AssetKey;

    invoke-virtual {v8}, Lcom/jme3/asset/AssetKey;->getFolder()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->folderName:Ljava/lang/String;

    .line 421
    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->sceneName:Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->sceneName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v10, v11

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->sceneName:Ljava/lang/String;

    .line 423
    new-instance v4, Lcom/jme3/scene/plugins/ogre/matext/OgreMaterialKey;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->sceneName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".material"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/jme3/scene/plugins/ogre/matext/OgreMaterialKey;-><init>(Ljava/lang/String;)V
    :try_end_52
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_52} :catch_a8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_52} :catch_bb

    .line 425
    .local v4, materialKey:Lcom/jme3/scene/plugins/ogre/matext/OgreMaterialKey;
    :try_start_52
    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    invoke-interface {v8, v4}, Lcom/jme3/asset/AssetManager;->loadAsset(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jme3/material/MaterialList;

    iput-object v8, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->materialList:Lcom/jme3/material/MaterialList;
    :try_end_5c
    .catch Lcom/jme3/asset/AssetNotFoundException; {:try_start_52 .. :try_end_5c} :catch_8f
    .catch Lorg/xml/sax/SAXException; {:try_start_52 .. :try_end_5c} :catch_a8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_52 .. :try_end_5c} :catch_bb

    .line 431
    :goto_5c
    :try_start_5c
    invoke-direct {p0}, Lcom/jme3/scene/plugins/ogre/SceneLoader;->reset()V

    .line 438
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    .line 439
    .local v2, factory:Ljavax/xml/parsers/SAXParserFactory;
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 440
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v7

    .line 442
    .local v7, xr:Lorg/xml/sax/XMLReader;
    invoke-interface {v7, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 443
    invoke-interface {v7, p0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_75
    .catch Lorg/xml/sax/SAXException; {:try_start_5c .. :try_end_75} :catch_a8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5c .. :try_end_75} :catch_bb

    .line 445
    const/4 v5, 0x0

    .line 448
    .local v5, r:Ljava/io/InputStreamReader;
    :try_start_76
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->openStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_7f
    .catchall {:try_start_76 .. :try_end_7f} :catchall_b4

    .line 449
    .end local v5           #r:Ljava/io/InputStreamReader;
    .local v6, r:Ljava/io/InputStreamReader;
    :try_start_7f
    new-instance v8, Lorg/xml/sax/InputSource;

    invoke-direct {v8, v6}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v7, v8}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_87
    .catchall {:try_start_7f .. :try_end_87} :catchall_c7

    .line 451
    if-eqz v6, :cond_8c

    .line 452
    :try_start_89
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    .line 456
    :cond_8c
    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->root:Lcom/jme3/scene/Node;

    return-object v8

    .line 426
    .end local v2           #factory:Ljavax/xml/parsers/SAXParserFactory;
    .end local v6           #r:Ljava/io/InputStreamReader;
    .end local v7           #xr:Lorg/xml/sax/XMLReader;
    :catch_8f
    move-exception v0

    .line 427
    .local v0, ex:Lcom/jme3/asset/AssetNotFoundException;
    sget-object v8, Lcom/jme3/scene/plugins/ogre/SceneLoader;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v10, "Cannot locate {0} for scene {1}"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->key:Lcom/jme3/asset/AssetKey;

    aput-object v13, v11, v12

    invoke-virtual {v8, v9, v10, v11}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 428
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->materialList:Lcom/jme3/material/MaterialList;
    :try_end_a7
    .catch Lorg/xml/sax/SAXException; {:try_start_89 .. :try_end_a7} :catch_a8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_89 .. :try_end_a7} :catch_bb

    goto :goto_5c

    .line 457
    .end local v0           #ex:Lcom/jme3/asset/AssetNotFoundException;
    .end local v1           #ext:Ljava/lang/String;
    .end local v4           #materialKey:Lcom/jme3/scene/plugins/ogre/matext/OgreMaterialKey;
    :catch_a8
    move-exception v0

    .line 458
    .local v0, ex:Lorg/xml/sax/SAXException;
    new-instance v3, Ljava/io/IOException;

    const-string v8, "Error while parsing Ogre3D dotScene"

    invoke-direct {v3, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 459
    .local v3, ioEx:Ljava/io/IOException;
    invoke-virtual {v3, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 460
    throw v3

    .line 451
    .end local v0           #ex:Lorg/xml/sax/SAXException;
    .end local v3           #ioEx:Ljava/io/IOException;
    .restart local v1       #ext:Ljava/lang/String;
    .restart local v2       #factory:Ljavax/xml/parsers/SAXParserFactory;
    .restart local v4       #materialKey:Lcom/jme3/scene/plugins/ogre/matext/OgreMaterialKey;
    .restart local v5       #r:Ljava/io/InputStreamReader;
    .restart local v7       #xr:Lorg/xml/sax/XMLReader;
    :catchall_b4
    move-exception v8

    :goto_b5
    if-eqz v5, :cond_ba

    .line 452
    :try_start_b7
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    :cond_ba
    throw v8
    :try_end_bb
    .catch Lorg/xml/sax/SAXException; {:try_start_b7 .. :try_end_bb} :catch_a8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_b7 .. :try_end_bb} :catch_bb

    .line 461
    .end local v1           #ext:Ljava/lang/String;
    .end local v2           #factory:Ljavax/xml/parsers/SAXParserFactory;
    .end local v4           #materialKey:Lcom/jme3/scene/plugins/ogre/matext/OgreMaterialKey;
    .end local v5           #r:Ljava/io/InputStreamReader;
    .end local v7           #xr:Lorg/xml/sax/XMLReader;
    :catch_bb
    move-exception v0

    .line 462
    .local v0, ex:Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v3, Ljava/io/IOException;

    const-string v8, "Error while parsing Ogre3D dotScene"

    invoke-direct {v3, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 463
    .restart local v3       #ioEx:Ljava/io/IOException;
    invoke-virtual {v3, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 464
    throw v3

    .line 451
    .end local v0           #ex:Ljavax/xml/parsers/ParserConfigurationException;
    .end local v3           #ioEx:Ljava/io/IOException;
    .restart local v1       #ext:Ljava/lang/String;
    .restart local v2       #factory:Ljavax/xml/parsers/SAXParserFactory;
    .restart local v4       #materialKey:Lcom/jme3/scene/plugins/ogre/matext/OgreMaterialKey;
    .restart local v6       #r:Ljava/io/InputStreamReader;
    .restart local v7       #xr:Lorg/xml/sax/XMLReader;
    :catchall_c7
    move-exception v8

    move-object v5, v6

    .end local v6           #r:Ljava/io/InputStreamReader;
    .restart local v5       #r:Ljava/io/InputStreamReader;
    goto :goto_b5
.end method

.method public startDocument()V
    .registers 1

    .prologue
    .line 84
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 24
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attribs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 230
    const-string v13, "scene"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_49

    .line 231
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->elementStack:Ljava/util/Stack;

    invoke-virtual {v13}, Ljava/util/Stack;->size()I

    move-result v13

    if-eqz v13, :cond_1c

    .line 232
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "dotScene parse error: \'scene\' element must be the root XML element"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 235
    :cond_1c
    const-string v13, "formatVersion"

    move-object/from16 v0, p4

    invoke-interface {v0, v13}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 236
    .local v12, version:Ljava/lang/String;
    if-eqz v12, :cond_36

    const-string v13, "1.0.0"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3f

    const-string v13, "1.0.1"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3f

    .line 237
    :cond_36
    sget-object v13, Lcom/jme3/scene/plugins/ogre/SceneLoader;->logger:Ljava/util/logging/Logger;

    sget-object v14, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v15, "Unrecognized version number in dotScene file: {0}"

    invoke-virtual {v13, v14, v15, v12}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 364
    .end local v12           #version:Ljava/lang/String;
    :cond_3f
    :goto_3f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->elementStack:Ljava/util/Stack;

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    return-void

    .line 240
    :cond_49
    const-string v13, "nodes"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b3

    .line 241
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->root:Lcom/jme3/scene/Node;

    if-eqz v13, :cond_61

    .line 242
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "dotScene parse error: nodes element was specified twice"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 244
    :cond_61
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->sceneName:Ljava/lang/String;

    if-nez v13, :cond_92

    .line 245
    new-instance v13, Lcom/jme3/scene/Node;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "OgreDotScene"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/jme3/scene/plugins/ogre/SceneLoader;->sceneIdx:I

    add-int/lit8 v15, v15, 0x1

    sput v15, Lcom/jme3/scene/plugins/ogre/SceneLoader;->sceneIdx:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->root:Lcom/jme3/scene/Node;

    .line 249
    :goto_89
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->root:Lcom/jme3/scene/Node;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->node:Lcom/jme3/scene/Node;

    goto :goto_3f

    .line 247
    :cond_92
    new-instance v13, Lcom/jme3/scene/Node;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->sceneName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "-scene_node"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->root:Lcom/jme3/scene/Node;

    goto :goto_89

    .line 250
    :cond_b3
    const-string v13, "externals"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c6

    .line 251
    const-string v13, "scene"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/jme3/scene/plugins/ogre/SceneLoader;->checkTopNode(Ljava/lang/String;)V

    goto/16 :goto_3f

    .line 253
    :cond_c6
    const-string v13, "item"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d9

    .line 254
    const-string v13, "externals"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/jme3/scene/plugins/ogre/SceneLoader;->checkTopNode(Ljava/lang/String;)V

    goto/16 :goto_3f

    .line 255
    :cond_d9
    const-string v13, "file"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_ec

    .line 256
    const-string v13, "item"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/jme3/scene/plugins/ogre/SceneLoader;->checkTopNode(Ljava/lang/String;)V

    goto/16 :goto_3f

    .line 269
    :cond_ec
    const-string v13, "node"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_157

    .line 270
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->elementStack:Ljava/util/Stack;

    invoke-virtual {v13}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 271
    .local v2, curElement:Ljava/lang/String;
    const-string v13, "node"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_118

    const-string v13, "nodes"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_118

    .line 272
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "dotScene parse error: node element can only appear under \'node\' or \'nodes\'"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 276
    :cond_118
    const-string v13, "name"

    move-object/from16 v0, p4

    invoke-interface {v0, v13}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 277
    .local v8, name:Ljava/lang/String;
    if-nez v8, :cond_13f

    .line 278
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "OgreNode-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->nodeIdx:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->nodeIdx:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 280
    :cond_13f
    new-instance v9, Lcom/jme3/scene/Node;

    invoke-direct {v9, v8}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    .line 281
    .local v9, newNode:Lcom/jme3/scene/Node;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->node:Lcom/jme3/scene/Node;

    if-eqz v13, :cond_151

    .line 282
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->node:Lcom/jme3/scene/Node;

    invoke-virtual {v13, v9}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    .line 284
    :cond_151
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->node:Lcom/jme3/scene/Node;

    goto/16 :goto_3f

    .line 285
    .end local v2           #curElement:Ljava/lang/String;
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #newNode:Lcom/jme3/scene/Node;
    :cond_157
    const-string v13, "property"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1e8

    .line 286
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->node:Lcom/jme3/scene/Node;

    if-eqz v13, :cond_3f

    .line 287
    const-string v13, "type"

    move-object/from16 v0, p4

    invoke-interface {v0, v13}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 288
    .local v11, type:Ljava/lang/String;
    const-string v13, "name"

    move-object/from16 v0, p4

    invoke-interface {v0, v13}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 289
    .restart local v8       #name:Ljava/lang/String;
    const-string v13, "data"

    move-object/from16 v0, p4

    invoke-interface {v0, v13}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, data:Ljava/lang/String;
    const-string v13, "BOOL"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a5

    .line 291
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->node:Lcom/jme3/scene/Node;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_199

    const-string v13, "1"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a3

    :cond_199
    const/4 v13, 0x1

    :goto_19a
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v14, v8, v13}, Lcom/jme3/scene/Node;->setUserData(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3f

    :cond_1a3
    const/4 v13, 0x0

    goto :goto_19a

    .line 292
    :cond_1a5
    const-string v13, "FLOAT"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1be

    .line 293
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->node:Lcom/jme3/scene/Node;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v13, v8, v14}, Lcom/jme3/scene/Node;->setUserData(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3f

    .line 294
    :cond_1be
    const-string v13, "STRING"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1cf

    .line 295
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->node:Lcom/jme3/scene/Node;

    invoke-virtual {v13, v8, v3}, Lcom/jme3/scene/Node;->setUserData(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3f

    .line 296
    :cond_1cf
    const-string v13, "INT"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3f

    .line 297
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->node:Lcom/jme3/scene/Node;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v8, v14}, Lcom/jme3/scene/Node;->setUserData(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3f

    .line 300
    .end local v3           #data:Ljava/lang/String;
    .end local v8           #name:Ljava/lang/String;
    .end local v11           #type:Ljava/lang/String;
    :cond_1e8
    const-string v13, "entity"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2df

    .line 301
    const-string v13, "node"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/jme3/scene/plugins/ogre/SceneLoader;->checkTopNode(Ljava/lang/String;)V

    .line 303
    const-string v13, "name"

    move-object/from16 v0, p4

    invoke-interface {v0, v13}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 304
    .restart local v8       #name:Ljava/lang/String;
    if-nez v8, :cond_232

    .line 305
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "OgreEntity-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->nodeIdx:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->nodeIdx:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 309
    :goto_220
    const-string v13, "meshFile"

    move-object/from16 v0, p4

    invoke-interface {v0, v13}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 310
    .local v6, meshFile:Ljava/lang/String;
    if-nez v6, :cond_246

    .line 311
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "Required attribute \'meshFile\' missing for \'entity\' node"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 307
    .end local v6           #meshFile:Ljava/lang/String;
    :cond_232
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "-entity"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_220

    .line 315
    .restart local v6       #meshFile:Ljava/lang/String;
    :cond_246
    const-string v13, "materialName"

    move-object/from16 v0, p4

    invoke-interface {v0, v13}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 317
    .local v5, materialName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->folderName:Ljava/lang/String;

    if-eqz v13, :cond_269

    .line 318
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->folderName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 322
    :cond_269
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".xml"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 324
    new-instance v13, Lcom/jme3/scene/Node;

    invoke-direct {v13, v8}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->entityNode:Lcom/jme3/scene/Node;

    .line 325
    new-instance v7, Lcom/jme3/scene/plugins/ogre/OgreMeshKey;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->materialList:Lcom/jme3/material/MaterialList;

    invoke-direct {v7, v6, v13}, Lcom/jme3/scene/plugins/ogre/OgreMeshKey;-><init>(Ljava/lang/String;Lcom/jme3/material/MaterialList;)V

    .line 327
    .local v7, meshKey:Lcom/jme3/scene/plugins/ogre/OgreMeshKey;
    :try_start_28e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    invoke-interface {v13, v7}, Lcom/jme3/asset/AssetManager;->loadModel(Lcom/jme3/asset/ModelKey;)Lcom/jme3/scene/Spatial;

    move-result-object v10

    .line 328
    .local v10, ogreMesh:Lcom/jme3/scene/Spatial;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->entityNode:Lcom/jme3/scene/Node;

    invoke-virtual {v13, v10}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I
    :try_end_29d
    .catch Lcom/jme3/asset/AssetNotFoundException; {:try_start_28e .. :try_end_29d} :catch_2af

    .line 335
    .end local v10           #ogreMesh:Lcom/jme3/scene/Spatial;
    :goto_29d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->node:Lcom/jme3/scene/Node;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->entityNode:Lcom/jme3/scene/Node;

    invoke-virtual {v13, v14}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    .line 336
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->node:Lcom/jme3/scene/Node;

    goto/16 :goto_3f

    .line 329
    :catch_2af
    move-exception v4

    .line 330
    .local v4, ex:Lcom/jme3/asset/AssetNotFoundException;
    sget-object v13, Lcom/jme3/scene/plugins/ogre/SceneLoader;->logger:Ljava/util/logging/Logger;

    sget-object v14, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v15, "Cannot locate {0} for scene {1}"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v7, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->key:Lcom/jme3/asset/AssetKey;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    invoke-virtual/range {v13 .. v16}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->entityNode:Lcom/jme3/scene/Node;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    invoke-static {v14}, Lcom/jme3/util/PlaceholderAssets;->getPlaceholderModel(Lcom/jme3/asset/AssetManager;)Lcom/jme3/scene/Spatial;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    goto :goto_29d

    .line 337
    .end local v4           #ex:Lcom/jme3/asset/AssetNotFoundException;
    .end local v5           #materialName:Ljava/lang/String;
    .end local v6           #meshFile:Ljava/lang/String;
    .end local v7           #meshKey:Lcom/jme3/scene/plugins/ogre/OgreMeshKey;
    .end local v8           #name:Ljava/lang/String;
    :cond_2df
    const-string v13, "position"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_308

    .line 338
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->elementStack:Ljava/util/Stack;

    invoke-virtual {v13}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "node"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3f

    .line 339
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->node:Lcom/jme3/scene/Node;

    invoke-static/range {p4 .. p4}, Lcom/jme3/util/xml/SAXUtil;->parseVector3(Lorg/xml/sax/Attributes;)Lcom/jme3/math/Vector3f;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/jme3/scene/Node;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    goto/16 :goto_3f

    .line 341
    :cond_308
    const-string v13, "quaternion"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_31c

    const-string v13, "rotation"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_32d

    .line 342
    :cond_31c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->node:Lcom/jme3/scene/Node;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/jme3/scene/plugins/ogre/SceneLoader;->parseQuat(Lorg/xml/sax/Attributes;)Lcom/jme3/math/Quaternion;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/jme3/scene/Node;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    goto/16 :goto_3f

    .line 343
    :cond_32d
    const-string v13, "scale"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_344

    .line 344
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->node:Lcom/jme3/scene/Node;

    invoke-static/range {p4 .. p4}, Lcom/jme3/util/xml/SAXUtil;->parseVector3(Lorg/xml/sax/Attributes;)Lcom/jme3/math/Vector3f;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/jme3/scene/Node;->setLocalScale(Lcom/jme3/math/Vector3f;)V

    goto/16 :goto_3f

    .line 345
    :cond_344
    const-string v13, "light"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_357

    .line 346
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/jme3/scene/plugins/ogre/SceneLoader;->parseLight(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_3f

    .line 347
    :cond_357
    const-string v13, "colourDiffuse"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_36b

    const-string v13, "colorDiffuse"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_399

    .line 348
    :cond_36b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->elementStack:Ljava/util/Stack;

    invoke-virtual {v13}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "light"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_390

    .line 349
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->light:Lcom/jme3/light/Light;

    if-eqz v13, :cond_3f

    .line 350
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;->light:Lcom/jme3/light/Light;

    invoke-static/range {p4 .. p4}, Lcom/jme3/util/xml/SAXUtil;->parseColor(Lorg/xml/sax/Attributes;)Lcom/jme3/math/ColorRGBA;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/jme3/light/Light;->setColor(Lcom/jme3/math/ColorRGBA;)V

    goto/16 :goto_3f

    .line 353
    :cond_390
    const-string v13, "environment"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/jme3/scene/plugins/ogre/SceneLoader;->checkTopNode(Ljava/lang/String;)V

    goto/16 :goto_3f

    .line 355
    :cond_399
    const-string v13, "normal"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3ad

    const-string v13, "direction"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3bd

    .line 356
    :cond_3ad
    const-string v13, "light"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/jme3/scene/plugins/ogre/SceneLoader;->checkTopNode(Ljava/lang/String;)V

    .line 357
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/jme3/scene/plugins/ogre/SceneLoader;->parseLightNormal(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_3f

    .line 358
    :cond_3bd
    const-string v13, "lightAttenuation"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3d0

    .line 359
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/jme3/scene/plugins/ogre/SceneLoader;->parseLightAttenuation(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_3f

    .line 360
    :cond_3d0
    const-string v13, "spotLightRange"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3e4

    const-string v13, "lightRange"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3f

    .line 361
    :cond_3e4
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/jme3/scene/plugins/ogre/SceneLoader;->parseLightSpotLightRange(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_3f
.end method
