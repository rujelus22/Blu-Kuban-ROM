.class public Lcom/jme3/scene/plugins/ogre/SkeletonLoader;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SkeletonLoader.java"

# interfaces
.implements Lcom/jme3/asset/AssetLoader;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private angle:F

.field private animation:Lcom/jme3/animation/Animation;

.field private animations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jme3/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private assetManager:Lcom/jme3/asset/AssetManager;

.field private axis:Lcom/jme3/math/Vector3f;

.field private bone:Lcom/jme3/animation/Bone;

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

.field private indexToBone:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/jme3/animation/Bone;",
            ">;"
        }
    .end annotation
.end field

.field private nameToBone:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/jme3/animation/Bone;",
            ">;"
        }
    .end annotation
.end field

.field private position:Lcom/jme3/math/Vector3f;

.field private rotation:Lcom/jme3/math/Quaternion;

.field private rotations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jme3/math/Quaternion;",
            ">;"
        }
    .end annotation
.end field

.field private scale:Lcom/jme3/math/Vector3f;

.field private scales:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jme3/math/Vector3f;",
            ">;"
        }
    .end annotation
.end field

.field private skeleton:Lcom/jme3/animation/Skeleton;

.field private time:F

.field private times:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private track:Lcom/jme3/animation/BoneTrack;

.field private tracks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jme3/animation/BoneTrack;",
            ">;"
        }
    .end annotation
.end field

.field private translations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jme3/math/Vector3f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    const-class v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->$assertionsDisabled:Z

    .line 62
    const-class v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->logger:Ljava/util/logging/Logger;

    return-void

    .line 60
    :cond_18
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 64
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->elementStack:Ljava/util/Stack;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->indexToBone:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->nameToBone:Ljava/util/HashMap;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->tracks:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->times:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->translations:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->rotations:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->scales:Ljava/util/ArrayList;

    .line 77
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->time:F

    return-void
.end method

