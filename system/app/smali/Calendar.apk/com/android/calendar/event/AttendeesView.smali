.class public Lcom/android/calendar/event/AttendeesView;
.super Landroid/widget/LinearLayout;
.source "AttendeesView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;
    }
.end annotation


# static fields
.field private static final CONTACT_DATA_WITH_PRESENCE_URI:Landroid/net/Uri;

.field private static final PRESENCE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDefaultBadge:Landroid/graphics/drawable/Drawable;

.field private final mDefaultPhotoAlpha:I

.field private final mDividerForMaybe:Landroid/view/View;

.field private final mDividerForNo:Landroid/view/View;

.field private final mDividerForNoResponse:Landroid/view/View;

.field private final mDividerForYes:Landroid/view/View;

.field private final mEntries:[Ljava/lang/CharSequence;

.field private final mGrayscaleFilter:Landroid/graphics/ColorMatrixColorFilter;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mMaybe:I

.field private mNo:I

.field private mNoResponse:I

.field private final mNoResponsePhotoAlpha:I

.field private final mPresenceQueryHandler:Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;

.field private mYes:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/event/AttendeesView;->PRESENCE_PROJECTION:[Ljava/lang/String;

    .line 69
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/calendar/event/AttendeesView;->CONTACT_DATA_WITH_PRESENCE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    iput-object p1, p0, Lcom/android/calendar/event/AttendeesView;->mContext:Landroid/content/Context;

    .line 102
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/android/calendar/event/AttendeesView;->mInflater:Landroid/view/LayoutInflater;

    .line 103
    new-instance v2, Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;-><init>(Lcom/android/calendar/event/AttendeesView;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/android/calendar/event/AttendeesView;->mPresenceQueryHandler:Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 106
    .local v1, resources:Landroid/content/res/Resources;
    const v2, 0x7f020031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/event/AttendeesView;->mDefaultBadge:Landroid/graphics/drawable/Drawable;

    .line 107
    const v2, 0x7f0b0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/event/AttendeesView;->mNoResponsePhotoAlpha:I

    .line 109
    const v2, 0x7f0b0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/event/AttendeesView;->mDefaultPhotoAlpha:I

    .line 112
    const v2, 0x7f07000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/event/AttendeesView;->mEntries:[Ljava/lang/CharSequence;

    .line 113
    iget-object v2, p0, Lcom/android/calendar/event/AttendeesView;->mEntries:[Ljava/lang/CharSequence;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/android/calendar/event/AttendeesView;->constructDividerView(Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/event/AttendeesView;->mDividerForYes:Landroid/view/View;

    .line 114
    iget-object v2, p0, Lcom/android/calendar/event/AttendeesView;->mEntries:[Ljava/lang/CharSequence;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/android/calendar/event/AttendeesView;->constructDividerView(Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/event/AttendeesView;->mDividerForNo:Landroid/view/View;

    .line 115
    iget-object v2, p0, Lcom/android/calendar/event/AttendeesView;->mEntries:[Ljava/lang/CharSequence;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/android/calendar/event/AttendeesView;->constructDividerView(Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/event/AttendeesView;->mDividerForMaybe:Landroid/view/View;

    .line 116
    iget-object v2, p0, Lcom/android/calendar/event/AttendeesView;->mEntries:[Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/android/calendar/event/AttendeesView;->constructDividerView(Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/event/AttendeesView;->mDividerForNoResponse:Landroid/view/View;

    .line 119
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 120
    .local v0, matrix:Landroid/graphics/ColorMatrix;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 121
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v2, p0, Lcom/android/calendar/event/AttendeesView;->mGrayscaleFilter:Landroid/graphics/ColorMatrixColorFilter;

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/event/AttendeesView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/calendar/event/AttendeesView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/event/AttendeesView;Lcom/android/calendar/event/EditEventHelper$AttendeeItem;)Landroid/view/View;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/calendar/event/AttendeesView;->updateAttendeeView(Lcom/android/calendar/event/EditEventHelper$AttendeeItem;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private addOneAttendee(Lcom/android/calendar/CalendarEventModel$Attendee;)V
    .registers 19
    .parameter "attendee"

    .prologue
    .line 245
    invoke-virtual/range {p0 .. p1}, Lcom/android/calendar/event/AttendeesView;->contains(Lcom/android/calendar/CalendarEventModel$Attendee;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 317
    :goto_6
    return-void

    .line 248
    :cond_7
    new-instance v3, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/AttendeesView;->mDefaultBadge:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v1}, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;-><init>(Lcom/android/calendar/CalendarEventModel$Attendee;Landroid/graphics/drawable/Drawable;)V

    .line 249
    .local v3, item:Lcom/android/calendar/event/EditEventHelper$AttendeeItem;
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mStatus:I

    .line 251
    .local v14, status:I
    const/4 v10, 0x0

    .line 252
    .local v10, firstAttendeeInCategory:Z
    packed-switch v14, :pswitch_data_19c

    .line 287
    :pswitch_1a
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/event/AttendeesView;->mYes:I

    if-nez v1, :cond_184

    const/4 v1, 0x0

    :goto_21
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/event/AttendeesView;->mNo:I

    if-nez v2, :cond_18c

    const/4 v2, 0x0

    :goto_28
    add-int/2addr v2, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/event/AttendeesView;->mMaybe:I

    if-nez v1, :cond_194

    const/4 v1, 0x0

    :goto_30
    add-int v13, v2, v1

    .line 289
    .local v13, startIndex:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/AttendeesView;->mDividerForNoResponse:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/event/AttendeesView;->mEntries:[Ljava/lang/CharSequence;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/event/AttendeesView;->mNoResponse:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v4}, Lcom/android/calendar/event/AttendeesView;->updateDividerViewLabel(Landroid/view/View;Ljava/lang/CharSequence;I)V

    .line 290
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/event/AttendeesView;->mNoResponse:I

    if-nez v1, :cond_58

    .line 291
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/AttendeesView;->mDividerForNoResponse:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v13}, Lcom/android/calendar/event/AttendeesView;->addView(Landroid/view/View;I)V

    .line 292
    const/4 v10, 0x1

    .line 294
    :cond_58
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/event/AttendeesView;->mNoResponse:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/calendar/event/AttendeesView;->mNoResponse:I

    .line 295
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/event/AttendeesView;->mNoResponse:I

    add-int v11, v13, v1

    .line 300
    .local v11, index:I
    :goto_68
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/calendar/event/AttendeesView;->constructAttendeeView(Lcom/android/calendar/event/EditEventHelper$AttendeeItem;)Landroid/view/View;

    move-result-object v15

    .line 301
    .local v15, view:Landroid/view/View;
    invoke-virtual {v15, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 302
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v11}, Lcom/android/calendar/event/AttendeesView;->addView(Landroid/view/View;I)V

    .line 304
    if-nez v10, :cond_8f

    .line 305
    add-int/lit8 v1, v11, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/AttendeesView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 306
    .local v12, prevItem:Landroid/view/View;
    if-eqz v12, :cond_8f

    .line 307
    const v1, 0x7f10003b

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 308
    .local v9, Separator:Landroid/view/View;
    if-eqz v9, :cond_8f

    .line 309
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    .line 314
    .end local v9           #Separator:Landroid/view/View;
    .end local v12           #prevItem:Landroid/view/View;
    :cond_8f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/AttendeesView;->mPresenceQueryHandler:Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;

    iget v2, v3, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mUpdateCounts:I

    add-int/lit8 v2, v2, 0x1

    sget-object v4, Lcom/android/calendar/event/AttendeesView;->CONTACT_DATA_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/calendar/event/AttendeesView;->PRESENCE_PROJECTION:[Ljava/lang/String;

    const-string v6, "data1 IN (?)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 254
    .end local v11           #index:I
    .end local v13           #startIndex:I
    .end local v15           #view:Landroid/view/View;
    :pswitch_af
    const/4 v13, 0x0

    .line 255
    .restart local v13       #startIndex:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/AttendeesView;->mDividerForYes:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/event/AttendeesView;->mEntries:[Ljava/lang/CharSequence;

    const/4 v4, 0x1

    aget-object v2, v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/event/AttendeesView;->mYes:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v4}, Lcom/android/calendar/event/AttendeesView;->updateDividerViewLabel(Landroid/view/View;Ljava/lang/CharSequence;I)V

    .line 256
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/event/AttendeesView;->mYes:I

    if-nez v1, :cond_d7

    .line 257
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/AttendeesView;->mDividerForYes:Landroid/view/View;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/event/AttendeesView;->addView(Landroid/view/View;I)V

    .line 258
    const/4 v10, 0x1

    .line 260
    :cond_d7
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/event/AttendeesView;->mYes:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/calendar/event/AttendeesView;->mYes:I

    .line 261
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/event/AttendeesView;->mYes:I

    add-int/lit8 v11, v1, 0x0

    .line 262
    .restart local v11       #index:I
    goto :goto_68

    .line 265
    .end local v11           #index:I
    .end local v13           #startIndex:I
    :pswitch_e8
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/event/AttendeesView;->mYes:I

    if-nez v1, :cond_127

    const/4 v13, 0x0

    .line 266
    .restart local v13       #startIndex:I
    :goto_ef
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/AttendeesView;->mDividerForNo:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/event/AttendeesView;->mEntries:[Ljava/lang/CharSequence;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/event/AttendeesView;->mNo:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v4}, Lcom/android/calendar/event/AttendeesView;->updateDividerViewLabel(Landroid/view/View;Ljava/lang/CharSequence;I)V

    .line 267
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/event/AttendeesView;->mNo:I

    if-nez v1, :cond_115

    .line 268
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/AttendeesView;->mDividerForNo:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v13}, Lcom/android/calendar/event/AttendeesView;->addView(Landroid/view/View;I)V

    .line 269
    const/4 v10, 0x1

    .line 271
    :cond_115
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/event/AttendeesView;->mNo:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/calendar/event/AttendeesView;->mNo:I

    .line 272
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/event/AttendeesView;->mNo:I

    add-int v11, v13, v1

    .line 273
    .restart local v11       #index:I
    goto/16 :goto_68

    .line 265
    .end local v11           #index:I
    .end local v13           #startIndex:I
    :cond_127
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/event/AttendeesView;->mYes:I

    add-int/lit8 v13, v1, 0x1

    goto :goto_ef

    .line 276
    :pswitch_12e
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/event/AttendeesView;->mYes:I

    if-nez v1, :cond_176

    const/4 v1, 0x0

    :goto_135
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/event/AttendeesView;->mNo:I

    if-nez v2, :cond_17d

    const/4 v2, 0x0

    :goto_13c
    add-int v13, v1, v2

    .line 277
    .restart local v13       #startIndex:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/AttendeesView;->mDividerForMaybe:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/event/AttendeesView;->mEntries:[Ljava/lang/CharSequence;

    const/4 v4, 0x2

    aget-object v2, v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/event/AttendeesView;->mMaybe:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v4}, Lcom/android/calendar/event/AttendeesView;->updateDividerViewLabel(Landroid/view/View;Ljava/lang/CharSequence;I)V

    .line 278
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/event/AttendeesView;->mMaybe:I

    if-nez v1, :cond_164

    .line 279
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/AttendeesView;->mDividerForMaybe:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v13}, Lcom/android/calendar/event/AttendeesView;->addView(Landroid/view/View;I)V

    .line 280
    const/4 v10, 0x1

    .line 282
    :cond_164
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/event/AttendeesView;->mMaybe:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/calendar/event/AttendeesView;->mMaybe:I

    .line 283
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/event/AttendeesView;->mMaybe:I

    add-int v11, v13, v1

    .line 284
    .restart local v11       #index:I
    goto/16 :goto_68

    .line 276
    .end local v11           #index:I
    .end local v13           #startIndex:I
    :cond_176
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/event/AttendeesView;->mYes:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_135

    :cond_17d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/event/AttendeesView;->mNo:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_13c

    .line 287
    :cond_184
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/event/AttendeesView;->mYes:I

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_21

    :cond_18c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/event/AttendeesView;->mNo:I

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_28

    :cond_194
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/event/AttendeesView;->mMaybe:I

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_30

    .line 252
    :pswitch_data_19c
    .packed-switch 0x1
        :pswitch_af
        :pswitch_e8
        :pswitch_1a
        :pswitch_12e
    .end packed-switch
.end method

.method private constructAttendeeView(Lcom/android/calendar/event/EditEventHelper$AttendeeItem;)Landroid/view/View;
    .registers 5
    .parameter "item"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/calendar/event/AttendeesView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040017

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mView:Landroid/view/View;

    .line 170
    invoke-direct {p0, p1}, Lcom/android/calendar/event/AttendeesView;->updateAttendeeView(Lcom/android/calendar/event/EditEventHelper$AttendeeItem;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private constructDividerView(Ljava/lang/CharSequence;)Landroid/view/View;
    .registers 6
    .parameter "label"

    .prologue
    const/4 v3, 0x0

    .line 145
    iget-object v1, p0, Lcom/android/calendar/event/AttendeesView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040025

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 147
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 149
    return-object v0
.end method

.method private updateAttendeeView(Lcom/android/calendar/event/EditEventHelper$AttendeeItem;)Landroid/view/View;
    .registers 9
    .parameter "item"

    .prologue
    .line 178
    iget-object v0, p1, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mAttendee:Lcom/android/calendar/CalendarEventModel$Attendee;

    .line 179
    .local v0, attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    iget-object v4, p1, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mView:Landroid/view/View;

    .line 180
    .local v4, view:Landroid/view/View;
    const v5, 0x7f100038

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 181
    .local v3, nameView:Landroid/widget/TextView;
    iget-object v5, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8d

    iget-object v5, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    :goto_17
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-boolean v5, p1, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mRemoved:Z

    if-eqz v5, :cond_90

    .line 183
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v5

    or-int/lit8 v5, v5, 0x10

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 190
    :goto_27
    const v5, 0x7f100039

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 191
    .local v2, button:Landroid/widget/ImageButton;
    invoke-virtual {p0}, Lcom/android/calendar/event/AttendeesView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_9a

    const/4 v5, 0x0

    :goto_37
    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 192
    invoke-virtual {v2, p1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 193
    iget-boolean v5, p1, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mRemoved:Z

    if-eqz v5, :cond_9d

    .line 194
    const v5, 0x7f020036

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 195
    iget-object v5, p0, Lcom/android/calendar/event/AttendeesView;->mContext:Landroid/content/Context;

    const v6, 0x7f0c008d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 201
    :goto_53
    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    const v5, 0x7f10003a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/QuickContactBadge;

    .line 204
    .local v1, badge:Landroid/widget/QuickContactBadge;
    iget-object v5, p1, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mAttendee:Lcom/android/calendar/CalendarEventModel$Attendee;

    iget v5, v5, Lcom/android/calendar/CalendarEventModel$Attendee;->mStatus:I

    if-nez v5, :cond_b0

    .line 205
    iget-object v5, p1, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mBadge:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/android/calendar/event/AttendeesView;->mNoResponsePhotoAlpha:I

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 209
    :goto_6c
    iget-object v5, p1, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mAttendee:Lcom/android/calendar/CalendarEventModel$Attendee;

    iget v5, v5, Lcom/android/calendar/CalendarEventModel$Attendee;->mStatus:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_b8

    .line 210
    iget-object v5, p1, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mBadge:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/calendar/event/AttendeesView;->mGrayscaleFilter:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 214
    :goto_7a
    iget-object v5, p1, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v5}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    iget-object v5, p1, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mAttendee:Lcom/android/calendar/CalendarEventModel$Attendee;

    iget-object v5, v5, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    .line 216
    const/16 v5, 0x3c

    invoke-virtual {v1, v5}, Landroid/widget/QuickContactBadge;->setMaxHeight(I)V

    .line 218
    return-object v4

    .line 181
    .end local v1           #badge:Landroid/widget/QuickContactBadge;
    .end local v2           #button:Landroid/widget/ImageButton;
    :cond_8d
    iget-object v5, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mName:Ljava/lang/String;

    goto :goto_17

    .line 185
    :cond_90
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v5

    and-int/lit8 v5, v5, -0x11

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setPaintFlags(I)V

    goto :goto_27

    .line 191
    .restart local v2       #button:Landroid/widget/ImageButton;
    :cond_9a
    const/16 v5, 0x8

    goto :goto_37

    .line 197
    :cond_9d
    const v5, 0x7f02003c

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 198
    iget-object v5, p0, Lcom/android/calendar/event/AttendeesView;->mContext:Landroid/content/Context;

    const v6, 0x7f0c0085

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_53

    .line 207
    .restart local v1       #badge:Landroid/widget/QuickContactBadge;
    :cond_b0
    iget-object v5, p1, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mBadge:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/android/calendar/event/AttendeesView;->mDefaultPhotoAlpha:I

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_6c

    .line 212
    :cond_b8
    iget-object v5, p1, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mBadge:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_7a
.end method

.method private updateDividerViewLabel(Landroid/view/View;Ljava/lang/CharSequence;I)V
    .registers 6
    .parameter "divider"
    .parameter "label"
    .parameter "count"

    .prologue
    .line 155
    if-gtz p3, :cond_8

    .line 156
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    :goto_7
    return-void

    .line 159
    .restart local p1
    :cond_8
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7
.end method


# virtual methods
.method public addAttendees(Ljava/util/ArrayList;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/CalendarEventModel$Attendee;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 320
    .local p1, attendees:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/CalendarEventModel$Attendee;>;"
    monitor-enter p0

    .line 321
    :try_start_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarEventModel$Attendee;

    .line 322
    .local v0, attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    invoke-direct {p0, v0}, Lcom/android/calendar/event/AttendeesView;->addOneAttendee(Lcom/android/calendar/CalendarEventModel$Attendee;)V

    goto :goto_5

    .line 324
    .end local v0           #attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_15
    move-exception v2

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_18
    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_15

    .line 325
    return-void
.end method

.method public clearAttendees()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 237
    invoke-virtual {p0}, Lcom/android/calendar/event/AttendeesView;->removeAllViews()V

    .line 238
    iput v0, p0, Lcom/android/calendar/event/AttendeesView;->mYes:I

    .line 239
    iput v0, p0, Lcom/android/calendar/event/AttendeesView;->mNo:I

    .line 240
    iput v0, p0, Lcom/android/calendar/event/AttendeesView;->mMaybe:I

    .line 241
    iput v0, p0, Lcom/android/calendar/event/AttendeesView;->mNoResponse:I

    .line 242
    return-void
.end method

.method public contains(Lcom/android/calendar/CalendarEventModel$Attendee;)Z
    .registers 8
    .parameter "attendee"

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/android/calendar/event/AttendeesView;->getChildCount()I

    move-result v2

    .line 223
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v2, :cond_26

    .line 224
    invoke-virtual {p0, v1}, Lcom/android/calendar/event/AttendeesView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 225
    .local v3, view:Landroid/view/View;
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_12

    .line 223
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 228
    :cond_12
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;

    .line 229
    .local v0, attendeeItem:Lcom/android/calendar/event/EditEventHelper$AttendeeItem;
    iget-object v4, p1, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mAttendee:Lcom/android/calendar/CalendarEventModel$Attendee;

    iget-object v5, v5, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 230
    const/4 v4, 0x1

    .line 233
    .end local v0           #attendeeItem:Lcom/android/calendar/event/EditEventHelper$AttendeeItem;
    .end local v3           #view:Landroid/view/View;
    :goto_25
    return v4

    :cond_26
    const/4 v4, 0x0

    goto :goto_25
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 431
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;

    .line 432
    .local v0, item:Lcom/android/calendar/event/EditEventHelper$AttendeeItem;
    iget-boolean v1, v0, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mRemoved:Z

    if-nez v1, :cond_11

    const/4 v1, 0x1

    :goto_b
    iput-boolean v1, v0, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mRemoved:Z

    .line 433
    invoke-direct {p0, v0}, Lcom/android/calendar/event/AttendeesView;->updateAttendeeView(Lcom/android/calendar/event/EditEventHelper$AttendeeItem;)Landroid/view/View;

    .line 434
    return-void

    .line 432
    :cond_11
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public setEnabled(Z)V
    .registers 8
    .parameter "enabled"

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 129
    invoke-virtual {p0}, Lcom/android/calendar/event/AttendeesView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_24

    const/4 v4, 0x0

    .line 130
    .local v4, visibility:I
    :goto_a
    invoke-virtual {p0}, Lcom/android/calendar/event/AttendeesView;->getChildCount()I

    move-result v1

    .line 131
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    if-ge v2, v1, :cond_27

    .line 132
    invoke-virtual {p0, v2}, Lcom/android/calendar/event/AttendeesView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 133
    .local v0, child:Landroid/view/View;
    const v5, 0x7f100039

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 134
    .local v3, minusButton:Landroid/view/View;
    if-eqz v3, :cond_21

    .line 135
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 131
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 129
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #minusButton:Landroid/view/View;
    .end local v4           #visibility:I
    :cond_24
    const/16 v4, 0x8

    goto :goto_a

    .line 138
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v4       #visibility:I
    :cond_27
    return-void
.end method
