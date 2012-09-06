.class public Lcom/google/googlenav/settings/c;
.super Landroid/preference/CheckBoxPreference;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 21
    iput p2, p0, Lcom/google/googlenav/settings/c;->a:I

    .line 22
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 27
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 28
    iget v1, p0, Lcom/google/googlenav/settings/c;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 29
    return-void
.end method
