.class public Lcom/vlingo/client/superdialer/items/SDItemHeaderView;
.super Landroid/widget/RelativeLayout;
.source "SDItemHeaderView.java"

# interfaces
.implements Lcom/vlingo/client/ui/SectionedListAdaptor$SectionedListHeader;


# static fields
.field public static final ACCESSORY_DROP_DOWN_COLLAPSED:I = 0x65

.field public static final ACCESSORY_DROP_DOWN_EXPANDED:I = 0x66

.field public static final ACCESSORY_NONE:I = 0x64


# instance fields
.field protected accessoryType:I

.field protected accessoryView:Landroid/widget/ImageView;

.field protected headerView:Landroid/widget/TextView;

.field protected subheaderView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/vlingo/client/superdialer/items/SDItemHeaderView;->accessoryType:I

    .line 39
    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/vlingo/client/superdialer/items/SDItemHeaderView;
    .registers 7
    .parameter "context"
    .parameter "header"
    .parameter "subheader"
    .parameter "accessory"

    .prologue
    .line 31
    const v1, 0x7f030062

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/superdialer/items/SDItemHeaderView;

    .line 32
    .local v0, v:Lcom/vlingo/client/superdialer/items/SDItemHeaderView;
    invoke-virtual {v0, p3}, Lcom/vlingo/client/superdialer/items/SDItemHeaderView;->setAccessoryType(I)V

    .line 33
    invoke-virtual {v0, p1, p2}, Lcom/vlingo/client/superdialer/items/SDItemHeaderView;->setHeaders(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 34
    return-object v0
.end method


# virtual methods
.method public getHeader()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemHeaderView;->headerView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubHeader()Ljava/lang/String;
    .registers 3

    .prologue
    .line 84
    iget-object v1, p0, Lcom/vlingo/client/superdialer/items/SDItemHeaderView;->subheaderView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, subheader:Ljava/lang/String;
    const-string v1, ""

    if-ne v0, v1, :cond_f

    .line 86
    const/4 v0, 0x0

    .line 87
    :cond_f
    return-object v0
.end method

.method public isAccessoryVisible()Z
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemHeaderView;->accessoryView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    return v0
.end method

.method public isCollapsable()Z
    .registers 3

    .prologue
    .line 120
    iget v0, p0, Lcom/vlingo/client/superdialer/items/SDItemHeaderView;->accessoryType:I

    const/16 v1, 0x66

    if-eq v0, v1, :cond_c

    iget v0, p0, Lcom/vlingo/client/superdialer/items/SDItemHeaderView;->accessoryType:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isCollapsed()Z
    .registers 3

    .prologue
    .line 124
    iget v0, p0, Lcom/vlingo/client/superdialer/items/SDItemHeaderView;->accessoryType:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 46
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 47
    const v0, 0x7f0f00d9

    invoke-virtual {p0, v0}, Lcom/vlingo/client/superdialer/items/SDItemHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemHeaderView;->accessoryView:Landroid/widget/ImageView;

    .line 48
    const v0, 0x7f0f00d8

    invoke-virtual {p0, v0}, Lcom/vlingo/client/superdialer/items/SDItemHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemHeaderView;->headerView:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f0f00db

    invoke-virtual {p0, v0}, Lcom/vlingo/client/superdialer/items/SDItemHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemHeaderView;->subheaderView:Landroid/widget/TextView;

    .line 50
    return-void
.end method

.method public setAccessoryResource(I)V
    .registers 4
    .parameter "resID"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemHeaderView;->accessoryView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemHeaderView;->accessoryView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    return-void
.end method

.method public setAccessoryType(I)V
    .registers 4
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 91
    iput p1, p0, Lcom/vlingo/client/superdialer/items/SDItemHeaderView;->accessoryType:I

    .line 92
    packed-switch p1, :pswitch_data_2a

    .line 105
    :goto_6
    return-void

    .line 94
    :pswitch_7
    iget-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemHeaderView;->accessoryView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 97
    :pswitch_e
    iget-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemHeaderView;->accessoryView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemHeaderView;->accessoryView:Landroid/widget/ImageView;

    const v1, 0x7f020098

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    .line 101
    :pswitch_1c
    iget-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemHeaderView;->accessoryView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemHeaderView;->accessoryView:Landroid/widget/ImageView;

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    .line 92
    :pswitch_data_2a
    .packed-switch 0x64
        :pswitch_7
        :pswitch_1c
        :pswitch_e
    .end packed-switch
.end method

.method public setAcessoryVisibility(Z)V
    .registers 4
    .parameter "show"

    .prologue
    .line 53
    if-eqz p1, :cond_9

    .line 54
    iget-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemHeaderView;->accessoryView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    :goto_8
    return-void

    .line 56
    :cond_9
    iget-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemHeaderView;->accessoryView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8
.end method

.method public setCollpased(Z)V
    .registers 3
    .parameter "collapsed"

    .prologue
    .line 113
    if-eqz p1, :cond_8

    .line 114
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/vlingo/client/superdialer/items/SDItemHeaderView;->setAccessoryType(I)V

    .line 117
    :goto_7
    return-void

    .line 116
    :cond_8
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/vlingo/client/superdialer/items/SDItemHeaderView;->setAccessoryType(I)V

    goto :goto_7
.end method

.method public setHeader(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "header"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemHeaderView;->headerView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    return-void
.end method

.method public setHeaders(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "header"
    .parameter "subheader"

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/vlingo/client/superdialer/items/SDItemHeaderView;->setHeader(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {p0, p2}, Lcom/vlingo/client/superdialer/items/SDItemHeaderView;->setSubHeader(Ljava/lang/CharSequence;)V

    .line 66
    return-void
.end method

.method public setSubHeader(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "header"

    .prologue
    .line 77
    if-nez p1, :cond_4

    .line 78
    const-string p1, ""

    .line 80
    :cond_4
    iget-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemHeaderView;->subheaderView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    return-void
.end method
