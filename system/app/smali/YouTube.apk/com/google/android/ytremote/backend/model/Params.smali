.class public final Lcom/google/android/ytremote/backend/model/Params;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# static fields
.field public static final a:Lcom/google/android/ytremote/backend/model/Params;

.field private static final c:Ljava/util/Map;


# instance fields
.field private final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 85
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/ytremote/backend/model/Params;->c:Ljava/util/Map;

    .line 87
    new-instance v0, Lcom/google/android/ytremote/backend/model/Params;

    sget-object v1, Lcom/google/android/ytremote/backend/model/Params;->c:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/google/android/ytremote/backend/model/Params;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/google/android/ytremote/backend/model/Params;->a:Lcom/google/android/ytremote/backend/model/Params;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/ytremote/backend/model/Params;-><init>(Ljava/util/Map;)V

    .line 92
    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .registers 2
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/google/android/ytremote/backend/model/Params;->b:Ljava/util/Map;

    .line 96
    return-void
.end method

.method static synthetic a(Lcom/google/android/ytremote/backend/model/Params;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/ytremote/backend/model/Params;->b:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/ytremote/backend/model/Params;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/ytremote/backend/model/Params;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 131
    new-instance v0, Lcom/google/android/ytremote/backend/model/c;

    invoke-direct {v0, p0}, Lcom/google/android/ytremote/backend/model/c;-><init>(Lcom/google/android/ytremote/backend/model/Params;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 154
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 155
    iget-object v0, p0, Lcom/google/android/ytremote/backend/model/Params;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 158
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 155
    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/ytremote/backend/model/Params;->b:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_f
.end method
