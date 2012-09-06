.class public Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;
.super Lcom/android/common/widget/CompositeCursorAdapter;
.source "HostNavigationBarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter$1;
    }
.end annotation


# static fields
.field private static final DESTINATIONS_PROJECTION:[Ljava/lang/String;

.field private static sEmptyCursor:Landroid/database/MatrixCursor;


# instance fields
.field private mColorRead:I

.field private mColorUnread:I

.field private mDestinationsCursor:Landroid/database/MatrixCursor;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mUnreadNotificationCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "icon"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "text"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->DESTINATIONS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/android/common/widget/CompositeCursorAdapter;-><init>(Landroid/content/Context;I)V

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 60
    invoke-virtual {p0, v2, v2}, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->addPartition(ZZ)V

    .line 63
    invoke-virtual {p0, v3, v3}, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->addPartition(ZZ)V

    .line 66
    invoke-virtual {p0, v2, v2}, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->addPartition(ZZ)V

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 69
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0a013c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->mColorRead:I

    .line 70
    const v1, 0x7f0a013d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->mColorUnread:I

    .line 71
    return-void
.end method

.method private bindDestinationView(Landroid/view/View;Landroid/database/Cursor;)V
    .registers 8
    .parameter "view"
    .parameter "cursor"

    .prologue
    .line 232
    const/4 v4, 0x1

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 233
    .local v1, iconResId:I
    const/4 v4, 0x2

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 235
    .local v3, textResId:I
    const v4, 0x7f0900cb

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 236
    .local v0, icon:Landroid/widget/ImageView;
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 238
    const v4, 0x7f090072

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 239
    .local v2, text:Landroid/widget/TextView;
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 240
    return-void
.end method

.method private getEmptyCursor()Landroid/database/Cursor;
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 102
    sget-object v0, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->sEmptyCursor:Landroid/database/MatrixCursor;

    if-nez v0, :cond_1e

    .line 104
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "empty"

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->sEmptyCursor:Landroid/database/MatrixCursor;

    .line 105
    sget-object v0, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->sEmptyCursor:Landroid/database/MatrixCursor;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "empty"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 107
    :cond_1e
    sget-object v0, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->sEmptyCursor:Landroid/database/MatrixCursor;

    return-object v0
.end method


# virtual methods
.method public addDestination(III)V
    .registers 8
    .parameter "destinationId"
    .parameter "iconResId"
    .parameter "textResId"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->mDestinationsCursor:Landroid/database/MatrixCursor;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method protected bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V
    .registers 9
    .parameter "view"
    .parameter "partition"
    .parameter "cursor"

    .prologue
    .line 180
    const v4, 0x7f090072

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 181
    .local v3, text:Landroid/widget/TextView;
    const v4, 0x7f09013e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 182
    .local v2, separator:Landroid/view/View;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 183
    .local v1, res:Landroid/content/res/Resources;
    iget v4, p0, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->mUnreadNotificationCount:I

    if-lez v4, :cond_2a

    const v4, 0x7f0a013b

    :goto_1f
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 186
    .local v0, color:I
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 188
    return-void

    .line 183
    .end local v0           #color:I
    :cond_2a
    const v4, 0x7f0a013a

    goto :goto_1f
.end method

.method public bindNotificationView(Landroid/view/View;Landroid/database/Cursor;)V
    .registers 16
    .parameter "view"
    .parameter "cursor"

    .prologue
    .line 244
    const/16 v11, 0xb

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_84

    const/4 v5, 0x1

    .line 246
    .local v5, read:Z
    :goto_a
    const v11, 0x1020006

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 247
    .local v4, icon:Landroid/widget/ImageView;
    const v11, 0x7f090048

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/AvatarView;

    .line 248
    .local v0, avatar:Lcom/google/android/apps/plus/views/AvatarView;
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    if-nez v5, :cond_86

    const/4 v11, 0x1

    :goto_23
    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 250
    const/16 v11, 0x8

    invoke-virtual {v0, v11}, Lcom/google/android/apps/plus/views/AvatarView;->setVisibility(I)V

    .line 251
    const/4 v11, 0x2

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 252
    .local v10, typeString:Ljava/lang/String;
    if-eqz v10, :cond_e4

    .line 253
    invoke-static {v10}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    move-result-object v9

    .line 254
    .local v9, type:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    sget-object v11, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$CoalescedNotification$Type:[I

    invoke-virtual {v9}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_f6

    .line 312
    const v11, 0x7f020149

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 320
    .end local v9           #type:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    :goto_47
    const v11, 0x1020014

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 321
    .local v8, title:Landroid/widget/TextView;
    const/4 v11, 0x4

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    if-eqz v5, :cond_ec

    iget v11, p0, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->mColorRead:I

    :goto_5c
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 324
    const v11, 0x1020015

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 325
    .local v7, snippetView:Landroid/widget/TextView;
    const/4 v11, 0x3

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 326
    .local v6, snippet:Ljava/lang/String;
    if-eqz v6, :cond_f0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_f0

    .line 327
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    :goto_7c
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 334
    return-void

    .line 244
    .end local v0           #avatar:Lcom/google/android/apps/plus/views/AvatarView;
    .end local v4           #icon:Landroid/widget/ImageView;
    .end local v5           #read:Z
    .end local v6           #snippet:Ljava/lang/String;
    .end local v7           #snippetView:Landroid/widget/TextView;
    .end local v8           #title:Landroid/widget/TextView;
    .end local v10           #typeString:Ljava/lang/String;
    :cond_84
    const/4 v5, 0x0

    goto :goto_a

    .line 249
    .restart local v0       #avatar:Lcom/google/android/apps/plus/views/AvatarView;
    .restart local v4       #icon:Landroid/widget/ImageView;
    .restart local v5       #read:Z
    :cond_86
    const/4 v11, 0x0

    goto :goto_23

    .line 257
    .restart local v9       #type:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    .restart local v10       #typeString:Ljava/lang/String;
    :pswitch_88
    const v11, 0x7f02014f

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_47

    .line 263
    :pswitch_8f
    const v11, 0x7f02013f

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_47

    .line 268
    :pswitch_96
    const v11, 0x7f020149

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_47

    .line 274
    :pswitch_9d
    const/4 v3, 0x0

    .line 275
    .local v3, gaiaId:Ljava/lang/String;
    const/4 v11, 0x6

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 276
    .local v1, bytes:[B
    if-eqz v1, :cond_b4

    .line 277
    invoke-static {v1}, Lcom/google/android/apps/plus/content/DbCircleActionData;->deserialize([B)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    move-result-object v2

    .line 278
    .local v2, data:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->getGaiaIdCount()I

    move-result v11

    if-lez v11, :cond_b4

    .line 279
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->getGaiaId(I)Ljava/lang/String;

    move-result-object v3

    .line 282
    .end local v2           #data:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;
    :cond_b4
    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/views/AvatarView;->setGaiaId(Ljava/lang/String;)V

    .line 283
    const/16 v11, 0x8

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 284
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Lcom/google/android/apps/plus/views/AvatarView;->setVisibility(I)V

    .line 285
    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/AvatarView;->setDimmed(Z)V

    goto :goto_47

    .line 291
    .end local v1           #bytes:[B
    .end local v3           #gaiaId:Ljava/lang/String;
    :pswitch_c4
    const v11, 0x7f02014c

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_47

    .line 296
    :pswitch_cc
    const v11, 0x7f020145

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_47

    .line 302
    :pswitch_d4
    const v11, 0x7f020142

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_47

    .line 307
    :pswitch_dc
    const v11, 0x7f02013b

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_47

    .line 317
    .end local v9           #type:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    :cond_e4
    const v11, 0x7f020149

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_47

    .line 322
    .restart local v8       #title:Landroid/widget/TextView;
    :cond_ec
    iget v11, p0, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->mColorUnread:I

    goto/16 :goto_5c

    .line 330
    .restart local v6       #snippet:Ljava/lang/String;
    .restart local v7       #snippetView:Landroid/widget/TextView;
    :cond_f0
    const/16 v11, 0x8

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7c

    .line 254
    :pswitch_data_f6
    .packed-switch 0x1
        :pswitch_88
        :pswitch_88
        :pswitch_8f
        :pswitch_8f
        :pswitch_96
        :pswitch_9d
        :pswitch_9d
        :pswitch_c4
        :pswitch_c4
        :pswitch_cc
        :pswitch_d4
        :pswitch_d4
        :pswitch_dc
    .end packed-switch
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .registers 5
    .parameter "view"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"

    .prologue
    .line 220
    packed-switch p2, :pswitch_data_c

    .line 229
    :goto_3
    return-void

    .line 222
    :pswitch_4
    invoke-direct {p0, p1, p3}, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->bindDestinationView(Landroid/view/View;Landroid/database/Cursor;)V

    goto :goto_3

    .line 226
    :pswitch_8
    invoke-virtual {p0, p1, p3}, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->bindNotificationView(Landroid/view/View;Landroid/database/Cursor;)V

    goto :goto_3

    .line 220
    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_4
        :pswitch_8
    .end packed-switch
.end method

.method public getDestinationId(I)I
    .registers 5
    .parameter "position"

    .prologue
    const/4 v1, -0x1

    .line 119
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->getPartitionForPosition(I)I

    move-result v2

    if-eqz v2, :cond_8

    .line 128
    :cond_7
    :goto_7
    return v1

    .line 123
    :cond_8
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 124
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_7

    .line 128
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    goto :goto_7
.end method

.method protected getItemViewType(II)I
    .registers 3
    .parameter "partition"
    .parameter "position"

    .prologue
    .line 144
    return p1
.end method

.method public getItemViewTypeCount()I
    .registers 2

    .prologue
    .line 136
    const/4 v0, 0x3

    return v0
.end method

.method public getUnreadNotificationCount()I
    .registers 2

    .prologue
    .line 111
    iget v0, p0, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->mUnreadNotificationCount:I

    return v0
.end method

.method public isEnabled(I)Z
    .registers 3
    .parameter "position"

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 153
    const/4 v0, 0x1

    .line 156
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->isNotificationHeader(I)Z

    move-result v0

    goto :goto_7
.end method

.method protected isEnabled(II)Z
    .registers 4
    .parameter "partition"
    .parameter "position"

    .prologue
    const/4 v0, 0x1

    .line 164
    if-eqz p1, :cond_5

    if-ne p1, v0, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isNotificationHeader(I)Z
    .registers 5
    .parameter "position"

    .prologue
    const/4 v0, 0x1

    .line 191
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->getPartitionForPosition(I)I

    move-result v1

    if-ne v1, v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->getOffsetInPartition(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_f

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method protected newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "context"
    .parameter "partition"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030059

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "context"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 201
    packed-switch p2, :pswitch_data_24

    .line 212
    const/4 v0, 0x0

    :goto_5
    return-object v0

    .line 203
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030058

    invoke-virtual {v0, v1, p5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_5

    .line 206
    :pswitch_10
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030073

    invoke-virtual {v0, v1, p5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_5

    .line 209
    :pswitch_1a
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030072

    invoke-virtual {v0, v1, p5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_5

    .line 201
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_6
        :pswitch_10
        :pswitch_1a
    .end packed-switch
.end method

.method public removeAllDestinations()V
    .registers 3

    .prologue
    .line 74
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->DESTINATIONS_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->mDestinationsCursor:Landroid/database/MatrixCursor;

    .line 75
    return-void
.end method

.method public setNotifications(Landroid/database/Cursor;)V
    .registers 7
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 86
    invoke-virtual {p0, v3, p1}, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 88
    if-eqz p1, :cond_d

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_37

    :cond_d
    move v0, v3

    .line 89
    .local v0, empty:Z
    :goto_e
    const/4 v4, 0x2

    if-eqz v0, :cond_39

    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->getEmptyCursor()Landroid/database/Cursor;

    move-result-object v1

    :goto_15
    invoke-virtual {p0, v4, v1}, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 91
    iput v2, p0, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->mUnreadNotificationCount:I

    .line 92
    if-eqz p1, :cond_36

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 94
    :cond_22
    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eq v1, v3, :cond_30

    .line 95
    iget v1, p0, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->mUnreadNotificationCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->mUnreadNotificationCount:I

    .line 97
    :cond_30
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_22

    .line 99
    :cond_36
    return-void

    .end local v0           #empty:Z
    :cond_37
    move v0, v2

    .line 88
    goto :goto_e

    .line 89
    .restart local v0       #empty:Z
    :cond_39
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public showDestinations()V
    .registers 3

    .prologue
    .line 82
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->mDestinationsCursor:Landroid/database/MatrixCursor;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/phone/HostNavigationBarAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 83
    return-void
.end method
