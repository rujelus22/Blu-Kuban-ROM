.class public final Lcom/google/android/youtube/core/converter/http/g;
.super Lcom/google/android/youtube/core/converter/http/bc;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/youtube/core/converter/k;

.field private final b:Lcom/google/android/youtube/core/converter/c;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/converter/k;)V
    .registers 5
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/http/bc;-><init>()V

    .line 37
    const-string v0, "the parser can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/converter/k;

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/g;->a:Lcom/google/android/youtube/core/converter/k;

    .line 38
    new-instance v0, Lcom/google/android/youtube/core/converter/d;

    invoke-direct {v0}, Lcom/google/android/youtube/core/converter/d;-><init>()V

    const-string v1, "/app:categories"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/k;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/k;-><init>(Lcom/google/android/youtube/core/converter/http/g;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/app:categories/atom:category"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/j;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/j;-><init>(Lcom/google/android/youtube/core/converter/http/g;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/app:categories/atom:category/yt:browsable"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/i;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/i;-><init>(Lcom/google/android/youtube/core/converter/http/g;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/app:categories/atom:category/yt:deprecated"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/h;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/h;-><init>(Lcom/google/android/youtube/core/converter/http/g;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/converter/d;->a()Lcom/google/android/youtube/core/converter/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/g;->b:Lcom/google/android/youtube/core/converter/c;

    .line 76
    return-void
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 103
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->q:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 104
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 105
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Category;

    .line 106
    iget-object v4, v0, Lcom/google/android/youtube/core/model/Category;->regions:Ljava/lang/String;

    .line 107
    iget-boolean v5, v0, Lcom/google/android/youtube/core/model/Category;->deprecated:Z

    if-nez v5, :cond_f

    if-eqz v4, :cond_f

    if-eqz v1, :cond_2b

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 109
    :cond_2b
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 112
    :cond_2f
    return-object v2
.end method


# virtual methods
.method protected final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/g;->a:Lcom/google/android/youtube/core/converter/k;

    iget-object v1, p0, Lcom/google/android/youtube/core/converter/http/g;->b:Lcom/google/android/youtube/core/converter/c;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/youtube/core/converter/k;->a(Ljava/io/InputStream;Lcom/google/android/youtube/core/converter/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Lcom/google/android/youtube/core/converter/http/l;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/core/converter/http/l;-><init>(Lcom/google/android/youtube/core/converter/http/g;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method
