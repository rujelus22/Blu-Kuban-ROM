.class final Lcom/anddoes/launcher/preference/d;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/preference/IconListPreference;

.field private b:I

.field private c:[I


# direct methods
.method public constructor <init>(Lcom/anddoes/launcher/preference/IconListPreference;Landroid/content/Context;[Ljava/lang/CharSequence;[II)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/anddoes/launcher/preference/d;->a:Lcom/anddoes/launcher/preference/IconListPreference;

    .line 91
    const v0, 0x7f030017

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/anddoes/launcher/preference/d;->b:I

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/d;->c:[I

    .line 92
    iput p5, p0, Lcom/anddoes/launcher/preference/d;->b:I

    .line 93
    iput-object p4, p0, Lcom/anddoes/launcher/preference/d;->c:[I

    .line 94
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/anddoes/launcher/preference/d;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 98
    const v1, 0x7f030017

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 99
    const v0, 0x1020006

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 100
    iget-object v1, p0, Lcom/anddoes/launcher/preference/d;->c:[I

    aget v1, v1, p1

    if-eqz v1, :cond_43

    .line 101
    iget-object v1, p0, Lcom/anddoes/launcher/preference/d;->c:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    :cond_28
    :goto_28
    const v0, 0x1020001

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 111
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/preference/d;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget v1, p0, Lcom/anddoes/launcher/preference/d;->b:I

    if-ne p1, v1, :cond_42

    .line 113
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 115
    :cond_42
    return-object v2

    .line 103
    :cond_43
    if-lez p1, :cond_28

    iget-object v1, p0, Lcom/anddoes/launcher/preference/d;->a:Lcom/anddoes/launcher/preference/IconListPreference;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/anddoes/launcher/preference/d;->a:Lcom/anddoes/launcher/preference/IconListPreference;

    invoke-static {v3}, Lcom/anddoes/launcher/preference/IconListPreference;->a(Lcom/anddoes/launcher/preference/IconListPreference;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060210

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 104
    iget-object v1, p0, Lcom/anddoes/launcher/preference/d;->a:Lcom/anddoes/launcher/preference/IconListPreference;

    invoke-static {v1}, Lcom/anddoes/launcher/preference/IconListPreference;->a(Lcom/anddoes/launcher/preference/IconListPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anddoes/launcher/ia;->e(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 105
    if-eqz v1, :cond_28

    .line 106
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_28
.end method
