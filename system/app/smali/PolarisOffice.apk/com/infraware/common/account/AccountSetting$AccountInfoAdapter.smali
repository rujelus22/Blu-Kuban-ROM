.class public Lcom/infraware/common/account/AccountSetting$AccountInfoAdapter;
.super Landroid/widget/BaseAdapter;
.source "AccountSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/account/AccountSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccountInfoAdapter"
.end annotation


# instance fields
.field arSrcItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/common/account/AccountSetting$AccountInfoListItem;",
            ">;"
        }
    .end annotation
.end field

.field mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/infraware/common/account/AccountSetting;


# direct methods
.method public constructor <init>(Lcom/infraware/common/account/AccountSetting;Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/common/account/AccountSetting$AccountInfoListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 324
    .local p3, arItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/common/account/AccountSetting$AccountInfoListItem;>;"
    iput-object p1, p0, Lcom/infraware/common/account/AccountSetting$AccountInfoAdapter;->this$0:Lcom/infraware/common/account/AccountSetting;

    .line 321
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 322
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/infraware/common/account/AccountSetting$AccountInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 323
    iput-object p3, p0, Lcom/infraware/common/account/AccountSetting$AccountInfoAdapter;->arSrcItem:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public InsertItem(ILcom/infraware/common/account/AccountSetting$AccountInfoListItem;)V
    .registers 4
    .parameter "location"
    .parameter "item"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/infraware/common/account/AccountSetting$AccountInfoAdapter;->arSrcItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 367
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/infraware/common/account/AccountSetting$AccountInfoAdapter;->arSrcItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/infraware/common/account/AccountSetting$AccountInfoListItem;
    .registers 3
    .parameter "position"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/infraware/common/account/AccountSetting$AccountInfoAdapter;->arSrcItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/common/account/AccountSetting$AccountInfoListItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/infraware/common/account/AccountSetting$AccountInfoAdapter;->getItem(I)Lcom/infraware/common/account/AccountSetting$AccountInfoListItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 335
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 339
    if-nez p2, :cond_d

    .line 340
    iget-object v2, p0, Lcom/infraware/common/account/AccountSetting$AccountInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030032

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 343
    :cond_d
    const/4 v0, 0x0

    .line 344
    .local v0, Text:Landroid/widget/TextView;
    const/4 v1, 0x0

    .line 346
    .local v1, imgIcon:Landroid/widget/ImageView;
    const v2, 0x7f0c012d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #imgIcon:Landroid/widget/ImageView;
    check-cast v1, Landroid/widget/ImageView;

    .line 347
    .restart local v1       #imgIcon:Landroid/widget/ImageView;
    if-eqz v1, :cond_27

    .line 348
    iget-object v2, p0, Lcom/infraware/common/account/AccountSetting$AccountInfoAdapter;->arSrcItem:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/infraware/common/account/AccountSetting$AccountInfoListItem;

    iget v2, v2, Lcom/infraware/common/account/AccountSetting$AccountInfoListItem;->mIconResID:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 349
    :cond_27
    const v2, 0x7f0c0127

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #Text:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 350
    .restart local v0       #Text:Landroid/widget/TextView;
    if-eqz v0, :cond_3f

    .line 351
    iget-object v2, p0, Lcom/infraware/common/account/AccountSetting$AccountInfoAdapter;->arSrcItem:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/infraware/common/account/AccountSetting$AccountInfoListItem;

    iget-object v2, v2, Lcom/infraware/common/account/AccountSetting$AccountInfoListItem;->mText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    :cond_3f
    return-object p2
.end method

.method public onRemove(I)V
    .registers 3
    .parameter "which"

    .prologue
    .line 361
    if-ltz p1, :cond_a

    iget-object v0, p0, Lcom/infraware/common/account/AccountSetting$AccountInfoAdapter;->arSrcItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_b

    .line 363
    :cond_a
    :goto_a
    return-void

    .line 362
    :cond_b
    invoke-virtual {p0, p1}, Lcom/infraware/common/account/AccountSetting$AccountInfoAdapter;->removeItem(I)V

    goto :goto_a
.end method

.method public removeItem(I)V
    .registers 3
    .parameter "location"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/infraware/common/account/AccountSetting$AccountInfoAdapter;->arSrcItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 358
    return-void
.end method
