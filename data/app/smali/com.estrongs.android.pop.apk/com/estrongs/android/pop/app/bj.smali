.class public Lcom/estrongs/android/pop/app/bj;
.super Landroid/app/AlertDialog;


# instance fields
.field private a:Landroid/view/View;

.field private b:Z

.field private c:Lcom/estrongs/android/pop/app/bm;

.field private d:Landroid/widget/CheckBox;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/estrongs/android/pop/app/bm;Z)V
    .registers 8

    const/4 v3, 0x0

    const/4 v2, 0x3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/bj;->b:Z

    iput-object v3, p0, Lcom/estrongs/android/pop/app/bj;->c:Lcom/estrongs/android/pop/app/bm;

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/bj;->e:Z

    iput-object p2, p0, Lcom/estrongs/android/pop/app/bj;->c:Lcom/estrongs/android/pop/app/bm;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030015

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/bj;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bj;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/bj;->setView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bj;->a:Landroid/view/View;

    const v1, 0x7f0700c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/bj;->d:Landroid/widget/CheckBox;

    if-nez p3, :cond_36

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bj;->d:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_36
    iget-object v0, p0, Lcom/estrongs/android/pop/app/bj;->a:Landroid/view/View;

    const v1, 0x7f0700c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/bk;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/bk;-><init>(Lcom/estrongs/android/pop/app/bj;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bj;->a:Landroid/view/View;

    const v1, 0x7f0700c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/bl;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/bl;-><init>(Lcom/estrongs/android/pop/app/bj;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    instance-of v0, p1, Lcom/estrongs/android/pop/esclasses/ESActivity;

    if-eqz v0, :cond_6d

    check-cast p1, Lcom/estrongs/android/pop/esclasses/ESActivity;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bj;->a:Landroid/view/View;

    new-array v1, v2, [I

    fill-array-data v1, :array_6e

    new-array v2, v2, [I

    fill-array-data v2, :array_78

    invoke-static {p1, v0, v1, v2}, Lcom/estrongs/android/pop/esclasses/ESActivity;->a(Landroid/app/Activity;Landroid/view/View;[I[I)V

    :cond_6d
    return-void

    :array_6e
    .array-data 0x4
        0xc3t 0x0t 0x7t 0x7ft
        0xc4t 0x0t 0x7t 0x7ft
        0xc5t 0x0t 0x7t 0x7ft
    .end array-data

    :array_78
    .array-data 0x4
        0x59t 0x1t 0x9t 0x7ft
        0x5ft 0x0t 0x9t 0x7ft
        0x60t 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/bj;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/bj;->b:Z

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bj;->c:Lcom/estrongs/android/pop/app/bm;

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/bj;->b:Z

    iget-object v2, p0, Lcom/estrongs/android/pop/app/bj;->d:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/pop/app/bm;->a(ZZ)V

    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
