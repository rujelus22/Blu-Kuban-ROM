.class Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;
.super Landroid/widget/BaseAdapter;
.source "SheetEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListPopupAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field clrState:Landroid/content/res/ColorStateList;

.field private m_nListType:I

.field private m_oInflater:Landroid/view/LayoutInflater;

.field private m_oListItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;


# direct methods
.method public constructor <init>(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;Landroid/content/Context;I)V
    .registers 11
    .parameter
    .parameter "context"
    .parameter "listType"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3044
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    .line 3041
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 3033
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;->m_oListItem:Ljava/util/List;

    .line 3036
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v1, v6, [[I

    .line 3037
    new-array v2, v5, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    aput-object v2, v1, v4

    .line 3038
    new-array v2, v4, [I

    aput-object v2, v1, v5

    .line 3039
    new-array v2, v6, [I

    fill-array-data v2, :array_34

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;->clrState:Landroid/content/res/ColorStateList;

    .line 3042
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;->m_oInflater:Landroid/view/LayoutInflater;

    .line 3043
    iput p3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;->m_nListType:I

    return-void

    .line 3039
    nop

    :array_34
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0xfft
    .end array-data
.end method

.method private showSelectedItem(ILcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;I)V
    .registers 6
    .parameter "selectedIndex"
    .parameter "holder"
    .parameter "position"

    .prologue
    .line 3279
    iget-object v0, p2, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_imgIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3280
    iget-object v0, p2, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_imgIcon2:Landroid/widget/ImageView;

    const v1, 0x7f02009d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 3281
    iget-object v0, p2, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_imgIcon2:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3282
    if-ne p1, p3, :cond_1d

    .line 3283
    iget-object v0, p2, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_imgIcon2:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3285
    :cond_1d
    return-void
.end method


# virtual methods
.method public addList([Ljava/lang/String;)V
    .registers 5
    .parameter "items"

    .prologue
    .line 3274
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p1

    if-lt v0, v1, :cond_5

    .line 3276
    return-void

    .line 3275
    :cond_5
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;->m_oListItem:Ljava/util/List;

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3274
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 3048
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;->m_oListItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 3053
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;->m_oListItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 3054
    const/4 v0, 0x0

    .line 3056
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;->m_oListItem:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_9
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 3061
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/high16 v4, -0x100

    const/4 v3, -0x1

    .line 3073
    if-nez p2, :cond_84

    .line 3074
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;->m_oInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03004f

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 3076
    new-instance v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;

    invoke-direct {v0, p0, v6}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;-><init>(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;)V

    .line 3077
    .local v0, holder:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;
    const v1, 0x7f0c01cf

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    .line 3078
    const v1, 0x7f0c01ce

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_imgIcon:Landroid/widget/ImageView;

    .line 3079
    const v1, 0x7f0c01d0

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_imgIcon2:Landroid/widget/ImageView;

    .line 3081
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_strVendor:Ljava/lang/String;
    invoke-static {v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$12(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "- FV03"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4f

    .line 3083
    invoke-static {}, Lcom/infraware/common/util/Utils;->isICS()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 3084
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3087
    :cond_4f
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3091
    :goto_52
    iget v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;->m_nListType:I

    packed-switch v1, :pswitch_data_2e0

    .line 3256
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_strVendor:Ljava/lang/String;
    invoke-static {v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$12(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "- FV03"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2cb

    .line 3257
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;->clrState:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 3264
    :goto_6c
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_imgIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3267
    :goto_73
    iget-object v2, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3268
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3270
    return-object p2

    .line 3090
    .end local v0           #holder:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;
    :cond_84
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;
    goto :goto_52

    .line 3093
    :pswitch_8b
    packed-switch p1, :pswitch_data_2f8

    .line 3122
    :goto_8e
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_strVendor:Ljava/lang/String;
    invoke-static {v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$12(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "- FV03"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_fa

    .line 3123
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;->clrState:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 3130
    :goto_a3
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_imgIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_73

    .line 3095
    :pswitch_a9
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_imgIcon:Landroid/widget/ImageView;

    const v2, 0x7f020160

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_8e

    .line 3098
    :pswitch_b2
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_imgIcon:Landroid/widget/ImageView;

    const v2, 0x7f020150

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_8e

    .line 3101
    :pswitch_bb
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_imgIcon:Landroid/widget/ImageView;

    const v2, 0x7f020152

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_8e

    .line 3104
    :pswitch_c4
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_imgIcon:Landroid/widget/ImageView;

    const v2, 0x7f020154

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_8e

    .line 3107
    :pswitch_cd
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_imgIcon:Landroid/widget/ImageView;

    const v2, 0x7f020156

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_8e

    .line 3110
    :pswitch_d6
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_imgIcon:Landroid/widget/ImageView;

    const v2, 0x7f020158

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_8e

    .line 3113
    :pswitch_df
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_imgIcon:Landroid/widget/ImageView;

    const v2, 0x7f02015a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_8e

    .line 3116
    :pswitch_e8
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_imgIcon:Landroid/widget/ImageView;

    const v2, 0x7f02015c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_8e

    .line 3119
    :pswitch_f1
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_imgIcon:Landroid/widget/ImageView;

    const v2, 0x7f02015e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_8e

    .line 3125
    :cond_fa
    invoke-static {}, Lcom/infraware/common/util/Utils;->isICS()Z

    move-result v1

    if-eqz v1, :cond_106

    .line 3126
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_a3

    .line 3129
    :cond_106
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_a3

    .line 3133
    :pswitch_10c
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v1, v1, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wNegative:I

    invoke-direct {p0, v1, v0, p1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;->showSelectedItem(ILcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;I)V

    .line 3134
    packed-switch p1, :pswitch_data_30e

    .line 3141
    :pswitch_118
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_strVendor:Ljava/lang/String;
    invoke-static {v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$12(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "- FV03"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_138

    .line 3142
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;->clrState:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_73

    .line 3138
    :pswitch_12f
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    const/high16 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_73

    .line 3144
    :cond_138
    invoke-static {}, Lcom/infraware/common/util/Utils;->isICS()Z

    move-result v1

    if-eqz v1, :cond_145

    .line 3145
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_73

    .line 3148
    :cond_145
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_73

    .line 3153
    :pswitch_14c
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v1, v1, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    invoke-direct {p0, v1, v0, p1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;->showSelectedItem(ILcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;I)V

    goto/16 :goto_73

    .line 3156
    :pswitch_157
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v1, v1, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wCurrency:I

    invoke-direct {p0, v1, v0, p1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;->showSelectedItem(ILcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;I)V

    goto/16 :goto_73

    .line 3159
    :pswitch_162
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v1, v1, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wDate:I

    invoke-direct {p0, v1, v0, p1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;->showSelectedItem(ILcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;I)V

    .line 3160
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_strVendor:Ljava/lang/String;
    invoke-static {v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$12(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "- FV03"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_182

    .line 3161
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;->clrState:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_73

    .line 3163
    :cond_182
    invoke-static {}, Lcom/infraware/common/util/Utils;->isICS()Z

    move-result v1

    if-eqz v1, :cond_18f

    .line 3164
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_73

    .line 3167
    :cond_18f
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_73

    .line 3170
    :pswitch_196
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v1, v1, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wTime:I

    invoke-direct {p0, v1, v0, p1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;->showSelectedItem(ILcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;I)V

    .line 3171
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_strVendor:Ljava/lang/String;
    invoke-static {v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$12(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "- FV03"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1b6

    .line 3172
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;->clrState:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_73

    .line 3174
    :cond_1b6
    invoke-static {}, Lcom/infraware/common/util/Utils;->isICS()Z

    move-result v1

    if-eqz v1, :cond_1c3

    .line 3175
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_73

    .line 3178
    :cond_1c3
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_73

    .line 3181
    :pswitch_1ca
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v1, v1, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wFraction:I

    invoke-direct {p0, v1, v0, p1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;->showSelectedItem(ILcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;I)V

    goto/16 :goto_73

    .line 3184
    :pswitch_1d5
    packed-switch p1, :pswitch_data_31c

    .line 3198
    :goto_1d8
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_strVendor:Ljava/lang/String;
    invoke-static {v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$12(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "- FV03"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_218

    .line 3199
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;->clrState:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 3206
    :goto_1ed
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_imgIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_73

    .line 3186
    :pswitch_1f4
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_imgIcon:Landroid/widget/ImageView;

    const v2, 0x7f02014b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1d8

    .line 3189
    :pswitch_1fd
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_imgIcon:Landroid/widget/ImageView;

    const v2, 0x7f02014e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1d8

    .line 3192
    :pswitch_206
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_imgIcon:Landroid/widget/ImageView;

    const v2, 0x7f02013f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1d8

    .line 3195
    :pswitch_20f
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_imgIcon:Landroid/widget/ImageView;

    const v2, 0x7f020148

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1d8

    .line 3201
    :cond_218
    invoke-static {}, Lcom/infraware/common/util/Utils;->isICS()Z

    move-result v1

    if-eqz v1, :cond_224

    .line 3202
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1ed

    .line 3205
    :cond_224
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1ed

    .line 3209
    :pswitch_22a
    packed-switch p1, :pswitch_data_328

    .line 3223
    :goto_22d
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_strVendor:Ljava/lang/String;
    invoke-static {v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$12(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "- FV03"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_26d

    .line 3224
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;->clrState:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 3231
    :goto_242
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_imgIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_73

    .line 3211
    :pswitch_249
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_imgIcon:Landroid/widget/ImageView;

    const v2, 0x7f020139

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_22d

    .line 3214
    :pswitch_252
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_imgIcon:Landroid/widget/ImageView;

    const v2, 0x7f02013c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_22d

    .line 3217
    :pswitch_25b
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_imgIcon:Landroid/widget/ImageView;

    const v2, 0x7f020133

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_22d

    .line 3220
    :pswitch_264
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_imgIcon:Landroid/widget/ImageView;

    const v2, 0x7f020136

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_22d

    .line 3226
    :cond_26d
    invoke-static {}, Lcom/infraware/common/util/Utils;->isICS()Z

    move-result v1

    if-eqz v1, :cond_279

    .line 3227
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_242

    .line 3230
    :cond_279
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_242

    .line 3234
    :pswitch_27f
    packed-switch p1, :pswitch_data_334

    .line 3245
    :goto_282
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_strVendor:Ljava/lang/String;
    invoke-static {v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$12(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "- FV03"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2b9

    .line 3246
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter;->clrState:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 3253
    :goto_297
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_imgIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_73

    .line 3236
    :pswitch_29e
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_imgIcon:Landroid/widget/ImageView;

    const v2, 0x7f020120

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_282

    .line 3239
    :pswitch_2a7
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_imgIcon:Landroid/widget/ImageView;

    const v2, 0x7f020123

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_282

    .line 3242
    :pswitch_2b0
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_imgIcon:Landroid/widget/ImageView;

    const v2, 0x7f020126

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_282

    .line 3248
    :cond_2b9
    invoke-static {}, Lcom/infraware/common/util/Utils;->isICS()Z

    move-result v1

    if-eqz v1, :cond_2c5

    .line 3249
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_297

    .line 3252
    :cond_2c5
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_297

    .line 3259
    :cond_2cb
    invoke-static {}, Lcom/infraware/common/util/Utils;->isICS()Z

    move-result v1

    if-eqz v1, :cond_2d8

    .line 3260
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_6c

    .line 3263
    :cond_2d8
    iget-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$ListPopupAdapter$ViewHolder;->m_tvItem:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_6c

    .line 3091
    nop

    :pswitch_data_2e0
    .packed-switch 0xd
        :pswitch_8b
        :pswitch_1d5
        :pswitch_162
        :pswitch_196
        :pswitch_1ca
        :pswitch_27f
        :pswitch_22a
        :pswitch_14c
        :pswitch_157
        :pswitch_10c
    .end packed-switch

    .line 3093
    :pswitch_data_2f8
    .packed-switch 0x0
        :pswitch_a9
        :pswitch_b2
        :pswitch_bb
        :pswitch_c4
        :pswitch_cd
        :pswitch_d6
        :pswitch_df
        :pswitch_e8
        :pswitch_f1
    .end packed-switch

    .line 3134
    :pswitch_data_30e
    .packed-switch 0x0
        :pswitch_12f
        :pswitch_118
        :pswitch_12f
        :pswitch_118
        :pswitch_12f
    .end packed-switch

    .line 3184
    :pswitch_data_31c
    .packed-switch 0x0
        :pswitch_1f4
        :pswitch_1fd
        :pswitch_206
        :pswitch_20f
    .end packed-switch

    .line 3209
    :pswitch_data_328
    .packed-switch 0x0
        :pswitch_249
        :pswitch_252
        :pswitch_25b
        :pswitch_264
    .end packed-switch

    .line 3234
    :pswitch_data_334
    .packed-switch 0x0
        :pswitch_29e
        :pswitch_2a7
        :pswitch_2b0
    .end packed-switch
.end method
