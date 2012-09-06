.class public Lcom/android/mms/ui/ConversationListItem;
.super Landroid/widget/LinearLayout;
.source "ConversationListItem.java"

# interfaces
.implements Lcom/android/mms/data/Contact$UpdateListener;


# static fields
.field public static LIST_FROM_TEXT_SIZE_HUGE:F

.field public static LIST_FROM_TEXT_SIZE_LARGE:F

.field public static LIST_FROM_TEXT_SIZE_NORMAL:F

.field public static LIST_FROM_TEXT_SIZE_SMALL:F

.field public static LIST_FROM_TEXT_SIZE_TINY:F

.field private static LIST_HEIGHT_HUGE:I

.field private static LIST_HEIGHT_LARGE:I

.field private static LIST_HEIGHT_NORMAL:I

.field private static LIST_HEIGHT_SMALL:I

.field private static LIST_HEIGHT_TINY:I

.field private static LIST_SUBJECT_TEXT_SIZE_HUGE:F

.field private static LIST_SUBJECT_TEXT_SIZE_LARGE:F

.field private static LIST_SUBJECT_TEXT_SIZE_NORMAL:F

.field private static LIST_SUBJECT_TEXT_SIZE_SMALL:F

.field private static LIST_SUBJECT_TEXT_SIZE_TINY:F

.field private static mDefaultContactImage:Landroid/graphics/drawable/Drawable;


# instance fields
.field private cmasText:Ljava/lang/String;

.field private mAvatarView:Landroid/widget/QuickContactBadge;

.field private mCMASImage:Landroid/graphics/drawable/Drawable;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mConversationListItemData:Lcom/android/mms/ui/ConversationListItemData;

.field private mDateView:Landroid/widget/TextView;

.field private mFontSize:I

.field private mFromView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mIsDeleteMode:Z

.field private mListItemLayout:Landroid/widget/RelativeLayout;

.field private mMsgPointer:Landroid/widget/ImageView;

.field private mOldFontSize:I

.field private mPresenceView:Landroid/widget/ImageView;

.field private mSubjectView:Landroid/widget/TextView;

.field private mUnreadCount:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/high16 v3, 0x4190

    const/high16 v2, 0x4180

    const/16 v1, 0x40

    .line 86
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/ConversationListItem;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .line 103
    sput v2, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_TINY:F

    .line 104
    const v0, 0x419547ae

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_SMALL:F

    .line 105
    const v0, 0x41a547ae

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_NORMAL:F

    .line 106
    const v0, 0x41b547ae

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_LARGE:F

    .line 107
    const v0, 0x41cd47ae

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_HUGE:F

    .line 109
    const/high16 v0, 0x4140

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_TINY:F

    .line 110
    const/high16 v0, 0x4160

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_SMALL:F

    .line 111
    sput v2, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_NORMAL:F

    .line 112
    sput v3, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_LARGE:F

    .line 113
    sput v3, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_HUGE:F

    .line 115
    const/16 v0, 0x40

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_TINY:I

    .line 116
    const/16 v0, 0x40

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_SMALL:I

    .line 117
    sput v1, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_NORMAL:I

    .line 118
    sput v1, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_LARGE:I

    .line 119
    sput v1, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_HUGE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListItem;->mIsDeleteMode:Z

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mHandler:Landroid/os/Handler;

    .line 97
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFontSize:I

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mOldFontSize:I

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListItem;->mIsDeleteMode:Z

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mHandler:Landroid/os/Handler;

    .line 97
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFontSize:I

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mOldFontSize:I

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    .line 130
    sget-object v0, Lcom/android/mms/ui/ConversationListItem;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2a

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ConversationListItem;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .line 134
    :cond_2a
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mCMASImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3c

    .line 135
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f02

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mCMASImage:Landroid/graphics/drawable/Drawable;

    .line 138
    :cond_3c
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ConversationListItem;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->updateFromView()V

    return-void
.end method

.method private formatMessage(Lcom/android/mms/ui/ConversationListItemData;)Ljava/lang/CharSequence;
    .registers 8
    .parameter "ch"

    .prologue
    .line 211
    invoke-virtual {p1}, Lcom/android/mms/ui/ConversationListItemData;->getFrom()Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, from:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/mms/ui/ConversationListItemData;->getContacts()Lcom/android/mms/data/ContactList;

    move-result-object v3

    .line 213
    .local v3, recipients:Lcom/android/mms/data/ContactList;
    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2f

    .line 214
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/data/Contact;

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, recipient:Ljava/lang/String;
    const-string v4, "CBmessages"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 217
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090123

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 225
    .end local v2           #recipient:Ljava/lang/String;
    :cond_2f
    :goto_2f
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 226
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 228
    :cond_42
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 241
    .local v0, buf:Landroid/text/SpannableStringBuilder;
    return-object v0

    .line 219
    .end local v0           #buf:Landroid/text/SpannableStringBuilder;
    .restart local v2       #recipient:Ljava/lang/String;
    :cond_48
    const-string v4, "Push message"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 220
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09019f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2f
.end method

