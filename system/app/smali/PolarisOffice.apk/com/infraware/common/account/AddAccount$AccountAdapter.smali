.class public Lcom/infraware/common/account/AddAccount$AccountAdapter;
.super Landroid/widget/BaseAdapter;
.source "AddAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/account/AddAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccountAdapter"
.end annotation


# instance fields
.field arSrcItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/common/account/AddAccount$AccountListItem;",
            ">;"
        }
    .end annotation
.end field

.field mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/infraware/common/account/AddAccount;


# direct methods
.method public constructor <init>(Lcom/infraware/common/account/AddAccount;Landroid/content/Context;Ljava/util/ArrayList;)V
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
            "Lcom/infraware/common/account/AddAccount$AccountListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p3, arItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/common/account/AddAccount$AccountListItem;>;"
    iput-object p1, p0, Lcom/infraware/common/account/AddAccount$AccountAdapter;->this$0:Lcom/infraware/common/account/AddAccount;

    .line 225
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 226
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/infraware/common/account/AddAccount$AccountAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 227
    iput-object p3, p0, Lcom/infraware/common/account/AddAccount$AccountAdapter;->arSrcItem:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public InsertItem(ILcom/infraware/common/account/AddAccount$AccountListItem;)V
    .registers 4
    .parameter "location"
    .parameter "item"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/infraware/common/account/AddAccount$AccountAdapter;->arSrcItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 271
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/infraware/common/account/AddAccount$AccountAdapter;->arSrcItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/infraware/common/account/AddAccount$AccountListItem;
    .registers 3
    .parameter "position"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/infraware/common/account/AddAccount$AccountAdapter;->arSrcItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/common/account/AddAccount$AccountListItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/infraware/common/account/AddAccount$AccountAdapter;->getItem(I)Lcom/infraware/common/account/AddAccount$AccountListItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 239
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 243
    if-nez p2, :cond_d

    .line 244
    iget-object v2, p0, Lcom/infraware/common/account/AddAccount$AccountAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030032

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 247
    :cond_d
    const/4 v0, 0x0

    .line 248
    .local v0, Text:Landroid/widget/TextView;
    const/4 v1, 0x0

    .line 250
    .local v1, imgIcon:Landroid/widget/ImageView;
    const v2, 0x7f0c012d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #imgIcon:Landroid/widget/ImageView;
    check-cast v1, Landroid/widget/ImageView;

    .line 251
    .restart local v1       #imgIcon:Landroid/widget/ImageView;
    if-eqz v1, :cond_27

    .line 252
    iget-object v2, p0, Lcom/infraware/common/account/AddAccount$AccountAdapter;->arSrcItem:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/infraware/common/account/AddAccount$AccountListItem;

    iget v2, v2, Lcom/infraware/common/account/AddAccount$AccountListItem;->mIconResID:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 253
    :cond_27
    const v2, 0x7f0c0127

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #Text:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 254
    .restart local v0       #Text:Landroid/widget/TextView;
    if-eqz v0, :cond_3f

    .line 255
    iget-object v2, p0, Lcom/infraware/common/account/AddAccount$AccountAdapter;->arSrcItem:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/infraware/common/account/AddAccount$AccountListItem;

    iget-object v2, v2, Lcom/infraware/common/account/AddAccount$AccountListItem;->mText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :cond_3f
    return-object p2
.end method

.method public onRemove(I)V
    .registers 3
    .parameter "which"

    .prologue
    .line 265
    if-ltz p1, :cond_a

    iget-object v0, p0, Lcom/infraware/common/account/AddAccount$AccountAdapter;->arSrcItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_b

    .line 267
    :cond_a
    :goto_a
    return-void

    .line 266
    :cond_b
    invoke-virtual {p0, p1}, Lcom/infraware/common/account/AddAccount$AccountAdapter;->removeItem(I)V

    goto :goto_a
.end method

.method public removeItem(I)V
    .registers 3
    .parameter "location"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/infraware/common/account/AddAccount$AccountAdapter;->arSrcItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 262
    return-void
.end method
