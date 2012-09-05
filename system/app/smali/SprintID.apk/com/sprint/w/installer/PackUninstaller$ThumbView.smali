.class Lcom/sprint/w/installer/PackUninstaller$ThumbView;
.super Landroid/widget/RelativeLayout;
.source "PackUninstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/PackUninstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThumbView"
.end annotation


# instance fields
.field mImage:Landroid/widget/ImageView;

.field mItem:Lcom/sprint/w/installer/PackUninstaller$Item;

.field mSelectedChkBox:Landroid/widget/CheckBox;

.field final synthetic this$0:Lcom/sprint/w/installer/PackUninstaller;


# direct methods
.method public constructor <init>(Lcom/sprint/w/installer/PackUninstaller;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "context"

    .prologue
    .line 581
    iput-object p1, p0, Lcom/sprint/w/installer/PackUninstaller$ThumbView;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    .line 582
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 583
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002d

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 585
    const v0, 0x7f0c0080

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/PackUninstaller$ThumbView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$ThumbView;->mImage:Landroid/widget/ImageView;

    .line 586
    const v0, 0x7f0c007b

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/PackUninstaller$ThumbView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$ThumbView;->mSelectedChkBox:Landroid/widget/CheckBox;

    .line 587
    return-void
.end method


# virtual methods
.method setItem(Lcom/sprint/w/installer/PackUninstaller$Item;)V
    .registers 4
    .parameter "item"

    .prologue
    .line 590
    iput-object p1, p0, Lcom/sprint/w/installer/PackUninstaller$ThumbView;->mItem:Lcom/sprint/w/installer/PackUninstaller$Item;

    .line 592
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$ThumbView;->mSelectedChkBox:Landroid/widget/CheckBox;

    iget-boolean v1, p1, Lcom/sprint/w/installer/PackUninstaller$Item;->checked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 593
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$ThumbView;->mImage:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/sprint/w/installer/PackUninstaller$Item;->path:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 594
    return-void
.end method