.method private reCreateNameView()V
    .registers 20

    .prologue
    .line 357
    const v17, 0x7f080065

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 358
    .local v3, from:Landroid/widget/TextView;
    if-nez v3, :cond_10

    .line 416
    :cond_f
    :goto_f
    return-void

    .line 362
    :cond_10
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 364
    .local v10, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    .line 365
    .local v13, parent:Landroid/view/ViewGroup;
    invoke-virtual {v13, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 366
    .local v4, index:I
    invoke-virtual {v13, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListItem;->getContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "layout_inflater"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 369
    .local v7, inflater:Landroid/view/LayoutInflater;
    const v17, 0x7f030010

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .end local v3           #from:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 370
    .restart local v3       #from:Landroid/widget/TextView;
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    add-int/lit8 v17, v4, -0x1

    move/from16 v0, v17

    invoke-virtual {v13, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 374
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    .line 377
    const v17, 0x7f080064

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 378
    .local v2, date:Landroid/widget/TextView;
    if-eqz v2, :cond_f

    .line 382
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 384
    .local v11, paramsDate:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    .line 385
    .local v14, parentDate:Landroid/view/ViewGroup;
    invoke-virtual {v14, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 386
    .local v5, indexDate:I
    invoke-virtual {v14, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 388
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListItem;->getContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "layout_inflater"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 389
    .local v8, inflaterDate:Landroid/view/LayoutInflater;
    const v17, 0x7f03000f

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .end local v2           #date:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 390
    .restart local v2       #date:Landroid/widget/TextView;
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    add-int/lit8 v17, v5, -0x1

    move/from16 v0, v17

    invoke-virtual {v14, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 394
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    .line 398
    const v17, 0x7f080045

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 399
    .local v16, subject:Landroid/widget/TextView;
    if-eqz v16, :cond_f

    .line 403
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 405
    .local v12, paramsSubject:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    .line 406
    .local v15, parentSujbect:Landroid/view/ViewGroup;
    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    .line 407
    .local v6, indexSujbect:I
    invoke-virtual {v15, v6}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 409
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListItem;->getContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "layout_inflater"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 410
    .local v9, inflaterSubject:Landroid/view/LayoutInflater;
    const v17, 0x7f030011

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .end local v16           #subject:Landroid/widget/TextView;
    check-cast v16, Landroid/widget/TextView;

    .line 411
    .restart local v16       #subject:Landroid/widget/TextView;
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    add-int/lit8 v17, v6, -0x1

    invoke-virtual/range {v15 .. v17}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 415
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    goto/16 :goto_f
.end method

.method private setConversationListItemData(Lcom/android/mms/ui/ConversationListItemData;)V
    .registers 2
    .parameter "header"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListItem;->mConversationListItemData:Lcom/android/mms/ui/ConversationListItemData;

    .line 198
    return-void
.end method

.method private updateAvatarView()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 245
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mConversationListItemData:Lcom/android/mms/ui/ConversationListItemData;

    .line 249
    .local v1, ch:Lcom/android/mms/ui/ConversationListItemData;
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v5}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 253
    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListItemData;->getContacts()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-ne v3, v6, :cond_ca

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListItemData;->isCMAS()Z

    move-result v3

    if-nez v3, :cond_ca

    .line 254
    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListItemData;->getContacts()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    .line 255
    .local v2, contact:Lcom/android/mms/data/Contact;
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/mms/ui/ConversationListItem;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 257
    .local v0, avatarDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->isOnlineLocker()Z

    move-result v3

    if-nez v3, :cond_38

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->isOnlineAlbum()Z

    move-result v3

    if-eqz v3, :cond_50

    .line 258
    :cond_38
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v5}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 298
    .end local v2           #contact:Lcom/android/mms/data/Contact;
    :goto_3d
    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListItemData;->isCMAS()Z

    move-result v3

    if-ne v6, v3, :cond_d9

    .line 299
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mCMASImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 304
    :goto_4a
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v7}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 305
    return-void

    .line 260
    .restart local v2       #contact:Lcom/android/mms/data/Contact;
    :cond_50
    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CBmessages"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 261
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v5}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 265
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200ee

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_3d

    .line 267
    :cond_6f
    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Push message"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 268
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v5}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 272
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200fa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_3d

    .line 276
    :cond_8e
    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 277
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_3d

    .line 280
    :cond_9e
    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 281
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto :goto_3d

    .line 284
    :cond_b2
    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v3

    if-eqz v3, :cond_c3

    .line 285
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto/16 :goto_3d

    .line 287
    :cond_c3
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v5}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto/16 :goto_3d

    .line 294
    .end local v0           #avatarDrawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #contact:Lcom/android/mms/data/Contact;
    :cond_ca
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200f0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #avatarDrawable:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3d

    .line 302
    :cond_d9
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v0}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4a
.end method

