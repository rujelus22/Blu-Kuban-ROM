.class public Lcom/estrongs/android/pop/view/ih;
.super Landroid/widget/BaseAdapter;


# instance fields
.field public a:[Landroid/view/MenuItem;

.field final synthetic b:Lcom/estrongs/android/pop/view/ig;

.field private c:Landroid/view/SubMenu;

.field private d:I

.field private e:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/view/ig;Landroid/view/SubMenu;)V
    .registers 7

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ih;->b:Lcom/estrongs/android/pop/view/ig;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput v0, p0, Lcom/estrongs/android/pop/view/ih;->d:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/estrongs/android/pop/view/ih;->e:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/ih;->c:Landroid/view/SubMenu;

    invoke-interface {p2}, Landroid/view/SubMenu;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/MenuItem;

    iput-object v1, p0, Lcom/estrongs/android/pop/view/ih;->a:[Landroid/view/MenuItem;

    :goto_15
    invoke-interface {p2}, Landroid/view/SubMenu;->size()I

    move-result v1

    if-lt v0, v1, :cond_1c

    return-void

    :cond_1c
    invoke-interface {p2, v0}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ih;->a:[Landroid/view/MenuItem;

    iget v3, p0, Lcom/estrongs/android/pop/view/ih;->d:I

    aput-object v1, v2, v3

    iget v1, p0, Lcom/estrongs/android/pop/view/ih;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/estrongs/android/pop/view/ih;->d:I

    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_15
.end method


# virtual methods
.method public a(I)Landroid/view/MenuItem;
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ih;->a:[Landroid/view/MenuItem;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getCount()I
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/view/ih;->d:I

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/view/ih;->a(I)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ih;->e:Landroid/view/LayoutInflater;

    if-nez v0, :cond_1a

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ih;->b:Lcom/estrongs/android/pop/view/ig;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/ig;->a(Lcom/estrongs/android/pop/view/ig;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ih;->e:Landroid/view/LayoutInflater;

    :cond_1a
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ih;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f03002e

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/view/ih;->a(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f07013f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v1
.end method
