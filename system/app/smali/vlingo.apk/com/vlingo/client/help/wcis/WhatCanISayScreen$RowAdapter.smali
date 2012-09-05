.class public Lcom/vlingo/client/help/wcis/WhatCanISayScreen$RowAdapter;
.super Landroid/widget/BaseAdapter;
.source "WhatCanISayScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/help/wcis/WhatCanISayScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RowAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/help/wcis/WhatCanISayScreen;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/help/wcis/WhatCanISayScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/vlingo/client/help/wcis/WhatCanISayScreen$RowAdapter;->this$0:Lcom/vlingo/client/help/wcis/WhatCanISayScreen;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/vlingo/client/help/wcis/WhatCanISayScreen$RowAdapter;->this$0:Lcom/vlingo/client/help/wcis/WhatCanISayScreen;

    iget-object v0, v0, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 325
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 329
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v9, 0x7f0f0178

    const v8, 0x7f0f0175

    const/4 v7, 0x0

    .line 333
    iget-object v5, p0, Lcom/vlingo/client/help/wcis/WhatCanISayScreen$RowAdapter;->this$0:Lcom/vlingo/client/help/wcis/WhatCanISayScreen;

    iget-object v5, v5, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->items:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p1, v5, :cond_b6

    .line 334
    iget-object v5, p0, Lcom/vlingo/client/help/wcis/WhatCanISayScreen$RowAdapter;->this$0:Lcom/vlingo/client/help/wcis/WhatCanISayScreen;

    iget-object v5, v5, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->items:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 335
    .local v1, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "EXTRA_INFO"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 336
    iget-object v5, p0, Lcom/vlingo/client/help/wcis/WhatCanISayScreen$RowAdapter;->this$0:Lcom/vlingo/client/help/wcis/WhatCanISayScreen;

    const v6, 0x7f03006c

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 337
    .local v2, row:Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 338
    .local v3, text1:Landroid/widget/TextView;
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 339
    .local v4, text2:Landroid/widget/TextView;
    const-string v5, "EXTRA_INFO"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    const-string v5, "EXTRA_CAPTION"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    .end local v1           #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3           #text1:Landroid/widget/TextView;
    .end local v4           #text2:Landroid/widget/TextView;
    :goto_4e
    return-object v2

    .line 343
    .end local v2           #row:Landroid/view/View;
    .restart local v1       #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4f
    const-string v5, "EXTRA_SUBHEADING"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_72

    .line 344
    iget-object v5, p0, Lcom/vlingo/client/help/wcis/WhatCanISayScreen$RowAdapter;->this$0:Lcom/vlingo/client/help/wcis/WhatCanISayScreen;

    const v6, 0x7f03006d

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 345
    .restart local v2       #row:Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 346
    .restart local v3       #text1:Landroid/widget/TextView;
    const-string v5, "EXTRA_SUBHEADING"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4e

    .line 350
    .end local v2           #row:Landroid/view/View;
    .end local v3           #text1:Landroid/widget/TextView;
    :cond_72
    iget-object v5, p0, Lcom/vlingo/client/help/wcis/WhatCanISayScreen$RowAdapter;->this$0:Lcom/vlingo/client/help/wcis/WhatCanISayScreen;

    const v6, 0x7f03006f

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 351
    .restart local v2       #row:Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 352
    .restart local v3       #text1:Landroid/widget/TextView;
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 353
    .restart local v4       #text2:Landroid/widget/TextView;
    const v5, 0x7f0f00bc

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 354
    .local v0, image:Landroid/widget/ImageView;
    const-string v5, "EXTRA_LIST_ICON"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 355
    const-string v5, "EXTRA_LIST_TITLE"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    const-string v5, "EXTRA_LIST_EXAMPLE"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/text/Spanned;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4e

    .line 362
    .end local v0           #image:Landroid/widget/ImageView;
    .end local v1           #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2           #row:Landroid/view/View;
    .end local v3           #text1:Landroid/widget/TextView;
    .end local v4           #text2:Landroid/widget/TextView;
    :cond_b6
    iget-object v5, p0, Lcom/vlingo/client/help/wcis/WhatCanISayScreen$RowAdapter;->this$0:Lcom/vlingo/client/help/wcis/WhatCanISayScreen;

    const v6, 0x7f03006b

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 363
    .restart local v2       #row:Landroid/view/View;
    goto :goto_4e
.end method
