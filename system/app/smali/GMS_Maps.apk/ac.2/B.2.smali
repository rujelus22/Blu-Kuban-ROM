.class public LaC/B;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# static fields
.field static a:Lcom/google/googlenav/ui/wizard/gi;

.field static c:Z

.field static d:Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field b:Ljava/lang/String;

.field private final e:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    new-instance v0, LaC/C;

    invoke-direct {v0}, LaC/C;-><init>()V

    sput-object v0, LaC/B;->d:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/wizard/gi;Ljava/lang/String;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    const v0, 0x7f0f001b

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(I)V

    .line 66
    sput-object p1, LaC/B;->a:Lcom/google/googlenav/ui/wizard/gi;

    .line 67
    iput-object p2, p0, LaC/B;->b:Ljava/lang/String;

    .line 68
    sput-boolean p3, LaC/B;->c:Z

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, LaC/D;->values()[LaC/D;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, LaC/B;->e:Ljava/util/List;

    .line 71
    iget-object v0, p0, LaC/B;->e:Ljava/util/List;

    sget-object v1, LaC/D;->a:LaC/D;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->j()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 73
    iget-object v0, p0, LaC/B;->e:Ljava/util/List;

    sget-object v1, LaC/D;->b:LaC/D;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_30
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->J()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 77
    iget-object v0, p0, LaC/B;->e:Ljava/util/List;

    sget-object v1, LaC/D;->c:LaC/D;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_41
    iget-object v0, p0, LaC/B;->e:Ljava/util/List;

    sget-object v1, LaC/D;->d:LaC/D;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, LaC/B;->e:Ljava/util/List;

    sget-object v1, LaC/D;->e:LaC/D;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method static synthetic a(LaC/B;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, LaC/B;->e:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected I_()V
    .registers 3

    .prologue
    .line 93
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_10

    .line 94
    invoke-virtual {p0}, LaC/B;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f02019e

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 96
    :cond_10
    return-void
.end method

.method public N_()V
    .registers 2

    .prologue
    .line 86
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_a

    .line 87
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LaC/B;->requestWindowFeature(I)Z

    .line 89
    :cond_a
    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 5

    .prologue
    .line 100
    invoke-virtual {p0}, LaC/B;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040187

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 104
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 105
    const v0, 0x7f100354

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 106
    iget-object v2, p0, LaC/B;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :goto_20
    const v0, 0x7f100405

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 114
    new-instance v2, LaC/J;

    invoke-static {}, Lcom/google/googlenav/ui/bn;->e()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, LaC/J;-><init>(LaC/B;Landroid/content/Context;)V

    .line 115
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 116
    sget-object v2, LaC/B;->d:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 118
    return-object v1

    .line 108
    :cond_3b
    iget-object v0, p0, LaC/B;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, LaC/B;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_20
.end method
