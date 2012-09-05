.class Lcom/infraware/polarisoffice/search/InputSearchKey$SearchListAdapter;
.super Landroid/widget/BaseAdapter;
.source "InputSearchKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/search/InputSearchKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/polarisoffice/search/InputSearchKey$SearchListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private m_oInflater:Landroid/view/LayoutInflater;

.field private m_oItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/polarisoffice/search/SearchItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/infraware/polarisoffice/search/InputSearchKey;


# direct methods
.method public constructor <init>(Lcom/infraware/polarisoffice/search/InputSearchKey;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter "context"

    .prologue
    .line 335
    iput-object p1, p0, Lcom/infraware/polarisoffice/search/InputSearchKey$SearchListAdapter;->this$0:Lcom/infraware/polarisoffice/search/InputSearchKey;

    .line 333
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/search/InputSearchKey$SearchListAdapter;->m_oItemList:Ljava/util/ArrayList;

    .line 334
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/search/InputSearchKey$SearchListAdapter;->m_oInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public addList(Lcom/infraware/polarisoffice/search/SearchItem;)V
    .registers 3
    .parameter "item"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/InputSearchKey$SearchListAdapter;->m_oItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/InputSearchKey$SearchListAdapter;->m_oItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 343
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/InputSearchKey$SearchListAdapter;->m_oItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/InputSearchKey$SearchListAdapter;->m_oItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 353
    const/4 v0, 0x0

    .line 355
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/InputSearchKey$SearchListAdapter;->m_oItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_9
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 360
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 370
    if-nez p2, :cond_35

    .line 372
    iget-object v2, p0, Lcom/infraware/polarisoffice/search/InputSearchKey$SearchListAdapter;->m_oInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030042

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 374
    new-instance v0, Lcom/infraware/polarisoffice/search/InputSearchKey$SearchListAdapter$ViewHolder;

    invoke-direct {v0, p0, v4}, Lcom/infraware/polarisoffice/search/InputSearchKey$SearchListAdapter$ViewHolder;-><init>(Lcom/infraware/polarisoffice/search/InputSearchKey$SearchListAdapter;Lcom/infraware/polarisoffice/search/InputSearchKey$SearchListAdapter$ViewHolder;)V

    .line 375
    .local v0, holder:Lcom/infraware/polarisoffice/search/InputSearchKey$SearchListAdapter$ViewHolder;
    const v2, 0x7f0c0195

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/infraware/polarisoffice/search/InputSearchKey$SearchListAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    .line 377
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 382
    :goto_1f
    iget-object v2, p0, Lcom/infraware/polarisoffice/search/InputSearchKey$SearchListAdapter;->m_oItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/polarisoffice/search/SearchItem;

    .line 384
    .local v1, menu:Lcom/infraware/polarisoffice/search/SearchItem;
    iget-object v2, v0, Lcom/infraware/polarisoffice/search/InputSearchKey$SearchListAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/infraware/polarisoffice/search/SearchItem;->m_strWord:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v2, v0, Lcom/infraware/polarisoffice/search/InputSearchKey$SearchListAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 387
    return-object p2

    .line 380
    .end local v0           #holder:Lcom/infraware/polarisoffice/search/InputSearchKey$SearchListAdapter$ViewHolder;
    .end local v1           #menu:Lcom/infraware/polarisoffice/search/SearchItem;
    :cond_35
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/polarisoffice/search/InputSearchKey$SearchListAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/infraware/polarisoffice/search/InputSearchKey$SearchListAdapter$ViewHolder;
    goto :goto_1f
.end method
