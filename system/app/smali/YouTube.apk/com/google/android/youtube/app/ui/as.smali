.class Lcom/google/android/youtube/app/ui/as;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public c:Landroid/widget/ImageView;

.field public d:Landroid/widget/TextView;

.field final synthetic e:Lcom/google/android/youtube/app/ui/aq;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/ui/aq;Landroid/view/View;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/as;->e:Lcom/google/android/youtube/app/ui/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const v0, 0x7f09003a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/as;->c:Landroid/widget/ImageView;

    .line 92
    const v0, 0x7f09006e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/as;->d:Landroid/widget/TextView;

    .line 93
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/youtube/core/model/Video$Privacy;)V
    .registers 4
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/as;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_10

    .line 97
    sget-object v0, Lcom/google/android/youtube/core/model/Video$Privacy;->PRIVATE:Lcom/google/android/youtube/core/model/Video$Privacy;

    if-ne p1, v0, :cond_1c

    .line 98
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/as;->c:Landroid/widget/ImageView;

    const v1, 0x7f0200c8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    :cond_10
    :goto_10
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/as;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_1b

    .line 104
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/as;->d:Landroid/widget/TextView;

    iget v1, p1, Lcom/google/android/youtube/core/model/Video$Privacy;->nameId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 106
    :cond_1b
    return-void

    .line 100
    :cond_1c
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/as;->c:Landroid/widget/ImageView;

    const v1, 0x7f0200c9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_10
.end method
