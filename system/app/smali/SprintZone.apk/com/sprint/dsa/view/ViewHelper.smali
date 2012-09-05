.class public Lcom/sprint/dsa/view/ViewHelper;
.super Ljava/lang/Object;
.source "ViewHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setText(Landroid/app/Activity;ILjava/lang/String;)Landroid/widget/TextView;
    .registers 5
    .parameter "activity"
    .parameter "viewId"
    .parameter "text"

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 12
    .local v0, txt:Landroid/widget/TextView;
    if-eqz v0, :cond_15

    .line 13
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_15

    .line 15
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    :cond_15
    return-object v0
.end method

.method public static setText(Landroid/app/Dialog;ILjava/lang/String;)Landroid/widget/TextView;
    .registers 5
    .parameter "dialog"
    .parameter "viewId"
    .parameter "text"

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 23
    .local v0, txt:Landroid/widget/TextView;
    if-eqz v0, :cond_15

    .line 24
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_15

    .line 26
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 29
    :cond_15
    return-object v0
.end method

.method public static setText(Landroid/view/View;ILjava/lang/String;)Landroid/widget/TextView;
    .registers 5
    .parameter "parent"
    .parameter "viewId"
    .parameter "text"

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 34
    .local v0, txt:Landroid/widget/TextView;
    if-eqz v0, :cond_15

    .line 35
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_15

    .line 37
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 40
    :cond_15
    return-object v0
.end method
