.class public Lcom/sec/android/socialhub/adapter/AccountListAdapter;
.super Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;
.source "AccountListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/adapter/AccountListAdapter$IAccountListInformation;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private accountId:I

.field private mInformation:Lcom/sec/android/socialhub/adapter/AccountListAdapter$IAccountListInformation;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-string v0, "AccountListAdapter"

    sput-object v0, Lcom/sec/android/socialhub/adapter/AccountListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .registers 13
    .parameter "context"
    .parameter "layout"
    .parameter "c"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 29
    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;-><init>(Landroid/content/Context;IILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/adapter/AccountListAdapter;->mInformation:Lcom/sec/android/socialhub/adapter/AccountListAdapter$IAccountListInformation;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->mIdIndexer:Ljava/util/HashMap;

    .line 33
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/sec/android/socialhub/adapter/AccountListAdapter$IAccountListInformation;

    if-eqz v0, :cond_1e

    .line 35
    check-cast p1, Lcom/sec/android/socialhub/adapter/AccountListAdapter$IAccountListInformation;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/socialhub/adapter/AccountListAdapter;->mInformation:Lcom/sec/android/socialhub/adapter/AccountListAdapter$IAccountListInformation;

    .line 37
    :cond_1e
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/adapter/AccountListAdapter;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/socialhub/adapter/AccountListAdapter;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/socialhub/adapter/AccountListAdapter;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/socialhub/adapter/AccountListAdapter;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/sec/android/socialhub/adapter/AccountListAdapter;->accountId:I

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/socialhub/adapter/AccountListAdapter;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput p1, p0, Lcom/sec/android/socialhub/adapter/AccountListAdapter;->accountId:I

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/socialhub/adapter/AccountListAdapter;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 8
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 62
    iget-object v1, p0, Lcom/sec/android/socialhub/adapter/AccountListAdapter;->mInformation:Lcom/sec/android/socialhub/adapter/AccountListAdapter$IAccountListInformation;

    if-nez v1, :cond_e

    .line 64
    sget-object v1, Lcom/sec/android/socialhub/adapter/AccountListAdapter;->TAG:Ljava/lang/String;

    const-string v2, "bindView()"

    const-string v3, "mInformation is null. maybe does not implements IAccountListInformation"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_d
    :goto_d
    return-void

    .line 68
    :cond_e
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    .line 71
    .local v0, wrapper:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    if-nez v0, :cond_39

    .line 73
    new-instance v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    .end local v0           #wrapper:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p3}, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/database/Cursor;)V

    .line 74
    .restart local v0       #wrapper:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 81
    :goto_23
    iget-object v1, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    const-string v2, "4_SevenIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 83
    iget-object v1, p0, Lcom/sec/android/socialhub/adapter/AccountListAdapter;->mInformation:Lcom/sec/android/socialhub/adapter/AccountListAdapter$IAccountListInformation;

    invoke-interface {v1}, Lcom/sec/android/socialhub/adapter/AccountListAdapter$IAccountListInformation;->getViewMode()I

    move-result v1

    if-nez v1, :cond_d

    .line 84
    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/adapter/AccountListAdapter;->updateIMPresence(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    goto :goto_d

    .line 78
    :cond_39
    invoke-virtual {v0, p2, p3}, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->changeCursor(Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_23
.end method

.method protected drawSplitArrow(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V
    .registers 2
    .parameter "wrapper"

    .prologue
    .line 94
    return-void
.end method

.method protected getWrapper(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    .registers 5
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 57
    new-instance v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    invoke-direct {v0, p2, p1, p3}, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/database/Cursor;)V

    return-object v0
.end method

.method protected initLayout(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V
    .registers 6
    .parameter "wrapper"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 136
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 138
    sget-object v0, Lcom/sec/android/socialhub/adapter/AccountListAdapter;->TAG:Ljava/lang/String;

    const-string v1, "bindView()"

    const-string v2, "app is null!!!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :goto_10
    return-void

    .line 142
    :cond_11
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ColorView_Account:Lcom/sec/android/socialhub/view/ListColorView;

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/view/ListColorView;->setAccountColor(I)V

    .line 143
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ImageView_Premium_Icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->LinearLayout_Email_Addr:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 145
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Layout_Badge_EMAIL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 146
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Layout_Im_Presence:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 147
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Delete_Check_box:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 149
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ImageVeiw_Small_Im_Presence:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ColorView_Account:Lcom/sec/android/socialhub/view/ListColorView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/ListColorView;->setAccountColor(I)V

    .line 153
    iget-object v0, p0, Lcom/sec/android/socialhub/adapter/AccountListAdapter;->mInformation:Lcom/sec/android/socialhub/adapter/AccountListAdapter$IAccountListInformation;

    invoke-interface {v0}, Lcom/sec/android/socialhub/adapter/AccountListAdapter$IAccountListInformation;->getViewMode()I

    move-result v0

    if-nez v0, :cond_57

    .line 155
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Delete_Check_box:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 172
    :goto_47
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Layout_Im_Presence:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 173
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Layout_Im_Presence:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/socialhub/adapter/AccountListAdapter$1;

    invoke-direct {v1, p0}, Lcom/sec/android/socialhub/adapter/AccountListAdapter$1;-><init>(Lcom/sec/android/socialhub/adapter/AccountListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_10

    .line 159
    :cond_57
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Delete_Check_box:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 160
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Layout_Badge_EMAIL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/sec/android/socialhub/adapter/AccountListAdapter;->mInformation:Lcom/sec/android/socialhub/adapter/AccountListAdapter$IAccountListInformation;

    invoke-interface {v0}, Lcom/sec/android/socialhub/adapter/AccountListAdapter$IAccountListInformation;->getCheckedListCollection()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->id:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_76

    .line 164
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Delete_Check_box:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_47

    .line 168
    :cond_76
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Delete_Check_box:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_47
.end method

.method protected makeIndexer()V
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->mIdIndexer:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 43
    return-void
.end method

.method protected makePosition(ILcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V
    .registers 5
    .parameter "position"
    .parameter "wrapper"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->mIdIndexer:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 50
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->mIdIndexer:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_15
    return-void
.end method

.method protected updateBagde(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V
    .registers 2
    .parameter "wrapper"

    .prologue
    .line 131
    return-void
.end method

.method public updateIMPresence(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V
    .registers 6
    .parameter "wrapper"

    .prologue
    const/16 v3, 0x8

    .line 98
    iget-object v1, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Layout_Badge_EMAIL:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 99
    iget-object v1, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ImageVeiw_Small_Im_Presence:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    iget-object v1, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ImageView_Premium_Icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    iget-object v1, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Layout_Im_Presence:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, resid:I
    iget-object v1, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->im_presence:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_3e

    .line 123
    :goto_21
    :pswitch_21
    iget-object v1, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ImageView_Im_Presence:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    return-void

    .line 107
    :pswitch_27
    const v0, 0x7f020108

    .line 108
    goto :goto_21

    .line 110
    :pswitch_2b
    const v0, 0x7f02010a

    .line 111
    goto :goto_21

    .line 113
    :pswitch_2f
    const v0, 0x7f02010c

    .line 114
    goto :goto_21

    .line 117
    :pswitch_33
    const v0, 0x7f02010e

    .line 118
    goto :goto_21

    .line 120
    :pswitch_37
    iget-object v1, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Layout_Im_Presence:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_21

    .line 104
    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_33
        :pswitch_27
        :pswitch_2b
        :pswitch_2f
        :pswitch_21
        :pswitch_21
        :pswitch_33
        :pswitch_37
    .end packed-switch
.end method
