.class Lcom/sprint/w/installer/ManagePacksActivity$LandingAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManagePacksActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/ManagePacksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LandingAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/ManagePacksActivity;


# direct methods
.method private constructor <init>(Lcom/sprint/w/installer/ManagePacksActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/sprint/w/installer/ManagePacksActivity$LandingAdapter;->this$0:Lcom/sprint/w/installer/ManagePacksActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sprint/w/installer/ManagePacksActivity;Lcom/sprint/w/installer/ManagePacksActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/ManagePacksActivity$LandingAdapter;-><init>(Lcom/sprint/w/installer/ManagePacksActivity;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 365
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/sprint/w/installer/ManagePacksActivity$LandingAdapter;->this$0:Lcom/sprint/w/installer/ManagePacksActivity;

    iget-object v0, v0, Lcom/sprint/w/installer/ManagePacksActivity;->mListItems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 319
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "id"

    .prologue
    .line 324
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/sprint/w/installer/ManagePacksActivity$LandingAdapter;->this$0:Lcom/sprint/w/installer/ManagePacksActivity;

    iget-object v0, v0, Lcom/sprint/w/installer/ManagePacksActivity;->mListItems:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/w/installer/ManagePacksActivity$Listable;

    invoke-interface {v0}, Lcom/sprint/w/installer/ManagePacksActivity$Listable;->getType()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 329
    iget-object v4, p0, Lcom/sprint/w/installer/ManagePacksActivity$LandingAdapter;->this$0:Lcom/sprint/w/installer/ManagePacksActivity;

    iget-object v4, v4, Lcom/sprint/w/installer/ManagePacksActivity;->mListItems:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/w/installer/ManagePacksActivity$Listable;

    .line 330
    .local v0, l:Lcom/sprint/w/installer/ManagePacksActivity$Listable;
    const/4 v3, 0x0

    .line 331
    .local v3, v:Landroid/view/View;
    invoke-interface {v0}, Lcom/sprint/w/installer/ManagePacksActivity$Listable;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_3e

    .line 350
    .end local v0           #l:Lcom/sprint/w/installer/ManagePacksActivity$Listable;
    :goto_12
    return-object v3

    .restart local v0       #l:Lcom/sprint/w/installer/ManagePacksActivity$Listable;
    :pswitch_13
    move-object v1, p2

    .line 333
    check-cast v1, Lcom/sprint/w/installer/ManagePacksActivity$MixedContentItemView;

    .line 334
    .local v1, mcv:Lcom/sprint/w/installer/ManagePacksActivity$MixedContentItemView;
    if-nez v1, :cond_21

    .line 335
    new-instance v1, Lcom/sprint/w/installer/ManagePacksActivity$MixedContentItemView;

    .end local v1           #mcv:Lcom/sprint/w/installer/ManagePacksActivity$MixedContentItemView;
    iget-object v4, p0, Lcom/sprint/w/installer/ManagePacksActivity$LandingAdapter;->this$0:Lcom/sprint/w/installer/ManagePacksActivity;

    iget-object v5, p0, Lcom/sprint/w/installer/ManagePacksActivity$LandingAdapter;->this$0:Lcom/sprint/w/installer/ManagePacksActivity;

    invoke-direct {v1, v4, v5}, Lcom/sprint/w/installer/ManagePacksActivity$MixedContentItemView;-><init>(Lcom/sprint/w/installer/ManagePacksActivity;Landroid/content/Context;)V

    .line 337
    .restart local v1       #mcv:Lcom/sprint/w/installer/ManagePacksActivity$MixedContentItemView;
    :cond_21
    check-cast v0, Lcom/sprint/w/installer/ManagePacksActivity$MixedContentItem;

    .end local v0           #l:Lcom/sprint/w/installer/ManagePacksActivity$Listable;
    invoke-virtual {v1, v0}, Lcom/sprint/w/installer/ManagePacksActivity$MixedContentItemView;->setItem(Lcom/sprint/w/installer/ManagePacksActivity$MixedContentItem;)V

    .line 338
    move-object v3, v1

    .line 339
    goto :goto_12

    .end local v1           #mcv:Lcom/sprint/w/installer/ManagePacksActivity$MixedContentItemView;
    .restart local v0       #l:Lcom/sprint/w/installer/ManagePacksActivity$Listable;
    :pswitch_28
    move-object v2, p2

    .line 341
    check-cast v2, Lcom/sprint/w/installer/ManagePacksActivity$PackItemView;

    .line 342
    .local v2, piv:Lcom/sprint/w/installer/ManagePacksActivity$PackItemView;
    if-nez v2, :cond_36

    .line 343
    new-instance v2, Lcom/sprint/w/installer/ManagePacksActivity$PackItemView;

    .end local v2           #piv:Lcom/sprint/w/installer/ManagePacksActivity$PackItemView;
    iget-object v4, p0, Lcom/sprint/w/installer/ManagePacksActivity$LandingAdapter;->this$0:Lcom/sprint/w/installer/ManagePacksActivity;

    iget-object v5, p0, Lcom/sprint/w/installer/ManagePacksActivity$LandingAdapter;->this$0:Lcom/sprint/w/installer/ManagePacksActivity;

    invoke-direct {v2, v4, v5}, Lcom/sprint/w/installer/ManagePacksActivity$PackItemView;-><init>(Lcom/sprint/w/installer/ManagePacksActivity;Landroid/content/Context;)V

    .line 345
    .restart local v2       #piv:Lcom/sprint/w/installer/ManagePacksActivity$PackItemView;
    :cond_36
    check-cast v0, Lcom/sprint/w/installer/ManagePacksActivity$PackItem;

    .end local v0           #l:Lcom/sprint/w/installer/ManagePacksActivity$Listable;
    invoke-virtual {v2, v0}, Lcom/sprint/w/installer/ManagePacksActivity$PackItemView;->setItem(Lcom/sprint/w/installer/ManagePacksActivity$PackItem;)V

    .line 346
    move-object v3, v2

    goto :goto_12

    .line 331
    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_28
        :pswitch_13
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 355
    const/4 v0, 0x3

    return v0
.end method
