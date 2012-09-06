.class public LaF/c;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# static fields
.field private static final o:Lcom/google/common/collect/bx;

.field private static final p:Lcom/google/common/collect/bx;

.field private static final q:Lcom/google/common/collect/bx;

.field private static final r:Lcom/google/common/collect/bx;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/EditText;

.field private C:Landroid/widget/EditText;

.field private D:Landroid/widget/TextView;

.field private E:Ljava/util/Map;

.field private F:Landroid/view/MenuItem;

.field private G:Landroid/widget/Button;

.field private H:Landroid/view/MenuItem;

.field private I:Landroid/widget/Button;

.field private J:Lcom/google/googlenav/ui/bw;

.field private K:Ljava/util/List;

.field private L:Ljava/lang/String;

.field private final M:Lcom/google/googlenav/ui/wizard/ha;

.field a:Landroid/view/MenuItem;

.field b:Landroid/widget/Button;

.field public c:Landroid/app/AlertDialog;

.field final d:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field final e:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private final m:Lcom/google/googlenav/ui/wizard/hg;

.field private final n:Lcom/google/googlenav/ai;

.field private s:Landroid/view/View;

.field private t:Landroid/view/ViewGroup;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/ImageView;

.field private x:Landroid/view/ViewGroup;

.field private y:Landroid/view/ViewGroup;

.field private z:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const v7, 0x7f1003ac

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 82
    new-instance v0, Lcom/google/common/collect/by;

    invoke-direct {v0}, Lcom/google/common/collect/by;-><init>()V

    const-string v1, "0"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/by;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/by;

    move-result-object v0

    const-string v1, "1"

    const v2, 0x7f1003ad

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/by;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/by;

    move-result-object v0

    const-string v1, "2"

    const v2, 0x7f1003ae

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/by;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/by;

    move-result-object v0

    const-string v1, "3"

    const v2, 0x7f1003af

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/by;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/by;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/by;->a()Lcom/google/common/collect/bx;

    move-result-object v0

    sput-object v0, LaF/c;->o:Lcom/google/common/collect/bx;

    .line 90
    new-instance v0, Lcom/google/common/collect/by;

    invoke-direct {v0}, Lcom/google/common/collect/by;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f1003b8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/by;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/by;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f1003b9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/by;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/by;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f1003ba

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/by;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/by;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f1003bb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/by;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/by;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/by;->a()Lcom/google/common/collect/bx;

    move-result-object v0

    sput-object v0, LaF/c;->p:Lcom/google/common/collect/bx;

    .line 98
    new-instance v0, Lcom/google/common/collect/by;

    invoke-direct {v0}, Lcom/google/common/collect/by;-><init>()V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x414

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/by;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/by;

    move-result-object v0

    const v1, 0x7f1003ad

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x413

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/by;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/by;

    move-result-object v0

    const v1, 0x7f1003ae

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x415

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/by;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/by;

    move-result-object v0

    const v1, 0x7f1003af

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x412

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/by;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/by;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/by;->a()Lcom/google/common/collect/bx;

    move-result-object v0

    sput-object v0, LaF/c;->q:Lcom/google/common/collect/bx;

    .line 106
    new-instance v0, Lcom/google/common/collect/by;

    invoke-direct {v0}, Lcom/google/common/collect/by;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f02009b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/by;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/by;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0200a1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/by;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/by;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f02009e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/by;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/by;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f020098

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/by;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/by;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/by;->a()Lcom/google/common/collect/bx;

    move-result-object v0

    sput-object v0, LaF/c;->r:Lcom/google/common/collect/bx;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/wizard/hg;Lcom/google/googlenav/ai;Lcom/google/googlenav/ui/bw;Lcom/google/googlenav/ui/wizard/ha;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_2b

    const v0, 0x7f0f001b

    :goto_d
    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;I)V

    .line 146
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaF/c;->K:Ljava/util/List;

    .line 153
    new-instance v0, LaF/d;

    invoke-direct {v0, p0}, LaF/d;-><init>(LaF/c;)V

    iput-object v0, p0, LaF/c;->d:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 161
    new-instance v0, LaF/g;

    invoke-direct {v0, p0}, LaF/g;-><init>(LaF/c;)V

    iput-object v0, p0, LaF/c;->e:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 173
    iput-object p1, p0, LaF/c;->m:Lcom/google/googlenav/ui/wizard/hg;

    .line 174
    iput-object p2, p0, LaF/c;->n:Lcom/google/googlenav/ai;

    .line 175
    iput-object p4, p0, LaF/c;->M:Lcom/google/googlenav/ui/wizard/ha;

    .line 176
    return-void

    .line 171
    :cond_2b
    const v0, 0x7f0f0018

    goto :goto_d
.end method

