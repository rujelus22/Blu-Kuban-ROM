.class public Lcom/infraware/polarisoffice/common/MultiAdapter;
.super Landroid/widget/BaseAdapter;
.source "MultiAdapter.java"


# instance fields
.field arSrcItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/polarisoffice/common/MultiListItem;",
            ">;"
        }
    .end annotation
.end field

.field mEditBtn:Landroid/widget/Button;

.field mHandler:Landroid/os/Handler;

.field mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 4
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/polarisoffice/common/MultiListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, arItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/polarisoffice/common/MultiListItem;>;"
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/infraware/polarisoffice/common/MultiAdapter;->mEditBtn:Landroid/widget/Button;

    .line 28
    iput-object v0, p0, Lcom/infraware/polarisoffice/common/MultiAdapter;->mHandler:Landroid/os/Handler;

    .line 30
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/MultiAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 31
    iput-object p2, p0, Lcom/infraware/polarisoffice/common/MultiAdapter;->arSrcItem:Ljava/util/ArrayList;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;)V
    .registers 5
    .parameter "context"
    .parameter
    .parameter "aHandler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/polarisoffice/common/MultiListItem;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, arItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/polarisoffice/common/MultiListItem;>;"
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/infraware/polarisoffice/common/MultiAdapter;->mEditBtn:Landroid/widget/Button;

    .line 28
    iput-object v0, p0, Lcom/infraware/polarisoffice/common/MultiAdapter;->mHandler:Landroid/os/Handler;

    .line 35
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/MultiAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 36
    iput-object p2, p0, Lcom/infraware/polarisoffice/common/MultiAdapter;->arSrcItem:Ljava/util/ArrayList;

    .line 37
    iput-object p3, p0, Lcom/infraware/polarisoffice/common/MultiAdapter;->mHandler:Landroid/os/Handler;

    .line 38
    return-void
.end method


