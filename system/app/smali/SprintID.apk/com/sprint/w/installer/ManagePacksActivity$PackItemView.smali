.class Lcom/sprint/w/installer/ManagePacksActivity$PackItemView;
.super Landroid/widget/RelativeLayout;
.source "ManagePacksActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/ManagePacksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackItemView"
.end annotation


# instance fields
.field mIcon:Landroid/widget/ImageView;

.field mItem:Lcom/sprint/w/installer/ManagePacksActivity$PackItem;

.field mSecondatyTitle:Landroid/widget/TextView;

.field mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/sprint/w/installer/ManagePacksActivity;


# direct methods
.method public constructor <init>(Lcom/sprint/w/installer/ManagePacksActivity;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "context"

    .prologue
    .line 285
    iput-object p1, p0, Lcom/sprint/w/installer/ManagePacksActivity$PackItemView;->this$0:Lcom/sprint/w/installer/ManagePacksActivity;

    .line 286
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 287
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030013

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 288
    const v0, 0x7f0c000b

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/ManagePacksActivity$PackItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/w/installer/ManagePacksActivity$PackItemView;->mTitle:Landroid/widget/TextView;

    .line 289
    const v0, 0x7f0c0034

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/ManagePacksActivity$PackItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/w/installer/ManagePacksActivity$PackItemView;->mSecondatyTitle:Landroid/widget/TextView;

    .line 290
    const v0, 0x7f0c0030

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/ManagePacksActivity$PackItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sprint/w/installer/ManagePacksActivity$PackItemView;->mIcon:Landroid/widget/ImageView;

    .line 291
    return-void
.end method


# virtual methods
.method setItem(Lcom/sprint/w/installer/ManagePacksActivity$PackItem;)V
    .registers 4
    .parameter "item"

    .prologue
    .line 294
    iput-object p1, p0, Lcom/sprint/w/installer/ManagePacksActivity$PackItemView;->mItem:Lcom/sprint/w/installer/ManagePacksActivity$PackItem;

    .line 296
    iget-object v0, p0, Lcom/sprint/w/installer/ManagePacksActivity$PackItemView;->mTitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/sprint/w/installer/ManagePacksActivity$PackItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v0, p1, Lcom/sprint/w/installer/ManagePacksActivity$PackItem;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/sprint/w/installer/ManagePacksActivity$PackItemView;->this$0:Lcom/sprint/w/installer/ManagePacksActivity;

    iget-object v1, v1, Lcom/sprint/w/installer/ManagePacksActivity;->mInstalledPackId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 298
    iget-object v0, p0, Lcom/sprint/w/installer/ManagePacksActivity$PackItemView;->mSecondatyTitle:Landroid/widget/TextView;

    const v1, 0x7f060019

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 303
    :goto_1d
    iget-object v0, p1, Lcom/sprint/w/installer/ManagePacksActivity$PackItem;->iconBytes:[B

    if-eqz v0, :cond_2a

    .line 304
    iget-object v0, p0, Lcom/sprint/w/installer/ManagePacksActivity$PackItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/sprint/w/installer/ManagePacksActivity$PackItem;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 306
    :cond_2a
    return-void

    .line 301
    :cond_2b
    iget-object v0, p0, Lcom/sprint/w/installer/ManagePacksActivity$PackItemView;->mSecondatyTitle:Landroid/widget/TextView;

    const v1, 0x7f06001a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1d
.end method
