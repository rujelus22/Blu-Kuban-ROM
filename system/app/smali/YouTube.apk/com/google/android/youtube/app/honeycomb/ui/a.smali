.class public final Lcom/google/android/youtube/app/honeycomb/ui/a;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private final b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/a;->a:Landroid/view/LayoutInflater;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/a;->b:Ljava/util/Map;

    .line 32
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/Category;)V
    .registers 5
    .parameter

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 37
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Category;->term:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/a;->b:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/ui/a;->notifyDataSetChanged()V

    .line 62
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/ui/a;->notifyDataSetChanged()V

    .line 57
    return-void
.end method

.method public final synthetic add(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 23
    check-cast p1, Lcom/google/android/youtube/core/model/Category;

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/honeycomb/ui/a;->a(Lcom/google/android/youtube/core/model/Category;)V

    return-void
.end method

.method public final addAll(Ljava/util/Collection;)V
    .registers 3
    .parameter

    .prologue
    .line 47
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final synthetic addAll([Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 23
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    if-nez p2, :cond_31

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/a;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f04000b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_c
    check-cast v0, Lcom/google/android/youtube/app/ui/StackButton;

    .line 70
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/honeycomb/ui/a;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Category;

    .line 71
    iget-object v2, v1, Lcom/google/android/youtube/core/model/Category;->label:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/app/ui/StackButton;->a(Ljava/lang/String;)V

    .line 73
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/a;->b:Ljava/util/Map;

    iget-object v3, v1, Lcom/google/android/youtube/core/model/Category;->term:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 74
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/a;->b:Ljava/util/Map;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Category;->term:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/StackButton;->a(Landroid/graphics/Bitmap;)V

    .line 79
    :goto_30
    return-object v0

    :cond_31
    move-object v0, p2

    .line 66
    goto :goto_c

    .line 76
    :cond_33
    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/StackButton;->a()V

    goto :goto_30
.end method
