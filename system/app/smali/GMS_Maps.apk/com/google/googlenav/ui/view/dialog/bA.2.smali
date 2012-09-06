.class public Lcom/google/googlenav/ui/view/dialog/bA;
.super Lcom/google/googlenav/ui/view/dialog/ce;
.source "SourceFile"


# direct methods
.method public constructor <init>(LaM/bj;)V
    .registers 2
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/ce;-><init>(LaM/bj;)V

    .line 51
    return-void
.end method

.method public static a(LaM/m;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 144
    invoke-virtual {p0}, LaM/m;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/F;->f()I

    move-result v0

    if-nez v0, :cond_f

    .line 145
    const-string v0, ""

    .line 160
    :goto_e
    return-object v0

    .line 149
    :cond_f
    invoke-virtual {p0}, LaM/m;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    .line 150
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bf()Ljava/util/List;

    move-result-object v0

    .line 151
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_26

    .line 152
    const-string v0, ""

    goto :goto_e

    .line 154
    :cond_26
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 156
    invoke-static {v0, v3}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 158
    invoke-static {v0, v3}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 160
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method private n()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/bA;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/bA;->w_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 67
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->ar()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 68
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/bA;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400b8

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/bA;->m:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 70
    const v1, 0x7f10001e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 71
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/bA;->w_()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    const v1, 0x7f10019e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 74
    new-instance v2, Lcom/google/googlenav/ui/view/dialog/bB;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/view/dialog/bB;-><init>(Lcom/google/googlenav/ui/view/dialog/bA;)V

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/view/e;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/bA;->m:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 84
    :cond_4c
    return-void
.end method


# virtual methods
.method protected a(Landroid/app/ActionBar;)V
    .registers 3
    .parameter

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 113
    return-void
.end method

.method public a(Landroid/view/Menu;)Z
    .registers 3
    .parameter

    .prologue
    .line 102
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-nez v0, :cond_c

    .line 104
    const/4 v0, 0x0

    .line 106
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method protected b(Lcom/google/googlenav/ai;IZI)LaQ/H;
    .registers 18
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->bf()Ljava/util/List;

    move-result-object v0

    .line 121
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    .line 122
    const/4 v0, 0x0

    .line 139
    :goto_b
    return-object v0

    .line 125
    :cond_c
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lbm/O;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 126
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 128
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v3

    .line 129
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 130
    invoke-static {v1, v4, v3}, LaM/aQ;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/List;Ljava/util/List;)V

    .line 132
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bA;->b:LaM/m;

    if-nez v0, :cond_3d

    const/4 v5, 0x0

    .line 134
    :goto_2e
    new-instance v0, LaQ/aE;

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v11, p0, Lcom/google/googlenav/ui/view/dialog/bA;->g:Lcom/google/googlenav/ui/g;

    const/4 v12, 0x0

    move-object v9, p1

    move v10, p2

    invoke-direct/range {v0 .. v12}, LaQ/aE;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/List;Ljava/util/List;Lcom/google/googlenav/ui/af;LaM/aP;IZLcom/google/googlenav/ai;ILcom/google/googlenav/ui/g;Z)V

    goto :goto_b

    .line 132
    :cond_3d
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bA;->b:LaM/m;

    invoke-virtual {v0}, LaM/m;->bd()Lcom/google/googlenav/ui/bw;

    move-result-object v5

    goto :goto_2e
.end method

.method protected c()Landroid/view/View;
    .registers 5

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/bA;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 56
    const v1, 0x7f0400a1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 57
    const v0, 0x7f100026

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bA;->m:Landroid/widget/ListView;

    .line 59
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/bA;->n()V

    .line 60
    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/dialog/bA;->b(Landroid/view/View;)V

    .line 61
    return-object v1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 88
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-nez v0, :cond_c

    .line 90
    const/4 v0, 0x0

    .line 97
    :goto_b
    return v0

    .line 93
    :cond_c
    sget-object v0, Lcom/google/googlenav/ui/view/dialog/bA;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 94
    const v1, 0x7f11001a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 95
    const v0, 0x7f1004ca

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 96
    const/16 v1, 0x2b6

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 97
    const/4 v0, 0x1

    goto :goto_b
.end method
