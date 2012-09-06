.class public final Lcom/google/common/base/Flag$Integer;
.super Lcom/google/common/base/Flag;
.source "Flag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Flag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Integer"
.end annotation


# instance fields
.field newFlag:Lcom/google/common/flags/Flag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/flags/Flag",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4
    .parameter "defaultValue"
    .parameter "helpString"
    .annotation runtime Lcom/google/common/annotations/Strongly;
        contact = "java-libraries-discuss"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/common/base/Flag;-><init>(Ljava/lang/String;Lcom/google/common/base/Flag$1;)V

    .line 112
    invoke-static {p1}, Lcom/google/common/flags/Flag;->value(I)Lcom/google/common/flags/Flag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/Flag$Integer;->newFlag:Lcom/google/common/flags/Flag;

    .line 113
    return-void
.end method


# virtual methods
.method public get()I
    .registers 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/google/common/base/Flag$Integer;->checkAccessible()V

    .line 121
    iget-object v0, p0, Lcom/google/common/base/Flag$Integer;->newFlag:Lcom/google/common/flags/Flag;

    invoke-virtual {v0}, Lcom/google/common/flags/Flag;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

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
    .line 116
    iget-object v0, p0, Lcom/google/common/base/Flag$Integer;->newFlag:Lcom/google/common/flags/Flag;

    return-object v0
.end method

.method public set(I)V
    .registers 7
    .parameter "value"

    .prologue
    .line 129
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/google/common/base/Flag$Integer;->setStateCheckingDisabled(Z)Z

    move-result v1

    .line 131
    .local v1, oldChecking:Z
    :try_start_5
    iget-object v2, p0, Lcom/google/common/base/Flag$Integer;->newFlag:Lcom/google/common/flags/Flag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/flags/Flag;->setFromString(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_28
    .catch Lcom/google/common/flags/InvalidFlagValueException; {:try_start_5 .. :try_end_1d} :catch_21

    .line 135
    invoke-static {v1}, Lcom/google/common/base/Flag$Integer;->setStateCheckingDisabled(Z)Z

    .line 137
    return-void

    .line 132
    :catch_21
    move-exception v0

    .line 133
    .local v0, ex:Lcom/google/common/flags/InvalidFlagValueException;
    :try_start_22
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_28

    .line 135
    .end local v0           #ex:Lcom/google/common/flags/InvalidFlagValueException;
    :catchall_28
    move-exception v2

    invoke-static {v1}, Lcom/google/common/base/Flag$Integer;->setStateCheckingDisabled(Z)Z

    throw v2
.end method
