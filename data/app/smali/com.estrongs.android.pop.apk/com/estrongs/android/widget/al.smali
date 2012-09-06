.class public Lcom/estrongs/android/widget/al;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/widget/Filterable;


# instance fields
.field private a:[I

.field private b:[Ljava/lang/String;

.field private c:Lcom/estrongs/android/widget/ao;

.field private d:I

.field private e:I

.field private f:Landroid/view/LayoutInflater;

.field private g:Lcom/estrongs/android/widget/am;

.field private h:Lcom/estrongs/android/widget/an;

.field private i:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/estrongs/android/widget/an;I[Ljava/lang/String;[I)V
    .registers 7

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/estrongs/android/widget/al;->h:Lcom/estrongs/android/widget/an;

    iput p3, p0, Lcom/estrongs/android/widget/al;->e:I

    iput p3, p0, Lcom/estrongs/android/widget/al;->d:I

    iput-object p4, p0, Lcom/estrongs/android/widget/al;->b:[Ljava/lang/String;

    iput-object p5, p0, Lcom/estrongs/android/widget/al;->a:[I

    iput-object p1, p0, Lcom/estrongs/android/widget/al;->i:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/estrongs/android/widget/al;->f:Landroid/view/LayoutInflater;

    return-void
.end method

.method private a(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 10

    const/4 v0, 0x0

    if-nez p2, :cond_13

    iget-object v1, p0, Lcom/estrongs/android/widget/al;->f:Landroid/view/LayoutInflater;

    invoke-virtual {v1, p4, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iget-object v1, p0, Lcom/estrongs/android/widget/al;->a:[I

    array-length v2, v1

    new-array v3, v2, [Landroid/view/View;

    :goto_e
    if-lt v0, v2, :cond_17

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_13
    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/widget/al;->a(ILandroid/view/View;)V

    return-object p2

    :cond_17
    aget v4, v1, v0

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method

.method static synthetic a(Lcom/estrongs/android/widget/al;)Lcom/estrongs/android/widget/an;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/widget/al;->h:Lcom/estrongs/android/widget/an;

    return-object v0
.end method

.method private a(ILandroid/view/View;)V
    .registers 13

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/widget/al;->h:Lcom/estrongs/android/widget/an;

    invoke-interface {v0, p1}, Lcom/estrongs/android/widget/an;->b(I)V

    iget-object v7, p0, Lcom/estrongs/android/widget/al;->c:Lcom/estrongs/android/widget/ao;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    iget-object v8, p0, Lcom/estrongs/android/widget/al;->b:[Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/widget/al;->a:[I

    array-length v9, v1

    move v6, v4

    :goto_14
    if-lt v6, v9, :cond_17

    return-void

    :cond_17
    aget-object v1, v0, v6

    if-eqz v1, :cond_47

    iget-object v2, p0, Lcom/estrongs/android/widget/al;->h:Lcom/estrongs/android/widget/an;

    aget-object v3, v8, v6

    invoke-interface {v2, v3}, Lcom/estrongs/android/widget/an;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4b

    const-string v3, ""

    :goto_27
    if-nez v3, :cond_cd

    const-string v3, ""

    move-object v5, v3

    :goto_2c
    if-eqz v7, :cond_ca

    invoke-interface {v7, v1, v2, v5}, Lcom/estrongs/android/widget/ao;->a(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    :goto_32
    if-nez v3, :cond_47

    instance-of v3, v1, Landroid/widget/Checkable;

    if-eqz v3, :cond_79

    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_50

    check-cast v1, Landroid/widget/Checkable;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_47
    :goto_47
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_14

    :cond_4b
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_27

    :cond_50
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " should be bound to a Boolean, not a "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_79
    instance-of v3, v1, Landroid/widget/TextView;

    if-eqz v3, :cond_83

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, v1, v5}, Lcom/estrongs/android/widget/al;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_47

    :cond_83
    instance-of v3, v1, Landroid/widget/ImageView;

    if-eqz v3, :cond_a3

    instance-of v3, v2, Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_93

    check-cast v1, Landroid/widget/ImageView;

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_47

    :cond_93
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_47

    check-cast v1, Landroid/widget/ImageView;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/android/widget/al;->a(Landroid/widget/ImageView;I)V

    goto :goto_47

    :cond_a3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " is not a "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " view that can be bounds by this SimpleAdapter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ca
    move v3, v4

    goto/16 :goto_32

    :cond_cd
    move-object v5, v3

    goto/16 :goto_2c
.end method

.method static synthetic a(Lcom/estrongs/android/widget/al;Lcom/estrongs/android/widget/an;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/widget/al;->h:Lcom/estrongs/android/widget/an;

    return-void
.end method


# virtual methods
.method public a()Lcom/estrongs/android/widget/an;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/widget/al;->h:Lcom/estrongs/android/widget/an;

    return-object v0
.end method

.method public a(Landroid/widget/ImageView;I)V
    .registers 3

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public a(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Lcom/estrongs/android/widget/an;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/widget/al;->h:Lcom/estrongs/android/widget/an;

    return-void
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/widget/al;->h:Lcom/estrongs/android/widget/an;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/widget/al;->h:Lcom/estrongs/android/widget/an;

    invoke-interface {v0}, Lcom/estrongs/android/widget/an;->c()I

    move-result v0

    goto :goto_5
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    iget v0, p0, Lcom/estrongs/android/widget/al;->e:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/estrongs/android/widget/al;->a(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/widget/al;->g:Lcom/estrongs/android/widget/am;

    if-nez v0, :cond_c

    new-instance v0, Lcom/estrongs/android/widget/am;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/widget/am;-><init>(Lcom/estrongs/android/widget/al;Lcom/estrongs/android/widget/am;)V

    iput-object v0, p0, Lcom/estrongs/android/widget/al;->g:Lcom/estrongs/android/widget/am;

    :cond_c
    iget-object v0, p0, Lcom/estrongs/android/widget/al;->g:Lcom/estrongs/android/widget/am;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/widget/al;->h:Lcom/estrongs/android/widget/an;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/widget/al;->h:Lcom/estrongs/android/widget/an;

    invoke-interface {v0, p1}, Lcom/estrongs/android/widget/an;->c(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    iget v0, p0, Lcom/estrongs/android/widget/al;->d:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/estrongs/android/widget/al;->a(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
