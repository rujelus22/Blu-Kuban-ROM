.class public Lcom/google/android/apps/plus/views/PhotoTagScroller;
.super Landroid/widget/HorizontalScrollView;
.source "PhotoTagScroller.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/google/android/apps/plus/fragments/PhotoViewFragment$HorizontallySrollable;


# instance fields
.field private mCheckedAvatar:Lcom/google/android/apps/plus/views/PhotoTagAvatarView;

.field private mExternalClickListener:Landroid/view/View$OnClickListener;

.field private mHideTags:Z

.field private mMyApprovedShapeId:Ljava/lang/Long;

.field private mPhotoHeader:Lcom/google/android/apps/plus/views/PhotoHeaderView;

.field private final mScrollerRect:Landroid/graphics/Rect;

.field private mShapeNeedsApproval:Z

.field private mTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/views/PhotoTagAvatarView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mTags:Ljava/util/ArrayList;

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mHideTags:Z

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mScrollerRect:Landroid/graphics/Rect;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mTags:Ljava/util/ArrayList;

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mHideTags:Z

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mScrollerRect:Landroid/graphics/Rect;

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mTags:Ljava/util/ArrayList;

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mHideTags:Z

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mScrollerRect:Landroid/graphics/Rect;

    .line 71
    return-void
.end method

.method private hideHeaderTagView(Z)V
    .registers 3
    .parameter "animate"

    .prologue
    .line 350
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/PhotoTagScroller;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mPhotoHeader:Lcom/google/android/apps/plus/views/PhotoHeaderView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->hideTagShape()V

    .line 352
    return-void
.end method

.method private showHeaderTagView(Z)V
    .registers 3
    .parameter "animate"

    .prologue
    .line 342
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/PhotoTagScroller;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mPhotoHeader:Lcom/google/android/apps/plus/views/PhotoHeaderView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->showTagShape()V

    .line 344
    return-void
.end method


