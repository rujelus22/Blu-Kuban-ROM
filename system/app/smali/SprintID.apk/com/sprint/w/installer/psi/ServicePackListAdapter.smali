.class public Lcom/sprint/w/installer/psi/ServicePackListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ServicePackListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/w/installer/psi/ServicePackListAdapter$TempView;,
        Lcom/sprint/w/installer/psi/ServicePackListAdapter$FolderView;,
        Lcom/sprint/w/installer/psi/ServicePackListAdapter$PackItemView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sprint/w/installer/psi/Listable;",
        ">;"
    }
.end annotation


# instance fields
.field private mCallback:Ljava/lang/Runnable;

.field private mDefaultIcon:Landroid/graphics/Bitmap;

.field private mInstalledPack:Lcom/sprint/w/installer/PackInfo;

.field mInstalledPacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sprint/w/installer/PackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/psi/Listable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .registers 9
    .parameter "activity"
    .parameter
    .parameter "tempItemCallback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/psi/Listable;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, objects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/psi/Listable;>;"
    const v3, 0x7f030013

    invoke-direct {p0, p1, v3, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 30
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/sprint/w/installer/psi/ServicePackListAdapter;->mInstalledPacks:Ljava/util/Map;

    .line 39
    iput-object p3, p0, Lcom/sprint/w/installer/psi/ServicePackListAdapter;->mCallback:Ljava/lang/Runnable;

    .line 40
    iput-object p2, p0, Lcom/sprint/w/installer/psi/ServicePackListAdapter;->mItems:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020014

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/sprint/w/installer/psi/ServicePackListAdapter;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 43
    invoke-static {p1}, Lcom/sprint/w/installer/PackInfo;->getActivePackInfo(Landroid/content/Context;)Lcom/sprint/w/installer/PackInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/sprint/w/installer/psi/ServicePackListAdapter;->mInstalledPack:Lcom/sprint/w/installer/PackInfo;

    .line 44
    invoke-static {p1}, Lcom/sprint/w/installer/PackInfo;->loadAllPackDetails(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 45
    .local v1, p:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/PackInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprint/w/installer/PackInfo;

    .line 48
    .local v2, pi:Lcom/sprint/w/installer/PackInfo;
    iget-object v4, p0, Lcom/sprint/w/installer/psi/ServicePackListAdapter;->mInstalledPacks:Ljava/util/Map;

    iget-object v3, v2, Lcom/sprint/w/installer/PackInfo;->psiId:Ljava/lang/String;

    if-eqz v3, :cond_46

    iget-object v3, v2, Lcom/sprint/w/installer/PackInfo;->psiId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4c

    :cond_46
    iget-object v3, v2, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    :goto_48
    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    :cond_4c
    iget-object v3, v2, Lcom/sprint/w/installer/PackInfo;->psiId:Ljava/lang/String;

    goto :goto_48

    .line 50
    .end local v2           #pi:Lcom/sprint/w/installer/PackInfo;
    :cond_4f
    return-void
.end method


# virtual methods
.method public addItems(Ljava/util/ArrayList;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/sprint/w/installer/psi/Listable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/sprint/w/installer/psi/Listable;>;"
    iget-object v0, p0, Lcom/sprint/w/installer/psi/ServicePackListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 54
    return-void
.end method

.method public getItemViewType(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sprint/w/installer/psi/ServicePackListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/w/installer/psi/Listable;

    invoke-interface {v0}, Lcom/sprint/w/installer/psi/Listable;->getType()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 61
    iget-object v7, p0, Lcom/sprint/w/installer/psi/ServicePackListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprint/w/installer/psi/Listable;

    .line 62
    .local v1, item:Lcom/sprint/w/installer/psi/Listable;
    invoke-interface {v1}, Lcom/sprint/w/installer/psi/Listable;->getType()I

    move-result v7

    packed-switch v7, :pswitch_data_102

    .line 137
    const/4 v0, 0x0

    .end local v1           #item:Lcom/sprint/w/installer/psi/Listable;
    :goto_13
    return-object v0

    .restart local v1       #item:Lcom/sprint/w/installer/psi/Listable;
    :pswitch_14
    move-object v0, p2

    .line 64
    check-cast v0, Lcom/sprint/w/installer/psi/ServicePackListAdapter$FolderView;

    .line 65
    .local v0, fv:Lcom/sprint/w/installer/psi/ServicePackListAdapter$FolderView;
    if-nez v0, :cond_22

    .line 66
    new-instance v0, Lcom/sprint/w/installer/psi/ServicePackListAdapter$FolderView;

    .end local v0           #fv:Lcom/sprint/w/installer/psi/ServicePackListAdapter$FolderView;
    invoke-virtual {p0}, Lcom/sprint/w/installer/psi/ServicePackListAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/sprint/w/installer/psi/ServicePackListAdapter$FolderView;-><init>(Landroid/content/Context;)V

    .line 68
    .restart local v0       #fv:Lcom/sprint/w/installer/psi/ServicePackListAdapter$FolderView;
    :cond_22
    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/psi/ServicePackListAdapter$FolderView;->setTag(Ljava/lang/Object;)V

    .line 69
    iget-object v7, v0, Lcom/sprint/w/installer/psi/ServicePackListAdapter$FolderView;->mTitle:Landroid/widget/TextView;

    check-cast v1, Lcom/sprint/w/installer/psi/Folder;

    .end local v1           #item:Lcom/sprint/w/installer/psi/Listable;
    iget-object v8, v1, Lcom/sprint/w/installer/psi/Folder;->title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13

    .end local v0           #fv:Lcom/sprint/w/installer/psi/ServicePackListAdapter$FolderView;
    .restart local v1       #item:Lcom/sprint/w/installer/psi/Listable;
    :pswitch_2f
    move-object v5, p2

    .line 72
    check-cast v5, Lcom/sprint/w/installer/psi/ServicePackListAdapter$PackItemView;

    .line 73
    .local v5, row:Lcom/sprint/w/installer/psi/ServicePackListAdapter$PackItemView;
    if-nez v5, :cond_3d

    .line 74
    new-instance v5, Lcom/sprint/w/installer/psi/ServicePackListAdapter$PackItemView;

    .end local v5           #row:Lcom/sprint/w/installer/psi/ServicePackListAdapter$PackItemView;
    invoke-virtual {p0}, Lcom/sprint/w/installer/psi/ServicePackListAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/sprint/w/installer/psi/ServicePackListAdapter$PackItemView;-><init>(Landroid/content/Context;)V

    .restart local v5       #row:Lcom/sprint/w/installer/psi/ServicePackListAdapter$PackItemView;
    :cond_3d
    move-object v4, v1

    .line 76
    check-cast v4, Lcom/sprint/w/installer/psi/ServicePack;

    .line 77
    .local v4, pack:Lcom/sprint/w/installer/psi/ServicePack;
    iget-object v7, v5, Lcom/sprint/w/installer/psi/ServicePackListAdapter$PackItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    iget-object v7, v5, Lcom/sprint/w/installer/psi/ServicePackListAdapter$PackItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Lcom/sprint/w/installer/psi/ServicePack;->getIconUrl()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sprint/w/installer/psi/ServicePackListAdapter;->mDefaultIcon:Landroid/graphics/Bitmap;

    invoke-static {v7, v8, v9}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 81
    invoke-virtual {v5, v4}, Lcom/sprint/w/installer/psi/ServicePackListAdapter$PackItemView;->setTag(Ljava/lang/Object;)V

    .line 82
    iget-object v7, v5, Lcom/sprint/w/installer/psi/ServicePackListAdapter$PackItemView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/sprint/w/installer/psi/ServicePack;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v7, v5, Lcom/sprint/w/installer/psi/ServicePackListAdapter$PackItemView;->mSecondatyTitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/sprint/w/installer/psi/ServicePack;->getVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v7, v5, Lcom/sprint/w/installer/psi/ServicePackListAdapter$PackItemView;->mSecondatyTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    const-string v3, ""

    .line 90
    .local v3, note:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a4

    .line 91
    const/4 v2, 0x0

    .line 92
    .local v2, matchedPack:Lcom/sprint/w/installer/PackInfo;
    iget-object v7, p0, Lcom/sprint/w/installer/psi/ServicePackListAdapter;->mInstalledPack:Lcom/sprint/w/installer/PackInfo;

    if-eqz v7, :cond_d1

    invoke-virtual {v4}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v8

    iget-object v7, p0, Lcom/sprint/w/installer/psi/ServicePackListAdapter;->mInstalledPack:Lcom/sprint/w/installer/PackInfo;

    iget-object v7, v7, Lcom/sprint/w/installer/PackInfo;->psiId:Ljava/lang/String;

    if-eqz v7, :cond_8b

    iget-object v7, p0, Lcom/sprint/w/installer/psi/ServicePackListAdapter;->mInstalledPack:Lcom/sprint/w/installer/PackInfo;

    iget-object v7, v7, Lcom/sprint/w/installer/PackInfo;->psiId:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_cc

    :cond_8b
    iget-object v7, p0, Lcom/sprint/w/installer/psi/ServicePackListAdapter;->mInstalledPack:Lcom/sprint/w/installer/PackInfo;

    iget-object v7, v7, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    :goto_8f
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d1

    .line 93
    iget-object v2, p0, Lcom/sprint/w/installer/psi/ServicePackListAdapter;->mInstalledPack:Lcom/sprint/w/installer/PackInfo;

    .line 97
    :goto_97
    if-eqz v2, :cond_a4

    .line 98
    invoke-virtual {v5}, Lcom/sprint/w/installer/psi/ServicePackListAdapter$PackItemView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f06001a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 111
    .end local v2           #matchedPack:Lcom/sprint/w/installer/PackInfo;
    :cond_a4
    iget-object v7, v5, Lcom/sprint/w/installer/psi/ServicePackListAdapter$PackItemView;->mNote:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_de

    .line 114
    iget-object v7, v5, Lcom/sprint/w/installer/psi/ServicePackListAdapter$PackItemView;->mNote:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    :goto_b4
    iget-object v7, v5, Lcom/sprint/w/installer/psi/ServicePackListAdapter$PackItemView;->mNote:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_c4

    iget-object v7, v5, Lcom/sprint/w/installer/psi/ServicePackListAdapter$PackItemView;->mSecondatyTitle:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_e4

    .line 120
    :cond_c4
    iget-object v7, v5, Lcom/sprint/w/installer/psi/ServicePackListAdapter$PackItemView;->mSubSection:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    :goto_c9
    move-object v0, v5

    .line 125
    goto/16 :goto_13

    .line 92
    .restart local v2       #matchedPack:Lcom/sprint/w/installer/PackInfo;
    :cond_cc
    iget-object v7, p0, Lcom/sprint/w/installer/psi/ServicePackListAdapter;->mInstalledPack:Lcom/sprint/w/installer/PackInfo;

    iget-object v7, v7, Lcom/sprint/w/installer/PackInfo;->psiId:Ljava/lang/String;

    goto :goto_8f

    .line 95
    :cond_d1
    iget-object v7, p0, Lcom/sprint/w/installer/psi/ServicePackListAdapter;->mInstalledPacks:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #matchedPack:Lcom/sprint/w/installer/PackInfo;
    check-cast v2, Lcom/sprint/w/installer/PackInfo;

    .restart local v2       #matchedPack:Lcom/sprint/w/installer/PackInfo;
    goto :goto_97

    .line 116
    .end local v2           #matchedPack:Lcom/sprint/w/installer/PackInfo;
    :cond_de
    iget-object v7, v5, Lcom/sprint/w/installer/psi/ServicePackListAdapter$PackItemView;->mNote:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b4

    .line 122
    :cond_e4
    iget-object v7, v5, Lcom/sprint/w/installer/psi/ServicePackListAdapter$PackItemView;->mSubSection:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c9

    .line 127
    .end local v3           #note:Ljava/lang/String;
    .end local v4           #pack:Lcom/sprint/w/installer/psi/ServicePack;
    .end local v5           #row:Lcom/sprint/w/installer/psi/ServicePackListAdapter$PackItemView;
    :pswitch_ea
    move-object v6, p2

    .line 128
    .local v6, v:Landroid/view/View;
    if-nez v6, :cond_f6

    .line 129
    new-instance v6, Lcom/sprint/w/installer/psi/ServicePackListAdapter$TempView;

    .end local v6           #v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sprint/w/installer/psi/ServicePackListAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sprint/w/installer/psi/ServicePackListAdapter$TempView;-><init>(Landroid/content/Context;)V

    .line 132
    .restart local v6       #v:Landroid/view/View;
    :cond_f6
    iget-object v7, p0, Lcom/sprint/w/installer/psi/ServicePackListAdapter;->mCallback:Ljava/lang/Runnable;

    if-eqz v7, :cond_ff

    .line 133
    iget-object v7, p0, Lcom/sprint/w/installer/psi/ServicePackListAdapter;->mCallback:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    :cond_ff
    move-object v0, v6

    .line 135
    goto/16 :goto_13

    .line 62
    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_14
        :pswitch_2f
        :pswitch_ea
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 184
    const/4 v0, 0x3

    return v0
.end method

.method public removeLastItem()V
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sprint/w/installer/psi/ServicePackListAdapter;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sprint/w/installer/psi/ServicePackListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 58
    return-void
.end method
