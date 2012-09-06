.class public Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Lcom/google/googlenav/ui/android/FlowLayout;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 56
    const v0, 0x7f100280

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;->a:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f100047

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;->b:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f100079

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;->c:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f100415

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/FlowLayout;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;->d:Lcom/google/googlenav/ui/android/FlowLayout;

    .line 60
    const v0, 0x7f100416

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;->e:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f1000b4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;->f:Landroid/widget/CheckBox;

    .line 62
    return-void
.end method

.method public setCheckBoxVisible(Z)V
    .registers 4
    .parameter

    .prologue
    .line 36
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;->f:Landroid/widget/CheckBox;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 37
    return-void

    .line 36
    :cond_9
    const/16 v0, 0x8

    goto :goto_5
.end method

.method public setChecked(Z)V
    .registers 3
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 47
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 42
    return-void
.end method
