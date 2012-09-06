.class public Lcom/jme3/input/controls/JoyAxisTrigger;
.super Ljava/lang/Object;
.source "JoyAxisTrigger.java"

# interfaces
.implements Lcom/jme3/input/controls/Trigger;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final axisId:I

.field private final joyId:I

.field private final negative:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const-class v0, Lcom/jme3/input/controls/JoyAxisTrigger;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/jme3/input/controls/JoyAxisTrigger;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static joyAxisHash(IIZ)I
    .registers 5
    .parameter "joyId"
    .parameter "joyAxis"
    .parameter "negative"

    .prologue
    .line 53
    sget-boolean v0, Lcom/jme3/input/controls/JoyAxisTrigger;->$assertionsDisabled:Z

    if-nez v0, :cond_10

    if-ltz p1, :cond_a

    const/16 v0, 0xff

    if-le p1, v0, :cond_10

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 54
    :cond_10
    mul-int/lit16 v1, p0, 0x800

    if-eqz p2, :cond_1b

    const/16 v0, 0x500

    :goto_16
    or-int/2addr v0, v1

    and-int/lit16 v1, p1, 0xff

    or-int/2addr v0, v1

    return v0

    :cond_1b
    const/16 v0, 0x400

    goto :goto_16
.end method


# virtual methods
.method public triggerHashCode()I
    .registers 4

    .prologue
    .line 74
    iget v0, p0, Lcom/jme3/input/controls/JoyAxisTrigger;->joyId:I

    iget v1, p0, Lcom/jme3/input/controls/JoyAxisTrigger;->axisId:I

    iget-boolean v2, p0, Lcom/jme3/input/controls/JoyAxisTrigger;->negative:Z

    invoke-static {v0, v1, v2}, Lcom/jme3/input/controls/JoyAxisTrigger;->joyAxisHash(IIZ)I

    move-result v0

    return v0
.end method
