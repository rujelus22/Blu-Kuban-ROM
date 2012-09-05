.class Lcom/sprint/w/installer/ManagePacksActivity$MixedContentItemView;
.super Landroid/widget/RelativeLayout;
.source "ManagePacksActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/ManagePacksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MixedContentItemView"
.end annotation


# instance fields
.field mIcon:Landroid/widget/ImageView;

.field mItem:Lcom/sprint/w/installer/ManagePacksActivity$MixedContentItem;

.field mSecondraryTitle:Landroid/widget/TextView;

.field mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/sprint/w/installer/ManagePacksActivity;


# direct methods
.method public constructor <init>(Lcom/sprint/w/installer/ManagePacksActivity;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "context"

    .prologue
    .line 260
    iput-object p1, p0, Lcom/sprint/w/installer/ManagePacksActivity$MixedContentItemView;->this$0:Lcom/sprint/w/installer/ManagePacksActivity;

    .line 261
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 262
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030013

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 263
    const v0, 0x7f0c000b

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/ManagePacksActivity$MixedContentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/w/installer/ManagePacksActivity$MixedContentItemView;->mTitle:Landroid/widget/TextView;

    .line 264
    const v0, 0x7f0c0034

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/ManagePacksActivity$MixedContentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/w/installer/ManagePacksActivity$MixedContentItemView;->mSecondraryTitle:Landroid/widget/TextView;

    .line 265
    const v0, 0x7f0c0030

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/ManagePacksActivity$MixedContentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sprint/w/installer/ManagePacksActivity$MixedContentItemView;->mIcon:Landroid/widget/ImageView;

    .line 266
    return-void
.end method


# virtual methods
.method setItem(Lcom/sprint/w/installer/ManagePacksActivity$MixedContentItem;)V
    .registers 4
    .parameter "item"

    .prologue
    .line 269
    iput-object p1, p0, Lcom/sprint/w/installer/ManagePacksActivity$MixedContentItemView;->mItem:Lcom/sprint/w/installer/ManagePacksActivity$MixedContentItem;

    .line 270
    iget-object v0, p0, Lcom/sprint/w/installer/ManagePacksActivity$MixedContentItemView;->mTitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/sprint/w/installer/ManagePacksActivity$MixedContentItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Lcom/sprint/w/installer/ManagePacksActivity$MixedContentItemView;->mSecondraryTitle:Landroid/widget/TextView;

    const v1, 0x7f060094

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 273
    iget-object v0, p0, Lcom/sprint/w/installer/ManagePacksActivity$MixedContentItemView;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 274
    return-void
.end method
