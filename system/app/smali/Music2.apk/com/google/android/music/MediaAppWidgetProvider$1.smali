.class Lcom/google/android/music/MediaAppWidgetProvider$1;
.super Ljava/lang/Object;
.source "MediaAppWidgetProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MediaAppWidgetProvider;->performUpdate(Lcom/google/android/music/MusicPlaybackService;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MediaAppWidgetProvider;

.field final synthetic val$appWidgetIds:[I

.field final synthetic val$service:Lcom/google/android/music/MusicPlaybackService;


# direct methods
.method constructor <init>(Lcom/google/android/music/MediaAppWidgetProvider;Lcom/google/android/music/MusicPlaybackService;[I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/android/music/MediaAppWidgetProvider$1;->this$0:Lcom/google/android/music/MediaAppWidgetProvider;

    iput-object p2, p0, Lcom/google/android/music/MediaAppWidgetProvider$1;->val$service:Lcom/google/android/music/MusicPlaybackService;

    iput-object p3, p0, Lcom/google/android/music/MediaAppWidgetProvider$1;->val$appWidgetIds:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 18

    .prologue
    .line 173
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/MediaAppWidgetProvider$1;->val$service:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v1}, Lcom/google/android/music/MusicPlaybackService;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 174
    .local v14, res:Landroid/content/res/Resources;
    new-instance v16, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/MediaAppWidgetProvider$1;->val$service:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v1}, Lcom/google/android/music/MusicPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f040004

    move-object/from16 v0, v16

    invoke-direct {v0, v1, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 177
    .local v16, views:Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/MediaAppWidgetProvider$1;->val$service:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v1}, Lcom/google/android/music/MusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v15

    .line 178
    .local v15, titleName:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/MediaAppWidgetProvider$1;->val$service:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v1}, Lcom/google/android/music/MusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v10

    .line 179
    .local v10, artistName:Ljava/lang/CharSequence;
    const/4 v12, 0x0

    .line 183
    .local v12, errorState:Ljava/lang/CharSequence;
    if-nez v15, :cond_3f

    .line 184
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/MediaAppWidgetProvider$1;->val$service:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v1}, Lcom/google/android/music/MusicPlaybackService;->getQueuePosition()I

    move-result v1

    if-ltz v1, :cond_38

    .line 245
    :goto_37
    return-void

    .line 189
    :cond_38
    const v1, 0x7f0d007a

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 192
    :cond_3f
    if-eqz v12, :cond_dc

    .line 194
    const v1, 0x7f100005

    const/16 v4, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 195
    const/high16 v1, 0x7f10

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 203
    :goto_52
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/MediaAppWidgetProvider$1;->this$0:Lcom/google/android/music/MediaAppWidgetProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/MediaAppWidgetProvider$1;->val$service:Lcom/google/android/music/MusicPlaybackService;

    #calls: Lcom/google/android/music/MediaAppWidgetProvider;->checkLayout(Landroid/content/Context;)V
    invoke-static {v1, v4}, Lcom/google/android/music/MediaAppWidgetProvider;->access$100(Lcom/google/android/music/MediaAppWidgetProvider;Landroid/content/Context;)V

    .line 205
    invoke-static {}, Lcom/google/android/music/MediaAppWidgetProvider;->access$200()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_92

    .line 206
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/MediaAppWidgetProvider$1;->val$service:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v1}, Lcom/google/android/music/MusicPlaybackService;->getAlbumId()J

    move-result-wide v2

    .line 209
    .local v2, album:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/MediaAppWidgetProvider$1;->val$service:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v1}, Lcom/google/android/music/MusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v9

    .line 210
    .local v9, albumName:Ljava/lang/CharSequence;
    if-nez v9, :cond_f6

    const/4 v7, 0x0

    .line 211
    .local v7, albumstring:Ljava/lang/String;
    :goto_7a
    if-nez v10, :cond_fb

    const/4 v8, 0x0

    .line 212
    .local v8, artiststring:Ljava/lang/String;
    :goto_7d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/MediaAppWidgetProvider$1;->val$service:Lcom/google/android/music/MusicPlaybackService;

    const/16 v4, 0x3c

    const/16 v5, 0x3c

    const/4 v6, 0x1

    invoke-static/range {v1 .. v8}, Lcom/google/android/music/utils/AlbumArtUtils;->getArtwork(Landroid/content/Context;JIIZLjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 214
    .local v11, b:Landroid/graphics/Bitmap;
    const v1, 0x7f100009

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v11}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 221
    .end local v2           #album:J
    .end local v7           #albumstring:Ljava/lang/String;
    .end local v8           #artiststring:Ljava/lang/String;
    .end local v9           #albumName:Ljava/lang/CharSequence;
    .end local v11           #b:Landroid/graphics/Bitmap;
    :cond_92
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/MediaAppWidgetProvider$1;->val$service:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v1}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v13

    .line 222
    .local v13, playing:Z
    invoke-static {}, Lcom/google/android/music/MediaAppWidgetProvider;->access$300()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_10d

    .line 223
    if-eqz v13, :cond_101

    .line 224
    const v1, 0x7f100006

    const v4, 0x7f0201d2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 241
    :goto_b1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/MediaAppWidgetProvider$1;->this$0:Lcom/google/android/music/MediaAppWidgetProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/MediaAppWidgetProvider$1;->val$service:Lcom/google/android/music/MusicPlaybackService;

    const/4 v5, 0x0

    move-object/from16 v0, v16

    #calls: Lcom/google/android/music/MediaAppWidgetProvider;->linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;ZZ)V
    invoke-static {v1, v4, v0, v13, v5}, Lcom/google/android/music/MediaAppWidgetProvider;->access$400(Lcom/google/android/music/MediaAppWidgetProvider;Landroid/content/Context;Landroid/widget/RemoteViews;ZZ)V

    .line 242
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/MediaAppWidgetProvider$1;->this$0:Lcom/google/android/music/MediaAppWidgetProvider;

    const/4 v4, 0x1

    move-object/from16 v0, v16

    #calls: Lcom/google/android/music/MediaAppWidgetProvider;->setButtonsVisible(Landroid/widget/RemoteViews;Z)V
    invoke-static {v1, v0, v4}, Lcom/google/android/music/MediaAppWidgetProvider;->access$500(Lcom/google/android/music/MediaAppWidgetProvider;Landroid/widget/RemoteViews;Z)V

    .line 244
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/MediaAppWidgetProvider$1;->this$0:Lcom/google/android/music/MediaAppWidgetProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/MediaAppWidgetProvider$1;->val$service:Lcom/google/android/music/MusicPlaybackService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/MediaAppWidgetProvider$1;->val$appWidgetIds:[I

    move-object/from16 v0, v16

    #calls: Lcom/google/android/music/MediaAppWidgetProvider;->pushUpdate(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V
    invoke-static {v1, v4, v5, v0}, Lcom/google/android/music/MediaAppWidgetProvider;->access$600(Lcom/google/android/music/MediaAppWidgetProvider;Landroid/content/Context;[ILandroid/widget/RemoteViews;)V

    goto/16 :goto_37

    .line 198
    .end local v13           #playing:Z
    :cond_dc
    const v1, 0x7f100005

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 199
    const/high16 v1, 0x7f10

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v15}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 200
    const v1, 0x7f100005

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_52

    .line 210
    .restart local v2       #album:J
    .restart local v9       #albumName:Ljava/lang/CharSequence;
    :cond_f6
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_7a

    .line 211
    .restart local v7       #albumstring:Ljava/lang/String;
    :cond_fb
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_7d

    .line 227
    .end local v2           #album:J
    .end local v7           #albumstring:Ljava/lang/String;
    .end local v9           #albumName:Ljava/lang/CharSequence;
    .restart local v13       #playing:Z
    :cond_101
    const v1, 0x7f100006

    const v4, 0x7f0201d3

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_b1

    .line 231
    :cond_10d
    if-eqz v13, :cond_11b

    .line 232
    const v1, 0x7f100006

    const v4, 0x7f02017c

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_b1

    .line 235
    :cond_11b
    const v1, 0x7f100006

    const v4, 0x7f02017d

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_b1
.end method
