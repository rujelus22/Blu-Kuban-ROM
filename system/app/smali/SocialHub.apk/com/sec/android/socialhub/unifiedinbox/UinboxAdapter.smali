.class public Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "UinboxAdapter.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field protected mAccountManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

.field public mIdIndexer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;",
            ">;"
        }
    .end annotation
.end field

.field protected mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-string v0, "UinboxAdapter"

    sput-object v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .registers 13
    .parameter "context"
    .parameter "type"
    .parameter "layout"
    .parameter "c"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->mAccountManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->mType:I

    .line 36
    iput p2, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->mType:I

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->mAccountManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->mIdIndexer:Ljava/util/HashMap;

    .line 39
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 11
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 60
    if-eqz p3, :cond_8

    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 62
    :cond_8
    sget-object v3, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->TAG:Ljava/lang/String;

    const-string v4, "bindView()"

    const-string v5, "cursor is null"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :goto_11
    return-void

    .line 66
    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->getWrapper(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    move-result-object v2

    .line 68
    .local v2, wrapper:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    if-nez v2, :cond_b8

    .line 70
    new-instance v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    .end local v2           #wrapper:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1, p3}, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/database/Cursor;)V

    .line 71
    .restart local v2       #wrapper:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 79
    :goto_22
    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->initLayout(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    .line 82
    iget-object v3, v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->TextView_Email_Addr:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f09000d

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 84
    sget-object v3, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->TAG:Ljava/lang/String;

    const-string v4, "bindView()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Account] account = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->account:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", app = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", new = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->new_count:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", unread = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->unread_count:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", real_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->real_email:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->mAccountManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    iget-object v4, v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getAccount(Ljava/lang/String;)Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    move-result-object v0

    .line 96
    .local v0, account:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;
    if-eqz v0, :cond_bd

    .line 98
    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->updateBagde(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    .line 100
    iget-object v3, v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->TextView_Isp_Name:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->account:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {v0, p2, p3, v2}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->drawAccount(Landroid/content/Context;Landroid/database/Cursor;Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    .line 104
    iget-object v3, v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->TextView_Email_Addr:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->email:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v3, v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ImageView_ISP_Icon:Landroid/widget/ImageView;

    iget-object v4, v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 108
    .local v1, position:I
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->makePosition(ILcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    .line 115
    .end local v1           #position:I
    :goto_b3
    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->drawSplitArrow(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    goto/16 :goto_11

    .line 75
    .end local v0           #account:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;
    :cond_b8
    invoke-virtual {v2, p2, p3}, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->changeCursor(Landroid/content/Context;Landroid/database/Cursor;)V

    goto/16 :goto_22

    .line 112
    .restart local v0       #account:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;
    :cond_bd
    sget-object v3, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->TAG:Ljava/lang/String;

    const-string v4, "bindView()"

    const-string v5, "account is null.."

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b3
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 2
    .parameter "cursor"

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->makeIndexer()V

    .line 160
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 161
    return-void
.end method

.method protected drawSplitArrow(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V
    .registers 3
    .parameter "wrapper"

    .prologue
    .line 126
    iget v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->mType:I

    invoke-static {v0, p1}, Lcom/sec/android/socialhub/split/HubFragmentResizer;->drawSplitArrow(ILcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    .line 127
    return-void
.end method

.method protected getWrapper(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    .registers 5
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    .line 132
    .local v0, wrapper:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    return-object v0
.end method

.method protected initLayout(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V
    .registers 5
    .parameter "wrapper"

    .prologue
    const/16 v2, 0x8

    .line 143
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->LinearLayout_Email_Addr:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 144
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Layout_account:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 145
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Layout_Badge_EMAIL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 146
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Layout_Badge_EMAIL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 147
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Layout_Im_Presence:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 148
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ImageView_Premium_Icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ImageVeiw_Small_Im_Presence:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->TextView_EMAIL_Count:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Delete_Check_box:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 152
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ColorView_Account:Lcom/sec/android/socialhub/view/ListColorView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/ListColorView;->setAccountColor(I)V

    .line 153
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Layout_Arrow:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 154
    return-void
.end method

.method protected makeIndexer()V
    .registers 6

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->mIdIndexer:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 175
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->mIdIndexer:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-void
.end method

.method protected makePosition(ILcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V
    .registers 6
    .parameter "position"
    .parameter "wrapper"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->mIdIndexer:Ljava/util/HashMap;

    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 167
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->mIdIndexer:Ljava/util/HashMap;

    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->clone()Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_1d
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 46
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/database/Cursor;)V

    .line 50
    .local v1, wrapper:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 52
    return-object v0
.end method

.method public onConfigurationChanged()V
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->mIdIndexer:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 181
    invoke-virtual {p0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->makeIndexer()V

    .line 182
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 188
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->mIdIndexer:Ljava/util/HashMap;

    if-eqz v0, :cond_d

    .line 190
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->mIdIndexer:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 192
    :cond_d
    return-void
.end method

.method protected updateBagde(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V
    .registers 2
    .parameter "wrapper"

    .prologue
    .line 137
    if-eqz p1, :cond_5

    .line 138
    invoke-virtual {p1}, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->updateBadge()V

    .line 139
    :cond_5
    return-void
.end method
