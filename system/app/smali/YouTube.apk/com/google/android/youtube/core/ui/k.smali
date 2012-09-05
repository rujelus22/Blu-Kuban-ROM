.class public Lcom/google/android/youtube/core/ui/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/youtube/core/async/g;
.implements Lcom/google/android/youtube/core/ui/i;
.implements Lcom/google/android/youtube/core/utils/l;


# instance fields
.field private final a:Lcom/google/android/youtube/core/ui/h;

.field private final b:Lcom/google/android/youtube/core/a/b;

.field protected final c:Landroid/app/Activity;

.field protected d:I

.field private final e:Lcom/google/android/youtube/core/async/ad;

.field private final f:Lcom/google/android/youtube/core/e;

.field private final g:Lcom/google/android/youtube/core/async/a;

.field private final h:Lcom/google/android/youtube/core/ui/j;

.field private i:Ljava/util/LinkedList;

.field private j:Lcom/google/android/youtube/core/async/GDataRequest;

.field private k:I

.field private l:Landroid/net/Uri;

.field private m:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/e;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-string v0, "activity cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/k;->c:Landroid/app/Activity;

    .line 77
    const-string v0, "view cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/ui/h;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/k;->a:Lcom/google/android/youtube/core/ui/h;

    .line 78
    const-string v0, "requester cannot be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/ad;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/k;->e:Lcom/google/android/youtube/core/async/ad;

    .line 79
    const-string v0, "errorHelper cannot be null"

    invoke-static {p5, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/e;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/k;->f:Lcom/google/android/youtube/core/e;

    .line 80
    const-string v0, "targetAdapter cannot be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-interface {p2}, Lcom/google/android/youtube/core/ui/h;->i()Lcom/google/android/youtube/core/ui/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/k;->h:Lcom/google/android/youtube/core/ui/j;

    .line 83
    new-instance v0, Lcom/google/android/youtube/core/a/b;

    iget-object v1, p0, Lcom/google/android/youtube/core/ui/k;->h:Lcom/google/android/youtube/core/ui/j;

    invoke-interface {v1}, Lcom/google/android/youtube/core/ui/j;->a()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Lcom/google/android/youtube/core/a/b;-><init>(Lcom/google/android/youtube/core/a/a;Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/k;->b:Lcom/google/android/youtube/core/a/b;

    .line 85
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->a:Lcom/google/android/youtube/core/ui/h;

    iget-object v1, p0, Lcom/google/android/youtube/core/ui/k;->b:Lcom/google/android/youtube/core/a/b;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/ui/h;->a(Lcom/google/android/youtube/core/a/a;)V

    .line 86
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->a:Lcom/google/android/youtube/core/ui/h;

    invoke-interface {v0, p0}, Lcom/google/android/youtube/core/ui/h;->a(Lcom/google/android/youtube/core/ui/i;)V

    .line 87
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->a:Lcom/google/android/youtube/core/ui/h;

    invoke-interface {v0, p0}, Lcom/google/android/youtube/core/ui/h;->a(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->h:Lcom/google/android/youtube/core/ui/j;

    invoke-interface {v0, p0}, Lcom/google/android/youtube/core/ui/j;->a(Landroid/view/View$OnClickListener;)V

    .line 90
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/k;->i:Ljava/util/LinkedList;

    .line 91
    invoke-static {p1, p0}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/k;->g:Lcom/google/android/youtube/core/async/a;

    .line 92
    return-void
.end method

.method private a(Lcom/google/android/youtube/core/async/GDataRequest;)V
    .registers 4
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/k;->j:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 282
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->b:Lcom/google/android/youtube/core/a/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/b;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    const/4 v0, 0x1

    :goto_f
    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->h:Lcom/google/android/youtube/core/ui/j;

    invoke-interface {v0}, Lcom/google/android/youtube/core/ui/j;->b()V

    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->b:Lcom/google/android/youtube/core/a/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/b;->b()V

    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->a:Lcom/google/android/youtube/core/ui/h;

    invoke-interface {v0}, Lcom/google/android/youtube/core/ui/h;->b()V

    .line 283
    :goto_20
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->e:Lcom/google/android/youtube/core/async/ad;

    iget-object v1, p0, Lcom/google/android/youtube/core/ui/k;->g:Lcom/google/android/youtube/core/async/a;

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/async/ad;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V

    .line 284
    return-void

    .line 282
    :cond_28
    const/4 v0, 0x0

    goto :goto_f

    :cond_2a
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->a:Lcom/google/android/youtube/core/ui/h;

    invoke-interface {v0}, Lcom/google/android/youtube/core/ui/h;->h()V

    goto :goto_20
.end method

.method private b()V
    .registers 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->l:Landroid/net/Uri;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->j:Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v0, v0, Lcom/google/android/youtube/core/async/GDataRequest;->a:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/youtube/core/ui/k;->l:Landroid/net/Uri;

    if-eq v0, v1, :cond_2c

    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->b:Lcom/google/android/youtube/core/a/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/b;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/youtube/core/ui/k;->a:Lcom/google/android/youtube/core/ui/h;

    invoke-interface {v1}, Lcom/google/android/youtube/core/ui/h;->f()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 207
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->l:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/youtube/core/ui/k;->j:Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/async/GDataRequest;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    .line 208
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/youtube/core/ui/k;->l:Landroid/net/Uri;

    .line 209
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/k;->a(Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 211
    :cond_2c
    return-void
.end method

.method private g()V
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/k;->l:Landroid/net/Uri;

    .line 275
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/youtube/core/ui/k;->d:I

    .line 276
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/k;->a(Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 278
    :cond_19
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 131
    iput-object v1, p0, Lcom/google/android/youtube/core/ui/k;->l:Landroid/net/Uri;

    .line 132
    iput-object v1, p0, Lcom/google/android/youtube/core/ui/k;->j:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 133
    iput v0, p0, Lcom/google/android/youtube/core/ui/k;->d:I

    .line 134
    iput v0, p0, Lcom/google/android/youtube/core/ui/k;->k:I

    .line 135
    iput v0, p0, Lcom/google/android/youtube/core/ui/k;->m:I

    .line 136
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 137
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->b:Lcom/google/android/youtube/core/a/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/b;->a()V

    .line 138
    return-void
.end method

.method public final a(III)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 257
    add-int v0, p1, p2

    .line 258
    if-ne v0, p3, :cond_7

    .line 259
    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/k;->b()V

    .line 261
    :cond_7
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page;)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 147
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->j:Lcom/google/android/youtube/core/async/GDataRequest;

    if-eq p1, v0, :cond_6

    .line 201
    :cond_5
    :goto_5
    return-void

    .line 151
    :cond_6
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->b:Lcom/google/android/youtube/core/a/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/b;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 152
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->a:Lcom/google/android/youtube/core/ui/h;

    invoke-interface {v0}, Lcom/google/android/youtube/core/ui/h;->f()I

    move-result v2

    .line 154
    iget v0, p2, Lcom/google/android/youtube/core/model/Page;->totalResults:I

    iput v0, p0, Lcom/google/android/youtube/core/ui/k;->k:I

    .line 156
    iget-object v3, p2, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    .line 157
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 159
    const/4 v0, 0x0

    iget v5, p0, Lcom/google/android/youtube/core/ui/k;->d:I

    iget v6, p2, Lcom/google/android/youtube/core/model/Page;->startIndex:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 160
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    move v9, v0

    move v0, v1

    move v1, v9

    :goto_38
    if-ge v1, v5, :cond_59

    if-ge v0, v2, :cond_59

    .line 161
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 162
    iget v7, p0, Lcom/google/android/youtube/core/ui/k;->m:I

    if-lez v7, :cond_4d

    .line 163
    iget v6, p0, Lcom/google/android/youtube/core/ui/k;->m:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/google/android/youtube/core/ui/k;->m:I

    .line 160
    :cond_4a
    :goto_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 164
    :cond_4d
    invoke-virtual {p0, v6}, Lcom/google/android/youtube/core/ui/k;->a(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 165
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 169
    :cond_59
    iget v0, p0, Lcom/google/android/youtube/core/ui/k;->d:I

    iget v1, p2, Lcom/google/android/youtube/core/model/Page;->startIndex:I

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/ui/k;->d:I

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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

    iget v1, p0, Lcom/google/android/youtube/core/ui/k;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->d()V

    .line 173
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_dc

    .line 174
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->b:Lcom/google/android/youtube/core/a/b;

    invoke-virtual {v0, v4}, Lcom/google/android/youtube/core/a/b;->a(Ljava/lang/Iterable;)V

    .line 175
    iget-object v0, p2, Lcom/google/android/youtube/core/model/Page;->nextUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/k;->l:Landroid/net/Uri;

    .line 177
    invoke-virtual {p0, p1, v4}, Lcom/google/android/youtube/core/ui/k;->a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V

    .line 182
    :goto_af
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->b:Lcom/google/android/youtube/core/a/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/b;->getCount()I

    move-result v0

    if-nez v0, :cond_df

    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_df

    .line 183
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/k;->c()V

    .line 189
    :goto_c2
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->b:Lcom/google/android/youtube/core/a/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/b;->getCount()I

    move-result v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_d3

    .line 191
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->a:Lcom/google/android/youtube/core/ui/h;

    invoke-interface {v0}, Lcom/google/android/youtube/core/ui/h;->j()V

    .line 194
    :cond_d3
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->l:Landroid/net/Uri;

    if-nez v0, :cond_f4

    .line 197
    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/k;->g()V

    goto/16 :goto_5

    .line 179
    :cond_dc
    iput-object v8, p0, Lcom/google/android/youtube/core/ui/k;->l:Landroid/net/Uri;

    goto :goto_af

    .line 185
    :cond_df
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->b:Lcom/google/android/youtube/core/a/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/b;->c()V

    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->h:Lcom/google/android/youtube/core/ui/j;

    invoke-interface {v0, v8}, Lcom/google/android/youtube/core/ui/j;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->h:Lcom/google/android/youtube/core/ui/j;

    invoke-interface {v0}, Lcom/google/android/youtube/core/ui/j;->c()V

    .line 186
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->a:Lcom/google/android/youtube/core/ui/h;

    invoke-interface {v0}, Lcom/google/android/youtube/core/ui/h;->b()V

    goto :goto_c2

    .line 198
    :cond_f4
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->b:Lcom/google/android/youtube/core/a/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/b;->getCount()I

    move-result v0

    const/16 v1, 0xf

    if-ge v0, v1, :cond_5

    .line 199
    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/k;->b()V

    goto/16 :goto_5
.end method

.method public a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error for request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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

    .line 244
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->b:Lcom/google/android/youtube/core/a/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/b;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v1

    .line 245
    instance-of v0, p2, Lorg/apache/http/client/HttpResponseException;

    if-eqz v0, :cond_47

    move-object v0, p2

    .line 246
    check-cast v0, Lorg/apache/http/client/HttpResponseException;

    .line 247
    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v0

    const/16 v2, 0x193

    if-ne v0, v2, :cond_47

    .line 248
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->c:Landroid/app/Activity;

    const v2, 0x7f0a0011

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/youtube/core/ui/k;->a(Ljava/lang/String;ZZ)V

    .line 253
    :goto_46
    return-void

    .line 252
    :cond_47
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->f:Lcom/google/android/youtube/core/e;

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/e;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/youtube/core/ui/k;->a(Ljava/lang/String;ZZ)V

    goto :goto_46
.end method

.method protected a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 232
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 40
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/ui/k;->a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 40
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    check-cast p2, Lcom/google/android/youtube/core/model/Page;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/ui/k;->a(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page;)V

    return-void
.end method

.method protected a(Ljava/lang/String;ZZ)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 295
    if-nez p3, :cond_15

    const/4 v0, 0x1

    .line 296
    :goto_3
    if-eqz v0, :cond_17

    .line 297
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->h:Lcom/google/android/youtube/core/ui/j;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/ui/j;->a(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->b:Lcom/google/android/youtube/core/a/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/b;->b()V

    .line 299
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->a:Lcom/google/android/youtube/core/ui/h;

    invoke-interface {v0}, Lcom/google/android/youtube/core/ui/h;->b()V

    .line 307
    :goto_14
    return-void

    .line 295
    :cond_15
    const/4 v0, 0x0

    goto :goto_3

    .line 301
    :cond_17
    if-eqz p2, :cond_1f

    .line 302
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->a:Lcom/google/android/youtube/core/ui/h;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/ui/h;->c(Ljava/lang/String;)V

    goto :goto_14

    .line 304
    :cond_1f
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->a:Lcom/google/android/youtube/core/ui/h;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/ui/h;->b(Ljava/lang/String;)V

    goto :goto_14
.end method

.method public final varargs a([Lcom/google/android/youtube/core/async/GDataRequest;)V
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 104
    const-string v0, "requests cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    array-length v0, p1

    if-lez v0, :cond_3c

    const/4 v0, 0x1

    :goto_a
    const-string v2, "requests cannot be empty"

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/utils/k;->a(ZLjava/lang/Object;)V

    .line 106
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/k;->a()V

    .line 107
    :goto_12
    array-length v0, p1

    if-ge v1, v0, :cond_3e

    .line 108
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->i:Ljava/util/LinkedList;

    aget-object v2, p1, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cannot be null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_3c
    move v0, v1

    .line 105
    goto :goto_a

    .line 111
    :cond_3e
    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/k;->g()V

    .line 112
    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method protected c()V
    .registers 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->a:Lcom/google/android/youtube/core/ui/h;

    invoke-interface {v0}, Lcom/google/android/youtube/core/ui/h;->g()V

    .line 239
    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .registers 4
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->b:Lcom/google/android/youtube/core/a/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/youtube/core/a/b;->b(ILjava/lang/Object;)V

    .line 142
    iget v0, p0, Lcom/google/android/youtube/core/ui/k;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/core/ui/k;->m:I

    .line 143
    return-void
.end method

.method public final d()V
    .registers 2

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/k;->a()V

    .line 119
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->a:Lcom/google/android/youtube/core/ui/h;

    invoke-interface {v0}, Lcom/google/android/youtube/core/ui/h;->h()V

    .line 120
    return-void
.end method

.method public final e()V
    .registers 2

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/k;->a()V

    .line 127
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->a:Lcom/google/android/youtube/core/ui/h;

    invoke-interface {v0}, Lcom/google/android/youtube/core/ui/h;->g()V

    .line 128
    return-void
.end method

.method public final f()Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->j:Lcom/google/android/youtube/core/async/GDataRequest;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->j:Lcom/google/android/youtube/core/async/GDataRequest;

    if-eqz v0, :cond_9

    .line 265
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->j:Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/k;->a(Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 267
    :cond_9
    return-void
.end method
