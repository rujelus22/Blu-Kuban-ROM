.class public Lcom/sprint/dsa/diagnostics/MoreInfoListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MoreInfoListAdapter.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SprintZone_Diagnostics"


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sprint/dsa/data/InfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sprint/dsa/diagnostics/DiagnosticStub;I)V
    .registers 6
    .parameter "context"
    .parameter "stub"
    .parameter "settingId"

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/sprint/dsa/diagnostics/MoreInfoListAdapter;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/sprint/dsa/diagnostics/MoreInfoListAdapter;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    .line 28
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/MoreInfoListAdapter;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    invoke-virtual {v0}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getInfoItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/MoreInfoListAdapter;->mItems:Ljava/util/List;

    .line 29
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/MoreInfoListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/MoreInfoListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 30
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/MoreInfoListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/MoreInfoListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 45
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/diagnostics/MoreInfoListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprint/dsa/data/InfoItem;

    .line 53
    .local v1, infoItem:Lcom/sprint/dsa/data/InfoItem;
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/MoreInfoListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030007

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, childView:Landroid/view/View;
    invoke-virtual {v1}, Lcom/sprint/dsa/data/InfoItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_26

    .line 57
    const v3, 0x7f0b001d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 58
    .local v2, tView:Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/sprint/dsa/data/InfoItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .end local v2           #tView:Landroid/widget/TextView;
    :cond_26
    invoke-virtual {v1}, Lcom/sprint/dsa/data/InfoItem;->getDesc()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 61
    const v3, 0x7f0b001e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 62
    .restart local v2       #tView:Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/sprint/dsa/data/InfoItem;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .end local v2           #tView:Landroid/widget/TextView;
    :cond_3c
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/sprint/dsa/diagnostics/MoreInfoListAdapter;->updateStatusDot(Landroid/view/View;I)V

    .line 66
    return-object v0
.end method

.method protected startProgressAnimation(Landroid/view/View;)V
    .registers 5
    .parameter "childView"

    .prologue
    .line 109
    const v2, 0x7f0b001c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 110
    .local v1, progress:Landroid/widget/ImageView;
    if-eqz v1, :cond_1a

    .line 111
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 112
    .local v0, animation:Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_16

    .line 113
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 115
    :cond_16
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    .end local v0           #animation:Landroid/graphics/drawable/AnimationDrawable;
    :cond_1a
    return-void
.end method

.method protected stopProgressAnimation(Landroid/view/View;)V
    .registers 5
    .parameter "childView"

    .prologue
    .line 120
    const v2, 0x7f0b001c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 121
    .local v1, progress:Landroid/widget/ImageView;
    if-eqz v1, :cond_1b

    .line 122
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 123
    .local v0, animation:Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_16

    .line 124
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 126
    :cond_16
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    .end local v0           #animation:Landroid/graphics/drawable/AnimationDrawable;
    :cond_1b
    return-void
.end method

.method protected updateStatusDot(Landroid/view/View;I)V
    .registers 9
    .parameter "childView"
    .parameter "status"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 78
    const v3, 0x7f0b001a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 79
    .local v0, greendot:Landroid/widget/ImageView;
    const v3, 0x7f0b001b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 80
    .local v1, reddot:Landroid/widget/ImageView;
    const v3, 0x7f0b0019

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 83
    .local v2, tdot:Landroid/widget/ImageView;
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/diagnostics/MoreInfoListAdapter;->stopProgressAnimation(Landroid/view/View;)V

    .line 88
    packed-switch p2, :pswitch_data_3e

    .line 106
    :goto_2d
    :pswitch_2d
    return-void

    .line 90
    :pswitch_2e
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/diagnostics/MoreInfoListAdapter;->startProgressAnimation(Landroid/view/View;)V

    goto :goto_2d

    .line 93
    :pswitch_32
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2d

    .line 100
    :pswitch_36
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2d

    .line 103
    :pswitch_3a
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2d

    .line 88
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_32
        :pswitch_36
        :pswitch_3a
        :pswitch_2d
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
    .end packed-switch
.end method

.method public updateView(ILandroid/view/View;ILjava/lang/String;)V
    .registers 7
    .parameter "position"
    .parameter "childView"
    .parameter "status"
    .parameter "desc"

    .prologue
    .line 71
    const v1, 0x7f0b001e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 72
    .local v0, tView:Landroid/widget/TextView;
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {p0, p2, p3}, Lcom/sprint/dsa/diagnostics/MoreInfoListAdapter;->updateStatusDot(Landroid/view/View;I)V

    .line 75
    return-void
.end method
