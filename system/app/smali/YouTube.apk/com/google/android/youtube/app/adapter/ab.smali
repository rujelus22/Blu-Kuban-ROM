.class public final Lcom/google/android/youtube/app/adapter/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/adapter/bf;


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/ab;->a:Ljava/util/List;

    .line 25
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/app/adapter/bf;)Lcom/google/android/youtube/app/adapter/ab;
    .registers 3
    .parameter

    .prologue
    .line 28
    const-string v0, "rendererFactory cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ab;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    return-object p0
.end method

.method public final a(Landroid/view/View;Landroid/view/ViewGroup;)Lcom/google/android/youtube/app/adapter/az;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 40
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ab;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/adapter/bf;

    .line 42
    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/app/adapter/bf;->a(Landroid/view/View;Landroid/view/ViewGroup;)Lcom/google/android/youtube/app/adapter/az;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 44
    :cond_1f
    new-instance v0, Lcom/google/android/youtube/app/adapter/ac;

    invoke-direct {v0, p1, v1}, Lcom/google/android/youtube/app/adapter/ac;-><init>(Landroid/view/View;Ljava/util/List;)V

    return-object v0
.end method

.method public final a(Ljava/lang/Iterable;)V
    .registers 4
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ab;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/adapter/bf;

    .line 35
    invoke-interface {v0, p1}, Lcom/google/android/youtube/app/adapter/bf;->a(Ljava/lang/Iterable;)V

    goto :goto_6

    .line 37
    :cond_16
    return-void
.end method
