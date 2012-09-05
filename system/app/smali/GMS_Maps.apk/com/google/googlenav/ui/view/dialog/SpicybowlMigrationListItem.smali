.class public Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;
.super Landroid/widget/LinearLayout;

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

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .registers 2

    const v0, 0x7f0f038c

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;->a:Landroid/widget/TextView;

    const v0, 0x7f0f0024

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;->b:Landroid/widget/TextView;

    const v0, 0x7f0f004b

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;->c:Landroid/widget/TextView;

    const v0, 0x7f0f038d

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/FlowLayout;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;->d:Lcom/google/googlenav/ui/android/FlowLayout;

    const v0, 0x7f0f038e

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;->e:Landroid/widget/TextView;

    const v0, 0x7f0f008d

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;->f:Landroid/widget/CheckBox;

    return-void
.end method

.method public setChecked(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public toggle()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    return-void
.end method
