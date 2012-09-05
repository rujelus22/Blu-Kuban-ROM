.class public final Lcom/google/android/youtube/app/honeycomb/phone/e;
.super Lcom/google/android/youtube/app/honeycomb/phone/ap;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/google/android/youtube/core/async/g;
.implements Lcom/google/android/youtube/core/ui/m;


# instance fields
.field private c:Landroid/widget/ListView;

.field private d:Lcom/google/android/youtube/app/honeycomb/ui/a;

.field private e:Lcom/google/android/youtube/app/ui/am;

.field private f:Lcom/google/android/youtube/core/client/ad;

.field private g:Lcom/google/android/youtube/core/client/af;

.field private h:Lcom/google/android/youtube/core/e;

.field private i:Lcom/google/android/youtube/core/async/ad;

.field private j:Lcom/google/android/youtube/core/async/ad;

.field private k:Ljava/lang/String;

.field private l:Lcom/google/android/youtube/app/ui/a;

.field private m:Ljava/lang/String;

.field private n:Lcom/google/android/youtube/core/async/g;

.field private o:Lcom/google/android/youtube/core/async/g;

.field private p:Lcom/google/android/youtube/core/async/g;

.field private q:Ljava/util/Map;

.field private r:Ljava/util/Map;

.field private s:Z


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/ap;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;)V

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/e;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->q:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/phone/e;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->r:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/honeycomb/phone/e;)Lcom/google/android/youtube/core/async/g;
    .registers 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->p:Lcom/google/android/youtube/core/async/g;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/honeycomb/phone/e;)Lcom/google/android/youtube/core/client/af;
    .registers 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->g:Lcom/google/android/youtube/core/client/af;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/app/honeycomb/phone/e;)Lcom/google/android/youtube/app/honeycomb/ui/a;
    .registers 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->d:Lcom/google/android/youtube/app/honeycomb/ui/a;

    return-object v0
.end method

