.class public Lcom/estrongs/android/pop/app/cp;
.super Landroid/app/AlertDialog;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/CheckBox;

.field private c:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;ZZ)V
    .registers 10

    const v5, 0x7f070031

    const/4 v4, 0x3

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/cp;->c:Z

    iput-boolean p2, p0, Lcom/estrongs/android/pop/app/cp;->c:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0701ac

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cp;->b:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cp;->b:Landroid/widget/CheckBox;

    new-instance v2, Lcom/estrongs/android/pop/app/cq;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/cq;-><init>(Lcom/estrongs/android/pop/app/cp;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    if-eqz p3, :cond_79

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cp;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_35
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cp;->a:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cp;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v2

    const v0, 0x7f070032

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    new-instance v3, Lcom/estrongs/android/pop/app/cr;

    invoke-direct {v3, p0, v2}, Lcom/estrongs/android/pop/app/cr;-><init>(Lcom/estrongs/android/pop/app/cp;I)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/cp;->setView(Landroid/view/View;)V

    const v0, 0x7f0901a7

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/cp;->setTitle(I)V

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    new-array v2, v4, [I

    fill-array-data v2, :array_82

    new-array v3, v4, [I

    fill-array-data v3, :array_8c

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/android/pop/esclasses/ESActivity;->a(Landroid/app/Activity;Landroid/view/View;[I[I)V

    check-cast p1, Landroid/app/Activity;

    const v0, 0x7f0901ab

    invoke-static {p1, v1, v5, v0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->b(Landroid/app/Activity;Landroid/view/View;II)V

    return-void

    :cond_79
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cp;->b:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_35

    nop

    :array_82
    .array-data 0x4
        0xabt 0x1t 0x7t 0x7ft
        0x32t 0x0t 0x7t 0x7ft
        0xact 0x1t 0x7t 0x7ft
    .end array-data

    :array_8c
    .array-data 0x4
        0x62t 0x0t 0x9t 0x7ft
        0xa6t 0x1t 0x9t 0x7ft
        0x3at 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/cp;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cp;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/cp;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/cp;->c:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cp;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/cp;->c:Z

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cp;->a:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_15
    return-object v0
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/cp;->c:Z

    return v0
.end method
