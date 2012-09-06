.class final Lsr;
.super Ljava/lang/Object;
.source "OpenerOption.java"

# interfaces
.implements Landroid/widget/SimpleAdapter$ViewBinder;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    check-cast p2, Lsq;

    iget-object v1, p2, Lsq;->a:Lss;

    .line 82
    sget v0, LcS;->icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 83
    iget-object v2, v1, Lss;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    iget-object v2, v1, Lss;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 86
    sget v0, LcS;->label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 87
    iget-object v2, v1, Lss;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    sget v0, LcS;->subtitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 90
    iget-object v2, v1, Lss;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 91
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    :goto_38
    const/4 v0, 0x1

    return v0

    .line 93
    :cond_3a
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    iget-object v1, v1, Lss;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_38
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    const-string v0, "Opener ViewBinder"

    return-object v0
.end method
