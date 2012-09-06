.class public final Lcom/google/android/youtube/app/ui/k;
.super Lcom/google/android/youtube/core/ui/j;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field private final a:Lcom/google/android/youtube/core/a/a;

.field private final b:Lcom/google/android/youtube/app/ui/br;

.field private final h:Lcom/google/android/youtube/app/ui/m;

.field private i:Lcom/google/android/youtube/app/ui/n;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/d;Lcom/google/android/youtube/app/ui/m;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct/range {p0 .. p5}, Lcom/google/android/youtube/core/ui/j;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/d;)V

    .line 73
    const-string v0, "onChannelClickListener can\'t be null"

    invoke-static {p6, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ui/m;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/k;->h:Lcom/google/android/youtube/app/ui/m;

    .line 76
    instance-of v0, p3, Lcom/google/android/youtube/app/ui/br;

    if-eqz v0, :cond_24

    move-object v0, p3

    .line 77
    check-cast v0, Lcom/google/android/youtube/app/ui/br;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/ui/br;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 78
    check-cast p3, Lcom/google/android/youtube/app/ui/br;

    iput-object p3, p0, Lcom/google/android/youtube/app/ui/k;->b:Lcom/google/android/youtube/app/ui/br;

    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/k;->b:Lcom/google/android/youtube/app/ui/br;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/br;->b()Lcom/google/android/youtube/core/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/k;->a:Lcom/google/android/youtube/core/a/a;

    .line 85
    :goto_23
    return-void

    .line 81
    :cond_24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/k;->b:Lcom/google/android/youtube/app/ui/br;

    .line 82
    iput-object p3, p0, Lcom/google/android/youtube/app/ui/k;->a:Lcom/google/android/youtube/core/a/a;

    .line 83
    invoke-interface {p2, p0}, Lcom/google/android/youtube/core/ui/g;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_23
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/d;ZLcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/Analytics;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    new-instance v6, Lcom/google/android/youtube/app/ui/l;

    const-string v0, "navigation cannot be null"

    invoke-static {p7, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/a;

    const-string v1, "analytics cannot be null"

    invoke-static {p8, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/Analytics;

    invoke-direct {v6, v0, v1}, Lcom/google/android/youtube/app/ui/l;-><init>(Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/Analytics;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/app/ui/k;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/d;Lcom/google/android/youtube/app/ui/m;)V

    .line 62
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 105
    iget-object v0, p1, Lcom/google/android/youtube/core/async/GDataRequest;->d:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v0, :cond_28

    iget-object v0, p1, Lcom/google/android/youtube/core/async/GDataRequest;->d:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/UserAuth;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    instance-of v0, p2, Lcom/google/android/youtube/core/async/GDataResponseException;

    if-eqz v0, :cond_28

    move-object v0, p2

    check-cast v0, Lcom/google/android/youtube/core/async/GDataResponseException;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/GDataResponseException;->containsYouTubeSignupRequiredError()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 108
    new-instance v0, Lcom/google/android/youtube/core/model/Page$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/Page$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Page$Builder;->build()Lcom/google/android/youtube/core/model/Page;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/youtube/app/ui/k;->a(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page;)V

    .line 112
    :goto_27
    return-void

    .line 110
    :cond_28
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/core/ui/j;->a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    goto :goto_27
.end method

.method protected final a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 136
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/core/ui/j;->a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V

    .line 137
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 31
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/ui/k;->a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 117
    :goto_6
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    if-ge p3, v1, :cond_19

    .line 118
    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Channel;

    .line 119
    if-eqz v0, :cond_19

    .line 120
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/k;->h:Lcom/google/android/youtube/app/ui/m;

    invoke-interface {v1, v0}, Lcom/google/android/youtube/app/ui/m;->a(Lcom/google/android/youtube/core/model/Channel;)V

    .line 123
    :cond_19
    return-void

    .line 115
    :cond_1a
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/k;->a:Lcom/google/android/youtube/core/a/a;

    goto :goto_6
.end method

.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 127
    :goto_6
    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Channel;

    .line 128
    if-eqz v0, :cond_18

    .line 129
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/k;->i:Lcom/google/android/youtube/app/ui/n;

    invoke-interface {v0}, Lcom/google/android/youtube/app/ui/n;->a()Z

    move-result v0

    .line 131
    :goto_14
    return v0

    .line 126
    :cond_15
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/k;->a:Lcom/google/android/youtube/core/a/a;

    goto :goto_6

    .line 131
    :cond_18
    const/4 v0, 0x0

    goto :goto_14
.end method
