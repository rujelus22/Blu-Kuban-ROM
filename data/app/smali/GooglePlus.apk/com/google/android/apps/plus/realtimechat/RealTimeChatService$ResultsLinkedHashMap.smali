.class Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ResultsLinkedHashMap;
.super Ljava/util/LinkedHashMap;
.source "RealTimeChatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResultsLinkedHashMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x77b9cf4c0b994d7cL


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 175
    .local p0, this:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ResultsLinkedHashMap;,"Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ResultsLinkedHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 175
    .local p0, this:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ResultsLinkedHashMap;,"Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ResultsLinkedHashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ResultsLinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, this:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ResultsLinkedHashMap;,"Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ResultsLinkedHashMap<TK;TV;>;"
    .local p1, eldest:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ResultsLinkedHashMap;->size()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
