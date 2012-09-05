.class Lcom/sprint/w/installer/PackUninstaller$CategoryView;
.super Landroid/widget/RelativeLayout;
.source "PackUninstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/PackUninstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CategoryView"
.end annotation


# instance fields
.field mCheckBoxClicked:Landroid/view/View$OnClickListener;

.field mExpander:Landroid/widget/ImageView;

.field mItem:Lcom/sprint/w/installer/PackUninstaller$CategoryItem;

.field mItemIcon:Landroid/widget/ImageView;

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
    .line 498
    iput-object p1, p0, Lcom/sprint/w/installer/PackUninstaller$CategoryView;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    .line 499
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 510
    new-instance v0, Lcom/sprint/w/installer/PackUninstaller$CategoryView$1;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/PackUninstaller$CategoryView$1;-><init>(Lcom/sprint/w/installer/PackUninstaller$CategoryView;)V

    iput-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$CategoryView;->mCheckBoxClicked:Landroid/view/View$OnClickListener;

    .line 500
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002a

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 501
    const v0, 0x7f0c0036

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/PackUninstaller$CategoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$CategoryView;->mItemName:Landroid/widget/TextView;

    .line 502
    const v0, 0x7f0c007d

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/PackUninstaller$CategoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$CategoryView;->mItemIcon:Landroid/widget/ImageView;

    .line 503
    const v0, 0x7f0c007e

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/PackUninstaller$CategoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$CategoryView;->mPackName:Landroid/widget/TextView;

    .line 504
    const v0, 0x7f0c007b

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/PackUninstaller$CategoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$CategoryView;->mSelectedChkBox:Landroid/widget/CheckBox;

    .line 505
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$CategoryView;->mSelectedChkBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$CategoryView;->mCheckBoxClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 507
    const v0, 0x7f0c007c

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/PackUninstaller$CategoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$CategoryView;->mExpander:Landroid/widget/ImageView;

    .line 508
    return-void
.end method


# virtual methods
.method setItem(Lcom/sprint/w/installer/PackUninstaller$CategoryItem;)V
    .registers 11
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 525
    iput-object p1, p0, Lcom/sprint/w/installer/PackUninstaller$CategoryView;->mItem:Lcom/sprint/w/installer/PackUninstaller$CategoryItem;

    .line 526
    iget-boolean v3, p1, Lcom/sprint/w/installer/PackUninstaller$CategoryItem;->expanded:Z

    if-eqz v3, :cond_33

    .line 527
    iget-object v3, p0, Lcom/sprint/w/installer/PackUninstaller$CategoryView;->mExpander:Landroid/widget/ImageView;

    const v6, 0x7f02000b

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 531
    :goto_10
    iget-object v3, p0, Lcom/sprint/w/installer/PackUninstaller$CategoryView;->mItemName:Landroid/widget/TextView;

    iget-object v6, p1, Lcom/sprint/w/installer/PackUninstaller$CategoryItem;->title:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    const/4 v2, 0x0

    .line 534
    .local v2, n:I
    iget-object v3, p0, Lcom/sprint/w/installer/PackUninstaller$CategoryView;->mItem:Lcom/sprint/w/installer/PackUninstaller$CategoryItem;

    iget-object v3, v3, Lcom/sprint/w/installer/PackUninstaller$CategoryItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_20
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/w/installer/PackUninstaller$Item;

    .line 535
    .local v0, c:Lcom/sprint/w/installer/PackUninstaller$Item;
    iget-boolean v3, v0, Lcom/sprint/w/installer/PackUninstaller$Item;->checked:Z

    if-eqz v3, :cond_20

    .line 536
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 529
    .end local v0           #c:Lcom/sprint/w/installer/PackUninstaller$Item;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #n:I
    :cond_33
    iget-object v3, p0, Lcom/sprint/w/installer/PackUninstaller$CategoryView;->mExpander:Landroid/widget/ImageView;

    const v6, 0x7f02000c

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_10

    .line 539
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #n:I
    :cond_3c
    iget-object v3, p0, Lcom/sprint/w/installer/PackUninstaller$CategoryView;->mItem:Lcom/sprint/w/installer/PackUninstaller$CategoryItem;

    iget-object v3, v3, Lcom/sprint/w/installer/PackUninstaller$CategoryItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_7f

    move v3, v4

    :goto_47
    iput-boolean v3, p1, Lcom/sprint/w/installer/PackUninstaller$CategoryItem;->checked:Z

    .line 540
    iget-object v3, p0, Lcom/sprint/w/installer/PackUninstaller$CategoryView;->mSelectedChkBox:Landroid/widget/CheckBox;

    iget-boolean v6, p1, Lcom/sprint/w/installer/PackUninstaller$CategoryItem;->checked:Z

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 541
    iget-object v3, p0, Lcom/sprint/w/installer/PackUninstaller$CategoryView;->mPackName:Landroid/widget/TextView;

    const-string v6, "%d of %d selected"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    iget-object v8, p0, Lcom/sprint/w/installer/PackUninstaller$CategoryView;->mItem:Lcom/sprint/w/installer/PackUninstaller$CategoryItem;

    iget-object v8, v8, Lcom/sprint/w/installer/PackUninstaller$CategoryItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    iget-object v3, p0, Lcom/sprint/w/installer/PackUninstaller$CategoryView;->mPackName:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 543
    iget-object v3, p0, Lcom/sprint/w/installer/PackUninstaller$CategoryView;->mItemIcon:Landroid/widget/ImageView;

    iget v4, p1, Lcom/sprint/w/installer/PackUninstaller$CategoryItem;->icon:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 544
    return-void

    :cond_7f
    move v3, v5

    .line 539
    goto :goto_47
.end method
