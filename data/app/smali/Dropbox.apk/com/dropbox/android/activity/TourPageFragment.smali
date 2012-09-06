.class public Lcom/dropbox/android/activity/TourPageFragment;
.super Lcom/dropbox/android/activity/base/BaseFragment;
.source "panda.py"


# instance fields
.field private V:Lcom/dropbox/android/activity/bS;

.field private W:Landroid/view/View;

.field private X:Landroid/view/View;

.field private Y:Landroid/widget/Button;

.field private Z:Landroid/widget/Button;

.field private a:Lcom/dropbox/android/activity/bT;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/Button;

.field private g:Landroid/view/View;

.field private h:Landroid/view/ViewStub;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/dropbox/android/activity/base/BaseFragment;-><init>()V

    .line 131
    return-void
.end method

.method public static a(Lcom/dropbox/android/activity/bB;I)Lcom/dropbox/android/activity/TourPageFragment;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 55
    new-instance v0, Lcom/dropbox/android/activity/TourPageFragment;

    invoke-direct {v0}, Lcom/dropbox/android/activity/TourPageFragment;-><init>()V

    .line 57
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 58
    const-string v2, "ARG_PAGE"

    invoke-virtual {p0}, Lcom/dropbox/android/activity/bB;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v2, "ARG_INDEX"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    invoke-virtual {v0, v1}, Lcom/dropbox/android/activity/TourPageFragment;->f(Landroid/os/Bundle;)V

    .line 62
    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/android/activity/TourPageFragment;)Lcom/dropbox/android/activity/bT;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/android/activity/TourPageFragment;->a:Lcom/dropbox/android/activity/bT;

    return-object v0
.end method

.method static synthetic b(Lcom/dropbox/android/activity/TourPageFragment;)Landroid/widget/TextView;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/android/activity/TourPageFragment;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/dropbox/android/activity/TourPageFragment;)Landroid/widget/TextView;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/android/activity/TourPageFragment;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/dropbox/android/activity/TourPageFragment;)Landroid/widget/TextView;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/android/activity/TourPageFragment;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/dropbox/android/activity/TourPageFragment;)Landroid/widget/Button;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/android/activity/TourPageFragment;->f:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic f(Lcom/dropbox/android/activity/TourPageFragment;)Landroid/widget/ImageView;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/android/activity/TourPageFragment;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/dropbox/android/activity/TourPageFragment;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/android/activity/TourPageFragment;->g:Landroid/view/View;

    return-object v0
.end method

.method static synthetic h(Lcom/dropbox/android/activity/TourPageFragment;)Landroid/view/ViewStub;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/android/activity/TourPageFragment;->h:Landroid/view/ViewStub;

    return-object v0
.end method

.method static synthetic i(Lcom/dropbox/android/activity/TourPageFragment;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/android/activity/TourPageFragment;->W:Landroid/view/View;

    return-object v0
.end method

.method static synthetic j(Lcom/dropbox/android/activity/TourPageFragment;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/android/activity/TourPageFragment;->X:Landroid/view/View;

    return-object v0
.end method

.method static synthetic k(Lcom/dropbox/android/activity/TourPageFragment;)Landroid/widget/Button;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/android/activity/TourPageFragment;->Y:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic l(Lcom/dropbox/android/activity/TourPageFragment;)Landroid/widget/Button;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/android/activity/TourPageFragment;->Z:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    const v0, 0x7f030016

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 98
    const v0, 0x7f0d0064

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dropbox/android/activity/TourPageFragment;->b:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f0d006c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dropbox/android/activity/TourPageFragment;->c:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f0d006d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dropbox/android/activity/TourPageFragment;->d:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f0d006b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dropbox/android/activity/TourPageFragment;->e:Landroid/widget/ImageView;

    .line 102
    const v0, 0x7f0d0067

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dropbox/android/activity/TourPageFragment;->f:Landroid/widget/Button;

    .line 103
    const v0, 0x7f0d006a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/TourPageFragment;->g:Landroid/view/View;

    .line 104
    const v0, 0x7f0d0069

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/dropbox/android/activity/TourPageFragment;->h:Landroid/view/ViewStub;

    .line 105
    const v0, 0x7f0d0066

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/TourPageFragment;->W:Landroid/view/View;

    .line 106
    const v0, 0x7f0d0068

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/TourPageFragment;->X:Landroid/view/View;

    .line 107
    const v0, 0x7f0d0011

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dropbox/android/activity/TourPageFragment;->Y:Landroid/widget/Button;

    .line 108
    const v0, 0x7f0d0010

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dropbox/android/activity/TourPageFragment;->Z:Landroid/widget/Button;

    .line 110
    iget-object v0, p0, Lcom/dropbox/android/activity/TourPageFragment;->f:Landroid/widget/Button;

    new-instance v2, Lcom/dropbox/android/activity/bA;

    invoke-direct {v2, p0}, Lcom/dropbox/android/activity/bA;-><init>(Lcom/dropbox/android/activity/TourPageFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    invoke-virtual {p0}, Lcom/dropbox/android/activity/TourPageFragment;->h()Landroid/os/Bundle;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_9b

    const-string v2, "ARG_PAGE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9b

    const-string v2, "ARG_INDEX"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a3

    .line 121
    :cond_9b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TourPageFragment expects an arg with the page to show and an arg with that page\'s index in the tour."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_a3
    const-string v2, "ARG_PAGE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/android/activity/bB;->valueOf(Ljava/lang/String;)Lcom/dropbox/android/activity/bB;

    move-result-object v0

    .line 125
    invoke-static {}, Lcom/dropbox/android/util/h;->a()Lcom/dropbox/android/util/r;

    move-result-object v2

    const-string v3, "page"

    invoke-virtual {v0}, Lcom/dropbox/android/activity/bB;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dropbox/android/util/r;->c()V

    .line 126
    invoke-virtual {v0, p0, p3}, Lcom/dropbox/android/activity/bB;->a(Lcom/dropbox/android/activity/TourPageFragment;Landroid/os/Bundle;)Lcom/dropbox/android/activity/bS;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/TourPageFragment;->V:Lcom/dropbox/android/activity/bS;

    .line 128
    return-object v1
.end method

.method public final a(Landroid/app/Activity;)V
    .registers 6
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/base/BaseFragment;->a(Landroid/app/Activity;)V

    .line 73
    :try_start_3
    move-object v0, p1

    check-cast v0, Lcom/dropbox/android/activity/bT;

    move-object v1, v0

    iput-object v1, p0, Lcom/dropbox/android/activity/TourPageFragment;->a:Lcom/dropbox/android/activity/bT;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_9} :catch_a

    .line 77
    return-void

    .line 74
    :catch_a
    move-exception v1

    .line 75
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must implement TourPageFragmentCallback"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final e(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/base/BaseFragment;->e(Landroid/os/Bundle;)V

    .line 88
    iget-object v0, p0, Lcom/dropbox/android/activity/TourPageFragment;->V:Lcom/dropbox/android/activity/bS;

    if-eqz v0, :cond_c

    .line 89
    iget-object v0, p0, Lcom/dropbox/android/activity/TourPageFragment;->V:Lcom/dropbox/android/activity/bS;

    invoke-interface {v0, p1}, Lcom/dropbox/android/activity/bS;->a(Landroid/os/Bundle;)V

    .line 91
    :cond_c
    return-void
.end method

.method public final s()V
    .registers 2

    .prologue
    .line 81
    invoke-super {p0}, Lcom/dropbox/android/activity/base/BaseFragment;->s()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/android/activity/TourPageFragment;->a:Lcom/dropbox/android/activity/bT;

    .line 83
    return-void
.end method