.method private updateCMASView(Lcom/android/mms/ui/ConversationListItemData;)V
    .registers 6
    .parameter "ch"

    .prologue
    .line 329
    const-string v1, "Mms/ConversationListItem"

    const-string v2, "ConversationListItem,updateCMASView()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v1, p1, Lcom/android/mms/ui/ConversationListItemData;->mCMASType:Ljava/lang/String;

    if-eqz v1, :cond_5d

    .line 332
    const-string v1, "Mms/ConversationListItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCMASType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/mms/ui/ConversationListItemData;->mCMASType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/android/mms/ui/ConversationListItemData;->mCMASType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Alert"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->cmasText:Ljava/lang/String;

    .line 334
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->cmasText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    const-string v1, "Mms/ConversationListItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConversationListItem, cmasText = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->cmasText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_5d
    const/16 v1, 0xc0

    const/16 v2, 0xc0

    const/16 v3, 0xc0

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 338
    .local v0, fontColor:I
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 339
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    const v2, 0x7f0902f1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 340
    return-void
.end method

.method private updateFromView()V
    .registers 5

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversationListItemData:Lcom/android/mms/ui/ConversationListItemData;

    .line 310
    .local v0, ch:Lcom/android/mms/ui/ConversationListItemData;
    const-string v2, "Mms/ConversationListItem"

    const-string v3, "ConversationListItem,updateFromView()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListItemData;->isCMAS()Z

    move-result v3

    if-ne v2, v3, :cond_23

    .line 312
    const-string v2, "Mms/ConversationListItem"

    const-string v3, "ConversationListItem,ch.mIsCMAS = true"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->updateCMASView(Lcom/android/mms/ui/ConversationListItemData;)V

    .line 314
    const v1, -0x1

    .line 315
    .local v1, fontColor:I
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 325
    .end local v1           #fontColor:I
    :goto_22
    return-void

    .line 317
    :cond_23
    const-string v2, "Mms/ConversationListItem"

    const-string v3, "ConversationListItem,ch.mIsCMAS = false"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListItemData;->updateRecipients()V

    .line 320
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->formatMessage(Lcom/android/mms/ui/ConversationListItemData;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->updateAvatarView()V

    goto :goto_22
.end method


# virtual methods
.method public bind(Landroid/content/Context;Lcom/android/mms/ui/ConversationListItemData;Landroid/database/Cursor;)V
    .registers 12
    .parameter "context"
    .parameter "ch"
    .parameter "cursor"

    .prologue
    const/4 v7, 0x0

    .line 550
    iget v1, p0, Lcom/android/mms/ui/ConversationListItem;->mFontSize:I

    .line 551
    .local v1, currentFontSize:I
    iget v4, p0, Lcom/android/mms/ui/ConversationListItem;->mOldFontSize:I

    if-eq v4, v1, :cond_d

    .line 552
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->reCreateNameView()V

    .line 553
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListItem;->setTextColor()V

    .line 557
    :cond_d
    invoke-direct {p0, p2}, Lcom/android/mms/ui/ConversationListItem;->setConversationListItemData(Lcom/android/mms/ui/ConversationListItemData;)V

    .line 559
    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationListItemData;->getUnreadMessageCount()I

    move-result v3

    .line 560
    .local v3, unreadCount:I
    iget-boolean v4, p0, Lcom/android/mms/ui/ConversationListItem;->mIsDeleteMode:Z

    if-nez v4, :cond_78

    if-lez v3, :cond_78

    .line 561
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 562
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    :goto_28
    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationListItemData;->hasDraft()Z

    move-result v4

    if-eqz v4, :cond_80

    .line 570
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02001c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 572
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    const v5, 0x7f09000e

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 591
    :goto_48
    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationListItemData;->getContacts()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 594
    .local v0, contacts:Lcom/android/mms/data/ContactList;
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 600
    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationListItemData;->isCMAS()Z

    move-result v4

    if-eqz v4, :cond_bd

    .line 601
    const-string v4, "Mms/ConversationListItem"

    const-string v5, "ConversationListItem,ch.mIsCMAS = true"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListItem;->changeFontSize()V

    .line 604
    invoke-direct {p0, p2}, Lcom/android/mms/ui/ConversationListItem;->updateCMASView(Lcom/android/mms/ui/ConversationListItemData;)V

    .line 606
    const/16 v3, 0xc0

    const/16 v4, 0xc0

    const/16 v5, 0xc0

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    .line 607
    .local v2, fontColor:I
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 622
    :goto_71
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->updateAvatarView()V

    .line 625
    invoke-virtual {p0, v7}, Lcom/android/mms/ui/ConversationListItem;->setLongClickable(Z)V

    .line 626
    return-void

    .line 564
    .end local v0           #contacts:Lcom/android/mms/data/ContactList;
    .end local v2           #fontColor:I
    :cond_78
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_28

    .line 573
    :cond_80
    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationListItemData;->hasError()Z

    move-result v4

    if-eqz v4, :cond_a1

    .line 575
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02001d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 577
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    const v5, 0x7f09016e

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_48

    .line 579
    :cond_a1
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02001b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 581
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationListItemData;->getDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_48

    .line 609
    .restart local v0       #contacts:Lcom/android/mms/data/ContactList;
    :cond_bd
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListItem;->changeFontSize()V

    .line 610
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/android/mms/ui/ConversationListItem;->formatMessage(Lcom/android/mms/ui/ConversationListItemData;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    iget-boolean v4, p0, Lcom/android/mms/ui/ConversationListItem;->mIsDeleteMode:Z

    if-eqz v4, :cond_dd

    .line 613
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationListItemData;->getSmsMmsCount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    :goto_d6
    const/4 v2, -0x1

    .line 618
    .restart local v2       #fontColor:I
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_71

    .line 615
    .end local v2           #fontColor:I
    :cond_dd
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationListItemData;->getSubject()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d6
.end method

.method public changeFontSize()V
    .registers 12

    .prologue
    const/4 v10, 0x5

    const/4 v6, 0x2

    const/4 v9, -0x5

    const/4 v8, -0x4

    const/4 v7, 0x2

    .line 419
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->density:F

    .line 421
    .local v2, mDensityScale:F
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mListItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 422
    .local v3, params:Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 425
    .local v1, fromLP:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0x0

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 426
    iget v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFontSize:I

    .line 427
    .local v0, fontSize:I
    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mOldFontSize:I

    .line 429
    if-ne v0, v10, :cond_5c

    .line 430
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mListItemLayout:Landroid/widget/RelativeLayout;

    const/16 v5, 0xa

    invoke-virtual {v4, v7, v7, v7, v7}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 431
    sget v4, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_TINY:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 433
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_TINY:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 434
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_TINY:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 435
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_TINY:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 437
    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 485
    :goto_51
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mListItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 486
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 487
    return-void

    .line 438
    :cond_5c
    const/4 v4, 0x4

    if-ne v0, v4, :cond_88

    .line 439
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mListItemLayout:Landroid/widget/RelativeLayout;

    const/16 v5, 0x9

    invoke-virtual {v4, v7, v7, v7, v7}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 440
    sget v4, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_SMALL:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 442
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_SMALL:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 443
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_SMALL:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 444
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_SMALL:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 446
    iput v8, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_51

    .line 447
    :cond_88
    const/4 v4, 0x3

    if-ne v0, v4, :cond_b6

    .line 448
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mListItemLayout:Landroid/widget/RelativeLayout;

    const/16 v5, 0xf

    const/16 v6, 0x10

    invoke-virtual {v4, v7, v7, v7, v7}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 449
    sget v4, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_NORMAL:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 451
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_NORMAL:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 452
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_NORMAL:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 453
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_NORMAL:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 455
    iput v9, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_51

    .line 456
    :cond_b6
    if-ne v0, v6, :cond_e3

    .line 457
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mListItemLayout:Landroid/widget/RelativeLayout;

    const/16 v5, 0xb

    const/4 v6, 0x7

    invoke-virtual {v4, v7, v7, v7, v7}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 458
    sget v4, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_LARGE:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 460
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_LARGE:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 461
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_LARGE:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 462
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_LARGE:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 464
    iput v8, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_51

    .line 465
    :cond_e3
    const/4 v4, 0x1

    if-ne v0, v4, :cond_111

    .line 466
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mListItemLayout:Landroid/widget/RelativeLayout;

    const/16 v5, 0x9

    const/4 v6, 0x7

    invoke-virtual {v4, v7, v7, v7, v7}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 467
    sget v4, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_HUGE:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 469
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_HUGE:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 470
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_HUGE:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 471
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_HUGE:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 473
    iput v8, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_51

    .line 475
    :cond_111
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mListItemLayout:Landroid/widget/RelativeLayout;

    const/16 v5, 0xf

    const/16 v6, 0x10

    invoke-virtual {v4, v7, v7, v7, v7}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 476
    sget v4, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_NORMAL:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 478
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_NORMAL:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 479
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_NORMAL:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 480
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_NORMAL:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 482
    iput v9, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_51
.end method

.method public getAvatarView()Landroid/widget/QuickContactBadge;
    .registers 2

    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    return-object v0
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    .line 142
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 144
    const v0, 0x7f080065

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    .line 145
    const v0, 0x7f080045

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    .line 146
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 147
    const v0, 0x7f080064

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    .line 149
    const v0, 0x7f080061

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mPresenceView:Landroid/widget/ImageView;

    .line 150
    const v0, 0x7f08005e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    .line 151
    const v0, 0x7f080063

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 152
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMessageFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mOldFontSize:I

    .line 154
    const v0, 0x7f080060

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    .line 157
    const v0, 0x7f08005f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mListItemLayout:Landroid/widget/RelativeLayout;

    .line 159
    const v0, 0x7f080062

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgPointer:Landroid/widget/ImageView;

    .line 160
    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .registers 4
    .parameter "updated"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversationListItemData:Lcom/android/mms/ui/ConversationListItemData;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListItemData;->getContacts()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/data/ContactList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 353
    :goto_c
    return-void

    .line 348
    :cond_d
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/ConversationListItem$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationListItem$1;-><init>(Lcom/android/mms/ui/ConversationListItem;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_c
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3
    .parameter "hasWindowFocus"

    .prologue
    .line 653
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 655
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversationListItemData:Lcom/android/mms/ui/ConversationListItemData;

    if-nez v0, :cond_8

    .line 663
    :goto_7
    return-void

    .line 658
    :cond_8
    if-eqz p1, :cond_e

    .line 659
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    goto :goto_7

    .line 661
    :cond_e
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListItem;->unbind()V

    goto :goto_7
.end method

.method public setCheckBox(Z)V
    .registers 3
    .parameter "checked"

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 634
    return-void
.end method

.method public setDeleteMode(Z)V
    .registers 5
    .parameter "isDeleteMode"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 637
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListItem;->mIsDeleteMode:Z

    .line 638
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListItem;->mIsDeleteMode:Z

    if-eqz v0, :cond_1e

    .line 639
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 640
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 641
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgPointer:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 642
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    .line 648
    :goto_1d
    return-void

    .line 644
    :cond_1e
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 645
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 646
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    goto :goto_1d
.end method

.method public setFontSize(I)V
    .registers 2
    .parameter "fontSize"

    .prologue
    .line 671
    iput p1, p0, Lcom/android/mms/ui/ConversationListItem;->mFontSize:I

    .line 672
    return-void
.end method

.method public setMessagePointer(ZZ)V
    .registers 5
    .parameter "focus"
    .parameter "touch"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgPointer:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    .line 190
    :goto_4
    return-void

    .line 176
    :cond_5
    if-eqz p2, :cond_18

    .line 177
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgPointer:Landroid/widget/ImageView;

    const v1, 0x7f020107

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 184
    :goto_f
    if-eqz p1, :cond_21

    .line 185
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgPointer:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 180
    :cond_18
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgPointer:Landroid/widget/ImageView;

    const v1, 0x7f020106

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_f

    .line 188
    :cond_21
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgPointer:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4
.end method

.method public setPresenceIcon(I)V
    .registers 4
    .parameter "iconId"

    .prologue
    .line 163
    if-nez p1, :cond_a

    .line 164
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mPresenceView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    :goto_9
    return-void

    .line 166
    :cond_a
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mPresenceView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mPresenceView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_9
.end method

.method public setTextColor()V
    .registers 4

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    const v2, 0x207000e

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 206
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    const v2, 0x106003b

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 208
    return-void
.end method

.method public final unbind()V
    .registers 1

    .prologue
    .line 629
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 630
    return-void
.end method
