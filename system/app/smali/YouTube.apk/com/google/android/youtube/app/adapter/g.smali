.class final Lcom/google/android/youtube/app/adapter/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/adapter/az;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/adapter/f;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Lcom/google/android/youtube/core/model/Video;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/adapter/f;Landroid/view/View;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/android/youtube/app/adapter/g;->a:Lcom/google/android/youtube/app/adapter/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const v0, 0x7f08005e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/g;->b:Landroid/view/View;

    .line 132
    return-void
.end method

.method private a(Landroid/widget/ImageView;I)Landroid/widget/ImageView;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 212
    if-eqz p1, :cond_3

    .line 216
    :goto_2
    return-object p1

    .line 215
    :cond_3
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/g;->b:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 216
    if-nez v0, :cond_f

    const/4 p1, 0x0

    goto :goto_2

    :cond_f
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    move-object p1, v0

    goto :goto_2
.end method


# virtual methods
.method public final synthetic a(ILjava/lang/Object;)Landroid/view/View;
    .registers 9
    .parameter
    .parameter

    .prologue
    const v5, 0x7f08005f

    const/4 v1, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 120
    check-cast p2, Lcom/google/android/youtube/core/model/Video;

    iput-object p2, p0, Lcom/google/android/youtube/app/adapter/g;->g:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/g;->a:Lcom/google/android/youtube/app/adapter/f;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/f;->a(Lcom/google/android/youtube/app/adapter/f;)Z

    move-result v0

    if-eqz v0, :cond_db

    iget-boolean v0, p2, Lcom/google/android/youtube/core/model/Video;->is3d:Z

    if-eqz v0, :cond_db

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/g;->c:Landroid/widget/ImageView;

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/g;->b:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_db

    :cond_23
    move v0, v1

    :goto_24
    iget-object v4, p0, Lcom/google/android/youtube/app/adapter/g;->a:Lcom/google/android/youtube/app/adapter/f;

    invoke-static {v4}, Lcom/google/android/youtube/app/adapter/f;->a(Lcom/google/android/youtube/app/adapter/f;)Z

    move-result v4

    if-eqz v4, :cond_3f

    if-eqz v0, :cond_de

    iget-object v4, p0, Lcom/google/android/youtube/app/adapter/g;->c:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v5}, Lcom/google/android/youtube/app/adapter/g;->a(Landroid/widget/ImageView;I)Landroid/widget/ImageView;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/youtube/app/adapter/g;->c:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/google/android/youtube/app/adapter/g;->c:Landroid/widget/ImageView;

    if-eqz v4, :cond_3f

    iget-object v4, p0, Lcom/google/android/youtube/app/adapter/g;->c:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3f
    :goto_3f
    iget-object v4, p0, Lcom/google/android/youtube/app/adapter/g;->a:Lcom/google/android/youtube/app/adapter/f;

    invoke-static {v4}, Lcom/google/android/youtube/app/adapter/f;->b(Lcom/google/android/youtube/app/adapter/f;)Z

    move-result v4

    if-eqz v4, :cond_6b

    iget-object v4, p0, Lcom/google/android/youtube/app/adapter/g;->g:Lcom/google/android/youtube/core/model/Video;

    iget-boolean v4, v4, Lcom/google/android/youtube/core/model/Video;->isHd:Z

    if-eqz v4, :cond_e9

    iget-object v4, p0, Lcom/google/android/youtube/app/adapter/g;->a:Lcom/google/android/youtube/app/adapter/f;

    invoke-static {v4}, Lcom/google/android/youtube/app/adapter/f;->e(Lcom/google/android/youtube/app/adapter/f;)Z

    move-result v4

    if-eqz v4, :cond_e9

    if-nez v0, :cond_e9

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/g;->d:Landroid/widget/ImageView;

    const v4, 0x7f080060

    invoke-direct {p0, v0, v4}, Lcom/google/android/youtube/app/adapter/g;->a(Landroid/widget/ImageView;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/g;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/g;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/g;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6b
    :goto_6b
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/g;->a:Lcom/google/android/youtube/app/adapter/f;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/f;->c(Lcom/google/android/youtube/app/adapter/f;)Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-virtual {p0}, Lcom/google/android/youtube/app/adapter/g;->a()V

    :cond_76
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/g;->a:Lcom/google/android/youtube/app/adapter/f;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/f;->d(Lcom/google/android/youtube/app/adapter/f;)Z

    move-result v0

    if-eqz v0, :cond_d8

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/g;->a:Lcom/google/android/youtube/app/adapter/f;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/f;->g(Lcom/google/android/youtube/app/adapter/f;)Lcom/google/android/youtube/app/prefetch/d;

    move-result-object v0

    if-eqz v0, :cond_10a

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/g;->a:Lcom/google/android/youtube/app/adapter/f;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/f;->g(Lcom/google/android/youtube/app/adapter/f;)Lcom/google/android/youtube/app/prefetch/d;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/youtube/app/adapter/g;->g:Lcom/google/android/youtube/core/model/Video;

    iget-object v4, v4, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/google/android/youtube/app/prefetch/d;->b(Ljava/lang/String;)Lcom/google/android/youtube/core/transfer/Transfer$Status;

    move-result-object v0

    if-eqz v0, :cond_10a

    sget-object v4, Lcom/google/android/youtube/core/transfer/Transfer$Status;->FAILED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-eq v0, v4, :cond_10a

    sget-object v4, Lcom/google/android/youtube/core/transfer/Transfer$Status;->COMPLETED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-eq v0, v4, :cond_aa

    iget-object v4, p0, Lcom/google/android/youtube/app/adapter/g;->a:Lcom/google/android/youtube/app/adapter/f;

    invoke-static {v4}, Lcom/google/android/youtube/app/adapter/f;->g(Lcom/google/android/youtube/app/adapter/f;)Lcom/google/android/youtube/app/prefetch/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/youtube/app/prefetch/d;->c()Z

    move-result v4

    if-eqz v4, :cond_10a

    :cond_aa
    iget-object v4, p0, Lcom/google/android/youtube/app/adapter/g;->f:Landroid/widget/ImageView;

    const v5, 0x7f080062

    invoke-direct {p0, v4, v5}, Lcom/google/android/youtube/app/adapter/g;->a(Landroid/widget/ImageView;I)Landroid/widget/ImageView;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/youtube/app/adapter/g;->f:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/google/android/youtube/app/adapter/g;->f:Landroid/widget/ImageView;

    if-eqz v4, :cond_10a

    iget-object v4, p0, Lcom/google/android/youtube/app/adapter/g;->f:Landroid/widget/ImageView;

    sget-object v5, Lcom/google/android/youtube/core/transfer/Transfer$Status;->COMPLETED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-ne v0, v5, :cond_f8

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/g;->a:Lcom/google/android/youtube/app/adapter/f;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/f;->h(Lcom/google/android/youtube/app/adapter/f;)Z

    move-result v0

    if-eqz v0, :cond_f4

    const v0, 0x7f0200df

    :goto_ca
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_cd
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/g;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_d8

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/g;->f:Landroid/widget/ImageView;

    if-eqz v1, :cond_108

    :goto_d5
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_d8
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/g;->b:Landroid/view/View;

    return-object v0

    :cond_db
    move v0, v2

    goto/16 :goto_24

    :cond_de
    iget-object v4, p0, Lcom/google/android/youtube/app/adapter/g;->c:Landroid/widget/ImageView;

    if-eqz v4, :cond_3f

    iget-object v4, p0, Lcom/google/android/youtube/app/adapter/g;->c:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3f

    :cond_e9
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/g;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/g;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6b

    :cond_f4
    const v0, 0x7f0200e0

    goto :goto_ca

    :cond_f8
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/g;->a:Lcom/google/android/youtube/app/adapter/f;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/f;->h(Lcom/google/android/youtube/app/adapter/f;)Z

    move-result v0

    if-eqz v0, :cond_104

    const v0, 0x7f0200e1

    goto :goto_ca

    :cond_104
    const v0, 0x7f0200e2

    goto :goto_ca

    :cond_108
    move v2, v3

    goto :goto_d5

    :cond_10a
    move v1, v2

    goto :goto_cd
.end method

.method public final a()V
    .registers 4

    .prologue
    const v2, 0x7f080061

    .line 176
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/g;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_e

    .line 177
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/g;->e:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 179
    :cond_e
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/g;->e:Landroid/widget/ImageView;

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/g;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 180
    :cond_1a
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/g;->a:Lcom/google/android/youtube/app/adapter/f;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/f;->f(Lcom/google/android/youtube/app/adapter/f;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/g;->g:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 181
    if-eqz v0, :cond_38

    .line 182
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/g;->e:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2}, Lcom/google/android/youtube/app/adapter/g;->a(Landroid/widget/ImageView;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/g;->e:Landroid/widget/ImageView;

    .line 183
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/g;->e:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    :cond_38
    return-void
.end method
