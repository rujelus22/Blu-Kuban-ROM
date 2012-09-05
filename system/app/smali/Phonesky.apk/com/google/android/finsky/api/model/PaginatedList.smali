.class public abstract Lcom/google/android/finsky/api/model/PaginatedList;
.super Lcom/google/android/finsky/api/model/DfeModel;
.source "PaginatedList.java"

# interfaces
.implements Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "D:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/finsky/api/model/DfeModel;",
        "Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final mAutoLoadNextPage:Z

.field private mCurrentOffset:I

.field private mCurrentRequest:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end field

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TD;>;"
        }
    .end annotation
.end field

.field private mLastPositionRequested:I

.field protected mLastResponse:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mMoreAvailable:Z

.field protected mUrlOffsetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowDistance:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "url"

    .prologue
    .line 59
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;TD;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/api/model/PaginatedList;-><init>(Ljava/lang/String;Z)V

    .line 60
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z)V
    .registers 6
    .parameter "url"
    .parameter "autoLoadNextPage"

    .prologue
    .line 62
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;TD;>;"
    invoke-direct {p0}, Lcom/google/android/finsky/api/model/DfeModel;-><init>()V

    .line 38
    const/16 v0, 0xc

    iput v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mWindowDistance:I

    .line 44
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    .line 52
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mUrlOffsetList:Ljava/util/List;

    .line 63
    iget-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mUrlOffsetList:Ljava/util/List;

    new-instance v1, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mMoreAvailable:Z

    .line 65
    iput-boolean p2, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mAutoLoadNextPage:Z

    .line 66
    return-void
.end method

.method protected constructor <init>(Ljava/util/List;IZ)V
    .registers 7
    .parameter
    .parameter "currentCount"
    .parameter "autoLoadNextPage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;TD;>;"
    .local p1, urlMap:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;>;"
    const/4 v2, 0x0

    .line 70
    invoke-direct {p0, v2, p3}, Lcom/google/android/finsky/api/model/PaginatedList;-><init>(Ljava/lang/String;Z)V

    .line 72
    iput-object p1, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mUrlOffsetList:Ljava/util/List;

    .line 75
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-ge v0, p2, :cond_11

    .line 76
    iget-object v1, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 78
    :cond_11
    return-void
.end method

.method private requestMoreItemsIfNoRequestExists(Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;)V
    .registers 4
    .parameter "urlOffsetPair"

    .prologue
    .line 319
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;TD;>;"
    iget-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mCurrentRequest:Lcom/android/volley/Request;

    if-eqz v0, :cond_17

    .line 320
    iget-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mCurrentRequest:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 322
    iget-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mCurrentRequest:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->cancel()V

    .line 327
    :cond_17
    iget v0, p1, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;->offset:I

    iput v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mCurrentOffset:I

    .line 328
    iget-object v0, p1, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/api/model/PaginatedList;->makeRequest(Ljava/lang/String;)Lcom/android/volley/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mCurrentRequest:Lcom/android/volley/Request;

    .line 329
    :cond_23
    return-void
.end method


# virtual methods
.method public clearTransientState()V
    .registers 2

    .prologue
    .line 87
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;TD;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mCurrentRequest:Lcom/android/volley/Request;

    .line 88
    return-void
.end method

.method public flushUnusedPages()V
    .registers 4

    .prologue
    .line 211
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;TD;>;"
    iget v1, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mLastPositionRequested:I

    if-gez v1, :cond_5

    .line 222
    :cond_4
    return-void

    .line 215
    :cond_5
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    iget-object v1, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 216
    iget v1, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mLastPositionRequested:I

    iget v2, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mWindowDistance:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_21

    iget v1, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mLastPositionRequested:I

    iget v2, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mWindowDistance:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_21

    .line 215
    :goto_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 220
    :cond_21
    iget-object v1, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 94
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;TD;>;"
    iget-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 9
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TD;"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;TD;>;"
    iput p1, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mLastPositionRequested:I

    .line 153
    const/4 v2, 0x0

    .line 154
    .local v2, result:Ljava/lang/Object;,"TD;"
    if-gez p1, :cond_1e

    .line 155
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t return an item with a negative index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 158
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->getCount()I

    move-result v4

    if-ge p1, v4, :cond_6b

    .line 159
    iget-object v4, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 160
    iget-boolean v4, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mAutoLoadNextPage:Z

    if-eqz v4, :cond_4d

    iget-boolean v4, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mMoreAvailable:Z

    if-eqz v4, :cond_4d

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    if-lt p1, v4, :cond_4d

    .line 162
    iget-object v4, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mUrlOffsetList:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mUrlOffsetList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;

    .line 163
    .local v3, wrapper:Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;
    invoke-direct {p0, v3}, Lcom/google/android/finsky/api/model/PaginatedList;->requestMoreItemsIfNoRequestExists(Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;)V

    .line 165
    .end local v3           #wrapper:Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;
    :cond_4d
    if-nez v2, :cond_6b

    .line 166
    const/4 v3, 0x0

    .line 167
    .restart local v3       #wrapper:Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;
    iget-object v4, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mUrlOffsetList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_56
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;

    .line 168
    .local v0, currentWrapper:Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;
    iget v4, v0, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;->offset:I

    if-gt v4, p1, :cond_68

    .line 169
    move-object v3, v0

    goto :goto_56

    .line 174
    .end local v0           #currentWrapper:Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;
    :cond_68
    invoke-direct {p0, v3}, Lcom/google/android/finsky/api/model/PaginatedList;->requestMoreItemsIfNoRequestExists(Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;)V

    .line 177
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #result:Ljava/lang/Object;,"TD;"
    .end local v3           #wrapper:Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;
    :cond_6b
    return-object v2
