.class public Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypeOther;
.super Lcom/sec/android/socialhub/feedslist/viewtype/AbstractViewType;
.source "ViewTypeOther.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/sec/android/socialhub/feedslist/viewtype/AbstractViewType;-><init>()V

    return-void
.end method

.method private inflateMediaView(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;Landroid/view/View$OnClickListener;)V
    .registers 16
    .parameter "context"
    .parameter "wrapper"
    .parameter "listener"

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 139
    if-nez p2, :cond_6

    .line 248
    :cond_5
    :goto_5
    return-void

    .line 142
    :cond_6
    iget-object v6, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v6, v6, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutMedia:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 143
    iget-object v6, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v6, v6, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutMedia:Landroid/widget/LinearLayout;

    iget-object v7, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 145
    iget-object v6, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v6, v6, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentType:Ljava/lang/String;

    if-eqz v6, :cond_32

    iget-object v6, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v6, v6, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentType:Ljava/lang/String;

    const-string v7, "mood"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 147
    const-string v6, "ViewTypeOther"

    const-string v7, "inflateMediaView()"

    const-string v8, "AttchmentType is mood."

    invoke-static {v6, v7, v8}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 151
    :cond_32
    iget-object v6, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v6, v6, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mMediaInfo:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    .line 155
    iget-object v6, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v6, v6, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mMediaInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_40
    :goto_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;

    .line 159
    .local v2, info:Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypeOther;->getInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030026

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 161
    .local v3, item:Landroid/view/View;
    const v6, 0x7f0b00cc

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 163
    .local v4, layout:Landroid/widget/FrameLayout;
    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 164
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    iget-object v7, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    invoke-virtual {v4, v6, v7}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 166
    invoke-virtual {v2}, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;->getMediaThumbnailURL()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_40

    .line 168
    iget-object v6, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v6, v6, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutMedia:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 170
    iget-object v6, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v6, v6, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentCaption:Ljava/lang/String;

    if-nez v6, :cond_86

    iget-object v6, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v6, v6, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentDescription:Ljava/lang/String;

    if-eqz v6, :cond_118

    .line 172
    :cond_86
    iget-object v6, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v6, v6, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentType:Ljava/lang/String;

    if-nez v6, :cond_110

    const-string v6, "note"

    invoke-virtual {v2}, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;->getMediaType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_110

    .line 174
    iget-object v6, p0, Lcom/sec/android/socialhub/feedslist/viewtype/AbstractViewType;->mNoteClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    :goto_9d
    new-instance v6, Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypeOther$1;

    invoke-direct {v6, p0}, Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypeOther$1;-><init>(Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypeOther;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 192
    iget-object v6, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v6, v6, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentType:Ljava/lang/String;

    if-nez v6, :cond_114

    const-string v6, "note"

    invoke-virtual {v2}, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;->getMediaType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_114

    .line 194
    iget-object v6, p0, Lcom/sec/android/socialhub/feedslist/viewtype/AbstractViewType;->mNoteClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    :goto_bc
    invoke-virtual {v3, v10}, Landroid/view/View;->setFocusable(Z)V

    .line 202
    invoke-virtual {v3, v11, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 203
    iget-object v6, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v6, v6, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutMedia:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9, v9, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 204
    invoke-virtual {v4, v9}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 206
    const-string v6, "video"

    invoke-virtual {v2}, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;->getMediaType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_db

    .line 208
    invoke-virtual {v3, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 221
    :cond_db
    :goto_db
    const v6, 0x7f0b00cd

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 223
    .local v1, img:Landroid/widget/ImageView;
    invoke-virtual {v2}, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;->getMediaType()Ljava/lang/String;

    move-result-object v5

    .line 225
    .local v5, type:Ljava/lang/String;
    const-string v6, "photo"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f8

    const-string v6, "video"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_132

    .line 227
    :cond_f8
    iget-object v6, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget v6, v6, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miMediaCount:I

    if-le v6, v10, :cond_12c

    .line 229
    const-string v6, "small"

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 236
    :goto_103
    iget-object v6, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v6, v6, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentType:Ljava/lang/String;

    if-nez v6, :cond_40

    .line 238
    const-string v6, "youtube"

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_40

    .line 178
    .end local v1           #img:Landroid/widget/ImageView;
    .end local v5           #type:Ljava/lang/String;
    :cond_110
    invoke-virtual {v3, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_9d

    .line 198
    :cond_114
    invoke-virtual {v4, p3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_bc

    .line 213
    :cond_118
    invoke-virtual {v4, p3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    invoke-virtual {v3, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 215
    invoke-virtual {v3, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 216
    iget-object v6, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v6, v6, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutMedia:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11, v9, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 217
    invoke-virtual {v4, v10}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    goto :goto_db

    .line 233
    .restart local v1       #img:Landroid/widget/ImageView;
    .restart local v5       #type:Ljava/lang/String;
    :cond_12c
    const-string v6, "large"

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_103

    .line 243
    :cond_132
    const-string v6, "attachement"

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_40
.end method


# virtual methods
.method public drawAttachment(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;ZLjava/lang/String;)V
    .registers 10
    .parameter "context"
    .parameter "wrapper"
    .parameter "bSearchMode"
    .parameter "condition"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 253
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutAttachContent:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_12

    .line 254
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutAttachContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 256
    :cond_12
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mAttachmentCaption:Landroid/widget/TextView;

    if-eqz v0, :cond_1f

    .line 257
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mAttachmentCaption:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    :cond_1f
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mAttachmentDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_2c

    .line 260
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mAttachmentDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    :cond_2c
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutAttachContent:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_a1

    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mAttachmentCaption:Landroid/widget/TextView;

    if-nez v0, :cond_3e

    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mAttachmentDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_a1

    .line 266
    :cond_3e
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentType:Ljava/lang/String;

    if-eqz v0, :cond_b6

    .line 268
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miMediaCount:I

    if-ne v0, v3, :cond_a1

    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentType:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 271
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutAttachContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 273
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentCaption:Ljava/lang/String;

    if-eqz v0, :cond_7f

    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentCaption:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7f

    .line 275
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mAttachmentCaption:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mAttachmentCaption:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentCaption:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    :cond_7f
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentDescription:Ljava/lang/String;

    if-eqz v0, :cond_a1

    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentDescription:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a1

    .line 281
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mAttachmentDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mAttachmentDescription:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    :cond_a1
    :goto_a1
    if-ne p3, v3, :cond_b5

    .line 324
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mAttachmentDescription:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/socialhub/util/HubColor;->SEARCH_COLOR:I

    invoke-static {v4, v0, p4, v1}, Lcom/sec/android/socialhub/util/SocialHubUtil;->setSearchedTextWithColor(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 325
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mAttachmentCaption:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/socialhub/util/HubColor;->SEARCH_COLOR:I

    invoke-static {v4, v0, p4, v1}, Lcom/sec/android/socialhub/util/SocialHubUtil;->setSearchedTextWithColor(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 327
    :cond_b5
    return-void

    .line 287
    :cond_b6
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentType:Ljava/lang/String;

    if-nez v0, :cond_a1

    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miMediaCount:I

    if-nez v0, :cond_a1

    .line 290
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentCaption:Ljava/lang/String;

    if-nez v0, :cond_ce

    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentDescription:Ljava/lang/String;

    if-eqz v0, :cond_a1

    .line 292
    :cond_ce
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutAttachContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 294
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutAttachContent:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypeOther$2;

    invoke-direct {v1, p0}, Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypeOther$2;-><init>(Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypeOther;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 304
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutAttachContent:Landroid/widget/LinearLayout;

    iget-object v1, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 305
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutAttachContent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/viewtype/AbstractViewType;->mNoteClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentCaption:Ljava/lang/String;

    if-eqz v0, :cond_115

    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentCaption:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_115

    .line 309
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mAttachmentCaption:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mAttachmentCaption:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentCaption:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    :cond_115
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentDescription:Ljava/lang/String;

    if-eqz v0, :cond_a1

    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentDescription:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a1

    .line 315
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mAttachmentDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 316
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mAttachmentDescription:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a1
.end method

.method public drawMedia(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;ZLjava/lang/String;)V
    .registers 25
    .parameter "context"
    .parameter "wrapper"
    .parameter "bSearchMode"
    .parameter "condition"

    .prologue
    .line 35
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/socialhub/feedslist/viewtype/AbstractViewType;->mPhotoClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypeOther;->inflateMediaView(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;Landroid/view/View$OnClickListener;)V

    .line 37
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutMedia:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v10

    .line 38
    .local v10, count:I
    const/4 v15, 0x0

    .line 39
    .local v15, mAttachmentCaption:Landroid/widget/TextView;
    const/16 v16, 0x0

    .line 40
    .local v16, mAttachmentDescription:Landroid/widget/TextView;
    const/4 v12, 0x0

    .line 42
    .local v12, info:Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;
    const/4 v11, 0x0

    .local v11, index:I
    :goto_1c
    if-ge v11, v10, :cond_19a

    .line 44
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutMedia:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 45
    .local v14, layout:Landroid/widget/LinearLayout;
    const v3, 0x7f0b00cc

    invoke-virtual {v14, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout;

    .line 46
    .local v13, item:Landroid/widget/FrameLayout;
    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v12

    .end local v12           #info:Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;
    check-cast v12, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;

    .line 47
    .restart local v12       #info:Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;
    const v3, 0x7f0b00cd

    invoke-virtual {v14, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 48
    .local v7, image:Landroid/widget/ImageView;
    const v3, 0x7f0b00cf

    invoke-virtual {v13, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 49
    .local v17, mImagePlay:Landroid/widget/ImageView;
    const v3, 0x7f0b009d

    invoke-virtual {v14, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .end local v15           #mAttachmentCaption:Landroid/widget/TextView;
    check-cast v15, Landroid/widget/TextView;

    .line 50
    .restart local v15       #mAttachmentCaption:Landroid/widget/TextView;
    const v3, 0x7f0b009e

    invoke-virtual {v14, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .end local v16           #mAttachmentDescription:Landroid/widget/TextView;
    check-cast v16, Landroid/widget/TextView;

    .line 53
    .restart local v16       #mAttachmentDescription:Landroid/widget/TextView;
    if-eqz v15, :cond_6d

    if-eqz v16, :cond_6d

    .line 55
    const/16 v3, 0x8

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    const/16 v3, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    :cond_6d
    invoke-virtual {v12}, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;->getMediaType()Ljava/lang/String;

    move-result-object v19

    .line 60
    .local v19, media_type:Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget v0, v3, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miMediaCount:I

    move/from16 v18, v0

    .line 62
    .local v18, media_count:I
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypeOther;->getImageService(Landroid/content/Context;)Lcom/sec/android/socialhub/image/ImageCacheManager;

    move-result-object v3

    invoke-virtual {v12}, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;->getMediaThumbnailURL()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v4, "video"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_167

    const/4 v8, 0x0

    :goto_8d
    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/sec/android/socialhub/image/ImageCacheManager;->getImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/Adapter;Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 66
    .local v9, bitmap:Landroid/graphics/Bitmap;
    if-eqz v9, :cond_98

    .line 68
    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 72
    :cond_98
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_11b

    .line 76
    const-string v3, "note"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d1

    const-string v3, "photo"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d1

    const-string v3, "link"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d1

    const-string v3, "video"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17b

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentType:Ljava/lang/String;

    if-nez v3, :cond_17b

    .line 81
    :cond_d1
    if-eqz v15, :cond_11b

    if-eqz v16, :cond_11b

    .line 83
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentCaption:Ljava/lang/String;

    if-eqz v3, :cond_16d

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentCaption:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_16d

    .line 85
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentCaption:Ljava/lang/String;

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    :goto_f6
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentDescription:Ljava/lang/String;

    if-eqz v3, :cond_173

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentDescription:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_173

    .line 94
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentDescription:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    :cond_11b
    :goto_11b
    const-string v3, "video"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_188

    .line 113
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/socialhub/feedslist/viewtype/AbstractViewType;->mVideoClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 116
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 117
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentType:Ljava/lang/String;

    if-nez v3, :cond_14c

    .line 118
    const v3, 0x7f02009f

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 127
    :cond_14c
    :goto_14c
    const/4 v3, 0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_163

    .line 129
    const/4 v3, 0x0

    sget v4, Lcom/sec/android/socialhub/util/HubColor;->SEARCH_COLOR:I

    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-static {v3, v0, v1, v4}, Lcom/sec/android/socialhub/util/SocialHubUtil;->setSearchedTextWithColor(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 130
    const/4 v3, 0x0

    sget v4, Lcom/sec/android/socialhub/util/HubColor;->SEARCH_COLOR:I

    move-object/from16 v0, p4

    invoke-static {v3, v15, v0, v4}, Lcom/sec/android/socialhub/util/SocialHubUtil;->setSearchedTextWithColor(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 42
    :cond_163
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1c

    .line 62
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    :cond_167
    invoke-static {}, Lcom/sec/android/socialhub/image/SocialHubImage;->getImageError()I

    move-result v8

    goto/16 :goto_8d

    .line 90
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    :cond_16d
    const/16 v3, 0x8

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_f6

    .line 99
    :cond_173
    const/16 v3, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_11b

    .line 105
    :cond_17b
    const/16 v3, 0x8

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    const/16 v3, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_11b

    .line 122
    :cond_188
    const/16 v3, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 124
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    goto :goto_14c

    .line 134
    .end local v7           #image:Landroid/widget/ImageView;
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .end local v13           #item:Landroid/widget/FrameLayout;
    .end local v14           #layout:Landroid/widget/LinearLayout;
    .end local v17           #mImagePlay:Landroid/widget/ImageView;
    .end local v18           #media_count:I
    .end local v19           #media_type:Ljava/lang/String;
    :cond_19a
    return-void
.end method
