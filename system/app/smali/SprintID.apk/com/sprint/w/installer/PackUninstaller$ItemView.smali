.class Lcom/sprint/w/installer/PackUninstaller$ItemView;
.super Landroid/widget/RelativeLayout;
.source "PackUninstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/PackUninstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemView"
.end annotation


# instance fields
.field mIcon:Landroid/widget/ImageView;

.field mItem:Lcom/sprint/w/installer/PackUninstaller$Item;

.field mItemName:Landroid/widget/TextView;

.field mPackName:Landroid/widget/TextView;

.field mSelectedChkBox:Landroid/widget/CheckBox;

.field final synthetic this$0:Lcom/sprint/w/installer/PackUninstaller;


# direct methods
.method public constructor <init>(Lcom/sprint/w/installer/PackUninstaller;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "context"

    .prologue
    .line 556
    iput-object p1, p0, Lcom/sprint/w/installer/PackUninstaller$ItemView;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    .line 557
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 558
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002b

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 559
    const v0, 0x7f0c0036

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/PackUninstaller$ItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$ItemView;->mItemName:Landroid/widget/TextView;

    .line 560
    const v0, 0x7f0c007e

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/PackUninstaller$ItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$ItemView;->mPackName:Landroid/widget/TextView;

    .line 561
    const v0, 0x7f0c007b

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/PackUninstaller$ItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$ItemView;->mSelectedChkBox:Landroid/widget/CheckBox;

    .line 562
    const v0, 0x7f0c0030

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/PackUninstaller$ItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$ItemView;->mIcon:Landroid/widget/ImageView;

    .line 563
    return-void
.end method


# virtual methods
.method setItem(Lcom/sprint/w/installer/PackUninstaller$Item;)V
    .registers 4
    .parameter "item"

    .prologue
    .line 566
    iput-object p1, p0, Lcom/sprint/w/installer/PackUninstaller$ItemView;->mItem:Lcom/sprint/w/installer/PackUninstaller$Item;

    .line 567
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$ItemView;->mSelectedChkBox:Landroid/widget/CheckBox;

    iget-boolean v1, p1, Lcom/sprint/w/installer/PackUninstaller$Item;->checked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 568
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$ItemView;->mItemName:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/sprint/w/installer/PackUninstaller$Item;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$ItemView;->mPackName:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/sprint/w/installer/PackUninstaller$Item;->packName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$ItemView;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f020028

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 571
    return-void
.end method