.method private A()V
    .registers 4

    .prologue
    .line 701
    iget-object v0, p0, LaF/c;->n:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->ax()Lcom/google/googlenav/ap;

    move-result-object v0

    .line 702
    invoke-static {v0}, LaM/m;->a(Lcom/google/googlenav/ap;)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    .line 703
    if-nez v0, :cond_d

    .line 722
    :goto_c
    return-void

    .line 706
    :cond_d
    iget-object v1, p0, LaF/c;->J:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bw;->b()Lah/s;

    move-result-object v1

    .line 709
    invoke-virtual {v1, v0}, Lah/s;->c(Lcom/google/googlenav/ui/bx;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 710
    new-instance v2, LaF/f;

    invoke-direct {v2, p0, v1, v0}, LaF/f;-><init>(LaF/c;Lah/s;Lcom/google/googlenav/ui/bx;)V

    .line 717
    invoke-virtual {v1, v0, v2}, Lah/s;->a(Lcom/google/googlenav/ui/bx;Lah/p;)V

    goto :goto_c

    .line 719
    :cond_22
    iget-object v1, p0, LaF/c;->J:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/ag;)LS/f;

    move-result-object v0

    check-cast v0, LT/f;

    .line 720
    iget-object v1, p0, LaF/c;->w:Landroid/widget/ImageView;

    invoke-static {v1, v0}, LaQ/G;->a(Landroid/widget/ImageView;LT/f;)V

    goto :goto_c
.end method

.method private a(Landroid/view/View;Ljava/lang/String;)Landroid/widget/RadioButton;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 457
    sget-object v0, LaF/c;->o:Lcom/google/common/collect/bx;

    invoke-virtual {v0, p2}, Lcom/google/common/collect/bx;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 458
    if-eqz v0, :cond_15

    .line 459
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 461
    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method static synthetic a(LaF/c;)Lcom/google/googlenav/ui/wizard/ha;
    .registers 2
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, LaF/c;->M:Lcom/google/googlenav/ui/wizard/ha;

    return-object v0
.end method

.method static synthetic a(LaF/c;Landroid/widget/RadioGroup;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p1}, LaF/c;->a(Landroid/widget/RadioGroup;)V

    return-void
.end method

.method private a(Landroid/widget/RadioGroup;)V
    .registers 5
    .parameter

    .prologue
    .line 598
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 599
    const v1, 0x7f1003aa

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 600
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    .line 601
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2a

    .line 602
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 603
    sget-object v2, LaF/c;->q:Lcom/google/common/collect/bx;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/common/collect/bx;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    :goto_29
    return-void

    .line 605
    :cond_2a
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_29
.end method

