.class Lcom/google/googlenav/suggest/android/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/suggest/android/BaseSuggestView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/suggest/android/BaseSuggestView;)V
    .registers 2
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/google/googlenav/suggest/android/g;->a:Lcom/google/googlenav/suggest/android/BaseSuggestView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 139
    const-string v1, ""

    .line 140
    if-eqz p2, :cond_2a

    .line 141
    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 142
    if-eqz v0, :cond_15

    .line 143
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    move-object v1, v0

    .line 145
    :cond_15
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2a

    .line 146
    const v0, 0x1020015

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 147
    if-eqz v0, :cond_2a

    .line 148
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 152
    :cond_2a
    invoke-static {}, LaI/o;->a()LaI/o;

    move-result-object v0

    .line 153
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "d"

    invoke-virtual {v0, v2, v3}, LaI/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laa/b;->i(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p3, v4}, LaI/o;->a(III)V

    .line 157
    invoke-virtual {v0}, LaI/o;->i()V

    .line 158
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/g;->a:Lcom/google/googlenav/suggest/android/BaseSuggestView;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/BaseSuggestView;->c()V

    .line 161
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/g;->a:Lcom/google/googlenav/suggest/android/BaseSuggestView;

    iput-boolean v4, v0, Lcom/google/googlenav/suggest/android/BaseSuggestView;->b:Z

    .line 162
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/g;->a:Lcom/google/googlenav/suggest/android/BaseSuggestView;

    invoke-virtual {v0, v4}, Lcom/google/googlenav/suggest/android/BaseSuggestView;->a(Z)V

    .line 163
    return-void
.end method
