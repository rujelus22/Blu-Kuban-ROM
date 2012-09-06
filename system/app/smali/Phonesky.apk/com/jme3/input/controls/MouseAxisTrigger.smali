.class public Lcom/jme3/input/controls/MouseAxisTrigger;
.super Ljava/lang/Object;
.source "MouseAxisTrigger.java"

# interfaces
.implements Lcom/jme3/input/controls/Trigger;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mouseAxis:I

.field private negative:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-class v0, Lcom/jme3/input/controls/MouseAxisTrigger;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/jme3/input/controls/MouseAxisTrigger;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static mouseAxisHash(IZ)I
    .registers 4
    .parameter "mouseAxis"
    .parameter "negative"

    .prologue
    .line 83
    sget-boolean v0, Lcom/jme3/input/controls/MouseAxisTrigger;->$assertionsDisabled:Z

    if-nez v0, :cond_10

    if-ltz p0, :cond_a

    const/16 v0, 0xff

    if-le p0, v0, :cond_10

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 84
    :cond_10
    if-eqz p1, :cond_18

    const/16 v0, 0x300

    :goto_14
    and-int/lit16 v1, p0, 0xff

    or-int/2addr v0, v1

    return v0

    :cond_18
    const/16 v0, 0x200

    goto :goto_14
.end method


# virtual methods
.method public triggerHashCode()I
    .registers 3

    .prologue
    .line 88
    iget v0, p0, Lcom/jme3/input/controls/MouseAxisTrigger;->mouseAxis:I

    iget-boolean v1, p0, Lcom/jme3/input/controls/MouseAxisTrigger;->negative:Z

    invoke-static {v0, v1}, Lcom/jme3/input/controls/MouseAxisTrigger;->mouseAxisHash(IZ)I

    move-result v0

    return v0
.end method
