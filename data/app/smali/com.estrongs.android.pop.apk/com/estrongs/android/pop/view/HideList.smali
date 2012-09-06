.class public Lcom/estrongs/android/pop/view/HideList;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# instance fields
.field public a:Landroid/view/View$OnTouchListener;

.field private b:[Lcom/estrongs/android/util/i;

.field private c:Landroid/widget/ListView;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/HideList;->b:[Lcom/estrongs/android/util/i;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/HideList;->c:Landroid/widget/ListView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/HideList;->d:Landroid/widget/TextView;

    new-instance v0, Lcom/estrongs/android/pop/view/hu;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/hu;-><init>(Lcom/estrongs/android/pop/view/HideList;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/HideList;->a:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/HideList;)Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/HideList;->c:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/HideList;[Lcom/estrongs/android/util/i;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/HideList;->b:[Lcom/estrongs/android/util/i;

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/view/HideList;)[Lcom/estrongs/android/util/i;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/HideList;->b:[Lcom/estrongs/android/util/i;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/view/HideList;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/HideList;->d:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v5, 0x0

    const v4, 0x7f030024

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/view/HideList;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/HideList;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/HideList;->setContentView(I)V

    invoke-static {}, Lcom/estrongs/android/util/g;->d()[Lcom/estrongs/android/util/i;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/HideList;->b:[Lcom/estrongs/android/util/i;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/HideList;->b:[Lcom/estrongs/android/util/i;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/estrongs/android/pop/view/HideList;->b:[Lcom/estrongs/android/util/i;

    array-length v0, v0

    if-nez v0, :cond_a1

    :cond_2b
    new-array v1, v3, [Lcom/estrongs/android/util/i;

    new-instance v0, Lcom/estrongs/android/util/i;

    invoke-direct {v0, v5, v2, v5}, Lcom/estrongs/android/util/i;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    aput-object v0, v1, v2

    new-instance v0, Lcom/estrongs/android/pop/view/hx;

    invoke-direct {v0, p0, p0, v4, v1}, Lcom/estrongs/android/pop/view/hx;-><init>(Lcom/estrongs/android/pop/view/HideList;Landroid/content/Context;I[Lcom/estrongs/android/util/i;)V

    move-object v1, v0

    :goto_3a
    const v0, 0x7f07010d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/HideList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/HideList;->c:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/HideList;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/hx;->notifyDataSetChanged()V

    const v0, 0x7f07010e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/HideList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/HideList;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/HideList;->d:Landroid/widget/TextView;

    const v1, 0x7f0902c4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/HideList;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/estrongs/android/pop/view/hv;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/hv;-><init>(Lcom/estrongs/android/pop/view/HideList;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f07010c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/HideList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0902c0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f07010f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/HideList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090060

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lcom/estrongs/android/pop/view/hw;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/hw;-><init>(Lcom/estrongs/android/pop/view/HideList;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/HideList;->b:[Lcom/estrongs/android/util/i;

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/estrongs/android/pop/view/HideList;->b:[Lcom/estrongs/android/util/i;

    array-length v0, v0

    if-nez v0, :cond_a0

    :cond_99
    iget-object v0, p0, Lcom/estrongs/android/pop/view/HideList;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_a0
    return-void

    :cond_a1
    new-instance v0, Lcom/estrongs/android/pop/view/hx;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/HideList;->b:[Lcom/estrongs/android/util/i;

    invoke-direct {v0, p0, p0, v4, v1}, Lcom/estrongs/android/pop/view/hx;-><init>(Lcom/estrongs/android/pop/view/HideList;Landroid/content/Context;I[Lcom/estrongs/android/util/i;)V

    move-object v1, v0

    goto :goto_3a
.end method
