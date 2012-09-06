.class public final Lcom/google/common/base/Flag$String;
.super Lcom/google/common/base/Flag;
.source "Flag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Flag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "String"
.end annotation


# instance fields
.field newFlag:Lcom/google/common/flags/Flag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/flags/Flag",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "defaultValue"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "helpString"
    .end parameter
    .annotation runtime Lcom/google/common/annotations/Strongly;
        contact = "java-libraries-discuss"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 263
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/common/base/Flag;-><init>(Ljava/lang/String;Lcom/google/common/base/Flag$1;)V

    .line 264
    invoke-static {p1}, Lcom/google/common/flags/Flag;->value(Ljava/lang/String;)Lcom/google/common/flags/Flag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/Flag$String;->newFlag:Lcom/google/common/flags/Flag;

    .line 265
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .registers 2

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/google/common/base/Flag$String;->checkAccessible()V

    .line 273
    iget-object v0, p0, Lcom/google/common/base/Flag$String;->newFlag:Lcom/google/common/flags/Flag;

    invoke-virtual {v0}, Lcom/google/common/flags/Flag;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method getType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    const-class v0, Ljava/lang/String;

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
    .line 268
    iget-object v0, p0, Lcom/google/common/base/Flag$String;->newFlag:Lcom/google/common/flags/Flag;

    return-object v0
.end method

.method public set(Ljava/lang/String;)V
    .registers 5
    .parameter "value"

    .prologue
    .line 281
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/google/common/base/Flag$String;->setStateCheckingDisabled(Z)Z

    move-result v1

    .line 283
    .local v1, oldChecking:Z
    :try_start_5
    iget-object v2, p0, Lcom/google/common/base/Flag$String;->newFlag:Lcom/google/common/flags/Flag;

    invoke-virtual {v2, p1}, Lcom/google/common/flags/Flag;->setFromString(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_15
    .catch Lcom/google/common/flags/InvalidFlagValueException; {:try_start_5 .. :try_end_a} :catch_e

    .line 287
    invoke-static {v1}, Lcom/google/common/base/Flag$String;->setStateCheckingDisabled(Z)Z

    .line 289
    return-void

    .line 284
    :catch_e
    move-exception v0

    .line 285
    .local v0, ex:Lcom/google/common/flags/InvalidFlagValueException;
    :try_start_f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_15

    .line 287
    .end local v0           #ex:Lcom/google/common/flags/InvalidFlagValueException;
    :catchall_15
    move-exception v2

    invoke-static {v1}, Lcom/google/common/base/Flag$String;->setStateCheckingDisabled(Z)Z

    throw v2
.end method
