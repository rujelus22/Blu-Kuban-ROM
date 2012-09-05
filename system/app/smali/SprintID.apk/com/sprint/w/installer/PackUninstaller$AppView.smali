.class Lcom/sprint/w/installer/PackUninstaller$AppView;
.super Landroid/widget/RelativeLayout;
.source "PackUninstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/PackUninstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppView"
.end annotation


# instance fields
.field mAppName:Landroid/widget/TextView;

.field mIcon:Landroid/widget/ImageView;

.field mItem:Lcom/sprint/w/installer/PackUninstaller$Item;

.field mSecondLine:Landroid/widget/TextView;

.field mSelectedChkBox:Landroid/widget/CheckBox;

.field final synthetic this$0:Lcom/sprint/w/installer/PackUninstaller;


# direct methods
.method public constructor <init>(Lcom/sprint/w/installer/PackUninstaller;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "context"

    .prologue
    .line 605
    iput-object p1, p0, Lcom/sprint/w/installer/PackUninstaller$AppView;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    .line 606
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 607
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002b

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 608
    const v0, 0x7f0c0036

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/PackUninstaller$AppView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$AppView;->mAppName:Landroid/widget/TextView;

    .line 609
    const v0, 0x7f0c007e

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/PackUninstaller$AppView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$AppView;->mSecondLine:Landroid/widget/TextView;

    .line 610
    const v0, 0x7f0c0030

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/PackUninstaller$AppView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$AppView;->mIcon:Landroid/widget/ImageView;

    .line 611
    const v0, 0x7f0c007b

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/PackUninstaller$AppView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$AppView;->mSelectedChkBox:Landroid/widget/CheckBox;

    .line 612
    return-void
.end method


# virtual methods
.method setItem(Lcom/sprint/w/installer/PackUninstaller$Item;)V
    .registers 10
    .parameter "item"

    .prologue
    .line 615
    iput-object p1, p0, Lcom/sprint/w/installer/PackUninstaller$AppView;->mItem:Lcom/sprint/w/installer/PackUninstaller$Item;

    .line 616
    iget-object v3, p1, Lcom/sprint/w/installer/PackUninstaller$Item;->title:Ljava/lang/String;

    .line 617
    .local v3, title:Ljava/lang/String;
    if-eqz v3, :cond_10

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_12

    .line 618
    :cond_10
    const-string v3, "Untitled"

    .line 620
    :cond_12
    iget-object v4, p0, Lcom/sprint/w/installer/PackUninstaller$AppView;->mAppName:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    iget-object v4, p1, Lcom/sprint/w/installer/PackUninstaller$Item;->packNames:[Ljava/lang/String;

    if-nez v4, :cond_6b

    .line 622
    iget-object v4, p1, Lcom/sprint/w/installer/PackUninstaller$Item;->version:Ljava/lang/String;

    if-eqz v4, :cond_63

    .line 623
    iget-object v4, p0, Lcom/sprint/w/installer/PackUninstaller$AppView;->mSecondLine:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 624
    iget-object v4, p0, Lcom/sprint/w/installer/PackUninstaller$AppView;->mSecondLine:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sprint/w/installer/PackUninstaller$AppView;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    const v7, 0x7f060048

    invoke-virtual {v6, v7}, Lcom/sprint/w/installer/PackUninstaller;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/sprint/w/installer/PackUninstaller$Item;->version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    :goto_4c
    iget-object v4, p0, Lcom/sprint/w/installer/PackUninstaller$AppView;->mSelectedChkBox:Landroid/widget/CheckBox;

    iget-boolean v5, p1, Lcom/sprint/w/installer/PackUninstaller$Item;->checked:Z

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 640
    :try_start_53
    iget-object v4, p0, Lcom/sprint/w/installer/PackUninstaller$AppView;->mIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/sprint/w/installer/PackUninstaller$AppView;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v5, v5, Lcom/sprint/w/installer/PackUninstaller;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v6, p1, Lcom/sprint/w/installer/PackUninstaller$Item;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_62
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_53 .. :try_end_62} :catch_cb

    .line 644
    :goto_62
    return-void

    .line 626
    :cond_63
    iget-object v4, p0, Lcom/sprint/w/installer/PackUninstaller$AppView;->mSecondLine:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4c

    .line 629
    :cond_6b
    const-string v2, ""

    .line 630
    .local v2, text:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6e
    iget-object v4, p1, Lcom/sprint/w/installer/PackUninstaller$Item;->packNames:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_a5

    .line 631
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/sprint/w/installer/PackUninstaller$Item;->packNames:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 632
    add-int/lit8 v4, v1, 0x1

    iget-object v5, p1, Lcom/sprint/w/installer/PackUninstaller$Item;->packNames:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_a2

    .line 633
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 630
    :cond_a2
    add-int/lit8 v1, v1, 0x1

    goto :goto_6e

    .line 636
    :cond_a5
    iget-object v4, p0, Lcom/sprint/w/installer/PackUninstaller$AppView;->mSecondLine:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sprint/w/installer/PackUninstaller$AppView;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    const v7, 0x7f0600bc

    invoke-virtual {v6, v7}, Lcom/sprint/w/installer/PackUninstaller;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4c

    .line 641
    .end local v1           #i:I
    .end local v2           #text:Ljava/lang/String;
    :catch_cb
    move-exception v0

    .line 642
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v4, p0, Lcom/sprint/w/installer/PackUninstaller$AppView;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    #getter for: Lcom/sprint/w/installer/PackUninstaller;->log:Lcom/sprint/id/logger/Logger;
    invoke-static {v4}, Lcom/sprint/w/installer/PackUninstaller;->access$400(Lcom/sprint/w/installer/PackUninstaller;)Lcom/sprint/id/logger/Logger;

    move-result-object v4

    const-string v5, "Error reading app icon"

    invoke-virtual {v4, v5, v0}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_62
.end method
