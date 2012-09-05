.class Lcom/android/browser/NavScreen$TabAdapter;
.super Landroid/widget/BaseAdapter;
.source "NavScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/NavScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabAdapter"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field tabControl:Lcom/android/browser/TabControl;

.field final synthetic this$0:Lcom/android/browser/NavScreen;


# direct methods
.method public constructor <init>(Lcom/android/browser/NavScreen;Landroid/content/Context;Lcom/android/browser/TabControl;)V
    .registers 4
    .parameter
    .parameter "ctx"
    .parameter "tc"

    .prologue
    .line 527
    iput-object p1, p0, Lcom/android/browser/NavScreen$TabAdapter;->this$0:Lcom/android/browser/NavScreen;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 528
    iput-object p2, p0, Lcom/android/browser/NavScreen$TabAdapter;->context:Landroid/content/Context;

    .line 529
    iput-object p3, p0, Lcom/android/browser/NavScreen$TabAdapter;->tabControl:Lcom/android/browser/TabControl;

    .line 530
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 4

    .prologue
    .line 534
    const-string v0, "Nav"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NavScreen :TabAdapter getCount() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/NavScreen$TabAdapter;->tabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v0, p0, Lcom/android/browser/NavScreen$TabAdapter;->tabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/browser/Tab;
    .registers 5
    .parameter "position"

    .prologue
    .line 540
    const-string v0, "Nav"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NavScreen :TabAdapter getItem()position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v0, p0, Lcom/android/browser/NavScreen$TabAdapter;->tabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, p1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 522
    invoke-virtual {p0, p1}, Lcom/android/browser/NavScreen$TabAdapter;->getItem(I)Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 5
    .parameter "position"

    .prologue
    .line 545
    const-string v0, "Nav"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NavScreen :TabAdapter getItemId() position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 551
    const-string v0, "Nav"

    const-string v1, "NavScreen :TabAdapter getView()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    new-instance v11, Lcom/android/browser/NavTabView;

    iget-object v0, p0, Lcom/android/browser/NavScreen$TabAdapter;->context:Landroid/content/Context;

    invoke-direct {v11, v0}, Lcom/android/browser/NavTabView;-><init>(Landroid/content/Context;)V

    .line 555
    .local v11, tabview:Lcom/android/browser/NavTabView;
    if-nez p2, :cond_22

    .line 556
    iget-object v0, p0, Lcom/android/browser/NavScreen$TabAdapter;->this$0:Lcom/android/browser/NavScreen;

    #getter for: Lcom/android/browser/NavScreen;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/browser/NavScreen;->access$700(Lcom/android/browser/NavScreen;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04002e

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 558
    :cond_22
    iget-object v0, p0, Lcom/android/browser/NavScreen$TabAdapter;->this$0:Lcom/android/browser/NavScreen;

    iget-object v0, v0, Lcom/android/browser/NavScreen;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v8, v0, Landroid/content/res/Configuration;->orientation:I

    .line 564
    .local v8, orientation:I
    invoke-virtual {p0, p1}, Lcom/android/browser/NavScreen$TabAdapter;->getItem(I)Lcom/android/browser/Tab;

    move-result-object v10

    .line 566
    .local v10, tab:Lcom/android/browser/Tab;
    invoke-virtual {v11, v10, v8}, Lcom/android/browser/NavTabView;->setWebView(Lcom/android/browser/Tab;I)V

    .line 568
    iget-object v0, p0, Lcom/android/browser/NavScreen$TabAdapter;->this$0:Lcom/android/browser/NavScreen;

    iget-object v0, v0, Lcom/android/browser/NavScreen;->mTabViews:Ljava/util/HashMap;

    iget-object v1, v11, Lcom/android/browser/NavTabView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    const v0, 0x7f0d0003

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 571
    .local v9, screenView:Landroid/widget/ImageView;
    const v0, 0x7f0d0082

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 572
    .local v2, closeView:Landroid/widget/ImageView;
    const v0, 0x7f0d0083

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 573
    .local v7, incognitoView:Landroid/widget/ImageView;
    invoke-virtual {v10}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v0

    if-nez v0, :cond_66

    .line 574
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 575
    :cond_66
    invoke-virtual {v11, v10, v8}, Lcom/android/browser/NavTabView;->getWebView(Lcom/android/browser/Tab;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 578
    iget-object v0, p0, Lcom/android/browser/NavScreen$TabAdapter;->this$0:Lcom/android/browser/NavScreen;

    iget-object v0, v0, Lcom/android/browser/NavScreen;->tc:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/browser/NavScreen$TabAdapter;->this$0:Lcom/android/browser/NavScreen;

    iget-object v1, v1, Lcom/android/browser/NavScreen;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0e0002

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_b4

    .line 580
    iget-object v0, p0, Lcom/android/browser/NavScreen$TabAdapter;->this$0:Lcom/android/browser/NavScreen;

    iget-object v0, v0, Lcom/android/browser/NavScreen;->mNewTab_I:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 581
    iget-object v0, p0, Lcom/android/browser/NavScreen$TabAdapter;->this$0:Lcom/android/browser/NavScreen;

    iget-object v0, v0, Lcom/android/browser/NavScreen;->mnewincognitotab_I:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 613
    :goto_96
    move v3, p1

    .line 614
    .local v3, closePosition:I
    iget-object v0, p0, Lcom/android/browser/NavScreen$TabAdapter;->this$0:Lcom/android/browser/NavScreen;

    iget-object v0, v0, Lcom/android/browser/NavScreen;->tc:Lcom/android/browser/TabControl;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v5

    .line 615
    .local v5, updateTab:Lcom/android/browser/Tab;
    iget-object v0, p0, Lcom/android/browser/NavScreen$TabAdapter;->this$0:Lcom/android/browser/NavScreen;

    iget-object v0, v0, Lcom/android/browser/NavScreen;->tc:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v4

    .line 617
    .local v4, tabCount:I
    new-instance v0, Lcom/android/browser/NavScreen$TabAdapter$1;

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/browser/NavScreen$TabAdapter$1;-><init>(Lcom/android/browser/NavScreen$TabAdapter;Landroid/widget/ImageView;IILcom/android/browser/Tab;I)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 695
    return-object p2

    .line 585
    .end local v3           #closePosition:I
    .end local v4           #tabCount:I
    .end local v5           #updateTab:Lcom/android/browser/Tab;
    :cond_b4
    iget-object v0, p0, Lcom/android/browser/NavScreen$TabAdapter;->this$0:Lcom/android/browser/NavScreen;

    iget-object v0, v0, Lcom/android/browser/NavScreen;->mNewTab_I:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 586
    iget-object v0, p0, Lcom/android/browser/NavScreen$TabAdapter;->this$0:Lcom/android/browser/NavScreen;

    iget-object v0, v0, Lcom/android/browser/NavScreen;->mnewincognitotab_I:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_96
.end method
