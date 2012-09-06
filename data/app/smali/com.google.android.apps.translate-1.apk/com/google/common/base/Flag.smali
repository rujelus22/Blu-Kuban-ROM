.class public abstract Lcom/google/common/base/Flag;
.super Ljava/lang/Object;
.source "Flag.java"


# annotations
.annotation build Lcom/google/common/annotations/GoogleInternal;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Flag$1;,
        Lcom/google/common/base/Flag$Enum;,
        Lcom/google/common/base/Flag$Boolean;,
        Lcom/google/common/base/Flag$String;,
        Lcom/google/common/base/Flag$Double;,
        Lcom/google/common/base/Flag$Float;,
        Lcom/google/common/base/Flag$Long;,
        Lcom/google/common/base/Flag$Integer;,
        Lcom/google/common/base/Flag$State;
    }
.end annotation


# instance fields
.field private final helpString:Ljava/lang/String;

.field private state:Lcom/google/common/base/Flag$State;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "helpString"

    .prologue
    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    sget-object v0, Lcom/google/common/base/Flag$State;->UNUSED:Lcom/google/common/base/Flag$State;

    iput-object v0, p0, Lcom/google/common/base/Flag;->state:Lcom/google/common/base/Flag$State;

    .line 409
    sget-object v0, Lcom/google/common/base/Flag$State;->UNUSED:Lcom/google/common/base/Flag$State;

    invoke-direct {p0, v0}, Lcom/google/common/base/Flag;->setState(Lcom/google/common/base/Flag$State;)V

    .line 410
    if-nez p1, :cond_10

    const-string p1, ""

    .end local p1
    :cond_10
    iput-object p1, p0, Lcom/google/common/base/Flag;->helpString:Ljava/lang/String;

    .line 411
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/common/base/Flag$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/google/common/base/Flag;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private setState(Lcom/google/common/base/Flag$State;)V
    .registers 2
    .parameter "newState"

    .prologue
    .line 414
    iput-object p1, p0, Lcom/google/common/base/Flag;->state:Lcom/google/common/base/Flag$State;

    .line 415
    return-void
.end method

.method static setStateCheckingDisabled(Z)Z
    .registers 6
    .parameter "newValue"

    .prologue
    .line 387
    const-string v0, "com.google.common.flags.disableStateChecking"

    .line 388
    .local v0, DISABLE_CHECKING:Ljava/lang/String;
    const-string v2, "com.google.common.flags.disableStateChecking"

    invoke-static {v2}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 389
    .local v1, oldValue:Z
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v2

    const-string v3, "com.google.common.flags.disableStateChecking"

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 390
    return v1
.end method


# virtual methods
.method checkAccessible()V
    .registers 4

    .prologue
    .line 450
    iget-object v1, p0, Lcom/google/common/base/Flag;->state:Lcom/google/common/base/Flag$State;

    sget-object v2, Lcom/google/common/base/Flag$State;->REGISTERED:Lcom/google/common/base/Flag$State;

    if-ne v1, v2, :cond_18

    .line 451
    const-string v0, "com.google.common.flags.disableStateChecking"

    .line 452
    .local v0, DISABLE_CHECKING:Ljava/lang/String;
    const-string v1, "com.google.common.flags.disableStateChecking"

    invoke-static {v1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 453
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Flag is registered but not parsed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 457
    .end local v0           #DISABLE_CHECKING:Ljava/lang/String;
    :cond_18
    sget-object v1, Lcom/google/common/base/Flag$State;->ACCESSED:Lcom/google/common/base/Flag$State;

    invoke-direct {p0, v1}, Lcom/google/common/base/Flag;->setState(Lcom/google/common/base/Flag$State;)V

    .line 458
    return-void
.end method

.method getCurrentValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/google/common/base/Flag;->newFlag()Lcom/google/common/flags/Flag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/flags/Flag;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getHelpString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/google/common/base/Flag;->helpString:Ljava/lang/String;

    return-object v0
.end method

.method abstract getType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method isBoolean()Z
    .registers 2

    .prologue
    .line 431
    const/4 v0, 0x0

    return v0
.end method

.method abstract newFlag()Lcom/google/common/flags/Flag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/flags/Flag",
            "<*>;"
        }
    .end annotation
.end method

.method public resetState()V
    .registers 2

    .prologue
    .line 500
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/Flag;->setStateCheckingDisabled(Z)Z

    .line 501
    sget-object v0, Lcom/google/common/base/Flag$State;->UNUSED:Lcom/google/common/base/Flag$State;

    invoke-direct {p0, v0}, Lcom/google/common/base/Flag;->setState(Lcom/google/common/base/Flag$State;)V

    .line 502
    return-void
.end method

.method setFromString(Ljava/lang/String;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 506
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/base/Flag;->newFlag()Lcom/google/common/flags/Flag;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/common/flags/Flag;->setFromString(Ljava/lang/String;)V
    :try_end_7
    .catch Lcom/google/common/flags/InvalidFlagValueException; {:try_start_0 .. :try_end_7} :catch_8

    .line 510
    return-void

    .line 507
    :catch_8
    move-exception v0

    .line 508
    .local v0, ex:Lcom/google/common/flags/InvalidFlagValueException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method setParsed()V
    .registers 4

    .prologue
    .line 488
    const-string v0, "com.google.common.flags.disableStateChecking"

    .line 489
    .local v0, DISABLE_CHECKING:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/common/base/Flag;->state:Lcom/google/common/base/Flag$State;

    sget-object v2, Lcom/google/common/base/Flag$State;->REGISTERED:Lcom/google/common/base/Flag$State;

    if-eq v1, v2, :cond_16

    const-string v1, "com.google.common.flags.disableStateChecking"

    invoke-static {v1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 490
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 492
    :cond_16
    sget-object v1, Lcom/google/common/base/Flag$State;->PARSED:Lcom/google/common/base/Flag$State;

    invoke-direct {p0, v1}, Lcom/google/common/base/Flag;->setState(Lcom/google/common/base/Flag$State;)V

    .line 493
    return-void
.end method

.method setRegistered()V
    .registers 5

    .prologue
    .line 469
    sget-object v1, Lcom/google/common/base/Flag$1;->$SwitchMap$com$google$common$base$Flag$State:[I

    iget-object v2, p0, Lcom/google/common/base/Flag;->state:Lcom/google/common/base/Flag$State;

    invoke-virtual {v2}, Lcom/google/common/base/Flag$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_40

    .line 480
    sget-object v1, Lcom/google/common/base/Flag$State;->REGISTERED:Lcom/google/common/base/Flag$State;

    invoke-direct {p0, v1}, Lcom/google/common/base/Flag;->setState(Lcom/google/common/base/Flag$State;)V

    .line 482
    :cond_12
    return-void

    .line 471
    :pswitch_13
    const-string v0, "com.google.common.flags.disableStateChecking"

    .line 472
    .local v0, DISABLE_CHECKING:Ljava/lang/String;
    const-string v1, "com.google.common.flags.disableStateChecking"

    invoke-static {v1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 473
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Flag has already been registered ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/base/Flag;->getHelpString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 469
    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_13
    .end packed-switch
.end method

.method setValueFromString(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 438
    invoke-virtual {p0, p1}, Lcom/google/common/base/Flag;->setFromString(Ljava/lang/String;)V

    .line 439
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/base/Flag;->newFlag()Lcom/google/common/flags/Flag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/flags/Flag;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
