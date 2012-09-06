.class public Lcom/estrongs/android/pop/view/ChangePermActivity;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:[Landroid/widget/CheckBox;

.field private d:Landroid/view/View$OnClickListener;

.field private e:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ChangePermActivity;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ChangePermActivity;->b:Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ChangePermActivity;->c:[Landroid/widget/CheckBox;

    new-instance v0, Lcom/estrongs/android/pop/view/c;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/c;-><init>(Lcom/estrongs/android/pop/view/ChangePermActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ChangePermActivity;->d:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/estrongs/android/pop/view/d;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/d;-><init>(Lcom/estrongs/android/pop/view/ChangePermActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ChangePermActivity;->e:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/ChangePermActivity;)[Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ChangePermActivity;->c:[Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/view/ChangePermActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ChangePermActivity;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    const/4 v1, 0x1

    const/16 v6, 0x8

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0901cb

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/ChangePermActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/ChangePermActivity;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f03003c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/ChangePermActivity;->setContentView(I)V

    iget-object v3, p0, Lcom/estrongs/android/pop/view/ChangePermActivity;->c:[Landroid/widget/CheckBox;

    const v0, 0x7f0701b1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/ChangePermActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v3, v2

    iget-object v3, p0, Lcom/estrongs/android/pop/view/ChangePermActivity;->c:[Landroid/widget/CheckBox;

    const v0, 0x7f0701b2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/ChangePermActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v3, v1

    iget-object v3, p0, Lcom/estrongs/android/pop/view/ChangePermActivity;->c:[Landroid/widget/CheckBox;

    const/4 v4, 0x2

    const v0, 0x7f0701b3

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/ChangePermActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v3, v4

    iget-object v3, p0, Lcom/estrongs/android/pop/view/ChangePermActivity;->c:[Landroid/widget/CheckBox;

    const/4 v4, 0x3

    const v0, 0x7f0701b5

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/ChangePermActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v3, v4

    iget-object v3, p0, Lcom/estrongs/android/pop/view/ChangePermActivity;->c:[Landroid/widget/CheckBox;

    const/4 v4, 0x4

    const v0, 0x7f0701b6

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/ChangePermActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v3, v4

    iget-object v3, p0, Lcom/estrongs/android/pop/view/ChangePermActivity;->c:[Landroid/widget/CheckBox;

    const/4 v4, 0x5

    const v0, 0x7f0701b7

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/ChangePermActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v3, v4

    iget-object v3, p0, Lcom/estrongs/android/pop/view/ChangePermActivity;->c:[Landroid/widget/CheckBox;

    const/4 v4, 0x6

    const v0, 0x7f0701b9

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/ChangePermActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v3, v4

    iget-object v3, p0, Lcom/estrongs/android/pop/view/ChangePermActivity;->c:[Landroid/widget/CheckBox;

    const/4 v4, 0x7

    const v0, 0x7f0701ba

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/ChangePermActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v3, v4

    iget-object v3, p0, Lcom/estrongs/android/pop/view/ChangePermActivity;->c:[Landroid/widget/CheckBox;

    const v0, 0x7f0701bb

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/ChangePermActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v3, v6

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/ChangePermActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_b1

    const-string v3, "path"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/estrongs/android/pop/view/ChangePermActivity;->a:Ljava/lang/String;

    const-string v3, "perm"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ChangePermActivity;->b:Ljava/lang/String;

    move v3, v2

    :goto_ad
    const/16 v0, 0x9

    if-lt v3, v0, :cond_db

    :cond_b1
    const v0, 0x7f0701bc

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/ChangePermActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ChangePermActivity;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0701bd

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/ChangePermActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ChangePermActivity;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-array v0, v6, [I

    fill-array-data v0, :array_f4

    new-array v1, v6, [I

    fill-array-data v1, :array_108

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/view/ChangePermActivity;->a([I[I)V

    return-void

    :cond_db
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ChangePermActivity;->c:[Landroid/widget/CheckBox;

    aget-object v4, v0, v3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ChangePermActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x2d

    if-eq v0, v5, :cond_f1

    move v0, v1

    :goto_ea
    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_ad

    :cond_f1
    move v0, v2

    goto :goto_ea

    nop

    :array_f4
    .array-data 0x4
        0xadt 0x1t 0x7t 0x7ft
        0xaet 0x1t 0x7t 0x7ft
        0xaft 0x1t 0x7t 0x7ft
        0xb0t 0x1t 0x7t 0x7ft
        0xb4t 0x1t 0x7t 0x7ft
        0xb8t 0x1t 0x7t 0x7ft
        0xbct 0x1t 0x7t 0x7ft
        0xbdt 0x1t 0x7t 0x7ft
    .end array-data

    :array_108
    .array-data 0x4
        0xcct 0x1t 0x9t 0x7ft
        0xcdt 0x1t 0x9t 0x7ft
        0xcet 0x1t 0x9t 0x7ft
        0xcft 0x1t 0x9t 0x7ft
        0xd0t 0x1t 0x9t 0x7ft
        0xd1t 0x1t 0x9t 0x7ft
        0x5et 0x0t 0x9t 0x7ft
        0x60t 0x0t 0x9t 0x7ft
    .end array-data
.end method
