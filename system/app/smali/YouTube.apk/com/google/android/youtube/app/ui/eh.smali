.class public Lcom/google/android/youtube/app/ui/eh;
.super Lcom/google/android/youtube/core/ui/j;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field private final a:Z

.field private final b:Lcom/google/android/youtube/app/ui/az;

.field private final h:Lcom/google/android/youtube/core/a/a;

.field private final i:Lcom/google/android/youtube/app/ui/br;

.field private final j:Lcom/google/android/youtube/app/ui/ej;

.field private k:Lcom/google/android/youtube/app/ui/ek;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/d;ZLcom/google/android/youtube/app/a;ZLcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;)V
    .registers 22
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    new-instance v1, Lcom/google/android/youtube/app/ui/ei;

    const-string v2, "navigation cannot be null"

    move-object/from16 v0, p7

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/app/a;

    const-string v3, "referrer cannot be null"

    move-object/from16 v0, p9

    invoke-static {v0, v3}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/core/b/aj;

    const-string v3, "analytics cannot be null"

    move-object/from16 v0, p10

    invoke-static {v0, v3}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/youtube/core/Analytics;

    const-string v3, "logCategory cannot be null"

    move-object/from16 v0, p11

    invoke-static {v0, v3}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/youtube/core/Analytics$VideoCategory;

    move/from16 v3, p8

    invoke-direct/range {v1 .. v6}, Lcom/google/android/youtube/app/ui/ei;-><init>(Lcom/google/android/youtube/app/a;ZLcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p6

    move-object v9, v1

    invoke-direct/range {v2 .. v9}, Lcom/google/android/youtube/app/ui/eh;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/d;ZLcom/google/android/youtube/app/ui/ej;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/d;ZLcom/google/android/youtube/app/ui/ej;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct/range {p0 .. p5}, Lcom/google/android/youtube/core/ui/j;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/d;)V

    .line 95
    iput-boolean p6, p0, Lcom/google/android/youtube/app/ui/eh;->a:Z

    .line 96
    new-instance v0, Lcom/google/android/youtube/app/ui/az;

    invoke-direct {v0}, Lcom/google/android/youtube/app/ui/az;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/eh;->b:Lcom/google/android/youtube/app/ui/az;

    .line 97
    const-string v0, "onVideoClickListener can\'t be null"

    invoke-static {p7, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ui/ej;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/eh;->j:Lcom/google/android/youtube/app/ui/ej;

    .line 100
    instance-of v0, p3, Lcom/google/android/youtube/app/ui/br;

    if-eqz v0, :cond_2d

    move-object v0, p3

    .line 101
    check-cast v0, Lcom/google/android/youtube/app/ui/br;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/ui/br;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 102
    check-cast p3, Lcom/google/android/youtube/app/ui/br;

    iput-object p3, p0, Lcom/google/android/youtube/app/ui/eh;->i:Lcom/google/android/youtube/app/ui/br;

    .line 103
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/eh;->i:Lcom/google/android/youtube/app/ui/br;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/br;->b()Lcom/google/android/youtube/core/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/eh;->h:Lcom/google/android/youtube/core/a/a;

    .line 109
    :goto_2c
    return-void

    .line 105
    :cond_2d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/eh;->i:Lcom/google/android/youtube/app/ui/br;

    .line 106
    iput-object p3, p0, Lcom/google/android/youtube/app/ui/eh;->h:Lcom/google/android/youtube/core/a/a;

    .line 107
    invoke-interface {p2, p0}, Lcom/google/android/youtube/core/ui/g;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_2c
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 129
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

    .line 132
    new-instance v0, Lcom/google/android/youtube/core/model/Page$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/Page$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Page$Builder;->build()Lcom/google/android/youtube/core/model/Page;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/youtube/app/ui/eh;->a(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page;)V

    .line 136
    :goto_27
    return-void

    .line 134
    :cond_28
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/core/ui/j;->a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    goto :goto_27
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 31
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/ui/eh;->a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 31
    check-cast p1, Lcom/google/android/youtube/core/model/Video;

    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/eh;->a:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/eh;->b:Lcom/google/android/youtube/app/ui/az;

    invoke-static {p1}, Lcom/google/android/youtube/app/ui/az;->a(Lcom/google/android/youtube/core/model/Video;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 141
    :goto_6
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    if-ge p3, v1, :cond_19

    .line 142
    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    .line 143
    if-eqz v0, :cond_19

    .line 144
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/eh;->j:Lcom/google/android/youtube/app/ui/ej;

    invoke-interface {v1, v0, p3}, Lcom/google/android/youtube/app/ui/ej;->a(Lcom/google/android/youtube/core/model/Video;I)V

    .line 147
    :cond_19
    return-void

    .line 139
    :cond_1a
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/eh;->h:Lcom/google/android/youtube/core/a/a;

    goto :goto_6
.end method

.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 150
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 151
    :goto_6
    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    .line 152
    if-eqz v0, :cond_18

    .line 153
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/eh;->k:Lcom/google/android/youtube/app/ui/ek;

    invoke-interface {v0}, Lcom/google/android/youtube/app/ui/ek;->a()Z

    move-result v0

    .line 155
    :goto_14
    return v0

    .line 150
    :cond_15
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/eh;->h:Lcom/google/android/youtube/core/a/a;

    goto :goto_6

    .line 155
    :cond_18
    const/4 v0, 0x0

    goto :goto_14
.end method
