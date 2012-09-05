.class public Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeOther;
.super Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/AbstractViewType;
.source "ViewTypeOther.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/AbstractViewType;-><init>()V

    return-void
.end method

.method private inflateMediaView(Landroid/content/Context;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;Landroid/view/View$OnClickListener;)V
    .registers 16
    .parameter "context"
    .parameter "view"
    .parameter "data"
    .parameter "listener"

    .prologue
    .line 126
    if-eqz p2, :cond_4

    if-nez p3, :cond_5

    .line 235
    :cond_4
    :goto_4
    return-void

    .line 129
    :cond_5
    iget-object v6, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutMedia:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 130
    iget-object v6, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutMedia:Landroid/widget/LinearLayout;

    invoke-virtual {v6, p3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 132
    iget-object v6, p3, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentType:Ljava/lang/String;

    if-eqz v6, :cond_27

    iget-object v6, p3, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentType:Ljava/lang/String;

    const-string v7, "mood"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 134
    const-string v6, "ViewTypeOther"

    const-string v7, "inflateMediaView()"

    const-string v8, "AttchmentType is mood."

    invoke-static {v6, v7, v8}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 138
    :cond_27
    iget-object v6, p3, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mMediaInfo:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    .line 142
    iget-object v6, p3, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mMediaInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_31
    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;

    .line 146
    .local v2, info:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeOther;->getInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030004

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 148
    .local v3, item:Landroid/view/View;
    const v6, 0x7f090021

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 150
    .local v4, layout:Landroid/widget/FrameLayout;
    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 151
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v4, v6, p3}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 153
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->getMediaThumbnailURL()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_31

    .line 155
    iget-object v6, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutMedia:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 157
    iget-object v6, p3, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentCaption:Ljava/lang/String;

    if-nez v6, :cond_6f

    iget-object v6, p3, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentDescription:Ljava/lang/String;

    if-eqz v6, :cond_103

    .line 159
    :cond_6f
    iget-object v6, p3, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentType:Ljava/lang/String;

    if-nez v6, :cond_fb

    const-string v6, "note"

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->getMediaType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_fb

    .line 161
    iget-object v6, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/AbstractViewType;->mNoteClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    :goto_84
    new-instance v6, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeOther$1;

    invoke-direct {v6, p0}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeOther$1;-><init>(Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeOther;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 179
    iget-object v6, p3, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentType:Ljava/lang/String;

    if-nez v6, :cond_ff

    const-string v6, "note"

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->getMediaType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ff

    .line 181
    iget-object v6, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/AbstractViewType;->mNoteClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    :goto_a1
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 189
    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 190
    iget-object v6, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutMedia:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 191
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 193
    const-string v6, "video"

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->getMediaType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c9

    .line 195
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 208
    :cond_c9
    :goto_c9
    const v6, 0x7f090022

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 210
    .local v1, img:Landroid/widget/ImageView;
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->getMediaType()Ljava/lang/String;

    move-result-object v5

    .line 212
    .local v5, type:Ljava/lang/String;
    const-string v6, "photo"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e6

    const-string v6, "video"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_125

    .line 214
    :cond_e6
    iget v6, p3, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->miMediaCount:I

    const/4 v7, 0x1

    if-le v6, v7, :cond_11f

    .line 216
    const-string v6, "small"

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 223
    :goto_f0
    iget-object v6, p3, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentType:Ljava/lang/String;

    if-nez v6, :cond_31

    .line 225
    const-string v6, "youtube"

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_31

    .line 165
    .end local v1           #img:Landroid/widget/ImageView;
    .end local v5           #type:Ljava/lang/String;
    :cond_fb
    invoke-virtual {v3, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_84

    .line 185
    :cond_ff
    invoke-virtual {v4, p4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_a1

    .line 200
    :cond_103
    invoke-virtual {v4, p4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 202
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 203
    iget-object v6, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutMedia:Landroid/widget/LinearLayout;

    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 204
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    goto :goto_c9

    .line 220
    .restart local v1       #img:Landroid/widget/ImageView;
    .restart local v5       #type:Ljava/lang/String;
    :cond_11f
    const-string v6, "large"

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_f0

    .line 230
    :cond_125
    const-string v6, "attachement"

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_31
.end method


# virtual methods
.method public drawAttachment(Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V
    .registers 6
    .parameter "view"
    .parameter "data"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 240
    iget-object v0, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutAttachContent:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_c

    .line 241
    iget-object v0, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutAttachContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 243
    :cond_c
    iget-object v0, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mAttachmentCaption:Landroid/widget/TextView;

    if-eqz v0, :cond_15

    .line 244
    iget-object v0, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mAttachmentCaption:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    :cond_15
    iget-object v0, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mAttachmentDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_1e

    .line 247
    iget-object v0, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mAttachmentDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    :cond_1e
    iget-object v0, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutAttachContent:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_72

    iget-object v0, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mAttachmentCaption:Landroid/widget/TextView;

    if-nez v0, :cond_2a

    iget-object v0, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mAttachmentDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_72

    .line 253
    :cond_2a
    iget-object v0, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentType:Ljava/lang/String;

    if-eqz v0, :cond_73

    .line 255
    iget v0, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->miMediaCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_72

    iget-object v0, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentType:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 258
    iget-object v0, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutAttachContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 260
    iget-object v0, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentCaption:Ljava/lang/String;

    if-eqz v0, :cond_5a

    iget-object v0, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentCaption:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5a

    .line 262
    iget-object v0, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mAttachmentCaption:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    iget-object v0, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mAttachmentCaption:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentCaption:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    :cond_5a
    iget-object v0, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentDescription:Ljava/lang/String;

    if-eqz v0, :cond_72

    iget-object v0, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentDescription:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_72

    .line 268
    iget-object v0, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mAttachmentDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    iget-object v0, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mAttachmentDescription:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    :cond_72
    :goto_72
    return-void

    .line 274
    :cond_73
    iget-object v0, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentType:Ljava/lang/String;

    if-nez v0, :cond_72

    iget v0, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->miMediaCount:I

    if-nez v0, :cond_72

    .line 277
    iget-object v0, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentCaption:Ljava/lang/String;

    if-nez v0, :cond_83

    iget-object v0, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentDescription:Ljava/lang/String;

    if-eqz v0, :cond_72

    .line 279
    :cond_83
    iget-object v0, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutAttachContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 281
    iget-object v0, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutAttachContent:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeOther$2;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeOther$2;-><init>(Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeOther;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 291
    iget-object v0, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutAttachContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 292
    iget-object v0, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutAttachContent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/AbstractViewType;->mNoteClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object v0, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentCaption:Ljava/lang/String;

    if-eqz v0, :cond_b6

    iget-object v0, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentCaption:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b6

    .line 296
    iget-object v0, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mAttachmentCaption:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    iget-object v0, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mAttachmentCaption:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentCaption:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    :cond_b6
    iget-object v0, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentDescription:Ljava/lang/String;

    if-eqz v0, :cond_72

    iget-object v0, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentDescription:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_72

    .line 302
    iget-object v0, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mAttachmentDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 303
    iget-object v0, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mAttachmentDescription:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_72
.end method

.method public drawMedia(Landroid/content/Context;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V
    .registers 25
    .parameter "context"
    .parameter "view"
    .parameter "data"

    .prologue
    .line 27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/AbstractViewType;->mPhotoClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeOther;->inflateMediaView(Landroid/content/Context;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;Landroid/view/View$OnClickListener;)V

    .line 29
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutMedia:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v11

    .line 30
    .local v11, count:I
    const/16 v16, 0x0

    .line 31
    .local v16, mAttachmentCaption:Landroid/widget/TextView;
    const/16 v17, 0x0

    .line 32
    .local v17, mAttachmentDescription:Landroid/widget/TextView;
    const/4 v13, 0x0

    .line 34
    .local v13, info:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;
    const/4 v12, 0x0

    .local v12, index:I
    :goto_1d
    if-ge v12, v11, :cond_179

    .line 36
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutMedia:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 37
    .local v15, layout:Landroid/widget/LinearLayout;
    const v4, 0x7f090021

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout;

    .line 38
    .local v14, item:Landroid/widget/FrameLayout;
    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v13

    .end local v13           #info:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;
    check-cast v13, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;

    .line 39
    .restart local v13       #info:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;
    const v4, 0x7f090022

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 40
    .local v8, image:Landroid/widget/ImageView;
    const v4, 0x7f090024

    invoke-virtual {v14, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 41
    .local v18, mImagePlay:Landroid/widget/ImageView;
    const v4, 0x7f090026

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .end local v16           #mAttachmentCaption:Landroid/widget/TextView;
    check-cast v16, Landroid/widget/TextView;

    .line 42
    .restart local v16       #mAttachmentCaption:Landroid/widget/TextView;
    const v4, 0x7f090027

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .end local v17           #mAttachmentDescription:Landroid/widget/TextView;
    check-cast v17, Landroid/widget/TextView;

    .line 45
    .restart local v17       #mAttachmentDescription:Landroid/widget/TextView;
    if-eqz v16, :cond_6e

    if-eqz v17, :cond_6e

    .line 47
    const/16 v4, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 48
    const/16 v4, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    :cond_6e
    invoke-virtual {v13}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->getMediaType()Ljava/lang/String;

    move-result-object v20

    .line 52
    .local v20, media_type:Ljava/lang/String;
    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->miMediaCount:I

    move/from16 v19, v0

    .line 54
    .local v19, media_count:I
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeOther;->getImageService(Landroid/content/Context;)Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;

    move-result-object v4

    invoke-virtual {v13}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->getMediaThumbnailURL()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v5, "video"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_143

    const/4 v9, 0x0

    :goto_8c
    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->getImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/Adapter;Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 58
    .local v10, bitmap:Landroid/graphics/Bitmap;
    if-eqz v10, :cond_97

    .line 60
    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 64
    :cond_97
    const/4 v4, 0x0

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    const/4 v4, 0x1

    move/from16 v0, v19

    if-ne v0, v4, :cond_110

    .line 68
    const-string v4, "note"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ce

    const-string v4, "photo"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ce

    const-string v4, "link"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ce

    const-string v4, "video"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_158

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentType:Ljava/lang/String;

    if-nez v4, :cond_158

    .line 73
    :cond_ce
    if-eqz v16, :cond_110

    if-eqz v17, :cond_110

    .line 75
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentCaption:Ljava/lang/String;

    if-eqz v4, :cond_148

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentCaption:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_148

    .line 77
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentCaption:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    :goto_f1
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentDescription:Ljava/lang/String;

    if-eqz v4, :cond_150

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentDescription:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_150

    .line 86
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentDescription:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    :cond_110
    :goto_110
    const-string v4, "video"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_167

    .line 105
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/AbstractViewType;->mVideoClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 108
    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 109
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentType:Ljava/lang/String;

    if-nez v4, :cond_13f

    .line 110
    const v4, 0x7f020022

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 34
    :cond_13f
    :goto_13f
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1d

    .line 54
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    :cond_143
    const v9, 0x7f020023

    goto/16 :goto_8c

    .line 82
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    :cond_148
    const/16 v4, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_f1

    .line 91
    :cond_150
    const/16 v4, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_110

    .line 97
    :cond_158
    const/16 v4, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    const/16 v4, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_110

    .line 114
    :cond_167
    const/16 v4, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 116
    const/4 v4, 0x1

    invoke-virtual {v14, v4}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    goto :goto_13f

    .line 121
    .end local v8           #image:Landroid/widget/ImageView;
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .end local v14           #item:Landroid/widget/FrameLayout;
    .end local v15           #layout:Landroid/widget/LinearLayout;
    .end local v18           #mImagePlay:Landroid/widget/ImageView;
    .end local v19           #media_count:I
    .end local v20           #media_type:Ljava/lang/String;
    :cond_179
    return-void
.end method
