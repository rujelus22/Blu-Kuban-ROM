.class Lcom/sprint/w/installer/RssPackBrowser$ItemView;
.super Landroid/widget/RelativeLayout;
.source "RssPackBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/RssPackBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemView"
.end annotation


# instance fields
.field mIcon:Landroid/widget/ImageView;

.field mSecondTitle:Landroid/widget/TextView;

.field mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/sprint/w/installer/RssPackBrowser;


# direct methods
.method public constructor <init>(Lcom/sprint/w/installer/RssPackBrowser;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "context"

    .prologue
    .line 294
    iput-object p1, p0, Lcom/sprint/w/installer/RssPackBrowser$ItemView;->this$0:Lcom/sprint/w/installer/RssPackBrowser;

    .line 295
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 296
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030013

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 297
    const v0, 0x7f0c0030

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/RssPackBrowser$ItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sprint/w/installer/RssPackBrowser$ItemView;->mIcon:Landroid/widget/ImageView;

    .line 298
    const v0, 0x7f0c000b

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/RssPackBrowser$ItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/w/installer/RssPackBrowser$ItemView;->mTitle:Landroid/widget/TextView;

    .line 299
    const v0, 0x7f0c0034

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/RssPackBrowser$ItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/w/installer/RssPackBrowser$ItemView;->mSecondTitle:Landroid/widget/TextView;

    .line 300
    return-void
.end method
