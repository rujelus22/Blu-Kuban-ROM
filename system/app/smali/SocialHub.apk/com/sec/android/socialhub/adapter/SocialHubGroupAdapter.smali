.class public Lcom/sec/android/socialhub/adapter/SocialHubGroupAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "SocialHubGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/adapter/SocialHubGroupAdapter$GroupViewWrapper;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;[Ljava/lang/String;[I)V
    .registers 11
    .parameter "context"
    .parameter "c"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 26
    const v2, 0x7f03002d

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 27
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 13
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const v5, 0x7f0200b5

    .line 32
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 34
    const/4 v8, 0x0

    .line 36
    .local v8, holder:Lcom/sec/android/socialhub/adapter/SocialHubGroupAdapter$GroupViewWrapper;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .end local v8           #holder:Lcom/sec/android/socialhub/adapter/SocialHubGroupAdapter$GroupViewWrapper;
    check-cast v8, Lcom/sec/android/socialhub/adapter/SocialHubGroupAdapter$GroupViewWrapper;

    .line 38
    .restart local v8       #holder:Lcom/sec/android/socialhub/adapter/SocialHubGroupAdapter$GroupViewWrapper;
    if-nez v8, :cond_14

    .line 40
    new-instance v8, Lcom/sec/android/socialhub/adapter/SocialHubGroupAdapter$GroupViewWrapper;

    .end local v8           #holder:Lcom/sec/android/socialhub/adapter/SocialHubGroupAdapter$GroupViewWrapper;
    invoke-direct {v8, p1}, Lcom/sec/android/socialhub/adapter/SocialHubGroupAdapter$GroupViewWrapper;-><init>(Landroid/view/View;)V

    .line 43
    .restart local v8       #holder:Lcom/sec/android/socialhub/adapter/SocialHubGroupAdapter$GroupViewWrapper;
    :cond_14
    invoke-virtual {v8, p3}, Lcom/sec/android/socialhub/adapter/SocialHubGroupAdapter$GroupViewWrapper;->changeData(Landroid/database/Cursor;)V

    .line 45
    iget-object v0, v8, Lcom/sec/android/socialhub/adapter/SocialHubGroupAdapter$GroupViewWrapper;->viewGroupName:Landroid/widget/TextView;

    if-eqz v0, :cond_22

    .line 47
    iget-object v0, v8, Lcom/sec/android/socialhub/adapter/SocialHubGroupAdapter$GroupViewWrapper;->viewGroupName:Landroid/widget/TextView;

    iget-object v1, v8, Lcom/sec/android/socialhub/adapter/SocialHubGroupAdapter$GroupViewWrapper;->strGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    :cond_22
    iget-object v0, v8, Lcom/sec/android/socialhub/adapter/SocialHubGroupAdapter$GroupViewWrapper;->viewGroupImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_3f

    .line 53
    iget-object v0, v8, Lcom/sec/android/socialhub/adapter/SocialHubGroupAdapter$GroupViewWrapper;->strCoverUrl:Ljava/lang/String;

    if-eqz v0, :cond_64

    .line 55
    invoke-static {p2}, Lcom/sec/android/socialhub/image/ImageCacheManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/image/ImageCacheManager;

    move-result-object v0

    iget-object v2, v8, Lcom/sec/android/socialhub/adapter/SocialHubGroupAdapter$GroupViewWrapper;->strCoverUrl:Ljava/lang/String;

    iget-object v4, v8, Lcom/sec/android/socialhub/adapter/SocialHubGroupAdapter$GroupViewWrapper;->viewGroupImage:Landroid/widget/ImageView;

    move-object v1, p2

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/image/ImageCacheManager;->getImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/Adapter;Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 63
    .local v6, bitmap:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_3f

    .line 65
    iget-object v0, v8, Lcom/sec/android/socialhub/adapter/SocialHubGroupAdapter$GroupViewWrapper;->viewGroupImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 74
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    :cond_3f
    :goto_3f
    iget-object v0, v8, Lcom/sec/android/socialhub/adapter/SocialHubGroupAdapter$GroupViewWrapper;->viewGroupUpdate:Landroid/widget/TextView;

    if-eqz v0, :cond_60

    .line 76
    const/4 v7, 0x0

    .line 77
    .local v7, date:Ljava/lang/String;
    const v0, 0x7f0800fc

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, v8, Lcom/sec/android/socialhub/adapter/SocialHubGroupAdapter$GroupViewWrapper;->lUpdateTime:J

    invoke-static {p2, v3, v4}, Lcom/sec/android/socialhub/util/SocialHubDateFormat;->getDateTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 78
    iget-object v0, v8, Lcom/sec/android/socialhub/adapter/SocialHubGroupAdapter$GroupViewWrapper;->viewGroupUpdate:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .end local v7           #date:Ljava/lang/String;
    :cond_60
    invoke-virtual {p1, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 82
    return-void

    .line 70
    :cond_64
    iget-object v0, v8, Lcom/sec/android/socialhub/adapter/SocialHubGroupAdapter$GroupViewWrapper;->viewGroupImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3f
.end method
