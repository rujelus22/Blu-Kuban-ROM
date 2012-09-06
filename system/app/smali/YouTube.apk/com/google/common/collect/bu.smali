.class final synthetic Lcom/google/common/collect/bu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 126
    invoke-static {}, Lcom/google/common/collect/BstModificationResult$ModificationType;->values()[Lcom/google/common/collect/BstModificationResult$ModificationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/common/collect/bu;->b:[I

    :try_start_9
    sget-object v0, Lcom/google/common/collect/bu;->b:[I

    sget-object v1, Lcom/google/common/collect/BstModificationResult$ModificationType;->IDENTITY:Lcom/google/common/collect/BstModificationResult$ModificationType;

    invoke-virtual {v1}, Lcom/google/common/collect/BstModificationResult$ModificationType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_52

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/common/collect/bu;->b:[I

    sget-object v1, Lcom/google/common/collect/BstModificationResult$ModificationType;->REBUILDING_CHANGE:Lcom/google/common/collect/BstModificationResult$ModificationType;

    invoke-virtual {v1}, Lcom/google/common/collect/BstModificationResult$ModificationType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_50

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/google/common/collect/bu;->b:[I

    sget-object v1, Lcom/google/common/collect/BstModificationResult$ModificationType;->REBALANCING_CHANGE:Lcom/google/common/collect/BstModificationResult$ModificationType;

    invoke-virtual {v1}, Lcom/google/common/collect/BstModificationResult$ModificationType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_4e

    .line 135
    :goto_2a
    invoke-static {}, Lcom/google/common/collect/BstSide;->values()[Lcom/google/common/collect/BstSide;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/common/collect/bu;->a:[I

    :try_start_33
    sget-object v0, Lcom/google/common/collect/bu;->a:[I

    sget-object v1, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {v1}, Lcom/google/common/collect/BstSide;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_4c

    :goto_3e
    :try_start_3e
    sget-object v0, Lcom/google/common/collect/bu;->a:[I

    sget-object v1, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {v1}, Lcom/google/common/collect/BstSide;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_4a

    :goto_49
    return-void

    :catch_4a
    move-exception v0

    goto :goto_49

    :catch_4c
    move-exception v0

    goto :goto_3e

    :catch_4e
    move-exception v0

    goto :goto_2a

    :catch_50
    move-exception v0

    goto :goto_1f

    :catch_52
    move-exception v0

    goto :goto_14
.end method