.method private i()V
    .registers 5

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->l:Lcom/google/android/youtube/app/ui/a;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->m:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/ui/a;->a(Ljava/lang/String;Z)V

    .line 120
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->f:Lcom/google/android/youtube/core/client/ad;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->k:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    invoke-static {v3, p0}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/youtube/core/client/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/async/g;)V

    .line 122
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 46
    const-string v0, "Categories request failed"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->l:Lcom/google/android/youtube/app/ui/a;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->h:Lcom/google/android/youtube/core/e;

    invoke-virtual {v1, p2}, Lcom/google/android/youtube/core/e;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/ui/a;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 46
    check-cast p2, Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->d:Lcom/google/android/youtube/app/honeycomb/ui/a;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/honeycomb/ui/a;->setNotifyOnChange(Z)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->l:Lcom/google/android/youtube/app/ui/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/a;->a()V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->d:Lcom/google/android/youtube/app/honeycomb/ui/a;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->k:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/model/Category;->createAllCategory(Landroid/content/res/Resources;Ljava/lang/String;)Lcom/google/android/youtube/core/model/Category;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/app/honeycomb/ui/a;->a(Lcom/google/android/youtube/core/model/Category;)V

    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->s:Z

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->d:Lcom/google/android/youtube/app/honeycomb/ui/a;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->k:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/model/Category;->createLiveCategory(Landroid/content/res/Resources;Ljava/lang/String;)Lcom/google/android/youtube/core/model/Category;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/app/honeycomb/ui/a;->a(Lcom/google/android/youtube/core/model/Category;)V

    :cond_33
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->d:Lcom/google/android/youtube/app/honeycomb/ui/a;

    invoke-static {p2, v0, v2}, Lcom/google/android/youtube/core/converter/http/f;->a(Ljava/util/List;Ljava/lang/String;Landroid/widget/ArrayAdapter;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->d:Lcom/google/android/youtube/app/honeycomb/ui/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/ui/a;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->f:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v0}, Lcom/google/android/youtube/core/client/ad;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v0

    move v7, v1

    :goto_46
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->d:Lcom/google/android/youtube/app/honeycomb/ui/a;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/honeycomb/ui/a;->getCount()I

    move-result v1

    if-ge v7, v1, :cond_8b

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->d:Lcom/google/android/youtube/app/honeycomb/ui/a;

    invoke-virtual {v1, v7}, Lcom/google/android/youtube/app/honeycomb/ui/a;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/google/android/youtube/core/model/Category;

    invoke-virtual {v6}, Lcom/google/android/youtube/core/model/Category;->isLive()Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->b()Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->q:Ljava/util/Map;

    invoke-interface {v2, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->j:Lcom/google/android/youtube/core/async/ad;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->o:Lcom/google/android/youtube/core/async/g;

    invoke-interface {v2, v1, v3}, Lcom/google/android/youtube/core/async/ad;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V

    :goto_6d
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_46

    :cond_71
    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->MOST_VIEWED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    iget-object v2, v6, Lcom/google/android/youtube/core/model/Category;->term:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->k:Ljava/lang/String;

    sget-object v4, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->THIS_WEEK:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;I)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->q:Ljava/util/Map;

    invoke-interface {v2, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->i:Lcom/google/android/youtube/core/async/ad;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->n:Lcom/google/android/youtube/core/async/g;

    invoke-interface {v2, v1, v3}, Lcom/google/android/youtube/core/async/ad;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V

    goto :goto_6d

    :cond_8b
    return-void
.end method

.method protected final b()V
    .registers 6

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    .line 81
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->i()Lcom/google/android/youtube/core/client/ad;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->f:Lcom/google/android/youtube/core/client/ad;

    .line 82
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->o()Lcom/google/android/youtube/core/client/af;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->g:Lcom/google/android/youtube/core/client/af;

    .line 83
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->B()Lcom/google/android/youtube/core/e;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->h:Lcom/google/android/youtube/core/e;

    .line 84
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->f:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v1}, Lcom/google/android/youtube/core/client/ad;->g()Lcom/google/android/youtube/core/async/ad;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->i:Lcom/google/android/youtube/core/async/ad;

    .line 85
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->f:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v1}, Lcom/google/android/youtube/core/client/ad;->r()Lcom/google/android/youtube/core/async/ad;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->j:Lcom/google/android/youtube/core/async/ad;

    .line 87
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->b:Landroid/view/View;

    const v2, 0x7f090020

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->c:Landroid/widget/ListView;

    .line 89
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 90
    const v2, 0x7f040049

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->c:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 92
    new-instance v2, Lcom/google/android/youtube/app/honeycomb/ui/a;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    invoke-direct {v2, v3}, Lcom/google/android/youtube/app/honeycomb/ui/a;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->d:Lcom/google/android/youtube/app/honeycomb/ui/a;

    .line 93
    new-instance v2, Lcom/google/android/youtube/app/ui/am;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->d:Lcom/google/android/youtube/app/honeycomb/ui/a;

    invoke-direct {v2, v3, v1}, Lcom/google/android/youtube/app/ui/am;-><init>(Landroid/widget/BaseAdapter;Landroid/view/View;)V

    iput-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->e:Lcom/google/android/youtube/app/ui/am;

    .line 94
    new-instance v2, Lcom/google/android/youtube/app/ui/a;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->e:Lcom/google/android/youtube/app/ui/am;

    invoke-direct {v2, v1, v3, p0}, Lcom/google/android/youtube/app/ui/a;-><init>(Landroid/view/View;Landroid/widget/BaseAdapter;Lcom/google/android/youtube/core/ui/m;)V

    iput-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->l:Lcom/google/android/youtube/app/ui/a;

    .line 95
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->c:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->e:Lcom/google/android/youtube/app/ui/am;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 96
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->c:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 98
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    const v2, 0x7f0a00d7

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->m:Ljava/lang/String;

    .line 99
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->k:Ljava/lang/String;

    .line 101
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->r:Ljava/util/Map;

    .line 102
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->q:Ljava/util/Map;

    .line 104
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    new-instance v2, Lcom/google/android/youtube/app/honeycomb/phone/i;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/app/honeycomb/phone/i;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/e;)V

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->p:Lcom/google/android/youtube/core/async/g;

    .line 105
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    new-instance v2, Lcom/google/android/youtube/app/honeycomb/phone/h;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/app/honeycomb/phone/h;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/e;)V

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->n:Lcom/google/android/youtube/core/async/g;

    .line 107
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->d()Lcom/google/android/youtube/app/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ae;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->s:Z

    .line 108
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->s:Z

    if-eqz v0, :cond_ca

    .line 109
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    new-instance v1, Lcom/google/android/youtube/app/honeycomb/phone/g;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/honeycomb/phone/g;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/e;)V

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->o:Lcom/google/android/youtube/core/async/g;

    .line 111
    :cond_ca
    return-void
.end method

.method protected final c()V
    .registers 1

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/e;->i()V

    .line 116
    return-void
.end method

.method protected final d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 253
    const-string v0, "yt_browse"

    return-object v0
.end method

.method public final f_()V
    .registers 1

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/e;->i()V

    .line 178
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->e:Lcom/google/android/youtube/app/ui/am;

    invoke-virtual {v0, p3}, Lcom/google/android/youtube/app/ui/am;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Category;

    .line 126
    if-nez v0, :cond_b

    .line 135
    :goto_a
    return-void

    .line 130
    :cond_b
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Category;->isLive()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 131
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->l()Lcom/google/android/youtube/app/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/app/o;->k()V

    goto :goto_a

    .line 133
    :cond_1b
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    iget-object v3, v0, Lcom/google/android/youtube/core/model/Category;->term:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Category;->label:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_a
.end method