# virtual methods
.method public InsertItem(ILcom/infraware/polarisoffice/common/MultiListItem;)V
    .registers 4
    .parameter "location"
    .parameter "item"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/MultiAdapter;->arSrcItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 258
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/MultiAdapter;->arSrcItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/infraware/polarisoffice/common/MultiListItem;
    .registers 3
    .parameter "position"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/MultiAdapter;->arSrcItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/polarisoffice/common/MultiListItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/infraware/polarisoffice/common/MultiAdapter;->getItem(I)Lcom/infraware/polarisoffice/common/MultiListItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 49
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/MultiAdapter;->arSrcItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/polarisoffice/common/MultiListItem;

    iget v0, v0, Lcom/infraware/polarisoffice/common/MultiListItem;->mType:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 17
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 65
    if-nez p2, :cond_18

    .line 66
    const/4 v8, 0x0

    .line 67
    .local v8, res:I
    iget-object v10, p0, Lcom/infraware/polarisoffice/common/MultiAdapter;->arSrcItem:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/infraware/polarisoffice/common/MultiListItem;

    iget v10, v10, Lcom/infraware/polarisoffice/common/MultiListItem;->mType:I

    packed-switch v10, :pswitch_data_290

    .line 96
    :goto_10
    iget-object v10, p0, Lcom/infraware/polarisoffice/common/MultiAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v8, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 99
    .end local v8           #res:I
    :cond_18
    const/4 v1, 0x0

    .line 100
    .local v1, Text:Landroid/widget/TextView;
    const/4 v2, 0x0

    .line 101
    .local v2, Text2:Landroid/widget/TextView;
    const/4 v5, 0x0

    .line 102
    .local v5, imgIcon:Landroid/widget/ImageView;
    const/4 v9, 0x0

    .line 103
    .local v9, view:Lcom/infraware/polarisoffice/common/ColorView;
    iget-object v10, p0, Lcom/infraware/polarisoffice/common/MultiAdapter;->arSrcItem:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/infraware/polarisoffice/common/MultiListItem;

    iget v10, v10, Lcom/infraware/polarisoffice/common/MultiListItem;->mType:I

    packed-switch v10, :pswitch_data_2a6

    .line 244
    :cond_29
    :goto_29
    :pswitch_29
    return-object p2

    .line 69
    .end local v1           #Text:Landroid/widget/TextView;
    .end local v2           #Text2:Landroid/widget/TextView;
    .end local v5           #imgIcon:Landroid/widget/ImageView;
    .end local v9           #view:Lcom/infraware/polarisoffice/common/ColorView;
    .restart local v8       #res:I
    :pswitch_2a
    const v8, 0x1090003

    .line 70
    goto :goto_10

    .line 72
    :pswitch_2e
    const v8, 0x7f030034

    .line 73
    goto :goto_10

    .line 75
    :pswitch_32
    const v8, 0x7f030031

    .line 76
    goto :goto_10

    .line 78
    :pswitch_36
    const v8, 0x7f03002f

    .line 79
    goto :goto_10

    .line 81
    :pswitch_3a
    const v8, 0x7f03002d

    .line 82
    goto :goto_10

    .line 84
    :pswitch_3e
    const v8, 0x7f030030

    .line 85
    goto :goto_10

    .line 87
    :pswitch_42
    const v8, 0x1090005

    .line 88
    goto :goto_10

    .line 90
    :pswitch_46
    const v8, 0x7f03002e

    .line 91
    goto :goto_10

    .line 93
    :pswitch_4a
    const v8, 0x7f030033

    goto :goto_10

    .line 107
    .end local v8           #res:I
    .restart local v1       #Text:Landroid/widget/TextView;
    .restart local v2       #Text2:Landroid/widget/TextView;
    .restart local v5       #imgIcon:Landroid/widget/ImageView;
    .restart local v9       #view:Lcom/infraware/polarisoffice/common/ColorView;
    :pswitch_4e
    const v10, 0x7f0c0127

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #Text:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 109
    .restart local v1       #Text:Landroid/widget/TextView;
    if-eqz v1, :cond_73

    .line 111
    iget-object v10, p0, Lcom/infraware/polarisoffice/common/MultiAdapter;->arSrcItem:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/infraware/polarisoffice/common/MultiListItem;

    iget-object v10, v10, Lcom/infraware/polarisoffice/common/MultiListItem;->mText1:Ljava/lang/String;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v10, p0, Lcom/infraware/polarisoffice/common/MultiAdapter;->arSrcItem:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/infraware/polarisoffice/common/MultiListItem;

    iget v10, v10, Lcom/infraware/polarisoffice/common/MultiListItem;->mColor:I

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    :cond_73
    const v10, 0x7f0c012d

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #imgIcon:Landroid/widget/ImageView;
    check-cast v5, Landroid/widget/ImageView;

    .line 116
    .restart local v5       #imgIcon:Landroid/widget/ImageView;
    if-eqz v5, :cond_29

    .line 117
    iget-object v10, p0, Lcom/infraware/polarisoffice/common/MultiAdapter;->arSrcItem:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/infraware/polarisoffice/common/MultiListItem;

    iget v10, v10, Lcom/infraware/polarisoffice/common/MultiListItem;->mIconNormalRes:I

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_29

    .line 120
    :pswitch_8c
    const v10, 0x7f0c0127

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #Text:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 121
    .restart local v1       #Text:Landroid/widget/TextView;
    if-eqz v1, :cond_a4

    .line 122
    iget-object v10, p0, Lcom/infraware/polarisoffice/common/MultiAdapter;->arSrcItem:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/infraware/polarisoffice/common/MultiListItem;

    iget-object v10, v10, Lcom/infraware/polarisoffice/common/MultiListItem;->mText1:Ljava/lang/String;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :cond_a4
    const v10, 0x7f0c012c

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #Text2:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 125
    .restart local v2       #Text2:Landroid/widget/TextView;
    if-eqz v2, :cond_bc

    .line 126
    iget-object v10, p0, Lcom/infraware/polarisoffice/common/MultiAdapter;->arSrcItem:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/infraware/polarisoffice/common/MultiListItem;

    iget-object v10, v10, Lcom/infraware/polarisoffice/common/MultiListItem;->mText2:Ljava/lang/String;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    :cond_bc
    const v10, 0x7f0c012d

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #imgIcon:Landroid/widget/ImageView;
    check-cast v5, Landroid/widget/ImageView;

    .line 129
    .restart local v5       #imgIcon:Landroid/widget/ImageView;
    if-eqz v5, :cond_29

    .line 131
    iget-object v10, p0, Lcom/infraware/polarisoffice/common/MultiAdapter;->arSrcItem:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/infraware/polarisoffice/common/MultiListItem;

    iget v10, v10, Lcom/infraware/polarisoffice/common/MultiListItem;->mIconNormalRes:I

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_29

    .line 136
    :pswitch_d6
    const v10, 0x7f0c012a

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #Text:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 138
    .restart local v1       #Text:Landroid/widget/TextView;
    if-eqz v1, :cond_ee

    .line 139
    iget-object v10, p0, Lcom/infraware/polarisoffice/common/MultiAdapter;->arSrcItem:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/infraware/polarisoffice/common/MultiListItem;

    iget-object v10, v10, Lcom/infraware/polarisoffice/common/MultiListItem;->mText1:Ljava/lang/String;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :cond_ee
    const v10, 0x7f0c012b

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #view:Lcom/infraware/polarisoffice/common/ColorView;
    check-cast v9, Lcom/infraware/polarisoffice/common/ColorView;

    .line 142
    .restart local v9       #view:Lcom/infraware/polarisoffice/common/ColorView;
    if-eqz v9, :cond_29

    .line 144
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/infraware/polarisoffice/common/ColorView;->setVisibility(I)V

    .line 145
    iget-object v10, p0, Lcom/infraware/polarisoffice/common/MultiAdapter;->arSrcItem:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/infraware/polarisoffice/common/MultiListItem;

    iget v10, v10, Lcom/infraware/polarisoffice/common/MultiListItem;->mColor:I

    invoke-virtual {v9, v10}, Lcom/infraware/polarisoffice/common/ColorView;->setColor(I)V

    goto/16 :goto_29

    .line 149
    :pswitch_10c
    const v10, 0x7f0c0127

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #Text:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 150
    .restart local v1       #Text:Landroid/widget/TextView;
    if-eqz v1, :cond_131

    .line 152
    iget-object v10, p0, Lcom/infraware/polarisoffice/common/MultiAdapter;->arSrcItem:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/infraware/polarisoffice/common/MultiListItem;

    iget-object v10, v10, Lcom/infraware/polarisoffice/common/MultiListItem;->mText1:Ljava/lang/String;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v10, p0, Lcom/infraware/polarisoffice/common/MultiAdapter;->arSrcItem:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/infraware/polarisoffice/common/MultiListItem;

    iget v10, v10, Lcom/infraware/polarisoffice/common/MultiListItem;->mColor:I

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    :cond_131
    const v10, 0x7f0c0128

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/infraware/polarisoffice/common/ListImgRightButton;

    .line 157
    .local v0, RightBtn:Lcom/infraware/polarisoffice/common/ListImgRightButton;
    if-eqz v0, :cond_29

    .line 159
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/infraware/polarisoffice/common/ListImgRightButton;->setTag(Ljava/lang/Object;)V

    .line 160
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lcom/infraware/polarisoffice/common/ListImgRightButton;->setClickable(Z)V

    .line 161
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lcom/infraware/polarisoffice/common/ListImgRightButton;->setFocusable(Z)V

    .line 162
    iget-object v10, p0, Lcom/infraware/polarisoffice/common/MultiAdapter;->arSrcItem:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/infraware/polarisoffice/common/MultiListItem;

    iget v10, v10, Lcom/infraware/polarisoffice/common/MultiListItem;->mIconNormalRes:I

    invoke-virtual {v0, v10}, Lcom/infraware/polarisoffice/common/ListImgRightButton;->setBackgroundResource(I)V

    .line 163
    iget-object v10, p0, Lcom/infraware/polarisoffice/common/MultiAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v10, :cond_29

    .line 165
    new-instance v10, Lcom/infraware/polarisoffice/common/MultiAdapter$1;

    invoke-direct {v10, p0}, Lcom/infraware/polarisoffice/common/MultiAdapter$1;-><init>(Lcom/infraware/polarisoffice/common/MultiAdapter;)V

    invoke-virtual {v0, v10}, Lcom/infraware/polarisoffice/common/ListImgRightButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_29

    .line 182
    .end local v0           #RightBtn:Lcom/infraware/polarisoffice/common/ListImgRightButton;
    :pswitch_166
    const v10, 0x7f0c0127

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #Text:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 183
    .restart local v1       #Text:Landroid/widget/TextView;
    if-eqz v1, :cond_17e

    .line 184
    iget-object v10, p0, Lcom/infraware/polarisoffice/common/MultiAdapter;->arSrcItem:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/infraware/polarisoffice/common/MultiListItem;

    iget-object v10, v10, Lcom/infraware/polarisoffice/common/MultiListItem;->mText1:Ljava/lang/String;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    :cond_17e
    const v10, 0x7f0c012c

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #Text2:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 187
    .restart local v2       #Text2:Landroid/widget/TextView;
    if-eqz v2, :cond_196

    .line 188
    iget-object v10, p0, Lcom/infraware/polarisoffice/common/MultiAdapter;->arSrcItem:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/infraware/polarisoffice/common/MultiListItem;

    iget-object v10, v10, Lcom/infraware/polarisoffice/common/MultiListItem;->mText2:Ljava/lang/String;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    :cond_196
    const v10, 0x7f0c0128

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    .line 192
    .local v7, imgRightBtn:Landroid/widget/ImageButton;
    if-eqz v7, :cond_29

    .line 194
    new-instance v10, Lcom/infraware/polarisoffice/common/MultiAdapter$2;

    invoke-direct {v10, p0}, Lcom/infraware/polarisoffice/common/MultiAdapter$2;-><init>(Lcom/infraware/polarisoffice/common/MultiAdapter;)V

    invoke-virtual {v7, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_29

    .line 203
    .end local v7           #imgRightBtn:Landroid/widget/ImageButton;
    :pswitch_1ab
    const v10, 0x1020014

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckedTextView;

    .line 204
    .local v3, TextChecked:Landroid/widget/CheckedTextView;
    if-eqz v3, :cond_29

    .line 206
    iget-object v10, p0, Lcom/infraware/polarisoffice/common/MultiAdapter;->arSrcItem:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/infraware/polarisoffice/common/MultiListItem;

    iget-object v10, v10, Lcom/infraware/polarisoffice/common/MultiListItem;->mText1:Ljava/lang/String;

    invoke-virtual {v3, v10}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v10, p0, Lcom/infraware/polarisoffice/common/MultiAdapter;->arSrcItem:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/infraware/polarisoffice/common/MultiListItem;

    iget v10, v10, Lcom/infraware/polarisoffice/common/MultiListItem;->mColor:I

    invoke-virtual {v3, v10}, Landroid/widget/CheckedTextView;->setTextColor(I)V

    goto/16 :goto_29

    .line 211
    .end local v3           #TextChecked:Landroid/widget/CheckedTextView;
    :pswitch_1d2
    const v10, 0x7f0c0127

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #Text:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 212
    .restart local v1       #Text:Landroid/widget/TextView;
    if-eqz v1, :cond_1f7

    .line 214
    iget-object v10, p0, Lcom/infraware/polarisoffice/common/MultiAdapter;->arSrcItem:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/infraware/polarisoffice/common/MultiListItem;

    iget-object v10, v10, Lcom/infraware/polarisoffice/common/MultiListItem;->mText1:Ljava/lang/String;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v10, p0, Lcom/infraware/polarisoffice/common/MultiAdapter;->arSrcItem:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/infraware/polarisoffice/common/MultiListItem;

    iget v10, v10, Lcom/infraware/polarisoffice/common/MultiListItem;->mColor:I

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 219
    :cond_1f7
    const v10, 0x7f0c0129

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 220
    .local v4, checkBox1:Landroid/widget/CheckBox;
    if-eqz v4, :cond_29

    .line 222
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 223
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 224
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 225
    iget-object v10, p0, Lcom/infraware/polarisoffice/common/MultiAdapter;->arSrcItem:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/infraware/polarisoffice/common/MultiListItem;

    iget v10, v10, Lcom/infraware/polarisoffice/common/MultiListItem;->mRightBtnState:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_22e

    .line 226
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 229
    :goto_21f
    iget-object v10, p0, Lcom/infraware/polarisoffice/common/MultiAdapter;->arSrcItem:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/infraware/polarisoffice/common/MultiListItem;

    iget v10, v10, Lcom/infraware/polarisoffice/common/MultiListItem;->mIconNormalRes:I

    invoke-virtual {v4, v10}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    goto/16 :goto_29

    .line 228
    :cond_22e
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_21f

    .line 233
    .end local v4           #checkBox1:Landroid/widget/CheckBox;
    :pswitch_233
    const v10, 0x7f0c012d

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #imgIcon:Landroid/widget/ImageView;
    check-cast v5, Landroid/widget/ImageView;

    .line 234
    .restart local v5       #imgIcon:Landroid/widget/ImageView;
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget-object v10, p0, Lcom/infraware/polarisoffice/common/MultiAdapter;->arSrcItem:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/infraware/polarisoffice/common/MultiListItem;

    iget v10, v10, Lcom/infraware/polarisoffice/common/MultiListItem;->mIconNormalRes:I

    invoke-virtual {v11, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 235
    const v10, 0x7f0c0127

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #Text:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 236
    .restart local v1       #Text:Landroid/widget/TextView;
    iget-object v10, p0, Lcom/infraware/polarisoffice/common/MultiAdapter;->arSrcItem:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/infraware/polarisoffice/common/MultiListItem;

    invoke-virtual {v10}, Lcom/infraware/polarisoffice/common/MultiListItem;->getText1()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v10, p0, Lcom/infraware/polarisoffice/common/MultiAdapter;->arSrcItem:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/infraware/polarisoffice/common/MultiListItem;

    iget v10, v10, Lcom/infraware/polarisoffice/common/MultiListItem;->mColor:I

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 238
    const v10, 0x7f0c012e

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 239
    .local v6, imgIcon2:Landroid/widget/ImageView;
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0201a0

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_29

    .line 67
    nop

    :pswitch_data_290
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_2e
        :pswitch_32
        :pswitch_3e
        :pswitch_36
        :pswitch_3a
        :pswitch_42
        :pswitch_46
        :pswitch_4a
    .end packed-switch

    .line 103
    :pswitch_data_2a6
    .packed-switch 0x0
        :pswitch_29
        :pswitch_4e
        :pswitch_8c
        :pswitch_166
        :pswitch_d6
        :pswitch_10c
        :pswitch_1ab
        :pswitch_1d2
        :pswitch_233
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 57
    const/16 v0, 0x9

    return v0
.end method

.method public onDrop(II)V
    .registers 4
    .parameter "from"
    .parameter "to"

    .prologue
    .line 262
    invoke-virtual {p0, p1}, Lcom/infraware/polarisoffice/common/MultiAdapter;->getItem(I)Lcom/infraware/polarisoffice/common/MultiListItem;

    move-result-object v0

    .line 263
    .local v0, temp:Lcom/infraware/polarisoffice/common/MultiListItem;
    invoke-virtual {p0, p1}, Lcom/infraware/polarisoffice/common/MultiAdapter;->removeItem(I)V

    .line 264
    invoke-virtual {p0, p2, v0}, Lcom/infraware/polarisoffice/common/MultiAdapter;->InsertItem(ILcom/infraware/polarisoffice/common/MultiListItem;)V

    .line 265
    return-void
.end method

.method public onRemove(I)V
    .registers 3
    .parameter "which"

    .prologue
    .line 252
    if-ltz p1, :cond_a

    iget-object v0, p0, Lcom/infraware/polarisoffice/common/MultiAdapter;->arSrcItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_b

    .line 254
    :cond_a
    :goto_a
    return-void

    .line 253
    :cond_b
    invoke-virtual {p0, p1}, Lcom/infraware/polarisoffice/common/MultiAdapter;->removeItem(I)V

    goto :goto_a
.end method

.method public removeItem(I)V
    .registers 3
    .parameter "location"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/MultiAdapter;->arSrcItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 249
    return-void
.end method

.method public setButton(Landroid/widget/Button;)V
    .registers 2
    .parameter "nEditBtn"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/MultiAdapter;->mEditBtn:Landroid/widget/Button;

    .line 62
    return-void
.end method
