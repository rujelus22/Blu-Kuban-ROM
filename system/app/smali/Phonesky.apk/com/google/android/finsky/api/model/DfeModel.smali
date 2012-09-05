.class public abstract Lcom/google/android/finsky/api/model/DfeModel;
.super Ljava/lang/Object;
.source "DfeModel.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# instance fields
.field private mErrorListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/volley/Response$ErrorListener;",
            ">;"
        }
    .end annotation
.end field

.field private mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/finsky/api/model/OnDataChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mVolleyError:Lcom/android/volley/VolleyError;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/api/model/DfeModel;->mListeners:Ljava/util/HashSet;

    .line 19
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/api/model/DfeModel;->mErrorListeners:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V
    .registers 3
    .parameter "handler"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeModel;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method

.method public final addErrorListener(Lcom/android/volley/Response$ErrorListener;)V
    .registers 3
    .parameter "errorListener"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeModel;->mErrorListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method protected clearErrors()V
    .registers 2

    .prologue
    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/api/model/DfeModel;->mVolleyError:Lcom/android/volley/VolleyError;

    .line 86
    return-void
.end method

.method public getVolleyError()Lcom/android/volley/VolleyError;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeModel;->mVolleyError:Lcom/android/volley/VolleyError;

    return-object v0
.end method

.method public inErrorState()Z
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeModel;->mVolleyError:Lcom/android/volley/VolleyError;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected notifyDataSetChanged()V
    .registers 5

    .prologue
    .line 98
    iget-object v2, p0, Lcom/google/android/finsky/api/model/DfeModel;->mListeners:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/google/android/finsky/api/model/DfeModel;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/android/finsky/api/model/OnDataChangedListener;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/finsky/api/model/OnDataChangedListener;

    .line 100
    .local v1, listeners:[Lcom/google/android/finsky/api/model/OnDataChangedListener;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    array-length v2, v1

    if-ge v0, v2, :cond_1c

    .line 101
    aget-object v2, v1, v0

    invoke-interface {v2}, Lcom/google/android/finsky/api/model/OnDataChangedListener;->onDataChanged()V

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 103
    :cond_1c
    return-void
.end method

.method protected notifyErrorOccured(Lcom/android/volley/VolleyError;)V
    .registers 6
    .parameter "error"

    .prologue
    .line 106
    iget-object v2, p0, Lcom/google/android/finsky/api/model/DfeModel;->mErrorListeners:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/google/android/finsky/api/model/DfeModel;->mErrorListeners:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/volley/Response$ErrorListener;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/volley/Response$ErrorListener;

    .line 108
    .local v1, listeners:[Lcom/android/volley/Response$ErrorListener;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    array-length v2, v1

    if-ge v0, v2, :cond_1c

    .line 109
    aget-object v2, v1, v0

    invoke-interface {v2, p1}, Lcom/android/volley/Response$ErrorListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 111
    :cond_1c
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 2
    .parameter "error"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/android/finsky/api/model/DfeModel;->mVolleyError:Lcom/android/volley/VolleyError;

    .line 62
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/DfeModel;->notifyErrorOccured(Lcom/android/volley/VolleyError;)V

    .line 63
    return-void
.end method

.method public final removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V
    .registers 3
    .parameter "handler"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeModel;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public final removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V
    .registers 3
    .parameter "errorListener"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeModel;->mErrorListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method public final unregisterAll()V
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeModel;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 94
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeModel;->mErrorListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 95
    return-void
.end method
