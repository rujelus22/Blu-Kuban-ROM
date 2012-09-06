.class synthetic Lcom/jme3/texture/Texture2D$1;
.super Ljava/lang/Object;
.source "Texture2D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/texture/Texture2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$jme3$texture$Texture$WrapAxis:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 130
    invoke-static {}, Lcom/jme3/texture/Texture$WrapAxis;->values()[Lcom/jme3/texture/Texture$WrapAxis;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/jme3/texture/Texture2D$1;->$SwitchMap$com$jme3$texture$Texture$WrapAxis:[I

    :try_start_9
    sget-object v0, Lcom/jme3/texture/Texture2D$1;->$SwitchMap$com$jme3$texture$Texture$WrapAxis:[I

    sget-object v1, Lcom/jme3/texture/Texture$WrapAxis;->S:Lcom/jme3/texture/Texture$WrapAxis;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$WrapAxis;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_22

    :goto_14
    :try_start_14
    sget-object v0, Lcom/jme3/texture/Texture2D$1;->$SwitchMap$com$jme3$texture$Texture$WrapAxis:[I

    sget-object v1, Lcom/jme3/texture/Texture$WrapAxis;->T:Lcom/jme3/texture/Texture$WrapAxis;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$WrapAxis;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    goto :goto_1f

    :catch_22
    move-exception v0

    goto :goto_14
.end method
