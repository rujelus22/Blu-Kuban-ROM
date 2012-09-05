.class public Lcom/google/android/apps/plus/phone/NotificationsAdapter;
.super Lcom/google/android/apps/plus/phone/EsCursorAdapter;
.source "NotificationsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/NotificationsAdapter$1;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 3
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 32
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 16
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const v11, 0x7f0200f8

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 88
    const v9, 0x1020006

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 89
    .local v0, icon:Landroid/widget/ImageView;
    const/4 v9, 0x2

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 90
    .local v6, typeString:Ljava/lang/String;
    if-eqz v6, :cond_9f

    .line 91
    invoke-static {v6}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    move-result-object v5

    .line 92
    .local v5, type:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    sget-object v9, Lcom/google/android/apps/plus/phone/NotificationsAdapter$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$CoalescedNotification$Type:[I

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_b0

    .line 133
    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    .end local v5           #type:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    :goto_27
    const/16 v9, 0xb

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-ne v9, v7, :cond_a3

    move v1, v7

    .line 144
    .local v1, read:Z
    :goto_30
    if-nez v1, :cond_a5

    :goto_32
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 146
    const v7, 0x1020014

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 147
    .local v4, title:Landroid/widget/TextView;
    const/4 v7, 0x4

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    if-eqz v1, :cond_a7

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_4a
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 150
    const v7, 0x1020015

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 151
    .local v3, snippetView:Landroid/widget/TextView;
    const/4 v7, 0x3

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, snippet:Ljava/lang/String;
    if-eqz v2, :cond_aa

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_aa

    .line 153
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    :goto_69
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 160
    return-void

    .line 95
    .end local v1           #read:Z
    .end local v2           #snippet:Ljava/lang/String;
    .end local v3           #snippetView:Landroid/widget/TextView;
    .end local v4           #title:Landroid/widget/TextView;
    .restart local v5       #type:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    :pswitch_71
    const v9, 0x7f0200fe

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_27

    .line 101
    :pswitch_78
    const v9, 0x7f0200f2

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_27

    .line 106
    :pswitch_7f
    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_27

    .line 112
    :pswitch_83
    const v9, 0x7f0200ef

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_27

    .line 118
    :pswitch_8a
    const v9, 0x7f0200fb

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_27

    .line 123
    :pswitch_91
    const v9, 0x7f0200f5

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_27

    .line 128
    :pswitch_98
    const v9, 0x7f0200ec

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_27

    .line 138
    .end local v5           #type:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    :cond_9f
    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_27

    :cond_a3
    move v1, v8

    .line 143
    goto :goto_30

    .restart local v1       #read:Z
    :cond_a5
    move v7, v8

    .line 144
    goto :goto_32

    .line 148
    .restart local v4       #title:Landroid/widget/TextView;
    :cond_a7
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    goto :goto_4a

    .line 156
    .restart local v2       #snippet:Ljava/lang/String;
    .restart local v3       #snippetView:Landroid/widget/TextView;
    :cond_aa
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_69

    .line 92
    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_71
        :pswitch_71
        :pswitch_78
        :pswitch_78
        :pswitch_7f
        :pswitch_83
        :pswitch_83
        :pswitch_8a
        :pswitch_8a
        :pswitch_91
        :pswitch_98
    .end packed-switch
.end method

.method public getNotificationId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NotificationsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isRead()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 80
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NotificationsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    const/16 v2, 0xb

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 167
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 169
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030047

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method
