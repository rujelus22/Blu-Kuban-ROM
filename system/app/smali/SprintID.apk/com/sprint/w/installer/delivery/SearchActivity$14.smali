.class Lcom/sprint/w/installer/delivery/SearchActivity$14;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/delivery/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/delivery/SearchActivity;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/delivery/SearchActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 953
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/SearchActivity$14;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 957
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$14;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    const v1, 0x7f030006

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/delivery/SearchActivity;->setContentView(I)V

    .line 959
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity$14;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$14;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    const v2, 0x7f0c000b

    invoke-virtual {v0, v2}, Lcom/sprint/w/installer/delivery/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/sprint/w/installer/delivery/SearchActivity;->mTitle:Landroid/widget/TextView;

    .line 960
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$14;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/SearchActivity;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f060014

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 961
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity$14;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$14;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    const v2, 0x7f0c0013

    invoke-virtual {v0, v2}, Lcom/sprint/w/installer/delivery/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    #setter for: Lcom/sprint/w/installer/delivery/SearchActivity;->mFeedTitle:Landroid/widget/TextView;
    invoke-static {v1, v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$1302(Lcom/sprint/w/installer/delivery/SearchActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 962
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity$14;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$14;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    const v2, 0x7f0c0014

    invoke-virtual {v0, v2}, Lcom/sprint/w/installer/delivery/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    #setter for: Lcom/sprint/w/installer/delivery/SearchActivity;->mDescription:Landroid/widget/TextView;
    invoke-static {v1, v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$1402(Lcom/sprint/w/installer/delivery/SearchActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 963
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$14;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    iget-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity$14;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    invoke-virtual {v1}, Lcom/sprint/w/installer/delivery/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020014

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    #setter for: Lcom/sprint/w/installer/delivery/SearchActivity;->mDefaultIcon:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$1502(Lcom/sprint/w/installer/delivery/SearchActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 964
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity$14;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$14;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    const v2, 0x7f0c0008

    invoke-virtual {v0, v2}, Lcom/sprint/w/installer/delivery/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    #setter for: Lcom/sprint/w/installer/delivery/SearchActivity;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v1, v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$1602(Lcom/sprint/w/installer/delivery/SearchActivity;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 965
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$14;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    #calls: Lcom/sprint/w/installer/delivery/SearchActivity;->initSearchButton()V
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$1700(Lcom/sprint/w/installer/delivery/SearchActivity;)V

    .line 967
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$14;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    #calls: Lcom/sprint/w/installer/delivery/SearchActivity;->handleCatalogViewer()V
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$1800(Lcom/sprint/w/installer/delivery/SearchActivity;)V

    .line 968
    return-void
.end method
