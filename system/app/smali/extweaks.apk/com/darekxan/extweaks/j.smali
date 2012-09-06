.class public final Lcom/darekxan/extweaks/j;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method public static a(Ljava/lang/String;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 9
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_5

    move-result p1

    .line 11
    :goto_4
    return p1

    :catch_5
    move-exception v0

    goto :goto_4
.end method

.method public static a(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 15
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    .line 16
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    :goto_b
    return-void

    .line 18
    :cond_c
    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_b
.end method
