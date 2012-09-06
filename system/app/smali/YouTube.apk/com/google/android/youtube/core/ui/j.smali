.class public Lcom/google/android/youtube/core/ui/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/youtube/core/async/l;
.implements Lcom/google/android/youtube/core/ui/h;
.implements Lcom/google/android/youtube/core/utils/o;


# instance fields
.field private final a:Lcom/google/android/youtube/core/async/ar;

.field private final b:Lcom/google/android/youtube/core/d;

.field protected final c:Landroid/app/Activity;

.field final d:Landroid/os/Handler;

.field protected final e:Lcom/google/android/youtube/core/ui/g;

.field protected final f:Lcom/google/android/youtube/core/a/b;

.field protected g:I

.field private final h:Lcom/google/android/youtube/core/async/c;

.field private final i:Lcom/google/android/youtube/core/ui/i;

.field private j:Ljava/util/LinkedList;

.field private k:Lcom/google/android/youtube/core/async/GDataRequest;

.field private l:I

.field private m:Landroid/net/Uri;

.field private n:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/d;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const-string v0, "activity cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/j;->c:Landroid/app/Activity;

    .line 81
    const-string v0, "view cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/ui/g;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/j;->e:Lcom/google/android/youtube/core/ui/g;

    .line 82
    const-string v0, "requester cannot be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/ar;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/j;->a:Lcom/google/android/youtube/core/async/ar;

    .line 83
    const-string v0, "errorHelper cannot be null"

    invoke-static {p5, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/d;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/j;->b:Lcom/google/android/youtube/core/d;

    .line 84
    const-string v0, "targetAdapter cannot be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-interface {p2}, Lcom/google/android/youtube/core/ui/g;->h()Lcom/google/android/youtube/core/ui/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/j;->i:Lcom/google/android/youtube/core/ui/i;

    .line 87
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->i:Lcom/google/android/youtube/core/ui/i;

    invoke-interface {v0}, Lcom/google/android/youtube/core/ui/i;->a()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p3, v0, v1}, Lcom/google/android/youtube/core/a/b;->a(Lcom/google/android/youtube/core/a/a;Landroid/view/View;Z)Lcom/google/android/youtube/core/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/j;->f:Lcom/google/android/youtube/core/a/b;

    .line 89
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->e:Lcom/google/android/youtube/core/ui/g;

    iget-object v1, p0, Lcom/google/android/youtube/core/ui/j;->f:Lcom/google/android/youtube/core/a/b;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/ui/g;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->e:Lcom/google/android/youtube/core/ui/g;

    invoke-interface {v0, p0}, Lcom/google/android/youtube/core/ui/g;->setOnScrollListener(Lcom/google/android/youtube/core/ui/h;)V

    .line 91
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->e:Lcom/google/android/youtube/core/ui/g;

    invoke-interface {v0, p0}, Lcom/google/android/youtube/core/ui/g;->setOnRetryClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->i:Lcom/google/android/youtube/core/ui/i;

    invoke-interface {v0, p0}, Lcom/google/android/youtube/core/ui/i;->a(Landroid/view/View$OnClickListener;)V

    .line 94
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/j;->j:Ljava/util/LinkedList;

    .line 95
    invoke-static {p1, p0}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/j;->h:Lcom/google/android/youtube/core/async/c;

    .line 97
    new-instance v0, Lcom/google/android/youtube/core/ui/k;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/core/ui/k;-><init>(Lcom/google/android/youtube/core/ui/j;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/j;->d:Landroid/os/Handler;

    .line 105
    return-void
.end method

.method private a(Lcom/google/android/youtube/core/async/GDataRequest;)V
    .registers 4
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/j;->k:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 308
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->f:Lcom/google/android/youtube/core/a/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/b;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    const/4 v0, 0x1

    :goto_f
    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->i:Lcom/google/android/youtube/core/ui/i;

    invoke-interface {v0}, Lcom/google/android/youtube/core/ui/i;->b()V

    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->f:Lcom/google/android/youtube/core/a/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/b;->b()V

    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->e:Lcom/google/android/youtube/core/ui/g;

    invoke-interface {v0}, Lcom/google/android/youtube/core/ui/g;->a()V

    .line 309
    :goto_20
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->a:Lcom/google/android/youtube/core/async/ar;

    iget-object v1, p0, Lcom/google/android/youtube/core/ui/j;->h:Lcom/google/android/youtube/core/async/c;

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/async/ar;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V

    .line 310
    return-void

    .line 308
    :cond_28
    const/4 v0, 0x0

    goto :goto_f

    :cond_2a
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->e:Lcom/google/android/youtube/core/ui/g;

    invoke-interface {v0}, Lcom/google/android/youtube/core/ui/g;->f()V

    goto :goto_20
.end method

.method private i()V
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 298
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/j;->b()V

    .line 304
    :goto_b
    return-void

    .line 300
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/j;->m:Landroid/net/Uri;

    .line 301
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/youtube/core/ui/j;->g:I

    .line 302
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/j;->a(Lcom/google/android/youtube/core/async/GDataRequest;)V

    goto :goto_b
.end method


# virtual methods
.method protected a()V
    .registers 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->e:Lcom/google/android/youtube/core/ui/g;

    invoke-interface {v0}, Lcom/google/android/youtube/core/ui/g;->e()V

    .line 258
    return-void
.end method

.method public a(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page;)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 160
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->k:Lcom/google/android/youtube/core/async/GDataRequest;

    if-eq p1, v0, :cond_6

    .line 214
    :cond_5
    :goto_5
    return-void

    .line 164
    :cond_6
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->f:Lcom/google/android/youtube/core/a/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/b;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 165
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->e:Lcom/google/android/youtube/core/ui/g;

    invoke-interface {v0}, Lcom/google/android/youtube/core/ui/g;->c()I

    move-result v2

    .line 167
    iget v0, p2, Lcom/google/android/youtube/core/model/Page;->totalResults:I

    iput v0, p0, Lcom/google/android/youtube/core/ui/j;->l:I

    .line 169
    iget-object v3, p2, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    .line 170
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 172
    const/4 v0, 0x0

    iget v5, p0, Lcom/google/android/youtube/core/ui/j;->g:I

    iget v6, p2, Lcom/google/android/youtube/core/model/Page;->startIndex:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 173
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    move v9, v0

    move v0, v1

    move v1, v9

    :goto_38
    if-ge v1, v5, :cond_59

    if-ge v0, v2, :cond_59

    .line 174
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 175
    iget v7, p0, Lcom/google/android/youtube/core/ui/j;->n:I

    if-lez v7, :cond_4d

    .line 176
    iget v6, p0, Lcom/google/android/youtube/core/ui/j;->n:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/google/android/youtube/core/ui/j;->n:I

    .line 173
    :cond_4a
    :goto_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 177
    :cond_4d
    invoke-virtual {p0, v6}, Lcom/google/android/youtube/core/ui/j;->a(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 178
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 182
    :cond_59
    iget v0, p0, Lcom/google/android/youtube/core/ui/j;->g:I

    iget v1, p2, Lcom/google/android/youtube/core/model/Page;->startIndex:I

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/ui/j;->g:I

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " entries; after filtering "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; realLastIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/ui/j;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->d()V

    .line 186
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d8

    .line 187
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->f:Lcom/google/android/youtube/core/a/b;

    invoke-virtual {v0, v4}, Lcom/google/android/youtube/core/a/b;->a(Ljava/lang/Iterable;)V

    .line 188
    iget-object v0, p2, Lcom/google/android/youtube/core/model/Page;->nextUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/j;->m:Landroid/net/Uri;

    .line 190
    invoke-virtual {p0, p1, v4}, Lcom/google/android/youtube/core/ui/j;->a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V

    .line 195
    :goto_ab
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->f:Lcom/google/android/youtube/core/a/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/b;->getCount()I

    move-result v0

    if-nez v0, :cond_db

    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_db

    .line 196
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/j;->a()V

    .line 202
    :goto_be
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->f:Lcom/google/android/youtube/core/a/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/b;->getCount()I

    move-result v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_cf

    .line 204
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->e:Lcom/google/android/youtube/core/ui/g;

    invoke-interface {v0}, Lcom/google/android/youtube/core/ui/g;->j()V

    .line 207
    :cond_cf
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->m:Landroid/net/Uri;

    if-nez v0, :cond_f0

    .line 210
    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/j;->i()V

    goto/16 :goto_5

    .line 192
    :cond_d8
    iput-object v8, p0, Lcom/google/android/youtube/core/ui/j;->m:Landroid/net/Uri;

    goto :goto_ab

    .line 198
    :cond_db
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->f:Lcom/google/android/youtube/core/a/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/b;->c()V

    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->i:Lcom/google/android/youtube/core/ui/i;

    invoke-interface {v0, v8}, Lcom/google/android/youtube/core/ui/i;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->i:Lcom/google/android/youtube/core/ui/i;

    invoke-interface {v0}, Lcom/google/android/youtube/core/ui/i;->c()V

    .line 199
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->e:Lcom/google/android/youtube/core/ui/g;

    invoke-interface {v0}, Lcom/google/android/youtube/core/ui/g;->a()V

    goto :goto_be

    .line 211
    :cond_f0
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->f:Lcom/google/android/youtube/core/a/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/b;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/youtube/core/ui/j;->e:Lcom/google/android/youtube/core/ui/g;

    invoke-interface {v1}, Lcom/google/android/youtube/core/ui/g;->d()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 212
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/j;->f()V

    goto/16 :goto_5
.end method

.method public a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error for request "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->f:Lcom/google/android/youtube/core/a/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/b;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v1

    .line 268
    instance-of v0, p2, Lorg/apache/http/client/HttpResponseException;

    if-eqz v0, :cond_43

    move-object v0, p2

    .line 269
    check-cast v0, Lorg/apache/http/client/HttpResponseException;

    .line 270
    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v0

    const/16 v2, 0x193

    if-ne v0, v2, :cond_43

    .line 271
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->c:Landroid/app/Activity;

    const v2, 0x7f0b0016

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/youtube/core/ui/j;->a(Ljava/lang/String;ZZ)V

    .line 276
    :goto_42
    return-void

    .line 275
    :cond_43
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->b:Lcom/google/android/youtube/core/d;

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/d;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/youtube/core/ui/j;->a(Ljava/lang/String;ZZ)V

    goto :goto_42
.end method

.method protected a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 251
    return-void
.end method

.method public a(Lcom/google/android/youtube/core/ui/g;III)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 280
    add-int v0, p2, p3

    .line 281
    if-ne v0, p4, :cond_a

    .line 283
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 285
    :cond_a
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 41
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/ui/j;->a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 41
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    check-cast p2, Lcom/google/android/youtube/core/model/Page;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/ui/j;->a(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page;)V

    return-void
.end method

.method protected a(Ljava/lang/String;ZZ)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 321
    if-nez p3, :cond_15

    const/4 v0, 0x1

    .line 322
    :goto_3
    if-eqz v0, :cond_17

    .line 323
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->i:Lcom/google/android/youtube/core/ui/i;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/ui/i;->a(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->f:Lcom/google/android/youtube/core/a/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/b;->b()V

    .line 325
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->e:Lcom/google/android/youtube/core/ui/g;

    invoke-interface {v0}, Lcom/google/android/youtube/core/ui/g;->a()V

    .line 333
    :goto_14
    return-void

    .line 321
    :cond_15
    const/4 v0, 0x0

    goto :goto_3

    .line 327
    :cond_17
    if-eqz p2, :cond_1f

    .line 328
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->e:Lcom/google/android/youtube/core/ui/g;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/ui/g;->c(Ljava/lang/String;)V

    goto :goto_14

    .line 330
    :cond_1f
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->e:Lcom/google/android/youtube/core/ui/g;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/ui/g;->b(Ljava/lang/String;)V

    goto :goto_14
.end method

.method public final varargs a([Lcom/google/android/youtube/core/async/GDataRequest;)V
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 117
    const-string v0, "requests cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    array-length v0, p1

    if-lez v0, :cond_38

    const/4 v0, 0x1

    :goto_a
    const-string v2, "requests cannot be empty"

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/utils/n;->a(ZLjava/lang/Object;)V

    .line 119
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/j;->c()V

    .line 120
    :goto_12
    array-length v0, p1

    if-ge v1, v0, :cond_3a

    .line 121
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->j:Ljava/util/LinkedList;

    aget-object v2, p1, v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "request "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cannot be null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_38
    move v0, v1

    .line 118
    goto :goto_a

    .line 124
    :cond_3a
    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/j;->i()V

    .line 125
    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 239
    const/4 v0, 0x1

    return v0
.end method

.method protected b()V
    .registers 1

    .prologue
    .line 262
    return-void
.end method

.method public c()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 144
    iput-object v1, p0, Lcom/google/android/youtube/core/ui/j;->m:Landroid/net/Uri;

    .line 145
    iput-object v1, p0, Lcom/google/android/youtube/core/ui/j;->k:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 146
    iput v0, p0, Lcom/google/android/youtube/core/ui/j;->g:I

    .line 147
    iput v0, p0, Lcom/google/android/youtube/core/ui/j;->l:I

    .line 148
    iput v0, p0, Lcom/google/android/youtube/core/ui/j;->n:I

    .line 149
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 150
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->f:Lcom/google/android/youtube/core/a/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/b;->a()V

    .line 151
    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .registers 4
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->f:Lcom/google/android/youtube/core/a/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/youtube/core/a/b;->a(ILjava/lang/Object;)V

    .line 155
    iget v0, p0, Lcom/google/android/youtube/core/ui/j;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/core/ui/j;->n:I

    .line 156
    return-void
.end method

.method public final d()V
    .registers 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/j;->c()V

    .line 132
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->e:Lcom/google/android/youtube/core/ui/g;

    invoke-interface {v0}, Lcom/google/android/youtube/core/ui/g;->f()V

    .line 133
    return-void
.end method

.method public final e()V
    .registers 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/j;->c()V

    .line 140
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->e:Lcom/google/android/youtube/core/ui/g;

    invoke-interface {v0}, Lcom/google/android/youtube/core/ui/g;->e()V

    .line 141
    return-void
.end method

.method protected final f()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 219
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->m:Landroid/net/Uri;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->k:Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v0, v0, Lcom/google/android/youtube/core/async/GDataRequest;->c:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/youtube/core/ui/j;->m:Landroid/net/Uri;

    if-eq v0, v1, :cond_2c

    .line 221
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->f:Lcom/google/android/youtube/core/a/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/b;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/youtube/core/ui/j;->e:Lcom/google/android/youtube/core/ui/g;

    invoke-interface {v1}, Lcom/google/android/youtube/core/ui/g;->c()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 222
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->m:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/youtube/core/ui/j;->k:Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/async/GDataRequest;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    .line 223
    iput-object v2, p0, Lcom/google/android/youtube/core/ui/j;->m:Landroid/net/Uri;

    .line 224
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/j;->a(Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 230
    :cond_2c
    :goto_2c
    return-void

    .line 226
    :cond_2d
    iput-object v2, p0, Lcom/google/android/youtube/core/ui/j;->m:Landroid/net/Uri;

    .line 227
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/j;->b()V

    goto :goto_2c
.end method

.method public final g()Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->k:Lcom/google/android/youtube/core/async/GDataRequest;

    return-object v0
.end method

.method protected final h()I
    .registers 2

    .prologue
    .line 317
    iget v0, p0, Lcom/google/android/youtube/core/ui/j;->l:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->k:Lcom/google/android/youtube/core/async/GDataRequest;

    if-eqz v0, :cond_9

    .line 289
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/j;->k:Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/j;->a(Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 291
    :cond_9
    return-void
.end method
