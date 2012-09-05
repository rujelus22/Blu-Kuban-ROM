.class Lcom/sprint/w/installer/PackUninstaller$UninstallerAdapter;
.super Landroid/widget/BaseAdapter;
.source "PackUninstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/PackUninstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UninstallerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/PackUninstaller;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/PackUninstaller;)V
    .registers 2
    .parameter

    .prologue
    .line 647
    iput-object p1, p0, Lcom/sprint/w/installer/PackUninstaller$UninstallerAdapter;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 651
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$UninstallerAdapter;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v0, v0, Lcom/sprint/w/installer/PackUninstaller;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 656
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "p"

    .prologue
    .line 661
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 709
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$UninstallerAdapter;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v0, v0, Lcom/sprint/w/installer/PackUninstaller;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/w/installer/PackUninstaller$Listable;

    invoke-interface {v0}, Lcom/sprint/w/installer/PackUninstaller$Listable;->getType()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "pos"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 666
    iget-object v5, p0, Lcom/sprint/w/installer/PackUninstaller$UninstallerAdapter;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v5, v5, Lcom/sprint/w/installer/PackUninstaller;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprint/w/installer/PackUninstaller$Listable;

    .line 667
    .local v1, i:Lcom/sprint/w/installer/PackUninstaller$Listable;
    if-eqz v1, :cond_13

    .line 668
    invoke-interface {v1}, Lcom/sprint/w/installer/PackUninstaller$Listable;->getType()I

    move-result v5

    packed-switch v5, :pswitch_data_68

    .line 699
    :cond_13
    const/4 v4, 0x0

    .end local v1           #i:Lcom/sprint/w/installer/PackUninstaller$Listable;
    :goto_14
    return-object v4

    .restart local v1       #i:Lcom/sprint/w/installer/PackUninstaller$Listable;
    :pswitch_15
    move-object v4, p2

    .line 670
    check-cast v4, Lcom/sprint/w/installer/PackUninstaller$CategoryView;

    .line 671
    .local v4, v:Lcom/sprint/w/installer/PackUninstaller$CategoryView;
    if-nez v4, :cond_23

    .line 672
    new-instance v4, Lcom/sprint/w/installer/PackUninstaller$CategoryView;

    .end local v4           #v:Lcom/sprint/w/installer/PackUninstaller$CategoryView;
    iget-object v5, p0, Lcom/sprint/w/installer/PackUninstaller$UninstallerAdapter;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v6, p0, Lcom/sprint/w/installer/PackUninstaller$UninstallerAdapter;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    invoke-direct {v4, v5, v6}, Lcom/sprint/w/installer/PackUninstaller$CategoryView;-><init>(Lcom/sprint/w/installer/PackUninstaller;Landroid/content/Context;)V

    .line 674
    .restart local v4       #v:Lcom/sprint/w/installer/PackUninstaller$CategoryView;
    :cond_23
    check-cast v1, Lcom/sprint/w/installer/PackUninstaller$CategoryItem;

    .end local v1           #i:Lcom/sprint/w/installer/PackUninstaller$Listable;
    invoke-virtual {v4, v1}, Lcom/sprint/w/installer/PackUninstaller$CategoryView;->setItem(Lcom/sprint/w/installer/PackUninstaller$CategoryItem;)V

    goto :goto_14

    .end local v4           #v:Lcom/sprint/w/installer/PackUninstaller$CategoryView;
    .restart local v1       #i:Lcom/sprint/w/installer/PackUninstaller$Listable;
    :pswitch_29
    move-object v2, p2

    .line 677
    check-cast v2, Lcom/sprint/w/installer/PackUninstaller$ItemView;

    .line 678
    .local v2, iv:Lcom/sprint/w/installer/PackUninstaller$ItemView;
    if-nez v2, :cond_37

    .line 679
    new-instance v2, Lcom/sprint/w/installer/PackUninstaller$ItemView;

    .end local v2           #iv:Lcom/sprint/w/installer/PackUninstaller$ItemView;
    iget-object v5, p0, Lcom/sprint/w/installer/PackUninstaller$UninstallerAdapter;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v6, p0, Lcom/sprint/w/installer/PackUninstaller$UninstallerAdapter;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    invoke-direct {v2, v5, v6}, Lcom/sprint/w/installer/PackUninstaller$ItemView;-><init>(Lcom/sprint/w/installer/PackUninstaller;Landroid/content/Context;)V

    .line 681
    .restart local v2       #iv:Lcom/sprint/w/installer/PackUninstaller$ItemView;
    :cond_37
    check-cast v1, Lcom/sprint/w/installer/PackUninstaller$Item;

    .end local v1           #i:Lcom/sprint/w/installer/PackUninstaller$Listable;
    invoke-virtual {v2, v1}, Lcom/sprint/w/installer/PackUninstaller$ItemView;->setItem(Lcom/sprint/w/installer/PackUninstaller$Item;)V

    move-object v4, v2

    .line 682
    goto :goto_14

    .end local v2           #iv:Lcom/sprint/w/installer/PackUninstaller$ItemView;
    .restart local v1       #i:Lcom/sprint/w/installer/PackUninstaller$Listable;
    :pswitch_3e
    move-object v3, p2

    .line 684
    check-cast v3, Lcom/sprint/w/installer/PackUninstaller$ThumbView;

    .line 685
    .local v3, tv:Lcom/sprint/w/installer/PackUninstaller$ThumbView;
    if-nez v3, :cond_4c

    .line 686
    new-instance v3, Lcom/sprint/w/installer/PackUninstaller$ThumbView;

    .end local v3           #tv:Lcom/sprint/w/installer/PackUninstaller$ThumbView;
    iget-object v5, p0, Lcom/sprint/w/installer/PackUninstaller$UninstallerAdapter;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v6, p0, Lcom/sprint/w/installer/PackUninstaller$UninstallerAdapter;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    invoke-direct {v3, v5, v6}, Lcom/sprint/w/installer/PackUninstaller$ThumbView;-><init>(Lcom/sprint/w/installer/PackUninstaller;Landroid/content/Context;)V

    .line 688
    .restart local v3       #tv:Lcom/sprint/w/installer/PackUninstaller$ThumbView;
    :cond_4c
    check-cast v1, Lcom/sprint/w/installer/PackUninstaller$Item;

    .end local v1           #i:Lcom/sprint/w/installer/PackUninstaller$Listable;
    invoke-virtual {v3, v1}, Lcom/sprint/w/installer/PackUninstaller$ThumbView;->setItem(Lcom/sprint/w/installer/PackUninstaller$Item;)V

    move-object v4, v3

    .line 689
    goto :goto_14

    .end local v3           #tv:Lcom/sprint/w/installer/PackUninstaller$ThumbView;
    .restart local v1       #i:Lcom/sprint/w/installer/PackUninstaller$Listable;
    :pswitch_53
    move-object v0, p2

    .line 691
    check-cast v0, Lcom/sprint/w/installer/PackUninstaller$AppView;

    .line 692
    .local v0, av:Lcom/sprint/w/installer/PackUninstaller$AppView;
    if-nez v0, :cond_61

    .line 693
    new-instance v0, Lcom/sprint/w/installer/PackUninstaller$AppView;

    .end local v0           #av:Lcom/sprint/w/installer/PackUninstaller$AppView;
    iget-object v5, p0, Lcom/sprint/w/installer/PackUninstaller$UninstallerAdapter;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v6, p0, Lcom/sprint/w/installer/PackUninstaller$UninstallerAdapter;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    invoke-direct {v0, v5, v6}, Lcom/sprint/w/installer/PackUninstaller$AppView;-><init>(Lcom/sprint/w/installer/PackUninstaller;Landroid/content/Context;)V

    .line 695
    .restart local v0       #av:Lcom/sprint/w/installer/PackUninstaller$AppView;
    :cond_61
    check-cast v1, Lcom/sprint/w/installer/PackUninstaller$Item;

    .end local v1           #i:Lcom/sprint/w/installer/PackUninstaller$Listable;
    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/PackUninstaller$AppView;->setItem(Lcom/sprint/w/installer/PackUninstaller$Item;)V

    move-object v4, v0

    .line 696
    goto :goto_14

    .line 668
    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_15
        :pswitch_29
        :pswitch_3e
        :pswitch_53
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 704
    const/4 v0, 0x4

    return v0
.end method