# virtual methods
.method public bind(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/Cursor;)V
    .registers 39
    .parameter "context"
    .parameter "account"
    .parameter "cursor"

    .prologue
    .line 197
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    .line 198
    .local v14, inflater:Landroid/view/LayoutInflater;
    const v30, 0x7f0d011e

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/PhotoTagScroller;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/view/ViewGroup;

    .line 202
    .local v29, viewRoot:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mCheckedAvatar:Lcom/google/android/apps/plus/views/PhotoTagAvatarView;

    move-object/from16 v30, v0

    if-eqz v30, :cond_17d

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mCheckedAvatar:Lcom/google/android/apps/plus/views/PhotoTagAvatarView;

    move-object/from16 v30, v0

    const v31, 0x7f0d0031

    invoke-virtual/range {v30 .. v31}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getTag(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Long;

    .line 204
    .local v25, tagValue:Ljava/lang/Long;
    if-eqz v25, :cond_179

    .line 205
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 214
    .end local v25           #tagValue:Ljava/lang/Long;
    .local v9, checkedShapeId:J
    :goto_2e
    const/16 v17, 0x0

    .line 215
    .local v17, newCheckedAvatar:Lcom/google/android/apps/plus/views/PhotoTagAvatarView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mTags:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->clear()V

    .line 216
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mMyApprovedShapeId:Ljava/lang/Long;

    .line 217
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mShapeNeedsApproval:Z

    .line 218
    invoke-virtual/range {v29 .. v29}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 219
    const/16 v30, -0x1

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 221
    :cond_55
    :goto_55
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v30

    if-eqz v30, :cond_1ee

    .line 222
    const/16 v30, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 223
    .local v18, shapeId:J
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v27

    .line 224
    .local v27, userId:J
    const/16 v30, 0x8

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 225
    .local v22, subjectId:J
    const/16 v30, 0x7

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 226
    .local v24, subjectName:Ljava/lang/String;
    const/16 v30, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 227
    .local v11, creatorName:Ljava/lang/String;
    const/16 v30, 0x5

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 228
    .local v21, status:I
    const/16 v30, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 230
    .local v7, bounds:[B
    const/16 v30, 0x4

    move/from16 v0, v21

    move/from16 v1, v30

    if-eq v0, v1, :cond_181

    const/4 v5, 0x1

    .line 231
    .local v5, approved:Z
    :goto_a4
    cmp-long v30, v27, v22

    if-nez v30, :cond_184

    const/4 v15, 0x1

    .line 234
    .local v15, isMe:Z
    :goto_a9
    if-eqz v21, :cond_55

    .line 239
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_55

    .line 243
    invoke-static {v7}, Lcom/google/android/apps/plus/content/DbRect;->deserialize([B)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v16

    .line 247
    .local v16, mobileRect:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    if-eqz v15, :cond_1db

    .line 248
    if-eqz v5, :cond_187

    .line 249
    const v30, 0x7f03006a

    const/16 v31, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    .line 250
    .local v26, tagView:Landroid/view/View;
    invoke-virtual/range {v29 .. v29}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    .line 251
    .local v13, index:I
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mMyApprovedShapeId:Ljava/lang/Long;

    .line 269
    :goto_d4
    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 270
    const v30, 0x7f0d0037

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;

    .line 271
    .local v6, avatar:Lcom/google/android/apps/plus/views/PhotoTagAvatarView;
    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->setSubjectId(J)V

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mTags:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 274
    cmp-long v30, v9, v18

    if-nez v30, :cond_103

    .line 275
    move-object/from16 v17, v6

    .line 279
    :cond_103
    new-instance v20, Landroid/graphics/RectF;

    invoke-virtual/range {v16 .. v16}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getLeft()D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v30, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getTop()D

    move-result-wide v31

    move-wide/from16 v0, v31

    double-to-float v0, v0

    move/from16 v31, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getRight()D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v32, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getBottom()D

    move-result-wide v33

    move-wide/from16 v0, v33

    double-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, v20

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 282
    .local v20, shapeRect:Landroid/graphics/RectF;
    const v30, 0x7f0d0030

    move/from16 v0, v30

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->setTag(ILjava/lang/Object;)V

    .line 283
    const v30, 0x7f0d002f

    move/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->setTag(ILjava/lang/Object;)V

    .line 284
    const v30, 0x7f0d0031

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v6, v0, v1}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->setTag(ILjava/lang/Object;)V

    .line 285
    if-eqz v15, :cond_55

    if-nez v5, :cond_55

    .line 286
    const v30, 0x7f0d0038

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/PhotoTagScroller;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_16e
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_16e} :catch_170

    goto/16 :goto_55

    .line 311
    .end local v5           #approved:Z
    .end local v6           #avatar:Lcom/google/android/apps/plus/views/PhotoTagAvatarView;
    .end local v7           #bounds:[B
    .end local v9           #checkedShapeId:J
    .end local v11           #creatorName:Ljava/lang/String;
    .end local v13           #index:I
    .end local v14           #inflater:Landroid/view/LayoutInflater;
    .end local v15           #isMe:Z
    .end local v16           #mobileRect:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    .end local v17           #newCheckedAvatar:Lcom/google/android/apps/plus/views/PhotoTagAvatarView;
    .end local v18           #shapeId:J
    .end local v20           #shapeRect:Landroid/graphics/RectF;
    .end local v21           #status:I
    .end local v22           #subjectId:J
    .end local v24           #subjectName:Ljava/lang/String;
    .end local v26           #tagView:Landroid/view/View;
    .end local v27           #userId:J
    .end local v29           #viewRoot:Landroid/view/ViewGroup;
    :catch_170
    move-exception v12

    .line 313
    .local v12, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v30, "EsPhotoView"

    move-object/from16 v0, v30

    invoke-static {v0, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    .end local v12           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :goto_178
    return-void

    .line 207
    .restart local v14       #inflater:Landroid/view/LayoutInflater;
    .restart local v25       #tagValue:Ljava/lang/Long;
    .restart local v29       #viewRoot:Landroid/view/ViewGroup;
    :cond_179
    const-wide/16 v9, 0x0

    .restart local v9       #checkedShapeId:J
    goto/16 :goto_2e

    .line 210
    .end local v9           #checkedShapeId:J
    .end local v25           #tagValue:Ljava/lang/Long;
    :cond_17d
    const-wide/16 v9, 0x0

    .restart local v9       #checkedShapeId:J
    goto/16 :goto_2e

    .line 230
    .restart local v7       #bounds:[B
    .restart local v11       #creatorName:Ljava/lang/String;
    .restart local v17       #newCheckedAvatar:Lcom/google/android/apps/plus/views/PhotoTagAvatarView;
    .restart local v18       #shapeId:J
    .restart local v21       #status:I
    .restart local v22       #subjectId:J
    .restart local v24       #subjectName:Ljava/lang/String;
    .restart local v27       #userId:J
    :cond_181
    const/4 v5, 0x0

    goto/16 :goto_a4

    .line 231
    .restart local v5       #approved:Z
    :cond_184
    const/4 v15, 0x0

    goto/16 :goto_a9

    .line 253
    .restart local v15       #isMe:Z
    .restart local v16       #mobileRect:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    :cond_187
    const v30, 0x7f030069

    const/16 v31, 0x0

    :try_start_18c
    move/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    .line 256
    .restart local v26       #tagView:Landroid/view/View;
    const v30, 0x7f0d012a

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 257
    .local v8, button:Landroid/view/View;
    const v30, 0x7f0d0031

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v8, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 258
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    const v30, 0x7f0d012b

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 260
    const v30, 0x7f0d0031

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v8, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 261
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    const/4 v13, 0x0

    .line 263
    .restart local v13       #index:I
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mShapeNeedsApproval:Z

    goto/16 :goto_d4

    .line 266
    .end local v8           #button:Landroid/view/View;
    .end local v13           #index:I
    .end local v26           #tagView:Landroid/view/View;
    :cond_1db
    const v30, 0x7f03006a

    const/16 v31, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    .line 267
    .restart local v26       #tagView:Landroid/view/View;
    invoke-virtual/range {v29 .. v29}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    .restart local v13       #index:I
    goto/16 :goto_d4

    .line 290
    .end local v5           #approved:Z
    .end local v7           #bounds:[B
    .end local v11           #creatorName:Ljava/lang/String;
    .end local v13           #index:I
    .end local v15           #isMe:Z
    .end local v16           #mobileRect:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    .end local v18           #shapeId:J
    .end local v21           #status:I
    .end local v22           #subjectId:J
    .end local v24           #subjectName:Ljava/lang/String;
    .end local v26           #tagView:Landroid/view/View;
    .end local v27           #userId:J
    :cond_1ee
    invoke-virtual/range {v29 .. v29}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v30

    if-lez v30, :cond_240

    .line 292
    if-eqz v17, :cond_22c

    .line 294
    move-object/from16 v6, v17

    .line 300
    .restart local v6       #avatar:Lcom/google/android/apps/plus/views/PhotoTagAvatarView;
    :goto_1f8
    const v30, 0x7f0d0030

    move/from16 v0, v30

    invoke-virtual {v6, v0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getTag(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/graphics/RectF;

    .line 301
    .restart local v20       #shapeRect:Landroid/graphics/RectF;
    const v30, 0x7f0d002f

    move/from16 v0, v30

    invoke-virtual {v6, v0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getTag(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 302
    .restart local v24       #subjectName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mPhotoHeader:Lcom/google/android/apps/plus/views/PhotoHeaderView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->bindTagData(Landroid/graphics/RectF;Ljava/lang/CharSequence;)V

    .line 303
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-virtual {v6, v0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->setChecked(Z)V

    .line 309
    .end local v6           #avatar:Lcom/google/android/apps/plus/views/PhotoTagAvatarView;
    .end local v20           #shapeRect:Landroid/graphics/RectF;
    .end local v24           #subjectName:Ljava/lang/String;
    :goto_224
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/PhotoTagScroller;->invalidate()V

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/PhotoTagScroller;->requestLayout()V

    goto/16 :goto_178

    .line 297
    :cond_22c
    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    .line 298
    .restart local v26       #tagView:Landroid/view/View;
    const v30, 0x7f0d0037

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;

    .restart local v6       #avatar:Lcom/google/android/apps/plus/views/PhotoTagAvatarView;
    goto :goto_1f8

    .line 306
    .end local v6           #avatar:Lcom/google/android/apps/plus/views/PhotoTagAvatarView;
    .end local v26           #tagView:Landroid/view/View;
    :cond_240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mPhotoHeader:Lcom/google/android/apps/plus/views/PhotoHeaderView;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->bindTagData(Landroid/graphics/RectF;Ljava/lang/CharSequence;)V
    :try_end_24d
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_18c .. :try_end_24d} :catch_170

    goto :goto_224
.end method

.method public clear()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 147
    iput-object v3, p0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mCheckedAvatar:Lcom/google/android/apps/plus/views/PhotoTagAvatarView;

    .line 148
    iput-object v3, p0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mPhotoHeader:Lcom/google/android/apps/plus/views/PhotoHeaderView;

    .line 149
    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/views/PhotoTagScroller;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iput-object v3, p0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mExternalClickListener:Landroid/view/View$OnClickListener;

    .line 151
    iput-object v3, p0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mMyApprovedShapeId:Ljava/lang/Long;

    .line 152
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mTags:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;

    .line 153
    .local v0, avatar:Landroid/view/View;
    const v2, 0x7f0d0030

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 154
    const v2, 0x7f0d002f

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 155
    const v2, 0x7f0d0031

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_12

    .line 157
    .end local v0           #avatar:Landroid/view/View;
    :cond_31
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mTags:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 158
    return-void
.end method

.method public getMyApprovedShapeId()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mMyApprovedShapeId:Ljava/lang/Long;

    return-object v0
.end method

.method public hasTags()Z
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mTags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hideTags(ZZ)V
    .registers 4
    .parameter "hide"
    .parameter "animate"

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mHideTags:Z

    if-eq v0, p1, :cond_b

    .line 329
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mHideTags:Z

    .line 330
    if-eqz p1, :cond_c

    .line 331
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/views/PhotoTagScroller;->hideHeaderTagView(Z)V

    .line 336
    :cond_b
    :goto_b
    return-void

    .line 333
    :cond_c
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/views/PhotoTagScroller;->showHeaderTagView(Z)V

    goto :goto_b
.end method

.method public interceptMoveLeft(FF)Z
    .registers 6
    .parameter "origX"
    .parameter "origY"

    .prologue
    const/4 v0, 0x0

    .line 131
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mHideTags:Z

    if-eqz v1, :cond_6

    .line 139
    :cond_5
    :goto_5
    return v0

    .line 135
    :cond_6
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mScrollerRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/views/PhotoTagScroller;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 136
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mScrollerRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-ltz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mScrollerRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-gtz v1, :cond_5

    .line 139
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public interceptMoveRight(FF)Z
    .registers 6
    .parameter "origX"
    .parameter "origY"

    .prologue
    const/4 v0, 0x0

    .line 118
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mHideTags:Z

    if-eqz v1, :cond_6

    .line 126
    :cond_5
    :goto_5
    return v0

    .line 122
    :cond_6
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mScrollerRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/views/PhotoTagScroller;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 123
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mScrollerRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-ltz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mScrollerRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-gtz v1, :cond_5

    .line 126
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public isWaitingMyApproval()Z
    .registers 2

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mShapeNeedsApproval:Z

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 10
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v5, 0x0

    .line 82
    instance-of v4, p1, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;

    if-eqz v4, :cond_e

    move-object v0, p1

    .line 83
    check-cast v0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;

    .line 85
    .local v0, avatar:Lcom/google/android/apps/plus/views/PhotoTagAvatarView;
    if-eqz p2, :cond_2e

    .line 86
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mCheckedAvatar:Lcom/google/android/apps/plus/views/PhotoTagAvatarView;

    if-ne p1, v4, :cond_f

    .line 114
    .end local v0           #avatar:Lcom/google/android/apps/plus/views/PhotoTagAvatarView;
    :cond_e
    :goto_e
    return-void

    .line 91
    .restart local v0       #avatar:Lcom/google/android/apps/plus/views/PhotoTagAvatarView;
    :cond_f
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mCheckedAvatar:Lcom/google/android/apps/plus/views/PhotoTagAvatarView;

    .line 92
    .local v1, prevChecked:Lcom/google/android/apps/plus/views/PhotoTagAvatarView;
    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mCheckedAvatar:Lcom/google/android/apps/plus/views/PhotoTagAvatarView;

    .line 93
    if-eqz v1, :cond_19

    .line 94
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->setChecked(Z)V

    .line 104
    .end local v1           #prevChecked:Lcom/google/android/apps/plus/views/PhotoTagAvatarView;
    :cond_19
    :goto_19
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mCheckedAvatar:Lcom/google/android/apps/plus/views/PhotoTagAvatarView;

    if-nez v4, :cond_35

    move-object v3, v5

    .line 107
    .local v3, shapeRect:Landroid/graphics/RectF;
    :goto_1e
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mCheckedAvatar:Lcom/google/android/apps/plus/views/PhotoTagAvatarView;

    if-nez v4, :cond_42

    move-object v2, v5

    .line 111
    .local v2, shapeName:Ljava/lang/CharSequence;
    :goto_23
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mPhotoHeader:Lcom/google/android/apps/plus/views/PhotoHeaderView;

    invoke-virtual {v4, v3, v2}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->bindTagData(Landroid/graphics/RectF;Ljava/lang/CharSequence;)V

    .line 112
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mPhotoHeader:Lcom/google/android/apps/plus/views/PhotoHeaderView;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->invalidate()V

    goto :goto_e

    .line 98
    .end local v2           #shapeName:Ljava/lang/CharSequence;
    .end local v3           #shapeRect:Landroid/graphics/RectF;
    :cond_2e
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mCheckedAvatar:Lcom/google/android/apps/plus/views/PhotoTagAvatarView;

    if-ne p1, v4, :cond_19

    .line 100
    iput-object v5, p0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mCheckedAvatar:Lcom/google/android/apps/plus/views/PhotoTagAvatarView;

    goto :goto_19

    .line 104
    :cond_35
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mCheckedAvatar:Lcom/google/android/apps/plus/views/PhotoTagAvatarView;

    const v6, 0x7f0d0030

    invoke-virtual {v4, v6}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    move-object v3, v4

    goto :goto_1e

    .line 107
    .restart local v3       #shapeRect:Landroid/graphics/RectF;
    :cond_42
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mCheckedAvatar:Lcom/google/android/apps/plus/views/PhotoTagAvatarView;

    const v5, 0x7f0d002f

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    move-object v2, v4

    goto :goto_23
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mExternalClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_9

    .line 76
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mExternalClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 78
    :cond_9
    return-void
.end method

.method public setExternalOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mExternalClickListener:Landroid/view/View$OnClickListener;

    .line 165
    return-void
.end method

.method public setHeaderView(Lcom/google/android/apps/plus/views/PhotoHeaderView;)V
    .registers 2
    .parameter "header"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PhotoTagScroller;->mPhotoHeader:Lcom/google/android/apps/plus/views/PhotoHeaderView;

    .line 172
    return-void
.end method
