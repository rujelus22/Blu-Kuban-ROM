.class public Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "SocialhubNotificationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;
    }
.end annotation


# instance fields
.field private mBouncing:Lcom/sec/android/socialhub/parent/AbsBouncingLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILcom/sec/android/socialhub/parent/AbsBouncingLayout;)V
    .registers 8
    .parameter "context"
    .parameter "layout"
    .parameter "c"
    .parameter "from"
    .parameter "to"
    .parameter "bouncing"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter;->mBouncing:Lcom/sec/android/socialhub/parent/AbsBouncingLayout;

    .line 35
    iput-object p6, p0, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter;->mBouncing:Lcom/sec/android/socialhub/parent/AbsBouncingLayout;

    .line 36
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 16
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const v5, 0x7f0200b4

    const v11, 0x7f0200ad

    .line 50
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 52
    const/4 v7, 0x0

    .line 54
    .local v7, holder:Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;
    if-eqz p1, :cond_1c

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    .end local v7           #holder:Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;
    check-cast v7, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;

    .line 58
    .restart local v7       #holder:Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;
    if-nez v7, :cond_19

    .line 60
    new-instance v7, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;

    .end local v7           #holder:Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;
    invoke-direct {v7, p1}, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;-><init>(Landroid/view/View;)V

    .line 63
    .restart local v7       #holder:Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;
    :cond_19
    invoke-virtual {v7, p3}, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->changeData(Landroid/database/Cursor;)V

    .line 66
    :cond_1c
    if-nez v7, :cond_28

    .line 68
    const-string v0, "SocialhubNotificationAdapter"

    const-string v1, "bindView()"

    const-string v2, "holder is null!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :goto_27
    return-void

    .line 73
    :cond_28
    iget-object v0, v7, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->viewTextTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter;->mContext:Landroid/content/Context;

    iget-object v1, v7, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->viewTextContent:Landroid/widget/TextView;

    iget-object v2, v7, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->mstrOwnerName:Ljava/lang/String;

    iget-object v3, v7, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->mstrContent:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v10, 0x7f060032

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/socialhub/util/SocialHubTextUtil;->setTextColor(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    iget-object v0, v7, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->mstrTime:Ljava/lang/String;

    if-eqz v0, :cond_60

    .line 80
    iget-object v0, v7, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->viewTextTime:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    iget-object v0, v7, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->mstrTime:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 82
    .local v8, time:J
    iget-object v0, v7, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->viewTextTime:Landroid/widget/TextView;

    invoke-static {p2, v8, v9}, Lcom/sec/android/socialhub/util/SocialHubDateFormat;->getDateTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    .end local v8           #time:J
    :cond_60
    iget-object v0, v7, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->viewImageOwner:Landroid/widget/ImageView;

    if-eqz v0, :cond_7d

    .line 87
    iget-object v0, v7, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->mstrOwnerPhoto:Ljava/lang/String;

    if-eqz v0, :cond_9f

    .line 89
    invoke-static {p2}, Lcom/sec/android/socialhub/image/ImageCacheManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/image/ImageCacheManager;

    move-result-object v0

    iget-object v2, v7, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->mstrOwnerPhoto:Ljava/lang/String;

    iget-object v4, v7, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->viewImageOwner:Landroid/widget/ImageView;

    move-object v1, p2

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/image/ImageCacheManager;->getImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/Adapter;Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 97
    .local v6, bitmap:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_7d

    .line 99
    iget-object v0, v7, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->viewImageOwner:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 108
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    :cond_7d
    :goto_7d
    iget-object v0, v7, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->viewImageIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_9b

    .line 110
    iget-object v0, v7, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->mstrTypeIconURL:Ljava/lang/String;

    if-eqz v0, :cond_a5

    .line 112
    invoke-static {p2}, Lcom/sec/android/socialhub/image/ImageCacheManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/image/ImageCacheManager;

    move-result-object v0

    iget-object v2, v7, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->mstrTypeIconURL:Ljava/lang/String;

    iget-object v4, v7, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->viewImageIcon:Landroid/widget/ImageView;

    move-object v1, p2

    move-object v3, p0

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/image/ImageCacheManager;->getImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/Adapter;Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 120
    .restart local v6       #bitmap:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_9b

    .line 122
    iget-object v0, v7, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->viewImageIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 132
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    :cond_9b
    :goto_9b
    invoke-virtual {p1, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_27

    .line 104
    :cond_9f
    iget-object v0, v7, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->viewImageOwner:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7d

    .line 127
    :cond_a5
    iget-object v0, v7, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->viewImageOwner:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9b
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 3
    .parameter "c"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 43
    iget-object v0, p0, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter;->mBouncing:Lcom/sec/android/socialhub/parent/AbsBouncingLayout;

    if-eqz v0, :cond_c

    .line 44
    iget-object v0, p0, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter;->mBouncing:Lcom/sec/android/socialhub/parent/AbsBouncingLayout;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->changeCursor(Landroid/database/Cursor;)V

    .line 45
    :cond_c
    return-void
.end method