.method private a(Lcom/google/googlenav/cz;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 236
    iget-boolean v0, p1, Lcom/google/googlenav/cz;->e:Z

    if-nez v0, :cond_5

    .line 274
    :goto_4
    return-void

    .line 239
    :cond_5
    invoke-virtual {p0}, LaF/c;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040161

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 242
    const v0, 0x7f1003a8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 243
    iget-object v2, p1, Lcom/google/googlenav/cz;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v0, p1, Lcom/google/googlenav/cz;->c:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, LaF/c;->a(Landroid/view/View;Ljava/lang/String;)Landroid/widget/RadioButton;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_2b

    .line 248
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 251
    :cond_2b
    const v0, 0x7f1003ab

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 252
    iget-object v2, p0, LaF/c;->d:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 253
    invoke-direct {p0, v0}, LaF/c;->a(Landroid/widget/RadioGroup;)V

    .line 255
    const v0, 0x7f1003a9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 257
    iget-object v2, p0, LaF/c;->n:Lcom/google/googlenav/ai;

    invoke-virtual {v2}, Lcom/google/googlenav/ai;->bh()Lcom/google/googlenav/cv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/cv;->b()Z

    move-result v2

    .line 258
    if-nez v2, :cond_79

    iget-object v2, p0, LaF/c;->M:Lcom/google/googlenav/ui/wizard/ha;

    if-eqz v2, :cond_79

    if-eqz p2, :cond_79

    .line 260
    const/16 v2, 0x41c

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    const v0, 0x7f1003a7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 263
    new-instance v2, LaF/h;

    invoke-direct {v2, p0}, LaF/h;-><init>(LaF/c;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    :goto_73
    iget-object v0, p0, LaF/c;->x:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 270
    :cond_79
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_73
.end method

.method private a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 331
    iget-object v1, p0, LaF/c;->s:Landroid/view/View;

    sget-object v0, LaF/c;->p:Lcom/google/common/collect/bx;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/bx;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 332
    if-eqz p2, :cond_21

    .line 333
    invoke-virtual {v0, p2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 337
    :goto_19
    invoke-virtual {p1, p3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 338
    return-void

    .line 335
    :cond_21
    sget-object v1, LaF/c;->r:Lcom/google/common/collect/bx;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/bx;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    goto :goto_19
.end method

.method private a(Ljava/lang/String;)V
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 733
    iget-object v0, p0, LaF/c;->n:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->ap()Lcom/google/googlenav/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ax;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 735
    const/16 v2, 0x55

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    if-lez v0, :cond_50

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "p="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2a
    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, LaF/c;->L:Ljava/lang/String;

    if-eqz v4, :cond_46

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "v="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, LaF/c;->L:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_46
    aput-object v1, v3, v0

    invoke-static {v3}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p1, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 743
    return-void

    :cond_50
    move-object v0, v1

    .line 735
    goto :goto_2a
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 301
    iget-object v0, p0, LaF/c;->n:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bh()Lcom/google/googlenav/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/cv;->g()Ljava/lang/String;

    move-result-object v0

    .line 302
    iget-object v1, p0, LaF/c;->z:Landroid/widget/TextView;

    if-eqz v0, :cond_32

    :goto_f
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v0, p0, LaF/c;->A:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    if-eqz p2, :cond_1e

    .line 306
    iget-object v0, p0, LaF/c;->B:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 308
    :cond_1e
    iget-object v0, p0, LaF/c;->s:Landroid/view/View;

    const v1, 0x7f1003b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 310
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 311
    iget-object v0, p0, LaF/c;->y:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 312
    return-void

    .line 302
    :cond_32
    const-string v0, ""

    goto :goto_f
.end method

.method private a(Ljava/util/Map;Ljava/lang/Integer;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 316
    iget-object v0, p0, LaF/c;->z:Landroid/widget/TextView;

    iget-object v1, p0, LaF/c;->n:Lcom/google/googlenav/ai;

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->bh()Lcom/google/googlenav/cv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/cv;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 318
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-direct {p0, v2, v0, p2}, LaF/c;->a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_18

    .line 320
    :cond_3c
    iget-object v0, p0, LaF/c;->s:Landroid/view/View;

    const v1, 0x7f1003b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 322
    iget-object v1, p0, LaF/c;->s:Landroid/view/View;

    const v2, 0x7f1003b7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 323
    iget-object v2, p0, LaF/c;->e:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 324
    invoke-direct {p0, v1}, LaF/c;->b(Landroid/widget/RadioGroup;)V

    .line 325
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 326
    iget-object v0, p0, LaF/c;->y:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 327
    return-void
.end method

.method private b(Lcom/google/googlenav/ay;)Landroid/view/View;
    .registers 8
    .parameter

    .prologue
    const v5, 0x7f0b00a5

    .line 679
    invoke-virtual {p0}, LaF/c;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040167

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 680
    const v0, 0x7f1003d0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 683
    invoke-virtual {p1}, Lcom/google/googlenav/ay;->c()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    if-nez v1, :cond_45

    .line 684
    invoke-virtual {p1}, Lcom/google/googlenav/ay;->a()LS/f;

    move-result-object v1

    .line 689
    :goto_22
    invoke-virtual {p0}, LaF/c;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 690
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 691
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 693
    check-cast v1, LT/f;

    invoke-virtual {v1}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, LaT/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 695
    const/4 v5, 0x0

    invoke-static {v1, v4, v3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 697
    return-object v2

    .line 686
    :cond_45
    iget-object v1, p0, LaF/c;->J:Lcom/google/googlenav/ui/bw;

    invoke-virtual {p1}, Lcom/google/googlenav/ay;->b()Lcom/google/googlenav/ui/bx;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/ag;)LS/f;

    move-result-object v1

    goto :goto_22
.end method

.method static synthetic b(LaF/c;)Lcom/google/googlenav/ui/wizard/hg;
    .registers 2
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, LaF/c;->m:Lcom/google/googlenav/ui/wizard/hg;

    return-object v0
.end method

.method private b(Landroid/view/View;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 497
    sget-object v0, LaF/c;->o:Lcom/google/common/collect/bx;

    invoke-virtual {v0}, Lcom/google/common/collect/bx;->x_()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 498
    sget-object v1, LaF/c;->o:Lcom/google/common/collect/bx;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/bx;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 499
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 500
    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 504
    :goto_2e
    return-object v0

    :cond_2f
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method static synthetic b(LaF/c;Landroid/widget/RadioGroup;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p1}, LaF/c;->b(Landroid/widget/RadioGroup;)V

    return-void
.end method

.method private b(Landroid/view/View;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 571
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 572
    const v0, 0x7f1001ab

    const v1, 0x7f02019e

    invoke-virtual {p0, p2, v0, v1}, LaF/c;->a(Ljava/lang/CharSequence;II)V

    .line 588
    :cond_14
    :goto_14
    return-void

    .line 573
    :cond_15
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 574
    iget-object v0, p0, LaF/c;->t:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 575
    iget-object v0, p0, LaF/c;->t:Landroid/view/ViewGroup;

    const v1, 0x7f1003bc

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 576
    const/16 v1, 0x41b

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    iget-object v0, p0, LaF/c;->t:Landroid/view/ViewGroup;

    const v1, 0x7f1000f9

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 578
    if-eqz v0, :cond_14

    .line 579
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 580
    new-instance v1, LaF/m;

    invoke-direct {v1, p0}, LaF/m;-><init>(LaF/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_14
.end method

.method private b(Landroid/widget/RadioGroup;)V
    .registers 5
    .parameter

    .prologue
    .line 610
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 611
    const v1, 0x7f1003b6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 612
    iget-object v1, p0, LaF/c;->y:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, LaF/c;->a(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object v1

    .line 613
    if-eqz v1, :cond_2a

    .line 614
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 615
    iget-object v2, p0, LaF/c;->E:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 619
    :goto_29
    return-void

    .line 617
    :cond_2a
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_29
.end method

.method private c(Landroid/view/View;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 508
    sget-object v0, LaF/c;->q:Lcom/google/common/collect/bx;

    invoke-virtual {v0}, Lcom/google/common/collect/bx;->x_()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 509
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 510
    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 511
    sget-object v0, LaF/c;->q:Lcom/google/common/collect/bx;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/bx;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 514
    :goto_32
    return-object v0

    :cond_33
    const/4 v0, 0x0

    goto :goto_32
.end method

.method static synthetic c(LaF/c;)V
    .registers 1
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, LaF/c;->w()V

    return-void
.end method

.method static synthetic d(LaF/c;)Lcom/google/googlenav/ui/g;
    .registers 2
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, LaF/c;->g:Lcom/google/googlenav/ui/g;

    return-object v0
.end method

.method static synthetic e(LaF/c;)Landroid/widget/ImageView;
    .registers 2
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, LaF/c;->w:Landroid/widget/ImageView;

    return-object v0
.end method

.method private l()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 225
    iget-object v0, p0, LaF/c;->s:Landroid/view/View;

    const v1, 0x7f1003bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, LaF/c;->x:Landroid/view/ViewGroup;

    .line 226
    iget-object v0, p0, LaF/c;->x:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 227
    iget-object v0, p0, LaF/c;->K:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v1, v2

    .line 228
    :goto_1a
    if-ge v1, v4, :cond_30

    .line 229
    iget-object v0, p0, LaF/c;->K:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/cz;

    .line 230
    add-int/lit8 v3, v1, 0x1

    .line 231
    if-ne v3, v4, :cond_2e

    const/4 v1, 0x1

    :goto_29
    invoke-direct {p0, v0, v1}, LaF/c;->a(Lcom/google/googlenav/cz;Z)V

    move v1, v3

    .line 232
    goto :goto_1a

    :cond_2e
    move v1, v2

    .line 231
    goto :goto_29

    .line 233
    :cond_30
    return-void
.end method

.method private m()V
    .registers 5

    .prologue
    .line 277
    iget-object v0, p0, LaF/c;->s:Landroid/view/View;

    const v1, 0x7f1003b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, LaF/c;->y:Landroid/view/ViewGroup;

    .line 279
    iget-object v0, p0, LaF/c;->s:Landroid/view/View;

    const v1, 0x7f1003b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LaF/c;->z:Landroid/widget/TextView;

    .line 281
    iget-object v0, p0, LaF/c;->s:Landroid/view/View;

    const v1, 0x7f1003b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LaF/c;->A:Landroid/widget/TextView;

    .line 282
    iget-object v0, p0, LaF/c;->s:Landroid/view/View;

    const v1, 0x7f1003b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, LaF/c;->B:Landroid/widget/EditText;

    .line 284
    iget-object v0, p0, LaF/c;->n:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bh()Lcom/google/googlenav/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/cv;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 285
    iget-object v1, p0, LaF/c;->n:Lcom/google/googlenav/ai;

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->bh()Lcom/google/googlenav/cv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/cv;->e()Ljava/lang/String;

    move-result-object v1

    .line 286
    iget-object v2, p0, LaF/c;->n:Lcom/google/googlenav/ai;

    invoke-virtual {v2}, Lcom/google/googlenav/ai;->bh()Lcom/google/googlenav/cv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/cv;->f()Ljava/lang/String;

    move-result-object v2

    .line 287
    iget-object v3, p0, LaF/c;->n:Lcom/google/googlenav/ai;

    invoke-virtual {v3}, Lcom/google/googlenav/ai;->bh()Lcom/google/googlenav/cv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/cv;->i()Ljava/lang/Integer;

    move-result-object v3

    .line 290
    if-eqz v1, :cond_62

    .line 291
    invoke-direct {p0, v1, v2, v0}, LaF/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 298
    :cond_61
    :goto_61
    return-void

    .line 293
    :cond_62
    iget-object v1, p0, LaF/c;->n:Lcom/google/googlenav/ai;

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->bh()Lcom/google/googlenav/cv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/cv;->h()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, LaF/c;->E:Ljava/util/Map;

    .line 294
    iget-object v1, p0, LaF/c;->E:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_61

    .line 295
    iget-object v1, p0, LaF/c;->E:Ljava/util/Map;

    invoke-direct {p0, v1, v3, v0}, LaF/c;->a(Ljava/util/Map;Ljava/lang/Integer;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_61
.end method

.method private n()V
    .registers 3

    .prologue
    .line 341
    iget-object v0, p0, LaF/c;->s:Landroid/view/View;

    const v1, 0x7f1003d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 342
    const/16 v1, 0x41b

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v0, p0, LaF/c;->s:Landroid/view/View;

    const v1, 0x7f1003d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, LaF/c;->C:Landroid/widget/EditText;

    .line 344
    iget-object v0, p0, LaF/c;->C:Landroid/widget/EditText;

    const/16 v1, 0x41a

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v0, p0, LaF/c;->C:Landroid/widget/EditText;

    iget-object v1, p0, LaF/c;->n:Lcom/google/googlenav/ai;

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->bh()Lcom/google/googlenav/cv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/cv;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 346
    return-void
.end method

.method private o()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 349
    invoke-virtual {p0}, LaF/c;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040165

    iget-object v0, p0, LaF/c;->s:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 350
    iget-object v0, p0, LaF/c;->s:Landroid/view/View;

    const v2, 0x7f1003c2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, LaF/c;->G:Landroid/widget/Button;

    .line 351
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->F()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 352
    iget-object v0, p0, LaF/c;->G:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 353
    iget-object v0, p0, LaF/c;->G:Landroid/widget/Button;

    new-instance v2, LaF/i;

    invoke-direct {v2, p0}, LaF/i;-><init>(LaF/c;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    iget-object v2, p0, LaF/c;->G:Landroid/widget/Button;

    invoke-direct {p0}, LaF/c;->z()Z

    move-result v0

    if-nez v0, :cond_70

    const/4 v0, 0x1

    :goto_3e
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 364
    :goto_41
    iget-object v0, p0, LaF/c;->s:Landroid/view/View;

    const v1, 0x7f1003c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, LaF/c;->b:Landroid/widget/Button;

    .line 365
    iget-object v0, p0, LaF/c;->b:Landroid/widget/Button;

    new-instance v1, LaF/j;

    invoke-direct {v1, p0}, LaF/j;-><init>(LaF/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    iget-object v0, p0, LaF/c;->s:Landroid/view/View;

    const v1, 0x7f1003c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, LaF/c;->I:Landroid/widget/Button;

    .line 373
    iget-object v0, p0, LaF/c;->I:Landroid/widget/Button;

    new-instance v1, LaF/k;

    invoke-direct {v1, p0}, LaF/k;-><init>(LaF/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    return-void

    :cond_70
    move v0, v1

    .line 359
    goto :goto_3e

    .line 361
    :cond_72
    iget-object v0, p0, LaF/c;->G:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_41
.end method

.method private v()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 466
    move v1, v2

    :goto_2
    iget-object v0, p0, LaF/c;->x:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_25

    .line 467
    iget-object v0, p0, LaF/c;->x:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 468
    const v3, 0x7f1003ab

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 469
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_21

    .line 473
    :goto_20
    return v2

    .line 466
    :cond_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 473
    :cond_25
    const/4 v2, 0x1

    goto :goto_20
.end method

.method private w()V
    .registers 6

    .prologue
    .line 528
    invoke-direct {p0}, LaF/c;->v()Z

    move-result v0

    if-nez v0, :cond_a

    .line 529
    invoke-direct {p0}, LaF/c;->x()V

    .line 539
    :goto_9
    return-void

    .line 532
    :cond_a
    const-string v0, "s"

    invoke-direct {p0, v0}, LaF/c;->a(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p0}, LaF/c;->g()Lcom/google/googlenav/cy;

    move-result-object v0

    .line 534
    iget-object v1, p0, LaF/c;->C:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 535
    iget-object v2, p0, LaF/c;->B:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 536
    iget-object v3, p0, LaF/c;->y:Landroid/view/ViewGroup;

    invoke-virtual {p0, v3}, LaF/c;->a(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object v3

    .line 538
    iget-object v4, p0, LaF/c;->m:Lcom/google/googlenav/ui/wizard/hg;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/hg;->a(Lcom/google/googlenav/cy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_9
.end method

.method private x()V
    .registers 5

    .prologue
    .line 542
    const/16 v0, 0x411

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 543
    const/16 v1, 0x363

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 545
    invoke-static {}, Lcom/google/googlenav/ui/bn;->e()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/maps/MapsActivity;->getMapsActivity(Landroid/content/Context;)Lcom/google/android/maps/MapsActivity;

    move-result-object v2

    .line 547
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, LaF/l;

    invoke-direct {v2, p0}, LaF/l;-><init>(LaF/c;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, LaF/c;->c:Landroid/app/AlertDialog;

    .line 555
    iget-object v0, p0, LaF/c;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 556
    return-void
.end method

.method private y()V
    .registers 11

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 622
    iget-object v0, p0, LaF/c;->s:Landroid/view/View;

    const v1, 0x7f1003d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 623
    iget-object v1, p0, LaF/c;->s:Landroid/view/View;

    const v2, 0x7f1003d6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 624
    iget-object v2, p0, LaF/c;->s:Landroid/view/View;

    const v3, 0x7f1003d5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/HorizontalScrollView;

    .line 627
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    invoke-virtual {v1, v5, v3}, Landroid/widget/LinearLayout;->removeViews(II)V

    move v4, v5

    .line 628
    :goto_2b
    iget-object v3, p0, LaF/c;->n:Lcom/google/googlenav/ai;

    invoke-virtual {v3}, Lcom/google/googlenav/ai;->ap()Lcom/google/googlenav/ax;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ax;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_6d

    .line 629
    iget-object v3, p0, LaF/c;->n:Lcom/google/googlenav/ai;

    invoke-virtual {v3}, Lcom/google/googlenav/ai;->ap()Lcom/google/googlenav/ax;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ax;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/googlenav/ay;

    .line 631
    invoke-direct {p0, v3}, LaF/c;->b(Lcom/google/googlenav/ay;)Landroid/view/View;

    move-result-object v7

    .line 632
    new-instance v8, LaF/n;

    invoke-direct {v8, p0, v3}, LaF/n;-><init>(LaF/c;Lcom/google/googlenav/ay;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 640
    const v8, 0x7f1003d1

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 641
    new-instance v9, LaF/e;

    invoke-direct {v9, p0, v3}, LaF/e;-><init>(LaF/c;Lcom/google/googlenav/ay;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 648
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 628
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_2b

    .line 651
    :cond_6d
    const/16 v1, 0x42

    invoke-virtual {v2, v1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    .line 653
    iget-object v1, p0, LaF/c;->n:Lcom/google/googlenav/ai;

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->ap()Lcom/google/googlenav/ax;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ax;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b9

    .line 654
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 659
    :goto_85
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->F()Z

    move-result v0

    if-eqz v0, :cond_9f

    iget-object v0, p0, LaF/c;->F:Landroid/view/MenuItem;

    if-eqz v0, :cond_9f

    .line 660
    iget-object v1, p0, LaF/c;->F:Landroid/view/MenuItem;

    invoke-direct {p0}, LaF/c;->z()Z

    move-result v0

    if-nez v0, :cond_bf

    move v0, v6

    :goto_9c
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 662
    :cond_9f
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->F()Z

    move-result v0

    if-eqz v0, :cond_b8

    iget-object v0, p0, LaF/c;->G:Landroid/widget/Button;

    if-eqz v0, :cond_b8

    .line 663
    iget-object v0, p0, LaF/c;->G:Landroid/widget/Button;

    invoke-direct {p0}, LaF/c;->z()Z

    move-result v1

    if-nez v1, :cond_c1

    :goto_b5
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 665
    :cond_b8
    return-void

    .line 656
    :cond_b9
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_85

    :cond_bf
    move v0, v5

    .line 660
    goto :goto_9c

    :cond_c1
    move v6, v5

    .line 663
    goto :goto_b5
.end method

.method private z()Z
    .registers 3

    .prologue
    .line 668
    iget-object v0, p0, LaF/c;->n:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->ap()Lcom/google/googlenav/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ax;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method


# virtual methods
.method public J_()V
    .registers 1

    .prologue
    .line 567
    invoke-direct {p0}, LaF/c;->y()V

    .line 568
    return-void
.end method

.method protected a(Landroid/view/View;)Ljava/lang/Integer;
    .registers 5
    .parameter

    .prologue
    .line 518
    sget-object v0, LaF/c;->p:Lcom/google/common/collect/bx;

    invoke-virtual {v0}, Lcom/google/common/collect/bx;->a()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 519
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 520
    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 521
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 524
    :goto_32
    return-object v0

    :cond_33
    const/4 v0, 0x0

    goto :goto_32
.end method

.method protected a(Landroid/app/ActionBar;)V
    .registers 3
    .parameter

    .prologue
    .line 593
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 594
    const/16 v0, 0x3fd

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 595
    return-void
.end method

.method public a(Lcom/google/googlenav/ay;)V
    .registers 2
    .parameter

    .prologue
    .line 563
    invoke-direct {p0}, LaF/c;->y()V

    .line 564
    return-void
.end method

.method public a(Lcom/google/googlenav/cy;)V
    .registers 3
    .parameter

    .prologue
    .line 219
    iget-object v0, p1, Lcom/google/googlenav/cy;->b:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, LaF/c;->K:Ljava/util/List;

    .line 220
    iget-object v0, p1, Lcom/google/googlenav/cy;->d:Ljava/lang/String;

    iput-object v0, p0, LaF/c;->L:Ljava/lang/String;

    .line 221
    invoke-direct {p0}, LaF/c;->l()V

    .line 222
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/bw;)V
    .registers 2
    .parameter

    .prologue
    .line 726
    iput-object p1, p0, LaF/c;->J:Lcom/google/googlenav/ui/bw;

    .line 727
    return-void
.end method

.method protected a(ILandroid/view/MenuItem;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 443
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f1003c3

    if-ne v1, v2, :cond_e

    .line 444
    invoke-direct {p0}, LaF/c;->w()V

    .line 453
    :goto_d
    return v0

    .line 446
    :cond_e
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f1003c2

    if-ne v1, v2, :cond_1d

    .line 447
    iget-object v1, p0, LaF/c;->m:Lcom/google/googlenav/ui/wizard/hg;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hg;->e()V

    goto :goto_d

    .line 449
    :cond_1d
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f1003c4

    if-ne v1, v2, :cond_2c

    .line 450
    iget-object v1, p0, LaF/c;->m:Lcom/google/googlenav/ui/wizard/hg;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hg;->f()V

    goto :goto_d

    .line 453
    :cond_2c
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public a(Landroid/view/Menu;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 432
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->F()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, LaF/c;->F:Landroid/view/MenuItem;

    if-eqz v0, :cond_1b

    .line 433
    iget-object v2, p0, LaF/c;->F:Landroid/view/MenuItem;

    invoke-direct {p0}, LaF/c;->z()Z

    move-result v0

    if-nez v0, :cond_2f

    move v0, v1

    :goto_18
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 435
    :cond_1b
    iget-object v0, p0, LaF/c;->H:Landroid/view/MenuItem;

    if-eqz v0, :cond_2e

    .line 436
    iget-object v0, p0, LaF/c;->H:Landroid/view/MenuItem;

    iget-object v2, p0, LaF/c;->n:Lcom/google/googlenav/ai;

    invoke-virtual {v2}, Lcom/google/googlenav/ai;->bh()Lcom/google/googlenav/cv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/cv;->b()Z

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 438
    :cond_2e
    return v1

    .line 433
    :cond_2f
    const/4 v0, 0x0

    goto :goto_18
.end method

.method protected c()Landroid/view/View;
    .registers 6

    .prologue
    .line 180
    invoke-virtual {p0}, LaF/c;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040163

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LaF/c;->s:Landroid/view/View;

    .line 181
    iget-object v0, p0, LaF/c;->s:Landroid/view/View;

    const v1, 0x7f1001f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, LaF/c;->t:Landroid/view/ViewGroup;

    .line 183
    iget-object v0, p0, LaF/c;->s:Landroid/view/View;

    const v1, 0x7f100392

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LaF/c;->u:Landroid/widget/TextView;

    .line 184
    iget-object v0, p0, LaF/c;->u:Landroid/widget/TextView;

    iget-object v1, p0, LaF/c;->n:Lcom/google/googlenav/ai;

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, LaF/c;->s:Landroid/view/View;

    const v1, 0x7f100393

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LaF/c;->v:Landroid/widget/TextView;

    .line 187
    iget-object v0, p0, LaF/c;->n:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->E()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 188
    iget-object v0, p0, LaF/c;->v:Landroid/widget/TextView;

    iget-object v1, p0, LaF/c;->n:Lcom/google/googlenav/ai;

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    :cond_53
    iget-object v0, p0, LaF/c;->s:Landroid/view/View;

    const v1, 0x7f100391

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LaF/c;->w:Landroid/widget/ImageView;

    .line 192
    invoke-direct {p0}, LaF/c;->A()V

    .line 194
    iget-object v0, p0, LaF/c;->n:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bh()Lcom/google/googlenav/cv;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lcom/google/googlenav/cv;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LaF/c;->K:Ljava/util/List;

    .line 196
    invoke-direct {p0}, LaF/c;->l()V

    .line 197
    invoke-direct {p0}, LaF/c;->m()V

    .line 198
    invoke-direct {p0}, LaF/c;->n()V

    .line 200
    invoke-virtual {p0}, LaF/c;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0401e8

    iget-object v0, p0, LaF/c;->s:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 201
    iget-object v0, p0, LaF/c;->s:Landroid/view/View;

    const v1, 0x7f1003c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LaF/c;->D:Landroid/widget/TextView;

    .line 203
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-nez v0, :cond_a0

    .line 204
    invoke-direct {p0}, LaF/c;->o()V

    .line 207
    :cond_a0
    invoke-virtual {p0}, LaF/c;->J_()V

    .line 209
    invoke-static {}, Lcom/google/googlenav/bj;->j()Ljava/lang/String;

    move-result-object v0

    .line 210
    iget-object v1, p0, LaF/c;->D:Landroid/widget/TextView;

    if-eqz v0, :cond_d2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_d2

    const/16 v2, 0x405

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_c1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v0, p0, LaF/c;->s:Landroid/view/View;

    const/16 v1, 0x3fd

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LaF/c;->b(Landroid/view/View;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, LaF/c;->s:Landroid/view/View;

    return-object v0

    .line 210
    :cond_d2
    const/16 v0, 0x406

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c1
.end method

.method protected d()V
    .registers 4

    .prologue
    .line 383
    iget-object v0, p0, LaF/c;->n:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bh()Lcom/google/googlenav/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/cv;->b()Z

    move-result v1

    .line 384
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-nez v0, :cond_36

    .line 387
    iget-object v2, p0, LaF/c;->b:Landroid/widget/Button;

    if-eqz v1, :cond_64

    const/16 v0, 0x416

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_1e
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 389
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->F()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 390
    iget-object v0, p0, LaF/c;->G:Landroid/widget/Button;

    const/16 v2, 0x418

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 394
    :cond_36
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_53

    if-eqz v1, :cond_53

    .line 395
    iget-object v0, p0, LaF/c;->I:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 396
    iget-object v0, p0, LaF/c;->I:Landroid/widget/Button;

    const/16 v1, 0x3ef

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 400
    :cond_53
    invoke-static {}, Lcom/google/googlenav/ui/view/dialog/ai;->c()Z

    move-result v0

    if-nez v0, :cond_63

    .line 401
    invoke-static {}, Lcom/google/googlenav/ui/view/dialog/ai;->d()V

    .line 402
    invoke-static {}, Lcom/google/googlenav/ui/view/dialog/ai;->b()Lcom/google/googlenav/ui/view/dialog/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/ai;->show()V

    .line 404
    :cond_63
    return-void

    .line 387
    :cond_64
    const/16 v0, 0x404

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e
.end method

.method g()Lcom/google/googlenav/cy;
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 478
    const/4 v0, 0x0

    .line 479
    new-instance v7, Ljava/util/ArrayList;

    iget-object v1, p0, LaF/c;->K:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 480
    iget-object v1, p0, LaF/c;->K:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v0

    :cond_14
    :goto_14
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/googlenav/cz;

    .line 481
    iget-boolean v0, v2, Lcom/google/googlenav/cz;->e:Z

    if-eqz v0, :cond_14

    .line 484
    iget-object v0, p0, LaF/c;->x:Landroid/view/ViewGroup;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 485
    invoke-direct {p0, v0}, LaF/c;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    .line 486
    invoke-direct {p0, v0}, LaF/c;->c(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    .line 487
    if-eqz v3, :cond_44

    .line 488
    new-instance v0, Lcom/google/googlenav/cz;

    iget-object v1, v2, Lcom/google/googlenav/cz;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/googlenav/cz;->b:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/cz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_44
    move v1, v6

    .line 491
    goto :goto_14

    .line 492
    :cond_46
    new-instance v0, Lcom/google/googlenav/cy;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v7, v9, v9}, Lcom/google/googlenav/cy;-><init>(ILjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public i()V
    .registers 1

    .prologue
    .line 559
    invoke-direct {p0}, LaF/c;->y()V

    .line 560
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 408
    sget-object v0, LaF/c;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f11001e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 412
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 413
    const v0, 0x7f1003c2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, LaF/c;->F:Landroid/view/MenuItem;

    .line 414
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->F()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 415
    iget-object v0, p0, LaF/c;->F:Landroid/view/MenuItem;

    const/16 v1, 0x418

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 420
    :goto_34
    const v0, 0x7f1003c3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, LaF/c;->a:Landroid/view/MenuItem;

    .line 421
    iget-object v0, p0, LaF/c;->a:Landroid/view/MenuItem;

    const/16 v1, 0x40b

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 424
    :cond_48
    const v0, 0x7f1003c4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, LaF/c;->H:Landroid/view/MenuItem;

    .line 425
    iget-object v0, p0, LaF/c;->H:Landroid/view/MenuItem;

    const/16 v1, 0x3ef

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 426
    iget-object v0, p0, LaF/c;->H:Landroid/view/MenuItem;

    iget-object v1, p0, LaF/c;->n:Lcom/google/googlenav/ai;

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->bh()Lcom/google/googlenav/cv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/cv;->b()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 427
    const/4 v0, 0x1

    return v0

    .line 417
    :cond_6d
    iget-object v0, p0, LaF/c;->F:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_34
.end method
