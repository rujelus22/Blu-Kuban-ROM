.class public Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;
.super Landroid/preference/Preference;


# instance fields
.field a:Lcom/a/a;

.field public b:Lcom/acquariusoft/UpdateMe/b/j;

.field public c:Landroid/view/View$OnClickListener;

.field public d:Landroid/view/View$OnClickListener;

.field public e:Z

.field f:Landroid/widget/ProgressBar;

.field public g:Z

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;->a:Lcom/a/a;

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;->b:Lcom/acquariusoft/UpdateMe/b/j;

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;->c:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;->d:Landroid/view/View$OnClickListener;

    iput-boolean v1, p0, Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;->e:Z

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;->f:Landroid/widget/ProgressBar;

    iput-boolean v1, p0, Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;->g:Z

    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;->setLayoutResource(I)V

    sget-object v0, Lcom/acquariusoft/UpdateMe/ae;->a:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;->h:Ljava/lang/String;

    if-nez v0, :cond_b

    if-eqz p1, :cond_b

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;->notifyChanged()V

    :cond_b
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .registers 7

    const v2, 0x7f070020

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    new-instance v0, Lcom/a/a;

    invoke-direct {v0, p1}, Lcom/a/a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;->a:Lcom/a/a;

    const v0, 0x7f070006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;->f:Landroid/widget/ProgressBar;

    :cond_26
    if-eqz v0, :cond_44

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;->h:Ljava/lang/String;

    if-eqz v1, :cond_7b

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;->a:Lcom/a/a;

    invoke-virtual {v0}, Lcom/a/a;->a()Lcom/a/b;

    move-result-object v0

    check-cast v0, Lcom/a/a;

    invoke-virtual {v0}, Lcom/a/a;->b()Lcom/a/b;

    move-result-object v0

    check-cast v0, Lcom/a/a;

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;->h:Ljava/lang/String;

    new-instance v2, Lcom/acquariusoft/UpdateMe/w;

    invoke-direct {v2, p0}, Lcom/acquariusoft/UpdateMe/w;-><init>(Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;)V

    invoke-virtual {v0, v1, v2}, Lcom/a/a;->a(Ljava/lang/String;Lcom/a/b/d;)Lcom/a/b;

    :cond_44
    :goto_44
    iget-boolean v0, p0, Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;->e:Z

    if-eqz v0, :cond_5f

    const v0, 0x7f070022

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    new-instance v1, Lcom/acquariusoft/UpdateMe/x;

    invoke-direct {v1, p0}, Lcom/acquariusoft/UpdateMe/x;-><init>(Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5f
    iget-boolean v0, p0, Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;->g:Z

    if-eqz v0, :cond_7a

    const v0, 0x7f070021

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    new-instance v1, Lcom/acquariusoft/UpdateMe/aa;

    invoke-direct {v1, p0}, Lcom/acquariusoft/UpdateMe/aa;-><init>(Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7a
    return-void

    :cond_7b
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_44
.end method
