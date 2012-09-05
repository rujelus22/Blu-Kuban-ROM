.class Lcom/sprint/w/installer/PackDetails$DetailsAdapter;
.super Landroid/widget/BaseAdapter;
.source "PackDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/PackDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DetailsAdapter"
.end annotation


# static fields
.field static final VIEW_TYPE_ITEM:I = 0x1

.field static final VIEW_TYPE_SEPARATOR:I


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/PackDetails;


# direct methods
.method private constructor <init>(Lcom/sprint/w/installer/PackDetails;)V
    .registers 2
    .parameter

    .prologue
    .line 383
    iput-object p1, p0, Lcom/sprint/w/installer/PackDetails$DetailsAdapter;->this$0:Lcom/sprint/w/installer/PackDetails;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sprint/w/installer/PackDetails;Lcom/sprint/w/installer/PackDetails$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/PackDetails$DetailsAdapter;-><init>(Lcom/sprint/w/installer/PackDetails;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 456
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/sprint/w/installer/PackDetails$DetailsAdapter;->this$0:Lcom/sprint/w/installer/PackDetails;

    iget-object v0, v0, Lcom/sprint/w/installer/PackDetails;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 392
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "id"

    .prologue
    .line 397
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 5
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    .line 441
    iget-object v1, p0, Lcom/sprint/w/installer/PackDetails$DetailsAdapter;->this$0:Lcom/sprint/w/installer/PackDetails;

    iget-object v1, v1, Lcom/sprint/w/installer/PackDetails;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprint/w/installer/PackDetails$DetailsItem;

    invoke-virtual {v1}, Lcom/sprint/w/installer/PackDetails$DetailsItem;->getType()I

    move-result v0

    .line 442
    .local v0, type:I
    if-ne v0, v2, :cond_13

    .line 443
    const/4 v1, 0x0

    .line 445
    :goto_12
    return v1

    :cond_13
    move v1, v2

    goto :goto_12
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 402
    iget-object v5, p0, Lcom/sprint/w/installer/PackDetails$DetailsAdapter;->this$0:Lcom/sprint/w/installer/PackDetails;

    iget-object v5, v5, Lcom/sprint/w/installer/PackDetails;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/w/installer/PackDetails$DetailsItem;

    .line 403
    .local v0, item:Lcom/sprint/w/installer/PackDetails$DetailsItem;
    const/4 v4, 0x0

    .line 404
    .local v4, v:Landroid/view/View;
    invoke-virtual {v0}, Lcom/sprint/w/installer/PackDetails$DetailsItem;->getType()I

    move-result v5

    packed-switch v5, :pswitch_data_7a

    .line 433
    .end local v0           #item:Lcom/sprint/w/installer/PackDetails$DetailsItem;
    :goto_12
    return-object v4

    .restart local v0       #item:Lcom/sprint/w/installer/PackDetails$DetailsItem;
    :pswitch_13
    move-object v1, p2

    .line 406
    check-cast v1, Lcom/sprint/w/installer/PackDetails$SeparatorView;

    .line 407
    .local v1, sv:Lcom/sprint/w/installer/PackDetails$SeparatorView;
    if-nez v1, :cond_21

    .line 408
    new-instance v1, Lcom/sprint/w/installer/PackDetails$SeparatorView;

    .end local v1           #sv:Lcom/sprint/w/installer/PackDetails$SeparatorView;
    iget-object v5, p0, Lcom/sprint/w/installer/PackDetails$DetailsAdapter;->this$0:Lcom/sprint/w/installer/PackDetails;

    iget-object v6, p0, Lcom/sprint/w/installer/PackDetails$DetailsAdapter;->this$0:Lcom/sprint/w/installer/PackDetails;

    invoke-direct {v1, v5, v6}, Lcom/sprint/w/installer/PackDetails$SeparatorView;-><init>(Lcom/sprint/w/installer/PackDetails;Landroid/content/Context;)V

    .line 410
    .restart local v1       #sv:Lcom/sprint/w/installer/PackDetails$SeparatorView;
    :cond_21
    iget-object v5, v1, Lcom/sprint/w/installer/PackDetails$SeparatorView;->mTitle:Landroid/widget/TextView;

    check-cast v0, Lcom/sprint/w/installer/PackDetails$Separator;

    .end local v0           #item:Lcom/sprint/w/installer/PackDetails$DetailsItem;
    iget-object v6, v0, Lcom/sprint/w/installer/PackDetails$Separator;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    move-object v4, v1

    .line 412
    goto :goto_12

    .end local v1           #sv:Lcom/sprint/w/installer/PackDetails$SeparatorView;
    .restart local v0       #item:Lcom/sprint/w/installer/PackDetails$DetailsItem;
    :pswitch_2c
    move-object v2, p2

    .line 414
    check-cast v2, Lcom/sprint/w/installer/PackDetails$TextItemView;

    .line 415
    .local v2, tv:Lcom/sprint/w/installer/PackDetails$TextItemView;
    if-nez v2, :cond_3a

    .line 416
    new-instance v2, Lcom/sprint/w/installer/PackDetails$TextItemView;

    .end local v2           #tv:Lcom/sprint/w/installer/PackDetails$TextItemView;
    iget-object v5, p0, Lcom/sprint/w/installer/PackDetails$DetailsAdapter;->this$0:Lcom/sprint/w/installer/PackDetails;

    iget-object v6, p0, Lcom/sprint/w/installer/PackDetails$DetailsAdapter;->this$0:Lcom/sprint/w/installer/PackDetails;

    invoke-direct {v2, v5, v6}, Lcom/sprint/w/installer/PackDetails$TextItemView;-><init>(Lcom/sprint/w/installer/PackDetails;Landroid/content/Context;)V

    .line 418
    .restart local v2       #tv:Lcom/sprint/w/installer/PackDetails$TextItemView;
    :cond_3a
    iget-object v5, v2, Lcom/sprint/w/installer/PackDetails$TextItemView;->mTitle:Landroid/widget/TextView;

    check-cast v0, Lcom/sprint/w/installer/PackDetails$NonClickableItem;

    .end local v0           #item:Lcom/sprint/w/installer/PackDetails$DetailsItem;
    iget-object v6, v0, Lcom/sprint/w/installer/PackDetails$NonClickableItem;->title:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v5, v2, Lcom/sprint/w/installer/PackDetails$TextItemView;->mSecondaryTitle:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 420
    move-object v4, v2

    .line 421
    goto :goto_12

    .end local v2           #tv:Lcom/sprint/w/installer/PackDetails$TextItemView;
    .restart local v0       #item:Lcom/sprint/w/installer/PackDetails$DetailsItem;
    :pswitch_50
    move-object v3, p2

    .line 423
    check-cast v3, Lcom/sprint/w/installer/PackDetails$TextItemView;

    .line 424
    .local v3, tv2:Lcom/sprint/w/installer/PackDetails$TextItemView;
    if-nez v3, :cond_5e

    .line 425
    new-instance v3, Lcom/sprint/w/installer/PackDetails$TextItemView;

    .end local v3           #tv2:Lcom/sprint/w/installer/PackDetails$TextItemView;
    iget-object v5, p0, Lcom/sprint/w/installer/PackDetails$DetailsAdapter;->this$0:Lcom/sprint/w/installer/PackDetails;

    iget-object v6, p0, Lcom/sprint/w/installer/PackDetails$DetailsAdapter;->this$0:Lcom/sprint/w/installer/PackDetails;

    invoke-direct {v3, v5, v6}, Lcom/sprint/w/installer/PackDetails$TextItemView;-><init>(Lcom/sprint/w/installer/PackDetails;Landroid/content/Context;)V

    .line 427
    .restart local v3       #tv2:Lcom/sprint/w/installer/PackDetails$TextItemView;
    :cond_5e
    iget-object v6, v3, Lcom/sprint/w/installer/PackDetails$TextItemView;->mTitle:Landroid/widget/TextView;

    move-object v5, v0

    check-cast v5, Lcom/sprint/w/installer/PackDetails$ClickableItem;

    iget-object v5, v5, Lcom/sprint/w/installer/PackDetails$ClickableItem;->title:Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object v5, v3, Lcom/sprint/w/installer/PackDetails$TextItemView;->mSecondaryTitle:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 429
    iget-object v5, v3, Lcom/sprint/w/installer/PackDetails$TextItemView;->mSecondaryTitle:Landroid/widget/TextView;

    check-cast v0, Lcom/sprint/w/installer/PackDetails$ClickableItem;

    .end local v0           #item:Lcom/sprint/w/installer/PackDetails$DetailsItem;
    iget-object v6, v0, Lcom/sprint/w/installer/PackDetails$ClickableItem;->secondTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    move-object v4, v3

    goto :goto_12

    .line 404
    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_13
        :pswitch_2c
        :pswitch_50
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 451
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .registers 3
    .parameter "position"

    .prologue
    .line 461
    iget-object v0, p0, Lcom/sprint/w/installer/PackDetails$DetailsAdapter;->this$0:Lcom/sprint/w/installer/PackDetails;

    iget-object v0, v0, Lcom/sprint/w/installer/PackDetails;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/w/installer/PackDetails$DetailsItem;

    invoke-virtual {v0}, Lcom/sprint/w/installer/PackDetails$DetailsItem;->isEnabled()Z

    move-result v0

    return v0
.end method
