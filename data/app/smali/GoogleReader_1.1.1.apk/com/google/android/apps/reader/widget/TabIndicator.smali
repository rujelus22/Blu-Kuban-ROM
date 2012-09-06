.class public final Lcom/google/android/apps/reader/widget/TabIndicator;
.super Ljava/lang/Object;
.source "TabIndicator.java"


# static fields
.field private static final HONEYCOMB:I = 0xb


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static set(Landroid/widget/TabWidget;Landroid/widget/TabHost$TabSpec;Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;
    .registers 8
    .parameter "tabWidget"
    .parameter "spec"
    .parameter "label"

    .prologue
    .line 36
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_20

    .line 38
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 39
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03003e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 41
    .local v1, indicator:Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {p1, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 45
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #indicator:Landroid/widget/TextView;
    :goto_1f
    return-object v2

    :cond_20
    invoke-virtual {p1, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    goto :goto_1f
.end method
