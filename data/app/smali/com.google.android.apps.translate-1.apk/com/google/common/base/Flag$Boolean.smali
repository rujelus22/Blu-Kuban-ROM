.class public final Lcom/google/common/base/Flag$Boolean;
.super Lcom/google/common/base/Flag;
.source "Flag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Flag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Boolean"
.end annotation


# instance fields
.field newFlag:Lcom/google/common/flags/Flag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/flags/Flag",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .registers 4
    .parameter "defaultValue"
    .parameter "helpString"
    .annotation runtime Lcom/google/common/annotations/Strongly;
        contact = "java-libraries-discuss"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 301
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/common/base/Flag;-><init>(Ljava/lang/String;Lcom/google/common/base/Flag$1;)V

    .line 302
    invoke-static {p1}, Lcom/google/common/flags/Flag;->value(Z)Lcom/google/common/flags/Flag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/Flag$Boolean;->newFlag:Lcom/google/common/flags/Flag;

    .line 303
    return-void
.end method


# virtual methods
.method public get()Z
    .registers 2

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/google/common/base/Flag$Boolean;->checkAccessible()V

    .line 311
    iget-object v0, p0, Lcom/google/common/base/Flag$Boolean;->newFlag:Lcom/google/common/flags/Flag;

    invoke-virtual {v0}, Lcom/google/common/flags/Flag;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method getType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    return-object v0
.end method

.method protected isBoolean()Z
    .registers 2

    .prologue
    .line 330
    const/4 v0, 0x1

    return v0
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
    .line 306
    iget-object v0, p0, Lcom/google/common/base/Flag$Boolean;->newFlag:Lcom/google/common/flags/Flag;

    return-object v0
.end method

.method public set(Z)V
    .registers 7
    .parameter "value"

    .prologue
    .line 319
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/google/common/base/Flag$Boolean;->setStateCheckingDisabled(Z)Z

    move-result v1

    .line 321
    .local v1, oldChecking:Z
    :try_start_5
    iget-object v2, p0, Lcom/google/common/base/Flag$Boolean;->newFlag:Lcom/google/common/flags/Flag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/flags/Flag;->setFromString(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_28
    .catch Lcom/google/common/flags/InvalidFlagValueException; {:try_start_5 .. :try_end_1d} :catch_21

    .line 325
    invoke-static {v1}, Lcom/google/common/base/Flag$Boolean;->setStateCheckingDisabled(Z)Z

    .line 327
    return-void

    .line 322
    :catch_21
    move-exception v0

    .line 323
    .local v0, ex:Lcom/google/common/flags/InvalidFlagValueException;
    :try_start_22
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_28

    .line 325
    .end local v0           #ex:Lcom/google/common/flags/InvalidFlagValueException;
    :catchall_28
    move-exception v2

    invoke-static {v1}, Lcom/google/common/base/Flag$Boolean;->setStateCheckingDisabled(Z)Z

    throw v2
.end method