.end method

.method protected abstract getItemsFromResponse(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List",
            "<TD;>;"
        }
    .end annotation
.end method

.method protected abstract getNextPageUrl(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public isMoreAvailable()Z
    .registers 2

    .prologue
    .line 238
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;TD;>;"
    iget-boolean v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mMoreAvailable:Z

    return v0
.end method

.method public isReady()Z
    .registers 2

    .prologue
    .line 117
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;TD;>;"
    iget-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mLastResponse:Ljava/lang/Object;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected abstract makeRequest(Ljava/lang/String;)Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 2
    .parameter "error"

    .prologue
    .line 122
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;TD;>;"
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->clearTransientState()V

    .line 123
    invoke-super {p0, p1}, Lcom/google/android/finsky/api/model/DfeModel;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    .line 124
    return-void
.end method

.method public onResponse(Ljava/lang/Object;)V
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;TD;>;"
    .local p1, response:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->clearErrors()V

    .line 258
    iput-object p1, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mLastResponse:Ljava/lang/Object;

    .line 260
    iget-object v5, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 262
    .local v4, oldSize:I
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/PaginatedList;->getItemsFromResponse(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 263
    .local v2, items:Ljava/util/List;,"Ljava/util/List<TD;>;"
    iget v5, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mCurrentOffset:I

    iget-object v6, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v5, v6, :cond_6e

    .line 264
    iget-object v5, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 276
    :cond_1e
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/PaginatedList;->getNextPageUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 278
    .local v3, nextPageUrl:Ljava/lang/String;
    const/4 v1, 0x0

    .line 282
    .local v1, isNextRequestAtEndOfListAvail:Z
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3d

    iget v5, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mCurrentOffset:I

    if-ne v5, v4, :cond_3d

    .line 283
    iget-object v5, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mUrlOffsetList:Ljava/util/List;

    new-instance v6, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;

    iget-object v7, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7, v3}, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;-><init>(ILjava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_3d
    iget-object v5, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    iget-object v5, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mUrlOffsetList:Ljava/util/List;

    iget-object v7, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mUrlOffsetList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;

    iget v5, v5, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;->offset:I

    if-ne v6, v5, :cond_5e

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5e

    .line 289
    const/4 v1, 0x1

    .line 292
    :cond_5e
    if-eqz v1, :cond_99

    iget-boolean v5, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mAutoLoadNextPage:Z

    if-eqz v5, :cond_99

    const/4 v5, 0x1

    :goto_65
    iput-boolean v5, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mMoreAvailable:Z

    .line 295
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->clearTransientState()V

    .line 296
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->notifyDataSetChanged()V

    .line 297
    return-void

    .line 266
    .end local v1           #isNextRequestAtEndOfListAvail:Z
    .end local v3           #nextPageUrl:Ljava/lang/String;
    :cond_6e
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1e

    .line 267
    iget v5, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mCurrentOffset:I

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_8f

    .line 268
    iget-object v5, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    iget v6, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mCurrentOffset:I

    add-int/2addr v6, v0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 266
    :goto_8c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6f

    .line 270
    :cond_8f
    iget-object v5, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8c

    .line 292
    .end local v0           #i:I
    .restart local v1       #isNextRequestAtEndOfListAvail:Z
    .restart local v3       #nextPageUrl:Ljava/lang/String;
    :cond_99
    const/4 v5, 0x0

    goto :goto_65
.end method

.method public resetItems()V
    .registers 2

    .prologue
    .line 228
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;TD;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mMoreAvailable:Z

    .line 229
    iget-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 230
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->notifyDataSetChanged()V

    .line 231
    return-void
.end method

.method public retryLoadItems()V
    .registers 6

    .prologue
    .line 186
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;TD;>;"
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->inErrorState()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 188
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->clearTransientState()V

    .line 191
    const/4 v2, 0x0

    .line 192
    .local v2, wrapper:Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;
    iget v3, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mCurrentOffset:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_28

    .line 193
    iget-object v3, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mUrlOffsetList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;

    .line 194
    .local v0, currentWrapper:Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;
    iget v3, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mCurrentOffset:I

    iget v4, v0, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;->offset:I

    if-ne v3, v4, :cond_15

    .line 195
    move-object v2, v0

    .line 200
    .end local v0           #currentWrapper:Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_28
    if-nez v2, :cond_3a

    .line 201
    iget-object v3, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mUrlOffsetList:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mUrlOffsetList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #wrapper:Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;
    check-cast v2, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;

    .line 203
    .restart local v2       #wrapper:Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;
    :cond_3a
    invoke-direct {p0, v2}, Lcom/google/android/finsky/api/model/PaginatedList;->requestMoreItemsIfNoRequestExists(Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;)V

    .line 205
    .end local v2           #wrapper:Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;
    :cond_3d
    return-void
.end method

.method public setWindowDistance(I)V
    .registers 2
    .parameter "distance"

    .prologue
    .line 98
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;TD;>;"
    iput p1, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mWindowDistance:I

    .line 99
    return-void
.end method

.method public startLoadItems()V
    .registers 3

    .prologue
    .line 137
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;TD;>;"
    iget-boolean v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mMoreAvailable:Z

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->getCount()I

    move-result v0

    if-nez v0, :cond_19

    .line 138
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->clearErrors()V

    .line 139
    iget-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mUrlOffsetList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/api/model/PaginatedList;->requestMoreItemsIfNoRequestExists(Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;)V

    .line 141
    :cond_19
    return-void
.end method
