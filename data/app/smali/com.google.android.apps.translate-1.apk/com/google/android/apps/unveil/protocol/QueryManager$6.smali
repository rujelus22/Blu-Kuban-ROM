.class synthetic Lcom/google/android/apps/unveil/protocol/QueryManager$6;
.super Ljava/lang/Object;
.source "QueryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/protocol/QueryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$android$apps$unveil$protocol$QueryResponseFactory$QueryType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 340
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;->values()[Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/apps/unveil/protocol/QueryManager$6;->$SwitchMap$com$google$android$apps$unveil$protocol$QueryResponseFactory$QueryType:[I

    :try_start_9
    sget-object v0, Lcom/google/android/apps/unveil/protocol/QueryManager$6;->$SwitchMap$com$google$android$apps$unveil$protocol$QueryResponseFactory$QueryType:[I

    sget-object v1, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;->REPLAY:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    goto :goto_14
.end method
