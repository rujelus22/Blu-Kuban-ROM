.class public Lcom/google/googlenav/ui/wizard/ch;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field private final a:[Lcom/google/googlenav/aw;

.field private final b:I

.field private final c:Z

.field private final d:Lcom/google/googlenav/android/Y;

.field private final e:Lcom/google/googlenav/ui/wizard/ju;

.field private m:Ljava/util/Timer;

.field private final n:Landroid/view/animation/Animation;

.field private final o:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>([Lcom/google/googlenav/aw;IZLcom/google/googlenav/android/Y;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/ui/g;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    const v0, 0x1030009

    invoke-direct {p0, p6, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;I)V

    .line 162
    invoke-static {}, Lcom/google/googlenav/ui/bn;->e()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050010

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ch;->n:Landroid/view/animation/Animation;

    .line 165
    invoke-static {}, Lcom/google/googlenav/ui/bn;->e()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050011

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ch;->o:Landroid/view/animation/Animation;

    .line 172
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ch;->a:[Lcom/google/googlenav/aw;

    .line 173
    iput p2, p0, Lcom/google/googlenav/ui/wizard/ch;->b:I

    .line 174
    iput-boolean p3, p0, Lcom/google/googlenav/ui/wizard/ch;->c:Z

    .line 175
    iput-object p4, p0, Lcom/google/googlenav/ui/wizard/ch;->d:Lcom/google/googlenav/android/Y;

    .line 176
    iput-object p5, p0, Lcom/google/googlenav/ui/wizard/ch;->e:Lcom/google/googlenav/ui/wizard/ju;

    .line 177
    return-void
.end method

.method private a(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ch;->i()V

    .line 249
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_12

    .line 250
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ch;->n:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 255
    :cond_12
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ch;->m:Ljava/util/Timer;

    .line 256
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ch;->m:Ljava/util/Timer;

    new-instance v1, Lcom/google/googlenav/ui/wizard/cl;

    invoke-direct {v1, p0, p1}, Lcom/google/googlenav/ui/wizard/cl;-><init>(Lcom/google/googlenav/ui/wizard/ch;Landroid/view/View;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 262
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/ch;Landroid/view/View;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/ch;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/ch;)[Lcom/google/googlenav/aw;
    .registers 2
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ch;->a:[Lcom/google/googlenav/aw;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/ch;)Lcom/google/googlenav/ui/wizard/ju;
    .registers 2
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ch;->e:Lcom/google/googlenav/ui/wizard/ju;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 265
    const/4 v0, 0x1

    .line 266
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ch;->d:Lcom/google/googlenav/android/Y;

    new-instance v2, Lcom/google/googlenav/ui/wizard/cm;

    invoke-direct {v2, p0, p1}, Lcom/google/googlenav/ui/wizard/cm;-><init>(Lcom/google/googlenav/ui/wizard/ch;Landroid/view/View;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 273
    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/ch;Landroid/view/View;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/ch;->b(Landroid/view/View;)V

    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/ch;)Landroid/view/animation/Animation;
    .registers 2
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ch;->o:Landroid/view/animation/Animation;

    return-object v0
.end method


# virtual methods
.method protected c()Landroid/view/View;
    .registers 11

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ch;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04014f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 189
    const v0, 0x7f100379

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/Gallery;

    .line 190
    const v0, 0x7f100087

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 191
    const v0, 0x7f10001e

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 192
    const v0, 0x7f10037b

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 193
    const v0, 0x7f10037a

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 195
    new-instance v0, Lcom/google/googlenav/ui/wizard/cn;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ch;->a:[Lcom/google/googlenav/aw;

    iget-object v8, p0, Lcom/google/googlenav/ui/wizard/ch;->d:Lcom/google/googlenav/android/Y;

    iget-boolean v9, p0, Lcom/google/googlenav/ui/wizard/ch;->c:Z

    invoke-direct {v0, v6, v1, v8, v9}, Lcom/google/googlenav/ui/wizard/cn;-><init>(Landroid/widget/Gallery;[Lcom/google/googlenav/aw;Lcom/google/googlenav/android/Y;Z)V

    invoke-virtual {v6, v0}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 197
    iget v0, p0, Lcom/google/googlenav/ui/wizard/ch;->b:I

    if-lez v0, :cond_56

    iget v0, p0, Lcom/google/googlenav/ui/wizard/ch;->b:I

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ch;->a:[Lcom/google/googlenav/aw;

    array-length v1, v1

    if-ge v0, v1, :cond_56

    .line 198
    iget v0, p0, Lcom/google/googlenav/ui/wizard/ch;->b:I

    invoke-virtual {v6, v0}, Landroid/widget/Gallery;->setSelection(I)V

    .line 201
    :cond_56
    new-instance v0, Lcom/google/googlenav/ui/wizard/ci;

    invoke-direct {v0, p0, v3}, Lcom/google/googlenav/ui/wizard/ci;-><init>(Lcom/google/googlenav/ui/wizard/ch;Landroid/widget/TextView;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    new-instance v0, Lcom/google/googlenav/ui/wizard/cj;

    invoke-direct {v0, p0, v2}, Lcom/google/googlenav/ui/wizard/cj;-><init>(Lcom/google/googlenav/ui/wizard/ch;Landroid/view/View;)V

    invoke-virtual {v6, v0}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 219
    new-instance v0, Lcom/google/googlenav/ui/wizard/ck;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/wizard/ck;-><init>(Lcom/google/googlenav/ui/wizard/ch;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v6, v0}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 241
    return-object v7
.end method

.method public i()V
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ch;->m:Ljava/util/Timer;

    if-eqz v0, :cond_c

    .line 181
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ch;->m:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ch;->m:Ljava/util/Timer;

    .line 184
    :cond_c
    return-void
.end method
