.class synthetic Lcom/jme3/animation/AnimChannel$1;
.super Ljava/lang/Object;
.source "AnimChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/animation/AnimChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$jme3$animation$LoopMode:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 76
    invoke-static {}, Lcom/jme3/animation/LoopMode;->values()[Lcom/jme3/animation/LoopMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/jme3/animation/AnimChannel$1;->$SwitchMap$com$jme3$animation$LoopMode:[I

    :try_start_9
    sget-object v0, Lcom/jme3/animation/AnimChannel$1;->$SwitchMap$com$jme3$animation$LoopMode:[I

    sget-object v1, Lcom/jme3/animation/LoopMode;->DontLoop:Lcom/jme3/animation/LoopMode;

    invoke-virtual {v1}, Lcom/jme3/animation/LoopMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_2f

    :goto_14
    :try_start_14
    sget-object v0, Lcom/jme3/animation/AnimChannel$1;->$SwitchMap$com$jme3$animation$LoopMode:[I

    sget-object v1, Lcom/jme3/animation/LoopMode;->Cycle:Lcom/jme3/animation/LoopMode;

    invoke-virtual {v1}, Lcom/jme3/animation/LoopMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_2d

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/jme3/animation/AnimChannel$1;->$SwitchMap$com$jme3$animation$LoopMode:[I

    sget-object v1, Lcom/jme3/animation/LoopMode;->Loop:Lcom/jme3/animation/LoopMode;

    invoke-virtual {v1}, Lcom/jme3/animation/LoopMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2b

    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    goto :goto_2a

    :catch_2d
    move-exception v0

    goto :goto_1f

    :catch_2f
    move-exception v0

    goto :goto_14
.end method
