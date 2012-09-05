.class Lcom/sprint/w/installer/PackDetails$SeparatorView;
.super Landroid/widget/RelativeLayout;
.source "PackDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/PackDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SeparatorView"
.end annotation


# instance fields
.field mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/sprint/w/installer/PackDetails;


# direct methods
.method public constructor <init>(Lcom/sprint/w/installer/PackDetails;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "context"

    .prologue
    .line 363
    iput-object p1, p0, Lcom/sprint/w/installer/PackDetails$SeparatorView;->this$0:Lcom/sprint/w/installer/PackDetails;

    .line 364
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 365
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030008

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 366
    const v0, 0x7f0c000b

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/PackDetails$SeparatorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/w/installer/PackDetails$SeparatorView;->mTitle:Landroid/widget/TextView;

    .line 367
    return-void
.end method
