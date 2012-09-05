.class public Lcom/sec/android/app/contacts/activities/SpeedDialActivity;
.super Landroid/app/Activity;
.source "SpeedDialActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;,
        Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;,
        Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;,
        Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;
    }
.end annotation


# static fields
.field private static final CONTACTS_PROJECTION:[Ljava/lang/String;

.field public static final DATA_PROJECTION:[Ljava/lang/String;

.field private static final NUMBER_IMAGES:[I

.field private static final PHOTO_NUMBER_IMAGES:[I

.field private static final RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

.field private static final SPEED_DIAL_PROJECTION:[Ljava/lang/String;


# instance fields
.field LAUNCH_ANIMATION_DURATION:I

.field private isFirstAnimation:Z

.field private mAdapter:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;

.field private mBoddy:Landroid/widget/LinearLayout;

.field private mBodyText:Landroid/widget/TextView;

.field private mButtonDialog:Landroid/app/AlertDialog;

.field private mChangeOrderTouchListener:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;

.field private mChangedDataIds:[J

.field private mChangedPosition:I

.field private mCheckedItems:[Z

.field private mColorStateList:Landroid/content/res/ColorStateList;

.field private mCurrentMode:I

.field private mFixedSpeedDialList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLastClickedView:Landroid/view/View;

.field private mLastLongClickedName:Ljava/lang/CharSequence;

.field private mListDialog:Landroid/app/AlertDialog;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOrderOfValue:I

.field private mOriginDataIds:[J

.field private mPhotos:[Landroid/graphics/Bitmap;

.field private mSaveBtn:Landroid/view/View;

.field private mSelectedPhoneNumber:Ljava/lang/String;

.field private mSpeedDialGrid:Landroid/widget/GridView;

.field private mSpeedDialUri:Landroid/net/Uri;

.field private mTitle:Ljava/lang/String;

.field private mTitleBarHeight:F

.field private mTitleText:Landroid/widget/TextView;

.field private mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 93
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "key_number"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    const-string v1, "display_name"

    aput-object v1, v0, v6

    const-string v1, "photo_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "display_name_reverse"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "speed_dial_data_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->SPEED_DIAL_PROJECTION:[Ljava/lang/String;

    .line 103
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "has_phone_number"

    aput-object v1, v0, v4

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "display_name_alt"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 109
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "contact_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 113
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "contact_id"

    aput-object v1, v0, v4

    const-string v1, "mimetype"

    aput-object v1, v0, v5

    const-string v1, "is_super_primary"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->DATA_PROJECTION:[Ljava/lang/String;

    .line 119
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_76

    sput-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->NUMBER_IMAGES:[I

    .line 130
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_8c

    sput-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->PHOTO_NUMBER_IMAGES:[I

    return-void

    .line 119
    nop

    :array_76
    .array-data 0x4
        0x2ct 0x1t 0x2t 0x7ft
        0x2et 0x1t 0x2t 0x7ft
        0x30t 0x1t 0x2t 0x7ft
        0x32t 0x1t 0x2t 0x7ft
        0x34t 0x1t 0x2t 0x7ft
        0x36t 0x1t 0x2t 0x7ft
        0x38t 0x1t 0x2t 0x7ft
        0x3at 0x1t 0x2t 0x7ft
        0x3ct 0x1t 0x2t 0x7ft
    .end array-data

    .line 130
    :array_8c
    .array-data 0x4
        0x48t 0x1t 0x2t 0x7ft
        0x49t 0x1t 0x2t 0x7ft
        0x4at 0x1t 0x2t 0x7ft
        0x4bt 0x1t 0x2t 0x7ft
        0x4ct 0x1t 0x2t 0x7ft
        0x4dt 0x1t 0x2t 0x7ft
        0x4et 0x1t 0x2t 0x7ft
        0x4ft 0x1t 0x2t 0x7ft
        0x50t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 84
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 90
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    .line 151
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOriginDataIds:[J

    .line 152
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J

    .line 154
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCheckedItems:[Z

    .line 169
    const/16 v0, 0x9

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mPhotos:[Landroid/graphics/Bitmap;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mFixedSpeedDialList:Ljava/util/List;

    .line 1464
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->checkRemoveButtonEnable()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOriginDataIds:[J

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1200()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 84
    sget-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->SPEED_DIAL_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 84
    sget-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/widget/GridView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$2100()[I
    .registers 1

    .prologue
    .line 84
    sget-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->PHOTO_NUMBER_IMAGES:[I

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSaveBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTitleBarHeight:F

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mButtonDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/content/res/ColorStateList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mColorStateList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;Landroid/view/View;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->deleteSlot(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/view/LayoutInflater;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$800()[I
    .registers 1

    .prologue
    .line 84
    sget-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->NUMBER_IMAGES:[I

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J

    return-object v0
.end method

.method private addMenu(Landroid/view/Menu;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 977
    const/4 v0, 0x0

    .line 978
    packed-switch p2, :pswitch_data_26

    .line 993
    :goto_6
    if-eqz v0, :cond_b

    .line 994
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 995
    :cond_b
    return-void

    .line 981
    :pswitch_c
    const v0, 0x7f0a0040

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_6

    .line 984
    :pswitch_14
    const v0, 0x7f0a022c

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_6

    .line 987
    :pswitch_1c
    const/4 v0, 0x2

    const v1, 0x7f0a0290

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_6

    .line 978
    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_c
        :pswitch_14
        :pswitch_1c
    .end packed-switch
.end method

.method private checkRemoveButtonEnable()V
    .registers 5

    .prologue
    .line 451
    const/4 v1, 0x0

    .line 452
    .local v1, result:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    const/16 v2, 0x8

    if-ge v0, v2, :cond_2b

    .line 454
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v2, v2, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mDeleteCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 456
    const/4 v1, 0x1

    .line 457
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCheckedItems:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v0

    .line 452
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 461
    :cond_25
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCheckedItems:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v0

    goto :goto_22

    .line 464
    :cond_2b
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSaveBtn:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 465
    return-void
.end method

.method private deleteSlot(Landroid/view/View;I)V
    .registers 8
    .parameter "view"
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x4

    .line 468
    if-nez p1, :cond_a

    .line 470
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v1, p2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 472
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    .line 473
    .local v0, holder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;
    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 474
    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 475
    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 476
    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberAdd:Landroid/widget/ImageView;

    const v2, 0x7f02012a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 480
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 482
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->invalidateOptionsMenu()V

    .line 483
    return-void
.end method

.method private preventDoubleClick(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 487
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangeOrderTouchListener:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 488
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mLastClickedView:Landroid/view/View;

    .line 489
    return-void
.end method


# virtual methods
.method public animateLayoutAtEntrance()V
    .registers 23

    .prologue
    .line 1955
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getX()F

    move-result v7

    .line 1957
    .local v7, x0:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getX()F

    move-result v8

    .line 1958
    .local v8, x2:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getX()F

    move-result v9

    .line 1960
    .local v9, x3:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getX()F

    move-result v10

    .line 1961
    .local v10, x5:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getX()F

    move-result v11

    .line 1963
    .local v11, x6:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getX()F

    move-result v12

    .line 1965
    .local v12, x8:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getY()F

    move-result v13

    .line 1966
    .local v13, y0:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getY()F

    move-result v14

    .line 1967
    .local v14, y1:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getY()F

    move-result v15

    .line 1969
    .local v15, y2:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getY()F

    move-result v16

    .line 1970
    .local v16, y6:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x7

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getY()F

    move-result v17

    .line 1971
    .local v17, y7:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getY()F

    move-result v18

    .line 1975
    .local v18, y8:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/GridView;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v4, v0

    .line 1976
    .local v4, containerXEnd:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/GridView;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v5, v0

    .line 1978
    .local v5, containerYEnd:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v19

    mul-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    int-to-float v2, v0

    .line 1979
    .local v2, XStart:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    move-result v19

    mul-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    int-to-float v3, v0

    .line 1981
    .local v3, YStart:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setAlpha(F)V

    .line 1982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->setX(F)V

    .line 1983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->setY(F)V

    .line 1985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setAlpha(F)V

    .line 1986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->setX(F)V

    .line 1987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->setY(F)V

    .line 1989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setAlpha(F)V

    .line 1990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->setX(F)V

    .line 1991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/view/View;->setY(F)V

    .line 1993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setAlpha(F)V

    .line 1994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->setX(F)V

    .line 1995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/view/View;->setY(F)V

    .line 1997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setAlpha(F)V

    .line 1999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x7

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setAlpha(F)V

    .line 2000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x7

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/view/View;->setY(F)V

    .line 2002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setAlpha(F)V

    .line 2003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->setY(F)V

    .line 2005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setAlpha(F)V

    .line 2006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->setX(F)V

    .line 2008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setAlpha(F)V

    .line 2009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->setX(F)V

    .line 2011
    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 2014
    .local v6, interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/high16 v20, 0x3f80

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/high16 v20, 0x3f80

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/high16 v20, 0x3f80

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/high16 v20, 0x3f80

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/high16 v20, 0x3f80

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x7

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/high16 v20, 0x3f80

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/high16 v20, 0x3f80

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/high16 v20, 0x3f80

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/high16 v20, 0x3f80

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewPropertyAnimator;->start()V
    :try_end_43a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_43a} :catch_43b

    .line 2030
    .end local v2           #XStart:F
    .end local v3           #YStart:F
    .end local v4           #containerXEnd:F
    .end local v5           #containerYEnd:F
    .end local v6           #interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;
    .end local v7           #x0:F
    .end local v8           #x2:F
    .end local v9           #x3:F
    .end local v10           #x5:F
    .end local v11           #x6:F
    .end local v12           #x8:F
    .end local v13           #y0:F
    .end local v14           #y1:F
    .end local v15           #y2:F
    .end local v16           #y6:F
    .end local v17           #y7:F
    .end local v18           #y8:F
    :goto_43a
    return-void

    .line 2027
    :catch_43b
    move-exception v19

    goto :goto_43a
.end method

.method public getPersonCount()I
    .registers 7

    .prologue
    .line 1201
    const/4 v0, 0x0

    .line 1205
    .local v0, count:I
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    if-nez v5, :cond_7

    .line 1206
    const/4 v5, 0x0

    .line 1228
    :goto_6
    return v5

    .line 1208
    :cond_7
    const/4 v1, 0x1

    .local v1, i:I
    :goto_8
    const/16 v5, 0x9

    if-ge v1, v5, :cond_2f

    .line 1216
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v5, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1217
    .local v4, view:Landroid/view/View;
    if-eqz v4, :cond_2c

    .line 1219
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    .line 1220
    .local v3, tag:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;
    if-eqz v3, :cond_2c

    .line 1222
    iget-object v2, v3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    .line 1223
    .local v2, t:Landroid/widget/TextView;
    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_2c

    .line 1224
    add-int/lit8 v0, v0, 0x1

    .line 1208
    .end local v2           #t:Landroid/widget/TextView;
    .end local v3           #tag:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .end local v4           #view:Landroid/view/View;
    :cond_2f
    move v5, v0

    .line 1228
    goto :goto_6
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 31
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 586
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_1b

    if-eqz p3, :cond_1b

    .line 589
    const-string v2, "index"

    const/4 v3, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    .line 591
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1c

    .line 685
    :cond_1b
    :goto_1b
    return-void

    .line 594
    :cond_1c
    const-string v2, "result"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v23

    .line 596
    .local v23, rtnData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v23, :cond_1b

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_1b

    .line 599
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 603
    .local v20, output:Ljava/lang/String;
    const/16 v2, 0x3b

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_12c

    const/16 v17, 0x1

    .line 608
    .local v17, hasDataId:Z
    :goto_42
    if-nez v17, :cond_135

    .line 609
    const-string v2, "phone_data_id"

    const-wide/16 v3, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v21

    .line 610
    .local v21, phoneDataId:J
    const-string v24, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    .line 612
    .local v24, selection:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 614
    .local v6, selectionArgs:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->DATA_PROJECTION:[Ljava/lang/String;

    const-string v5, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 615
    .local v13, cursor:Landroid/database/Cursor;
    const-wide/16 v14, -0x1

    .line 617
    .local v14, dataId:J
    if-eqz v13, :cond_af

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_af

    .line 618
    const/16 v19, 0x0

    .line 620
    .local v19, isPrimary:Z
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_9a

    .line 621
    :cond_7c
    :goto_7c
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 623
    :try_start_82
    const-string v2, "is_super_primary"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_7c

    .line 624
    const-string v2, "_id"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_97
    .catch Ljava/lang/NumberFormatException; {:try_start_82 .. :try_end_97} :catch_130

    move-result-wide v14

    .line 625
    const/16 v19, 0x1

    .line 634
    :cond_9a
    if-nez v19, :cond_ac

    .line 635
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 636
    const-string v2, "_id"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 639
    :cond_ac
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 645
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v13           #cursor:Landroid/database/Cursor;
    .end local v19           #isPrimary:Z
    .end local v21           #phoneDataId:J
    .end local v24           #selection:Ljava/lang/String;
    :cond_af
    :goto_af
    const-wide/16 v2, -0x1

    cmp-long v2, v14, v2

    if-eqz v2, :cond_1b

    .line 648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    .line 649
    .local v26, view:Landroid/view/View;
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 650
    .local v25, values:Landroid/content/ContentValues;
    const-string v2, "key_number"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 651
    const-string v2, "speed_dial_data_id"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 652
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 655
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialUri:Landroid/net/Uri;

    move-object/from16 v0, v25

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 657
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 658
    .local v8, contactUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v8}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    .line 661
    if-nez v8, :cond_141

    .line 662
    const-string v2, "SpeedDialActivity"

    const-string v3, "Contact uri is null, contact does not exist."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    .line 603
    .end local v8           #contactUri:Landroid/net/Uri;
    .end local v14           #dataId:J
    .end local v17           #hasDataId:Z
    .end local v25           #values:Landroid/content/ContentValues;
    .end local v26           #view:Landroid/view/View;
    :cond_12c
    const/16 v17, 0x0

    goto/16 :goto_42

    .line 628
    .restart local v6       #selectionArgs:[Ljava/lang/String;
    .restart local v13       #cursor:Landroid/database/Cursor;
    .restart local v14       #dataId:J
    .restart local v17       #hasDataId:Z
    .restart local v19       #isPrimary:Z
    .restart local v21       #phoneDataId:J
    .restart local v24       #selection:Ljava/lang/String;
    :catch_130
    move-exception v16

    .line 629
    .local v16, e:Ljava/lang/NumberFormatException;
    const/16 v19, 0x0

    .line 630
    goto/16 :goto_7c

    .line 642
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v13           #cursor:Landroid/database/Cursor;
    .end local v14           #dataId:J
    .end local v16           #e:Ljava/lang/NumberFormatException;
    .end local v19           #isPrimary:Z
    .end local v21           #phoneDataId:J
    .end local v24           #selection:Ljava/lang/String;
    :cond_135
    const-string v2, "phone_data_id"

    const-wide/16 v3, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    .restart local v14       #dataId:J
    goto/16 :goto_af

    .line 666
    .restart local v8       #contactUri:Landroid/net/Uri;
    .restart local v25       #values:Landroid/content/ContentValues;
    .restart local v26       #view:Landroid/view/View;
    :cond_141
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v9, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 667
    .restart local v13       #cursor:Landroid/database/Cursor;
    if-eqz v13, :cond_1b

    .line 669
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_16b

    .line 671
    const/16 v18, 0x0

    .line 672
    .local v18, holder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;
    if-eqz v26, :cond_160

    .line 674
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    .end local v18           #holder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;
    check-cast v18, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    .line 679
    .restart local v18       #holder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;
    :cond_160
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v13, v8, v1, v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->setItemLayout(Landroid/database/Cursor;Landroid/net/Uri;Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;I)I

    .line 681
    .end local v18           #holder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;
    :cond_16b
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 682
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->invalidateOptionsMenu()V

    goto/16 :goto_1b
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 1027
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    packed-switch v0, :pswitch_data_e

    .line 1034
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 1036
    :goto_8
    return-void

    .line 1031
    :pswitch_9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->restartActivityInMode(I)V

    goto :goto_8

    .line 1027
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 14
    .parameter "savedInstanceState"

    .prologue
    .line 191
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 192
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "mode"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    .line 193
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "isFirstAnimation"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->isFirstAnimation:Z

    .line 198
    const v6, 0x7f0400c3

    invoke-virtual {p0, v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->setContentView(I)V

    .line 201
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 202
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    const v7, 0x41caa3d7

    mul-float/2addr v6, v7

    const/high16 v7, 0x4000

    mul-float/2addr v6, v7

    iput v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTitleBarHeight:F

    .line 205
    const-string v6, "content://com.android.contacts/contacts/speeddial"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialUri:Landroid/net/Uri;

    .line 206
    new-instance v6, Landroid/content/res/ColorStateList;

    const/4 v7, 0x2

    new-array v7, v7, [[I

    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [I

    const/4 v10, 0x0

    const v11, 0x10100a7

    aput v11, v9, v10

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x1

    new-array v9, v9, [I

    aput-object v9, v7, v8

    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_170

    invoke-direct {v6, v7, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mColorStateList:Landroid/content/res/ColorStateList;

    .line 214
    const v6, 0x7f0d020e

    invoke-virtual {p0, v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/GridView;

    iput-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    .line 215
    new-instance v6, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;Lcom/sec/android/app/contacts/activities/SpeedDialActivity$1;)V

    iput-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;

    .line 216
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 218
    new-instance v6, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;

    invoke-direct {v6, p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    iput-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangeOrderTouchListener:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;

    .line 221
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 222
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_103

    .line 225
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 227
    .local v4, inflater:Landroid/view/LayoutInflater;
    const/4 v3, 0x0

    .line 229
    .local v3, customActionBarView:Landroid/view/View;
    iget v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_10b

    .line 230
    const v6, 0x7f04001c

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 231
    const v6, 0x7f0d00a4

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSaveBtn:Landroid/view/View;

    .line 237
    :goto_ac
    const v6, 0x7f0d009c

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 239
    .local v1, buttonLayout:Landroid/view/View;
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSaveBtn:Landroid/view/View;

    new-instance v7, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$1;

    invoke-direct {v7, p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    const v6, 0x7f0d009e

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 247
    .local v5, revertMenuItem:Landroid/view/View;
    new-instance v6, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$2;

    invoke-direct {v6, p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$2;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    const/16 v6, 0x1e

    const/16 v7, 0x1e

    invoke-virtual {v0, v6, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 261
    const-string v2, ""

    .line 262
    .local v2, currentLang:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 263
    const-string v6, "he"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ed

    const-string v6, "iw"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11d

    .line 265
    :cond_ed
    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    const/16 v9, 0x13

    invoke-direct {v6, v7, v8, v9}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v3, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 274
    :goto_f9
    iget v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    packed-switch v6, :pswitch_data_178

    .line 308
    :goto_fe
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 312
    .end local v1           #buttonLayout:Landroid/view/View;
    .end local v2           #currentLang:Ljava/lang/String;
    .end local v3           #customActionBarView:Landroid/view/View;
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    .end local v5           #revertMenuItem:Landroid/view/View;
    :cond_103
    new-instance v6, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$3;

    invoke-direct {v6, p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$3;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    iput-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 325
    return-void

    .line 233
    .restart local v3       #customActionBarView:Landroid/view/View;
    .restart local v4       #inflater:Landroid/view/LayoutInflater;
    :cond_10b
    const v6, 0x7f040018

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 234
    const v6, 0x7f0d009d

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSaveBtn:Landroid/view/View;

    goto :goto_ac

    .line 269
    .restart local v1       #buttonLayout:Landroid/view/View;
    .restart local v2       #currentLang:Ljava/lang/String;
    .restart local v5       #revertMenuItem:Landroid/view/View;
    :cond_11d
    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    const/16 v9, 0x15

    invoke-direct {v6, v7, v8, v9}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v3, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_f9

    .line 277
    :pswitch_12a
    const v6, 0x7f0a0213

    invoke-virtual {p0, v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTitle:Ljava/lang/String;

    .line 278
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v6, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 279
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v6, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 280
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_fe

    .line 285
    :pswitch_143
    const v6, 0x7f0a022c

    invoke-virtual {p0, v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTitle:Ljava/lang/String;

    .line 286
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangeOrderTouchListener:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;

    invoke-virtual {v6, v7}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 290
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSaveBtn:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_fe

    .line 295
    :pswitch_15a
    const v6, 0x7f0a0290

    invoke-virtual {p0, v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTitle:Ljava/lang/String;

    .line 296
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v6, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 299
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSaveBtn:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_fe

    .line 206
    nop

    :array_170
    .array-data 0x4
        0x0t 0x0t 0x0t 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 274
    :pswitch_data_178
    .packed-switch 0x0
        :pswitch_12a
        :pswitch_143
        :pswitch_15a
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 7
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v4, 0x1

    .line 707
    if-ne p1, v4, :cond_81

    .line 709
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04003d

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mBoddy:Landroid/widget/LinearLayout;

    .line 715
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mBoddy:Landroid/widget/LinearLayout;

    const v2, 0x7f0d00ef

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTitleText:Landroid/widget/TextView;

    .line 717
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mType:Ljava/lang/String;

    if-eqz v1, :cond_2a

    .line 718
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTitleText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 720
    :cond_2a
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mBoddy:Landroid/widget/LinearLayout;

    const v2, 0x7f0d00f0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mBodyText:Landroid/widget/TextView;

    .line 725
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    if-eqz v1, :cond_46

    .line 726
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mBodyText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 772
    :cond_46
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 773
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mBoddy:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a02b1

    new-instance v3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$5;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$5;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a02bc

    new-instance v3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$4;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$4;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 798
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isVideoCall(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 810
    :cond_6e
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mButtonDialog:Landroid/app/AlertDialog;

    .line 812
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mButtonDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$7;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 849
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mButtonDialog:Landroid/app/AlertDialog;

    .line 897
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_80
    :goto_80
    return-object v1

    .line 851
    :cond_81
    if-ne p1, v2, :cond_80

    .line 853
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 854
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mLastLongClickedName:Ljava/lang/CharSequence;

    if-nez v1, :cond_b7

    .line 856
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 863
    :goto_91
    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x7f0a02b8

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const v2, 0x7f0a0290

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    new-instance v2, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$8;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$8;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 894
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mListDialog:Landroid/app/AlertDialog;

    .line 895
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mListDialog:Landroid/app/AlertDialog;

    goto :goto_80

    .line 860
    :cond_b7
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mLastLongClickedName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_91
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 902
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->isFirstAnimation:Z

    if-eqz v1, :cond_b

    .line 903
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->animateLayoutAtEntrance()V

    .line 904
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->isFirstAnimation:Z

    .line 928
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getPersonCount()I

    move-result v1

    if-ge v1, v2, :cond_12

    .line 954
    :goto_11
    return v0

    .line 934
    :cond_12
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    packed-switch v1, :pswitch_data_24

    goto :goto_11

    .line 937
    :pswitch_18
    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->addMenu(Landroid/view/Menu;I)V

    .line 938
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->addMenu(Landroid/view/Menu;I)V

    .line 954
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_11

    .line 934
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_18
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1092
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mPhotos:[Landroid/graphics/Bitmap;

    if-eqz v1, :cond_24

    .line 1093
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    const/16 v1, 0x9

    if-ge v0, v1, :cond_24

    .line 1094
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mPhotos:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mPhotos:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_21

    .line 1095
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mPhotos:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1093
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1100
    .end local v0           #i:I
    :cond_24
    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    .line 1101
    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;

    .line 1102
    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mPhotos:[Landroid/graphics/Bitmap;

    .line 1103
    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangeOrderTouchListener:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;

    .line 1105
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1106
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 17
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 330
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/16 v0, 0x9

    invoke-virtual {p2, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 345
    if-nez p3, :cond_3d

    .line 347
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    if-nez v0, :cond_34

    .line 349
    invoke-direct {p0, p2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->preventDoubleClick(Landroid/view/View;)V

    .line 352
    const/4 v10, 0x0

    .line 353
    .local v10, voiceMailNumber:Ljava/lang/String;
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v10

    .line 354
    if-eqz v10, :cond_35

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_35

    .line 360
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.CALL_PRIVILEGED"

    const-string v1, "tel"

    const/4 v2, 0x0

    invoke-static {v1, v10, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 367
    .local v8, intent:Landroid/content/Intent;
    :goto_31
    invoke-virtual {p0, v8}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->startActivity(Landroid/content/Intent;)V

    .line 448
    .end local v8           #intent:Landroid/content/Intent;
    .end local v10           #voiceMailNumber:Ljava/lang/String;
    :cond_34
    :goto_34
    return-void

    .line 364
    .restart local v10       #voiceMailNumber:Ljava/lang/String;
    :cond_35
    new-instance v8, Landroid/content/Intent;

    const-string v0, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v8       #intent:Landroid/content/Intent;
    goto :goto_31

    .line 370
    .end local v8           #intent:Landroid/content/Intent;
    .end local v10           #voiceMailNumber:Ljava/lang/String;
    :cond_3d
    const/4 v0, 0x1

    if-ne p3, v0, :cond_40

    .line 386
    :cond_40
    const/4 v0, 0x2

    if-ne p3, v0, :cond_43

    .line 394
    :cond_43
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_e5

    .line 396
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    if-nez v0, :cond_c4

    .line 398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    .line 399
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialUri:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->SPEED_DIAL_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key_number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 400
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_bd

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 402
    const-string v0, "number"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    .line 403
    const-string v0, "type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 404
    .local v9, numberType:I
    invoke-static {v9}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mType:Ljava/lang/String;

    .line 405
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mButtonDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_b9

    .line 407
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTitleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mBodyText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    :cond_b9
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->showDialog(I)V

    .line 413
    .end local v9           #numberType:I
    :cond_bd
    if-eqz v7, :cond_34

    .line 414
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_34

    .line 416
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_c4
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_34

    .line 420
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v6, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mDeleteCheckBox:Landroid/widget/CheckBox;

    .line 421
    .local v6, checkBox:Landroid/widget/CheckBox;
    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 423
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 429
    :goto_db
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->checkRemoveButtonEnable()V

    goto/16 :goto_34

    .line 427
    :cond_e0
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_db

    .line 434
    .end local v6           #checkBox:Landroid/widget/CheckBox;
    :cond_e5
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    if-nez v0, :cond_34

    .line 436
    invoke-direct {p0, p2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->preventDoubleClick(Landroid/view/View;)V

    .line 438
    new-instance v8, Landroid/content/Intent;

    const-string v0, "intent.action.INTERACTION_TAB"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 439
    .restart local v8       #intent:Landroid/content/Intent;
    const-string v0, "additional"

    const-string v1, "phone"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    const-string v0, "from_speed_dial"

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 441
    const-string v0, "has_result"

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 442
    const-string v0, "index"

    invoke-virtual {v8, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 444
    const/4 v0, 0x1

    invoke-virtual {p0, v8, v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 445
    iput p3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    goto/16 :goto_34
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 9
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 1115
    if-nez p3, :cond_5

    move v1, v2

    .line 1136
    :goto_4
    return v1

    .line 1125
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v0, v1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    .line 1126
    .local v0, nameView:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->isShown()Z

    move-result v1

    if-nez v1, :cond_15

    move v1, v2

    .line 1127
    goto :goto_4

    .line 1131
    :cond_15
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mLastLongClickedName:Ljava/lang/CharSequence;

    .line 1132
    iput p3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    .line 1133
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mListDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_28

    .line 1134
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mListDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mLastLongClickedName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1135
    :cond_28
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->showDialog(I)V

    .line 1136
    const/4 v1, 0x1

    goto :goto_4
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 1004
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_22

    .line 1020
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->restartActivityInMode(I)V

    .line 1022
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_12
    return v0

    .line 1006
    :pswitch_13
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    packed-switch v0, :pswitch_data_28

    .line 1012
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->finish()V

    .line 1014
    :goto_1b
    const/4 v0, 0x1

    goto :goto_12

    .line 1009
    :pswitch_1d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->restartActivityInMode(I)V

    goto :goto_1b

    .line 1004
    :pswitch_data_22
    .packed-switch 0x102002c
        :pswitch_13
    .end packed-switch

    .line 1006
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1d
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 966
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getPersonCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_9

    .line 969
    const/4 v0, 0x0

    .line 972
    :goto_8
    return v0

    :cond_9
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_8
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 1040
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1041
    const-string v0, "lastLongClickedName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mLastLongClickedName:Ljava/lang/CharSequence;

    .line 1042
    const-string v0, "originDataIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOriginDataIds:[J

    .line 1043
    const-string v0, "changedDataIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J

    .line 1044
    const-string v0, "checkedItems"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCheckedItems:[Z

    .line 1045
    const-string v0, "changedPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    .line 1046
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mType:Ljava/lang/String;

    .line 1047
    const-string v0, "selectedPhoneNumber"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    .line 1048
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    if-eqz v0, :cond_4a

    .line 1050
    const-string v0, "isSaveButtonEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1051
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSaveBtn:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1053
    :cond_4a
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1074
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1077
    :try_start_5
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->notifyDataSetChanged()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_29

    .line 1081
    :goto_a
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    if-nez v0, :cond_13

    .line 1082
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1084
    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mLastClickedView:Landroid/view/View;

    if-eqz v0, :cond_1c

    .line 1085
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mLastClickedView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1087
    :cond_1c
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android.contacts.DISPLAY_ORDER"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOrderOfValue:I

    .line 1088
    return-void

    .line 1078
    :catch_29
    move-exception v0

    .line 1079
    new-instance v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;Lcom/sec/android/app/contacts/activities/SpeedDialActivity$1;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;

    goto :goto_a
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 1057
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1058
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mLastLongClickedName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_12

    .line 1060
    const-string v0, "lastLongClickedName"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mLastLongClickedName:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    :cond_12
    const-string v0, "originDataIds"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOriginDataIds:[J

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 1063
    const-string v0, "changedDataIds"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 1064
    const-string v0, "checkedItems"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCheckedItems:[Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 1065
    const-string v0, "changedPosition"

    iget v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1066
    const-string v0, "type"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    const-string v0, "selectedPhoneNumber"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    if-eqz v0, :cond_4b

    .line 1069
    const-string v0, "isSaveButtonEnabled"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSaveBtn:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1070
    :cond_4b
    return-void
.end method

.method public restartActivityInMode(I)V
    .registers 5
    .parameter "mode"

    .prologue
    .line 1143
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->finish()V

    .line 1144
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1145
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1146
    const-string v1, "isFirstAnimation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1147
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->startActivity(Landroid/content/Intent;)V

    .line 1148
    return-void
.end method

.method public setItemLayout(JLcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;I)I
    .registers 14
    .parameter "contactId"
    .parameter "holder"
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 570
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 572
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_31

    .line 574
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 575
    .local v8, uri:Landroid/net/Uri;
    invoke-virtual {p0, v6, v8, p3, p4}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->setItemLayout(Landroid/database/Cursor;Landroid/net/Uri;Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;I)I

    move-result v7

    .line 577
    .local v7, resultCode:I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 581
    .end local v7           #resultCode:I
    .end local v8           #uri:Landroid/net/Uri;
    :goto_30
    return v7

    :cond_31
    const/4 v7, -0x1

    goto :goto_30
.end method

.method public setItemLayout(Landroid/database/Cursor;Landroid/net/Uri;Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;I)I
    .registers 14
    .parameter "cursor"
    .parameter "contactUri"
    .parameter "holder"
    .parameter "position"

    .prologue
    const/4 v8, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 493
    if-eqz p1, :cond_b

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_d

    :cond_b
    move v4, v5

    .line 561
    :cond_c
    :goto_c
    return v4

    .line 496
    :cond_d
    const/4 v1, 0x0

    .line 498
    .local v1, nameIndex:I
    iget v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOrderOfValue:I

    if-ne v6, v8, :cond_9b

    .line 500
    const-string v6, "display_name_alt"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 506
    :goto_18
    if-ne v1, v4, :cond_1b

    .line 508
    const/4 v1, 0x0

    .line 511
    :cond_1b
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 513
    .local v0, name:Ljava/lang/String;
    if-eqz p3, :cond_c

    .line 516
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, p2}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 518
    .local v3, photo:Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mPhotos:[Landroid/graphics/Bitmap;

    aget-object v2, v6, p4

    .line 519
    .local v2, oldBitmap:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_3c

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_3c

    .line 521
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 523
    :cond_3c
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mPhotos:[Landroid/graphics/Bitmap;

    aput-object v3, v6, p4

    .line 525
    if-nez v3, :cond_a3

    .line 527
    iget-object v6, p3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    const v7, 0x7f020142

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 534
    :goto_4a
    iget-object v6, p3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 537
    iget v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    if-ne v6, v8, :cond_a9

    .line 539
    iget-object v6, p3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mDeleteCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 540
    iget-object v6, p3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mDeleteCheckBox:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 541
    iget-object v6, p3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mDeleteCheckBox:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCheckedItems:[Z

    add-int/lit8 v8, p4, -0x1

    aget-boolean v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 546
    :goto_6a
    iget v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_b0

    .line 547
    iget-object v6, p3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mReOrderImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 552
    :goto_74
    iget-object v6, p3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    iget-object v6, p3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 554
    iget-object v6, p3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 555
    iget-object v6, p3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    const v7, 0x7f020147

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 557
    iget-object v6, p3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberPhoto:Landroid/widget/ImageView;

    sget-object v7, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->PHOTO_NUMBER_IMAGES:[I

    aget v7, v7, p4

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 558
    iget-object v6, p3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberPhoto:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_c

    .line 504
    .end local v0           #name:Ljava/lang/String;
    .end local v2           #oldBitmap:Landroid/graphics/Bitmap;
    .end local v3           #photo:Landroid/graphics/Bitmap;
    :cond_9b
    const-string v6, "display_name"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_18

    .line 531
    .restart local v0       #name:Ljava/lang/String;
    .restart local v2       #oldBitmap:Landroid/graphics/Bitmap;
    .restart local v3       #photo:Landroid/graphics/Bitmap;
    :cond_a3
    iget-object v6, p3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4a

    .line 544
    :cond_a9
    iget-object v6, p3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mDeleteCheckBox:Landroid/widget/CheckBox;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_6a

    .line 549
    :cond_b0
    iget-object v6, p3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mReOrderImage:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_74
.end method

.method public softkeyRun1(Landroid/view/View;)V
    .registers 12
    .parameter "target"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 1153
    iget v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_44

    .line 1155
    const/4 v3, 0x0

    .local v3, i:I
    :goto_9
    if-ge v3, v9, :cond_c1

    .line 1157
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v5, v5, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mDeleteCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_41

    .line 1159
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, 0x2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1155
    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1165
    .end local v3           #i:I
    :cond_44
    iget v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_c1

    .line 1167
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1168
    .local v4, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1170
    .local v2, contentResolver:Landroid/content/ContentResolver;
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_53
    if-ge v3, v9, :cond_c1

    .line 1172
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J

    aget-wide v0, v5, v3

    .line 1174
    .local v0, changedDataId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-eqz v5, :cond_be

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOriginDataIds:[J

    aget-wide v5, v5, v3

    cmp-long v5, v0, v5

    if-eqz v5, :cond_be

    .line 1176
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "key_number="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, 0x2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1179
    const-wide/16 v5, -0x1

    cmp-long v5, v0, v5

    if-eqz v5, :cond_be

    .line 1181
    const-string v5, "speed_dial_data_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1182
    const-string v5, "key_number"

    add-int/lit8 v6, v3, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1183
    const-string v5, "content://com.android.contacts/contacts/speeddial/"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1184
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1170
    :cond_be
    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    .line 1191
    .end local v0           #changedDataId:J
    .end local v2           #contentResolver:Landroid/content/ContentResolver;
    .end local v3           #i:I
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_c1
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->restartActivityInMode(I)V

    .line 1192
    return-void
.end method

.method public softkeyRun2(Landroid/view/View;)V
    .registers 3
    .parameter "target"

    .prologue
    .line 1197
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->restartActivityInMode(I)V

    .line 1198
    return-void
.end method
