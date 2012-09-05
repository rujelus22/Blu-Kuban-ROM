.class public final Lcom/google/android/youtube/core/converter/http/f;
.super Lcom/google/android/youtube/core/converter/http/ao;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/youtube/core/converter/k;

.field private final b:Lcom/google/android/youtube/core/converter/c;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/converter/k;)V
    .registers 5
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/http/ao;-><init>()V

    .line 36
    const-string v0, "the parser can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/converter/k;

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/f;->a:Lcom/google/android/youtube/core/converter/k;

    .line 37
    new-instance v0, Lcom/google/android/youtube/core/converter/d;

    invoke-direct {v0}, Lcom/google/android/youtube/core/converter/d;-><init>()V

    const-string v1, "/app:categories"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/j;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/j;-><init>(Lcom/google/android/youtube/core/converter/http/f;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/app:categories/atom:category"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/i;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/i;-><init>(Lcom/google/android/youtube/core/converter/http/f;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/app:categories/atom:category/yt:browsable"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/h;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/h;-><init>(Lcom/google/android/youtube/core/converter/http/f;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/app:categories/atom:category/yt:deprecated"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/g;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/g;-><init>(Lcom/google/android/youtube/core/converter/http/f;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/converter/d;->a()Lcom/google/android/youtube/core/converter/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/f;->b:Lcom/google/android/youtube/core/converter/c;

    .line 75
    return-void
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;Landroid/widget/ArrayAdapter;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 97
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Category;

    .line 98
    iget-object v3, v0, Lcom/google/android/youtube/core/model/Category;->regions:Ljava/lang/String;

    .line 99
    iget-boolean v4, v0, Lcom/google/android/youtube/core/model/Category;->deprecated:Z

    if-nez v4, :cond_a

    if-eqz v3, :cond_a

    if-eqz v1, :cond_26

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 101
    :cond_26
    invoke-virtual {p2, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_a

    .line 104
    :cond_2a
    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/f;->a:Lcom/google/android/youtube/core/converter/k;

    iget-object v1, p0, Lcom/google/android/youtube/core/converter/http/f;->b:Lcom/google/android/youtube/core/converter/c;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/youtube/core/converter/k;->a(Ljava/io/InputStream;Lcom/google/android/youtube/core/converter/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Lcom/google/android/youtube/core/converter/http/k;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/core/converter/http/k;-><init>(Lcom/google/android/youtube/core/converter/http/f;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method
