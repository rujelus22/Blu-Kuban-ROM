.class public final Lcom/google/android/youtube/app/honeycomb/phone/s;
.super Lcom/google/android/youtube/app/honeycomb/phone/p;
.source "SourceFile"


# instance fields
.field private final b:Lcom/google/android/youtube/app/ui/br;

.field private final c:Landroid/view/View;

.field private final d:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;Ljava/lang/String;ZLcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/async/ar;[Lcom/google/android/youtube/core/async/GDataRequest;)V
    .registers 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/p;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;)V

    .line 44
    const-string v1, "requester cannot be null"

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v1, "request cannot be null"

    move-object/from16 v0, p6

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 48
    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->c()Z

    move-result v1

    if-eqz v1, :cond_8c

    const v1, 0x7f040073

    move v2, v1

    :goto_1f
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/s;->n()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/s;->c:Landroid/view/View;

    .line 52
    iput-object p2, p0, Lcom/google/android/youtube/app/honeycomb/phone/s;->d:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/google/android/youtube/app/YouTubeApplication;

    .line 56
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/s;->c:Landroid/view/View;

    const v2, 0x7f08002a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/google/android/youtube/core/ui/PagedListView;

    .line 57
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/google/android/youtube/core/ui/PagedListView;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    invoke-virtual {v9}, Lcom/google/android/youtube/app/YouTubeApplication;->j()Lcom/google/android/youtube/core/b/ae;

    move-result-object v2

    invoke-virtual {v9}, Lcom/google/android/youtube/app/YouTubeApplication;->p()Lcom/google/android/youtube/core/b/ag;

    move-result-object v3

    invoke-virtual {v9}, Lcom/google/android/youtube/app/YouTubeApplication;->n()Lcom/google/android/youtube/core/b/ai;

    move-result-object v4

    invoke-virtual {v9}, Lcom/google/android/youtube/app/YouTubeApplication;->U()Lcom/google/android/youtube/core/utils/k;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v9}, Lcom/google/android/youtube/app/YouTubeApplication;->Y()Lcom/google/android/youtube/core/j;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/youtube/app/adapter/bb;->a(Landroid/content/Context;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/core/utils/k;Lcom/google/android/youtube/app/prefetch/d;Lcom/google/android/youtube/core/j;)Lcom/google/android/youtube/app/adapter/ba;

    move-result-object v1

    .line 69
    new-instance v2, Lcom/google/android/youtube/app/honeycomb/ui/a;

    invoke-direct {v2, p1, v1}, Lcom/google/android/youtube/app/honeycomb/ui/a;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/a/a;)V

    iput-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/s;->b:Lcom/google/android/youtube/app/ui/br;

    .line 70
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/s;->a()V

    .line 72
    new-instance v1, Lcom/google/android/youtube/app/ui/eh;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/s;->b:Lcom/google/android/youtube/app/ui/br;

    invoke-virtual {v9}, Lcom/google/android/youtube/app/YouTubeApplication;->N()Lcom/google/android/youtube/core/d;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->t()Lcom/google/android/youtube/app/a;

    move-result-object v8

    invoke-virtual {v9}, Lcom/google/android/youtube/app/YouTubeApplication;->F()Lcom/google/android/youtube/core/Analytics;

    move-result-object v11

    sget-object v12, Lcom/google/android/youtube/core/Analytics$VideoCategory;->HomeFeed:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    move-object v2, p1

    move-object v3, v10

    move-object/from16 v5, p5

    move/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v1 .. v12}, Lcom/google/android/youtube/app/ui/eh;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/d;ZLcom/google/android/youtube/app/a;ZLcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;)V

    .line 84
    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/ui/eh;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 85
    return-void

    .line 48
    :cond_8c
    const v1, 0x7f040030

    move v2, v1

    goto :goto_1f
.end method

.method private a()V
    .registers 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/s;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 95
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/s;->b:Lcom/google/android/youtube/app/ui/br;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/ui/br;->a(I)V

    .line 96
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/p;->a(Landroid/content/res/Configuration;)V

    .line 90
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/s;->a()V

    .line 91
    return-void
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/s;->d:Ljava/lang/String;

    return-object v0
.end method
