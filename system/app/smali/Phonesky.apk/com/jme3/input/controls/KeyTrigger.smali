.class public Lcom/jme3/input/controls/KeyTrigger;
.super Ljava/lang/Object;
.source "KeyTrigger.java"

# interfaces
.implements Lcom/jme3/input/controls/Trigger;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final keyCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-class v0, Lcom/jme3/input/controls/KeyTrigger;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/jme3/input/controls/KeyTrigger;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static keyHash(I)I
    .registers 2
    .parameter "keyCode"

    .prologue
    .line 64
    sget-boolean v0, Lcom/jme3/input/controls/KeyTrigger;->$assertionsDisabled:Z

    if-nez v0, :cond_10

    if-ltz p0, :cond_a

    const/16 v0, 0xff

    if-le p0, v0, :cond_10

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 65
    :cond_10
    and-int/lit16 v0, p0, 0xff

    return v0
.end method


# virtual methods
.method public triggerHashCode()I
    .registers 2

    .prologue
    .line 69
    iget v0, p0, Lcom/jme3/input/controls/KeyTrigger;->keyCode:I

    invoke-static {v0}, Lcom/jme3/input/controls/KeyTrigger;->keyHash(I)I

    move-result v0

    return v0
.end method