.method private fullReset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 230
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->elementStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 231
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->indexToBone:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 232
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->nameToBone:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 233
    iput-object v1, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->track:Lcom/jme3/animation/BoneTrack;

    .line 234
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 235
    iput-object v1, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->animation:Lcom/jme3/animation/Animation;

    .line 236
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->animations:Ljava/util/ArrayList;

    if-eqz v0, :cond_22

    .line 237
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->animations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 240
    :cond_22
    iput-object v1, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->bone:Lcom/jme3/animation/Bone;

    .line 241
    iput-object v1, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->skeleton:Lcom/jme3/animation/Skeleton;

    .line 242
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->times:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 243
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->rotations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 244
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->translations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 245
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->time:F

    .line 246
    iput-object v1, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->position:Lcom/jme3/math/Vector3f;

    .line 247
    iput-object v1, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->rotation:Lcom/jme3/math/Quaternion;

    .line 248
    iput-object v1, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->scale:Lcom/jme3/math/Vector3f;

    .line 249
    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->angle:F

    .line 250
    iput-object v1, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->axis:Lcom/jme3/math/Vector3f;

    .line 251
    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 20
    .parameter "uri"
    .parameter "name"
    .parameter "qName"

    .prologue
    .line 143
    const-string v11, "translate"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1e

    const-string v11, "position"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1e

    const-string v11, "scale"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3a

    .line 221
    :cond_1e
    :goto_1e
    sget-boolean v11, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->$assertionsDisabled:Z

    if-nez v11, :cond_2be

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->elementStack:Ljava/util/Stack;

    invoke-virtual {v11}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2be

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 144
    :cond_3a
    const-string v11, "axis"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1e

    .line 145
    const-string v11, "rotate"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_58

    const-string v11, "rotation"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_82

    .line 146
    :cond_58
    new-instance v11, Lcom/jme3/math/Quaternion;

    invoke-direct {v11}, Lcom/jme3/math/Quaternion;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->rotation:Lcom/jme3/math/Quaternion;

    .line 147
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->axis:Lcom/jme3/math/Vector3f;

    invoke-virtual {v11}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    .line 148
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->rotation:Lcom/jme3/math/Quaternion;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->angle:F

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->axis:Lcom/jme3/math/Vector3f;

    invoke-virtual {v11, v12, v13}, Lcom/jme3/math/Quaternion;->fromAngleNormalAxis(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    .line 149
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->angle:F

    .line 150
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->axis:Lcom/jme3/math/Vector3f;

    goto :goto_1e

    .line 151
    :cond_82
    const-string v11, "bone"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b5

    .line 152
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->bone:Lcom/jme3/animation/Bone;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->position:Lcom/jme3/math/Vector3f;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->rotation:Lcom/jme3/math/Quaternion;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v11, v12, v13, v14}, Lcom/jme3/animation/Bone;->setBindTransforms(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;)V

    .line 153
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->bone:Lcom/jme3/animation/Bone;

    .line 154
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->position:Lcom/jme3/math/Vector3f;

    .line 155
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->rotation:Lcom/jme3/math/Quaternion;

    .line 156
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->scale:Lcom/jme3/math/Vector3f;

    goto/16 :goto_1e

    .line 157
    :cond_b5
    const-string v11, "bonehierarchy"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_106

    .line 158
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->indexToBone:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v11

    new-array v2, v11, [Lcom/jme3/animation/Bone;

    .line 161
    .local v2, bones:[Lcom/jme3/animation/Bone;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->indexToBone:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_d5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_f4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 162
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/jme3/animation/Bone;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/animation/Bone;

    .line 163
    .local v1, bone:Lcom/jme3/animation/Bone;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput-object v1, v2, v11

    goto :goto_d5

    .line 165
    .end local v1           #bone:Lcom/jme3/animation/Bone;
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/jme3/animation/Bone;>;"
    :cond_f4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->indexToBone:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 166
    new-instance v11, Lcom/jme3/animation/Skeleton;

    invoke-direct {v11, v2}, Lcom/jme3/animation/Skeleton;-><init>([Lcom/jme3/animation/Bone;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->skeleton:Lcom/jme3/animation/Skeleton;

    goto/16 :goto_1e

    .line 167
    .end local v2           #bones:[Lcom/jme3/animation/Bone;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_106
    const-string v11, "animation"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_122

    .line 168
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->animations:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->animation:Lcom/jme3/animation/Animation;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->animation:Lcom/jme3/animation/Animation;

    goto/16 :goto_1e

    .line 170
    :cond_122
    const-string v11, "track"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_144

    .line 171
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->track:Lcom/jme3/animation/BoneTrack;

    if-eqz v11, :cond_1e

    .line 172
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->tracks:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->track:Lcom/jme3/animation/BoneTrack;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->track:Lcom/jme3/animation/BoneTrack;

    goto/16 :goto_1e

    .line 175
    :cond_144
    const-string v11, "tracks"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_172

    .line 176
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->tracks:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Lcom/jme3/animation/BoneTrack;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/jme3/animation/BoneTrack;

    .line 177
    .local v9, trackList:[Lcom/jme3/animation/BoneTrack;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->animation:Lcom/jme3/animation/Animation;

    invoke-virtual {v11, v9}, Lcom/jme3/animation/Animation;->setTracks([Lcom/jme3/animation/Track;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1e

    .line 179
    .end local v9           #trackList:[Lcom/jme3/animation/BoneTrack;
    :cond_172
    const-string v11, "keyframe"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_20f

    .line 180
    sget-boolean v11, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->$assertionsDisabled:Z

    if-nez v11, :cond_18f

    move-object/from16 v0, p0

    iget v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->time:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-gez v11, :cond_18f

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 181
    :cond_18f
    sget-boolean v11, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->$assertionsDisabled:Z

    if-nez v11, :cond_19f

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->position:Lcom/jme3/math/Vector3f;

    if-nez v11, :cond_19f

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 182
    :cond_19f
    sget-boolean v11, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->$assertionsDisabled:Z

    if-nez v11, :cond_1af

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->rotation:Lcom/jme3/math/Quaternion;

    if-nez v11, :cond_1af

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 184
    :cond_1af
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->times:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->time:F

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->translations:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->position:Lcom/jme3/math/Vector3f;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->rotations:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->rotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->scale:Lcom/jme3/math/Vector3f;

    if-eqz v11, :cond_1fc

    .line 188
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->scales:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    :goto_1e5
    const/high16 v11, -0x4080

    move-object/from16 v0, p0

    iput v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->time:F

    .line 194
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->position:Lcom/jme3/math/Vector3f;

    .line 195
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->rotation:Lcom/jme3/math/Quaternion;

    .line 196
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->scale:Lcom/jme3/math/Vector3f;

    goto/16 :goto_1e

    .line 190
    :cond_1fc
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->scales:Ljava/util/ArrayList;

    new-instance v12, Lcom/jme3/math/Vector3f;

    const/high16 v13, 0x3f80

    const/high16 v14, 0x3f80

    const/high16 v15, 0x3f80

    invoke-direct {v12, v13, v14, v15}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e5

    .line 197
    :cond_20f
    const-string v11, "keyframes"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2ab

    .line 198
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->times:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_2a5

    .line 199
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->times:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v8, v11, [F

    .line 200
    .local v8, timesArray:[F
    const/4 v4, 0x0

    .local v4, i:I
    :goto_22e
    array-length v11, v8

    if-ge v4, v11, :cond_244

    .line 201
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->times:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    aput v11, v8, v4

    .line 200
    add-int/lit8 v4, v4, 0x1

    goto :goto_22e

    .line 204
    :cond_244
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->translations:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->translations:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Lcom/jme3/math/Vector3f;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/jme3/math/Vector3f;

    .line 205
    .local v10, transArray:[Lcom/jme3/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->rotations:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->rotations:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Lcom/jme3/math/Quaternion;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/jme3/math/Quaternion;

    .line 206
    .local v6, rotArray:[Lcom/jme3/math/Quaternion;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->scales:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->scales:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Lcom/jme3/math/Vector3f;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/jme3/math/Vector3f;

    .line 208
    .local v7, scalesArray:[Lcom/jme3/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->track:Lcom/jme3/animation/BoneTrack;

    invoke-virtual {v11, v8, v10, v6, v7}, Lcom/jme3/animation/BoneTrack;->setKeyframes([F[Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Quaternion;[Lcom/jme3/math/Vector3f;)V

    .line 214
    .end local v4           #i:I
    .end local v6           #rotArray:[Lcom/jme3/math/Quaternion;
    .end local v7           #scalesArray:[Lcom/jme3/math/Vector3f;
    .end local v8           #timesArray:[F
    .end local v10           #transArray:[Lcom/jme3/math/Vector3f;
    :goto_287
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->times:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 215
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->translations:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 216
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->rotations:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 217
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->scales:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1e

    .line 211
    :cond_2a5
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->track:Lcom/jme3/animation/BoneTrack;

    goto :goto_287

    .line 218
    :cond_2ab
    const-string v11, "skeleton"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1e

    .line 219
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->nameToBone:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_1e

    .line 222
    :cond_2be
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->elementStack:Ljava/util/Stack;

    invoke-virtual {v11}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 223
    return-void
.end method

.method public load(Lcom/jme3/asset/AssetInfo;)Ljava/lang/Object;
    .registers 4
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getManager()Lcom/jme3/asset/AssetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    .line 292
    const/4 v0, 0x0

    .line 294
    .local v0, in:Ljava/io/InputStream;
    :try_start_7
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 295
    invoke-virtual {p0, v0}, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->load(Ljava/io/InputStream;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_15

    move-result-object v1

    .line 297
    if-eqz v0, :cond_14

    .line 298
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_14
    return-object v1

    .line 297
    :catchall_15
    move-exception v1

    if-eqz v0, :cond_1b

    .line 298
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1b
    throw v1
.end method

.method public load(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 10
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    .line 262
    .local v2, factory:Ljavax/xml/parsers/SAXParserFactory;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 263
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 265
    .local v5, xr:Lorg/xml/sax/XMLReader;
    invoke-interface {v5, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 266
    invoke-interface {v5, p0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 267
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 268
    .local v4, r:Ljava/io/InputStreamReader;
    new-instance v6, Lorg/xml/sax/InputSource;

    invoke-direct {v6, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 269
    iget-object v6, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->animations:Ljava/util/ArrayList;

    if-nez v6, :cond_2e

    .line 270
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->animations:Ljava/util/ArrayList;

    .line 272
    :cond_2e
    new-instance v0, Lcom/jme3/scene/plugins/ogre/AnimData;

    iget-object v6, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->skeleton:Lcom/jme3/animation/Skeleton;

    iget-object v7, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->animations:Ljava/util/ArrayList;

    invoke-direct {v0, v6, v7}, Lcom/jme3/scene/plugins/ogre/AnimData;-><init>(Lcom/jme3/animation/Skeleton;Ljava/util/ArrayList;)V

    .line 273
    .local v0, data:Lcom/jme3/scene/plugins/ogre/AnimData;
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->skeleton:Lcom/jme3/animation/Skeleton;

    .line 274
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->animations:Ljava/util/ArrayList;
    :try_end_3d
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_3d} :catch_3e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_3d} :catch_4d

    .line 275
    return-object v0

    .line 276
    .end local v0           #data:Lcom/jme3/scene/plugins/ogre/AnimData;
    .end local v2           #factory:Ljavax/xml/parsers/SAXParserFactory;
    .end local v4           #r:Ljava/io/InputStreamReader;
    .end local v5           #xr:Lorg/xml/sax/XMLReader;
    :catch_3e
    move-exception v1

    .line 277
    .local v1, ex:Lorg/xml/sax/SAXException;
    new-instance v3, Ljava/io/IOException;

    const-string v6, "Error while parsing Ogre3D dotScene"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 278
    .local v3, ioEx:Ljava/io/IOException;
    invoke-virtual {v3, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 279
    invoke-direct {p0}, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->fullReset()V

    .line 280
    throw v3

    .line 281
    .end local v1           #ex:Lorg/xml/sax/SAXException;
    .end local v3           #ioEx:Ljava/io/IOException;
    :catch_4d
    move-exception v1

    .line 282
    .local v1, ex:Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v3, Ljava/io/IOException;

    const-string v6, "Error while parsing Ogre3D dotScene"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 283
    .restart local v3       #ioEx:Ljava/io/IOException;
    invoke-virtual {v3, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 284
    invoke-direct {p0}, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->fullReset()V

    .line 285
    throw v3
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 16
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
    .line 85
    const-string v8, "position"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    const-string v8, "translate"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 86
    :cond_10
    invoke-static {p4}, Lcom/jme3/util/xml/SAXUtil;->parseVector3(Lorg/xml/sax/Attributes;)Lcom/jme3/math/Vector3f;

    move-result-object v8

    iput-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->position:Lcom/jme3/math/Vector3f;

    .line 139
    :cond_16
    :goto_16
    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->elementStack:Ljava/util/Stack;

    invoke-virtual {v8, p3}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 140
    return-void

    .line 87
    :cond_1c
    const-string v8, "rotation"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2c

    const-string v8, "rotate"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_39

    .line 88
    :cond_2c
    const-string v8, "angle"

    invoke-interface {p4, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->angle:F

    goto :goto_16

    .line 89
    :cond_39
    const-string v8, "axis"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_72

    .line 90
    sget-boolean v8, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->$assertionsDisabled:Z

    if-nez v8, :cond_6b

    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->elementStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "rotation"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6b

    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->elementStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "rotate"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6b

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 92
    :cond_6b
    invoke-static {p4}, Lcom/jme3/util/xml/SAXUtil;->parseVector3(Lorg/xml/sax/Attributes;)Lcom/jme3/math/Vector3f;

    move-result-object v8

    iput-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->axis:Lcom/jme3/math/Vector3f;

    goto :goto_16

    .line 93
    :cond_72
    const-string v8, "scale"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_81

    .line 94
    invoke-static {p4}, Lcom/jme3/util/xml/SAXUtil;->parseVector3(Lorg/xml/sax/Attributes;)Lcom/jme3/math/Vector3f;

    move-result-object v8

    iput-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->scale:Lcom/jme3/math/Vector3f;

    goto :goto_16

    .line 95
    :cond_81
    const-string v8, "keyframe"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b1

    .line 96
    sget-boolean v8, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->$assertionsDisabled:Z

    if-nez v8, :cond_a3

    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->elementStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "keyframes"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a3

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 97
    :cond_a3
    const-string v8, "time"

    invoke-interface {p4, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->time:F

    goto/16 :goto_16

    .line 98
    :cond_b1
    const-string v8, "keyframes"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d3

    .line 99
    sget-boolean v8, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->$assertionsDisabled:Z

    if-nez v8, :cond_16

    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->elementStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "track"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 100
    :cond_d3
    const-string v8, "track"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_116

    .line 101
    sget-boolean v8, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->$assertionsDisabled:Z

    if-nez v8, :cond_f5

    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->elementStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "tracks"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f5

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 102
    :cond_f5
    const-string v8, "bone"

    invoke-interface {p4, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/jme3/util/xml/SAXUtil;->parseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, boneName:Ljava/lang/String;
    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->nameToBone:Ljava/util/HashMap;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/Bone;

    .line 104
    .local v0, bone:Lcom/jme3/animation/Bone;
    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->skeleton:Lcom/jme3/animation/Skeleton;

    invoke-virtual {v8, v0}, Lcom/jme3/animation/Skeleton;->getBoneIndex(Lcom/jme3/animation/Bone;)I

    move-result v3

    .line 105
    .local v3, index:I
    new-instance v8, Lcom/jme3/animation/BoneTrack;

    invoke-direct {v8, v3}, Lcom/jme3/animation/BoneTrack;-><init>(I)V

    iput-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->track:Lcom/jme3/animation/BoneTrack;

    goto/16 :goto_16

    .line 106
    .end local v0           #bone:Lcom/jme3/animation/Bone;
    .end local v1           #boneName:Ljava/lang/String;
    .end local v3           #index:I
    :cond_116
    const-string v8, "boneparent"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_159

    .line 107
    sget-boolean v8, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->$assertionsDisabled:Z

    if-nez v8, :cond_138

    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->elementStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "bonehierarchy"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_138

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 108
    :cond_138
    const-string v8, "bone"

    invoke-interface {p4, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    .restart local v1       #boneName:Ljava/lang/String;
    const-string v8, "parent"

    invoke-interface {p4, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 110
    .local v7, parentName:Ljava/lang/String;
    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->nameToBone:Ljava/util/HashMap;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/Bone;

    .line 111
    .restart local v0       #bone:Lcom/jme3/animation/Bone;
    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->nameToBone:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jme3/animation/Bone;

    .line 112
    .local v6, parent:Lcom/jme3/animation/Bone;
    invoke-virtual {v6, v0}, Lcom/jme3/animation/Bone;->addChild(Lcom/jme3/animation/Bone;)V

    goto/16 :goto_16

    .line 113
    .end local v0           #bone:Lcom/jme3/animation/Bone;
    .end local v1           #boneName:Ljava/lang/String;
    .end local v6           #parent:Lcom/jme3/animation/Bone;
    .end local v7           #parentName:Ljava/lang/String;
    :cond_159
    const-string v8, "bone"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1ac

    .line 114
    sget-boolean v8, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->$assertionsDisabled:Z

    if-nez v8, :cond_17b

    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->elementStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "bones"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_17b

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 117
    :cond_17b
    new-instance v8, Lcom/jme3/animation/Bone;

    const-string v9, "name"

    invoke-interface {p4, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/jme3/animation/Bone;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->bone:Lcom/jme3/animation/Bone;

    .line 118
    const-string v8, "id"

    invoke-interface {p4, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/jme3/util/xml/SAXUtil;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 119
    .local v2, id:I
    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->indexToBone:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->bone:Lcom/jme3/animation/Bone;

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->nameToBone:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->bone:Lcom/jme3/animation/Bone;

    invoke-virtual {v9}, Lcom/jme3/animation/Bone;->getName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->bone:Lcom/jme3/animation/Bone;

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_16

    .line 121
    .end local v2           #id:I
    :cond_1ac
    const-string v8, "tracks"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d5

    .line 122
    sget-boolean v8, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->$assertionsDisabled:Z

    if-nez v8, :cond_1ce

    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->elementStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "animation"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1ce

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 123
    :cond_1ce
    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_16

    .line 124
    :cond_1d5
    const-string v8, "animation"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_214

    .line 125
    sget-boolean v8, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->$assertionsDisabled:Z

    if-nez v8, :cond_1f7

    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->elementStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "animations"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1f7

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 126
    :cond_1f7
    const-string v8, "name"

    invoke-interface {p4, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/jme3/util/xml/SAXUtil;->parseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 127
    .local v5, name:Ljava/lang/String;
    const-string v8, "length"

    invoke-interface {p4, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 128
    .local v4, length:F
    new-instance v8, Lcom/jme3/animation/Animation;

    invoke-direct {v8, v5, v4}, Lcom/jme3/animation/Animation;-><init>(Ljava/lang/String;F)V

    iput-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->animation:Lcom/jme3/animation/Animation;

    goto/16 :goto_16

    .line 129
    .end local v4           #length:F
    .end local v5           #name:Ljava/lang/String;
    :cond_214
    const-string v8, "bonehierarchy"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_236

    .line 130
    sget-boolean v8, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->$assertionsDisabled:Z

    if-nez v8, :cond_16

    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->elementStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "skeleton"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 131
    :cond_236
    const-string v8, "animations"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_261

    .line 132
    sget-boolean v8, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->$assertionsDisabled:Z

    if-nez v8, :cond_258

    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->elementStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "skeleton"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_258

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 133
    :cond_258
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->animations:Ljava/util/ArrayList;

    goto/16 :goto_16

    .line 134
    :cond_261
    const-string v8, "bones"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_283

    .line 135
    sget-boolean v8, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->$assertionsDisabled:Z

    if-nez v8, :cond_16

    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->elementStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "skeleton"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 136
    :cond_283
    const-string v8, "skeleton"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 137
    sget-boolean v8, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->$assertionsDisabled:Z

    if-nez v8, :cond_16

    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->elementStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->size()I

    move-result v8

    if-eqz v8, :cond_16

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8
.end method
