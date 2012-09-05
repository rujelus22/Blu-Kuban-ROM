.class public Lcom/swype/android/settings/LanguageListAdapter;
.super Landroid/widget/BaseAdapter;
.source "LanguageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swype/android/settings/LanguageListAdapter$Holder;
    }
.end annotation


# instance fields
.field private final checkableId:I

.field private final context:Landroid/content/Context;

.field private final labelId:I

.field private final layoutId:I

.field private final names:[Ljava/lang/CharSequence;

.field private final selected:I


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/CharSequence;IIII)V
    .registers 7
    .parameter "context"
    .parameter "names"
    .parameter "selected"
    .parameter "layoutId"
    .parameter "labelId"
    .parameter "checkableId"

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/swype/android/settings/LanguageListAdapter;->context:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/swype/android/settings/LanguageListAdapter;->names:[Ljava/lang/CharSequence;

    .line 29
    iput p3, p0, Lcom/swype/android/settings/LanguageListAdapter;->selected:I

    .line 30
    iput p4, p0, Lcom/swype/android/settings/LanguageListAdapter;->layoutId:I

    .line 31
    iput p5, p0, Lcom/swype/android/settings/LanguageListAdapter;->labelId:I

    .line 32
    iput p6, p0, Lcom/swype/android/settings/LanguageListAdapter;->checkableId:I

    .line 33
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/swype/android/settings/LanguageListAdapter;->names:[Ljava/lang/CharSequence;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/swype/android/settings/LanguageListAdapter;->names:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 47
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 57
    if-nez p2, :cond_44

    .line 58
    iget-object v0, p0, Lcom/swype/android/settings/LanguageListAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 59
    iget v1, p0, Lcom/swype/android/settings/LanguageListAdapter;->layoutId:I

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 60
    iget v0, p0, Lcom/swype/android/settings/LanguageListAdapter;->labelId:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 61
    iget v1, p0, Lcom/swype/android/settings/LanguageListAdapter;->checkableId:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 62
    new-instance v3, Lcom/swype/android/settings/LanguageListAdapter$Holder;

    invoke-direct {v3, v0, v1}, Lcom/swype/android/settings/LanguageListAdapter$Holder;-><init>(Landroid/widget/TextView;Landroid/widget/Checkable;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 64
    :goto_28
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swype/android/settings/LanguageListAdapter$Holder;

    .line 65
    iget-object v2, v0, Lcom/swype/android/settings/LanguageListAdapter$Holder;->label:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/swype/android/settings/LanguageListAdapter;->names:[Ljava/lang/CharSequence;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, v0, Lcom/swype/android/settings/LanguageListAdapter$Holder;->checkable:Landroid/widget/Checkable;

    iget v2, p0, Lcom/swype/android/settings/LanguageListAdapter;->selected:I

    if-ne p1, v2, :cond_42

    const/4 v2, 0x1

    :goto_3e
    invoke-interface {v0, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 67
    return-object v1

    :cond_42
    move v2, v4

    .line 66
    goto :goto_3e

    :cond_44
    move-object v1, p2

    goto :goto_28
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method
