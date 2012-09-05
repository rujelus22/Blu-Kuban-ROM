.class public final enum Lcom/google/android/finsky/download/obb/ObbState;
.super Ljava/lang/Enum;
.source "ObbState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/download/obb/ObbState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/download/obb/ObbState;

.field public static final enum DOWNLOADED:Lcom/google/android/finsky/download/obb/ObbState;

.field public static final enum DOWNLOADING:Lcom/google/android/finsky/download/obb/ObbState;

.field public static final enum DOWNLOAD_PENDING:Lcom/google/android/finsky/download/obb/ObbState;

.field public static final enum NOT_APPLICABLE:Lcom/google/android/finsky/download/obb/ObbState;

.field public static final enum NOT_ON_STORAGE:Lcom/google/android/finsky/download/obb/ObbState;

.field private static final sLookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/finsky/download/obb/ObbState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/google/android/finsky/download/obb/ObbState;

    const-string v1, "DOWNLOAD_PENDING"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/download/obb/ObbState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/download/obb/ObbState;->DOWNLOAD_PENDING:Lcom/google/android/finsky/download/obb/ObbState;

    .line 15
    new-instance v0, Lcom/google/android/finsky/download/obb/ObbState;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/download/obb/ObbState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/download/obb/ObbState;->DOWNLOADING:Lcom/google/android/finsky/download/obb/ObbState;

    .line 16
    new-instance v0, Lcom/google/android/finsky/download/obb/ObbState;

    const-string v1, "DOWNLOADED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/download/obb/ObbState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/download/obb/ObbState;->DOWNLOADED:Lcom/google/android/finsky/download/obb/ObbState;

    .line 17
    new-instance v0, Lcom/google/android/finsky/download/obb/ObbState;

    const-string v1, "NOT_ON_STORAGE"

    invoke-direct {v0, v1, v5}, Lcom/google/android/finsky/download/obb/ObbState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/download/obb/ObbState;->NOT_ON_STORAGE:Lcom/google/android/finsky/download/obb/ObbState;

    .line 19
    new-instance v0, Lcom/google/android/finsky/download/obb/ObbState;

    const-string v1, "NOT_APPLICABLE"

    invoke-direct {v0, v1, v6}, Lcom/google/android/finsky/download/obb/ObbState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/download/obb/ObbState;->NOT_APPLICABLE:Lcom/google/android/finsky/download/obb/ObbState;

    .line 13
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/finsky/download/obb/ObbState;

    sget-object v1, Lcom/google/android/finsky/download/obb/ObbState;->DOWNLOAD_PENDING:Lcom/google/android/finsky/download/obb/ObbState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/download/obb/ObbState;->DOWNLOADING:Lcom/google/android/finsky/download/obb/ObbState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/download/obb/ObbState;->DOWNLOADED:Lcom/google/android/finsky/download/obb/ObbState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/download/obb/ObbState;->NOT_ON_STORAGE:Lcom/google/android/finsky/download/obb/ObbState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/finsky/download/obb/ObbState;->NOT_APPLICABLE:Lcom/google/android/finsky/download/obb/ObbState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/finsky/download/obb/ObbState;->$VALUES:[Lcom/google/android/finsky/download/obb/ObbState;

    .line 21
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/download/obb/ObbState;->sLookup:Ljava/util/Map;

    .line 24
    const-class v0, Lcom/google/android/finsky/download/obb/ObbState;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/download/obb/ObbState;

    .line 25
    sget-object v2, Lcom/google/android/finsky/download/obb/ObbState;->sLookup:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/finsky/download/obb/ObbState;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5b

    .line 26
    :cond_75
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getMatchingState(I)Lcom/google/android/finsky/download/obb/ObbState;
    .registers 3
    .parameter "code"

    .prologue
    .line 29
    sget-object v0, Lcom/google/android/finsky/download/obb/ObbState;->sLookup:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/download/obb/ObbState;

    return-object v0
.end method

.method public static shouldDownload(Lcom/google/android/finsky/download/obb/ObbState;)Z
    .registers 2
    .parameter "state"

    .prologue
    .line 33
    sget-object v0, Lcom/google/android/finsky/download/obb/ObbState;->NOT_ON_STORAGE:Lcom/google/android/finsky/download/obb/ObbState;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/download/obb/ObbState;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/download/obb/ObbState;
    .registers 2
    .parameter

    .prologue
    .line 13
    const-class v0, Lcom/google/android/finsky/download/obb/ObbState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/download/obb/ObbState;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/download/obb/ObbState;
    .registers 1

    .prologue
    .line 13
    sget-object v0, Lcom/google/android/finsky/download/obb/ObbState;->$VALUES:[Lcom/google/android/finsky/download/obb/ObbState;

    invoke-virtual {v0}, [Lcom/google/android/finsky/download/obb/ObbState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/download/obb/ObbState;

    return-object v0
.end method
