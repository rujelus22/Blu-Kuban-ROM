.class Lcom/sprint/w/installer/psi/ServicePackListAdapter$PackItemView;
.super Landroid/widget/RelativeLayout;
.source "ServicePackListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/psi/ServicePackListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackItemView"
.end annotation


# instance fields
.field mIcon:Landroid/widget/ImageView;

.field mNote:Landroid/widget/TextView;

.field mPack:Lcom/sprint/w/installer/psi/ServicePack;

.field mSecondatyTitle:Landroid/widget/TextView;

.field mSubSection:Landroid/view/View;

.field mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 151
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030013

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 152
    const v0, 0x7f0c000b

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/psi/ServicePackListAdapter$PackItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/w/installer/psi/ServicePackListAdapter$PackItemView;->mTitle:Landroid/widget/TextView;

    .line 153
    const v0, 0x7f0c0034

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/psi/ServicePackListAdapter$PackItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/w/installer/psi/ServicePackListAdapter$PackItemView;->mSecondatyTitle:Landroid/widget/TextView;

    .line 154
    const v0, 0x7f0c0035

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/psi/ServicePackListAdapter$PackItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/w/installer/psi/ServicePackListAdapter$PackItemView;->mNote:Landroid/widget/TextView;

    .line 155
    const v0, 0x7f0c0030

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/psi/ServicePackListAdapter$PackItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sprint/w/installer/psi/ServicePackListAdapter$PackItemView;->mIcon:Landroid/widget/ImageView;

    .line 156
    const v0, 0x7f0c000a

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/psi/ServicePackListAdapter$PackItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/psi/ServicePackListAdapter$PackItemView;->mSubSection:Landroid/view/View;

    .line 157
    return-void
.end method
