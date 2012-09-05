.class Lcom/sprint/w/installer/PackDetails$TextItemView;
.super Landroid/widget/RelativeLayout;
.source "PackDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/PackDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TextItemView"
.end annotation


# instance fields
.field mSecondaryTitle:Landroid/widget/TextView;

.field mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/sprint/w/installer/PackDetails;


# direct methods
.method public constructor <init>(Lcom/sprint/w/installer/PackDetails;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "context"

    .prologue
    .line 375
    iput-object p1, p0, Lcom/sprint/w/installer/PackDetails$TextItemView;->this$0:Lcom/sprint/w/installer/PackDetails;

    .line 376
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 377
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001a

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 378
    const v0, 0x7f0c000b

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/PackDetails$TextItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/w/installer/PackDetails$TextItemView;->mTitle:Landroid/widget/TextView;

    .line 379
    const v0, 0x7f0c0034

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/PackDetails$TextItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/w/installer/PackDetails$TextItemView;->mSecondaryTitle:Landroid/widget/TextView;

    .line 380
    return-void
.end method
