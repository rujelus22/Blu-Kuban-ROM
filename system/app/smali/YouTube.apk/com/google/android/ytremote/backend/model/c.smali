.class final Lcom/google/android/ytremote/backend/model/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/android/ytremote/backend/model/Params;


# direct methods
.method constructor <init>(Lcom/google/android/ytremote/backend/model/Params;)V
    .registers 3
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/ytremote/backend/model/c;->b:Lcom/google/android/ytremote/backend/model/Params;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    invoke-static {p1}, Lcom/google/android/ytremote/backend/model/Params;->a(Lcom/google/android/ytremote/backend/model/Params;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/ytremote/backend/model/c;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/ytremote/backend/model/c;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/ytremote/backend/model/c;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v2, Lcom/google/android/ytremote/backend/model/d;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v1, v0}, Lcom/google/android/ytremote/backend/model/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public final remove()V
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/ytremote/backend/model/c;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 148
    return-void
.end method
