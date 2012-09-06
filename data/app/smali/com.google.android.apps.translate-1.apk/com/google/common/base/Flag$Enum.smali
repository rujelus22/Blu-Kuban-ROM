.class public final Lcom/google/common/base/Flag$Enum;
.super Lcom/google/common/base/Flag;
.source "Flag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Flag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Enum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum",
        "<TE;>;>",
        "Lcom/google/common/base/Flag;"
    }
.end annotation


# instance fields
.field newFlag:Lcom/google/common/flags/Flag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/flags/Flag",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Enum;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "helpString"
    .annotation runtime Lcom/google/common/annotations/Strongly;
        contact = "java-libraries-discuss"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 349
    .local p0, this:Lcom/google/common/base/Flag$Enum;,"Lcom/google/common/base/Flag$Enum<TE;>;"
    .local p1, defaultValue:Ljava/lang/Enum;,"TE;"
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/common/base/Flag;-><init>(Ljava/lang/String;Lcom/google/common/base/Flag$1;)V

    .line 350
    invoke-static {p1}, Lcom/google/common/flags/Flag;->value(Ljava/lang/Enum;)Lcom/google/common/flags/Flag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/Flag$Enum;->newFlag:Lcom/google/common/flags/Flag;

    .line 351
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Enum;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 362
    .local p0, this:Lcom/google/common/base/Flag$Enum;,"Lcom/google/common/base/Flag$Enum<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/base/Flag$Enum;->checkAccessible()V

    .line 363
    iget-object v0, p0, Lcom/google/common/base/Flag$Enum;->newFlag:Lcom/google/common/flags/Flag;

    invoke-virtual {v0}, Lcom/google/common/flags/Flag;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    return-object v0
.end method

.method getType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 354
    .local p0, this:Lcom/google/common/base/Flag$Enum;,"Lcom/google/common/base/Flag$Enum<TE;>;"
    iget-object v0, p0, Lcom/google/common/base/Flag$Enum;->newFlag:Lcom/google/common/flags/Flag;

    invoke-virtual {v0}, Lcom/google/common/flags/Flag;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method newFlag()Lcom/google/common/flags/Flag;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/flags/Flag",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 358
    .local p0, this:Lcom/google/common/base/Flag$Enum;,"Lcom/google/common/base/Flag$Enum<TE;>;"
    iget-object v0, p0, Lcom/google/common/base/Flag$Enum;->newFlag:Lcom/google/common/flags/Flag;

    return-object v0
.end method

.method public set(Ljava/lang/Enum;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 367
    .local p0, this:Lcom/google/common/base/Flag$Enum;,"Lcom/google/common/base/Flag$Enum<TE;>;"
    .local p1, value:Ljava/lang/Enum;,"TE;"
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/google/common/base/Flag$Enum;->setStateCheckingDisabled(Z)Z

    move-result v1

    .line 369
    .local v1, oldChecking:Z
    :try_start_5
    iget-object v3, p0, Lcom/google/common/base/Flag$Enum;->newFlag:Lcom/google/common/flags/Flag;

    if-nez p1, :cond_11

    const/4 v2, 0x0

    :goto_a
    invoke-virtual {v3, v2}, Lcom/google/common/flags/Flag;->setFromString(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_1d
    .catch Lcom/google/common/flags/InvalidFlagValueException; {:try_start_5 .. :try_end_d} :catch_16

    .line 373
    invoke-static {v1}, Lcom/google/common/base/Flag$Enum;->setStateCheckingDisabled(Z)Z

    .line 375
    return-void

    .line 369
    :cond_11
    :try_start_11
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_1d
    .catch Lcom/google/common/flags/InvalidFlagValueException; {:try_start_11 .. :try_end_14} :catch_16

    move-result-object v2

    goto :goto_a

    .line 370
    :catch_16
    move-exception v0

    .line 371
    .local v0, ex:Lcom/google/common/flags/InvalidFlagValueException;
    :try_start_17
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_1d

    .line 373
    .end local v0           #ex:Lcom/google/common/flags/InvalidFlagValueException;
    :catchall_1d
    move-exception v2

    invoke-static {v1}, Lcom/google/common/base/Flag$Enum;->setStateCheckingDisabled(Z)Z

    throw v2
.end method

.method protected setValueFromString(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 378
    .local p0, this:Lcom/google/common/base/Flag$Enum;,"Lcom/google/common/base/Flag$Enum<TE;>;"
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Flag$Enum;->setFromString(Ljava/lang/String;)V

    .line 379
    return-void
.end method
