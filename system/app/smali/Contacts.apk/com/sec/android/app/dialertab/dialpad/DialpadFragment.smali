.class public Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
.super Landroid/app/Fragment;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/contacts/activities/DialtactsActivity$ViewPagerVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;,
        Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItemAdapter;,
        Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItem;,
        Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;,
        Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;,
        Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;,
        Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$Listener;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static MannerModePressed:Z

.field private static final PROJECTION_LOG:[Ljava/lang/String;

.field private static final PROJECTION_NAME:[Ljava/lang/String;

.field private static final PROJECTION_NAME_REVERSE:[Ljava/lang/String;

.field private static final PROJECTION_PHONE:[Ljava/lang/String;

.field private static final PROJECTION_RESULT:[Ljava/lang/String;

.field private static final PROJECTION_RESULT_REVERSE:[Ljava/lang/String;

.field private static final PROJECTION_SPEEDDIAL:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static condition:Landroid/os/ConditionVariable;

.field private static listResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private static numberArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItem;",
            ">;"
        }
    .end annotation
.end field

.field private static sCachedLocale:Ljava/util/Locale;

.field private static sFormatType:I

.field private static ttfTypeface:Landroid/graphics/Typeface;


# instance fields
.field private argsName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private count:I

.field private dialogResult:Landroid/app/AlertDialog;

.field private digitText:Ljava/lang/String;

.field private mAddBtn:Landroid/widget/RelativeLayout;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mCMASFilter:Landroid/content/IntentFilter;

.field mCallLog:Lcom/android/phone/CallLogAsync;

.field private mCurrentCountryIso:Ljava/lang/String;

.field private mDTMFToneEnabled:Z

.field private mDelete:Landroid/view/View;

.field private mDeletingBackward:Z

.field private mDeletingHyphen:Z

.field private mDialButton:Landroid/view/View;

.field private final mDialButtonFilter:Landroid/content/IntentFilter;

.field private final mDialButtonReceiver:Landroid/content/BroadcastReceiver;

.field private mDialpad:Landroid/view/View;

.field private mDialpadAdditionalButtons:Landroid/view/View;

.field private mDialpadAdditionalButtonsLand:Landroid/view/View;

.field private mDialpadLand:Landroid/view/View;

.field private mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

.field private mFormatting:Z

.field private mFragmentView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mHaptic:Lcom/android/phone/HapticFeedback;

.field private mHyphenStart:I

.field private mIsAddCallMode:Z

.field private mLastNumberDialed:Ljava/lang/String;

.field private mListener:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$Listener;

.field private mMessageButton:Landroid/view/View;

.field private mProhibitedPhoneNumberRegexp:Ljava/lang/String;

.field private mReceiveHandler:Landroid/os/Handler;

.field private mSearchLayout:Landroid/widget/LinearLayout;

.field private mSearchLock:Ljava/lang/Object;

.field private mSearchView:Landroid/view/View;

.field private mSearchViewLand:Landroid/view/View;

.field private mSearchedCtNumberBefore:Z

.field private mSearchedLogBefore:Z

.field private mShowOptionsMenu:Z

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneGeneratorLock:Ljava/lang/Object;

.field private mWasEmptyBeforeTextChange:Z

.field private message_counter:I

.field private message_flag:Z

.field private onKeypad:Ljava/lang/String;

.field private resultFlag:I

.field private subdialogResult:Landroid/app/AlertDialog;

.field thread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 133
    const-class v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    .line 135
    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_bd

    move v0, v1

    :goto_16
    sput-boolean v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->DBG:Z

    .line 158
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->ttfTypeface:Landroid/graphics/Typeface;

    .line 163
    sput-boolean v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->MannerModePressed:Z

    .line 247
    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "key_number"

    aput-object v3, v0, v2

    const-string v3, "number"

    aput-object v3, v0, v1

    const-string v3, "display_name"

    aput-object v3, v0, v4

    const-string v3, "photo_id"

    aput-object v3, v0, v5

    sput-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_SPEEDDIAL:[Ljava/lang/String;

    .line 251
    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v3, "data1"

    aput-object v3, v0, v1

    const-string v3, "data2"

    aput-object v3, v0, v4

    const-string v3, "is_super_primary"

    aput-object v3, v0, v5

    sput-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_PHONE:[Ljava/lang/String;

    .line 256
    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v3, "display_name"

    aput-object v3, v0, v1

    const-string v3, "photo_id"

    aput-object v3, v0, v4

    const-string v3, "has_phone_number"

    aput-object v3, v0, v5

    sput-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_NAME:[Ljava/lang/String;

    .line 260
    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v3, "display_name_reverse"

    aput-object v3, v0, v1

    const-string v3, "photo_id"

    aput-object v3, v0, v4

    const-string v3, "has_phone_number"

    aput-object v3, v0, v5

    sput-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_NAME_REVERSE:[Ljava/lang/String;

    .line 264
    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v3, "display_name"

    aput-object v3, v0, v1

    const-string v3, "photo_id"

    aput-object v3, v0, v4

    const-string v3, "data1"

    aput-object v3, v0, v5

    sput-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_RESULT:[Ljava/lang/String;

    .line 268
    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v3, "display_name_reverse"

    aput-object v3, v0, v1

    const-string v3, "photo_id"

    aput-object v3, v0, v4

    const-string v3, "data1"

    aput-object v3, v0, v5

    sput-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_RESULT_REVERSE:[Ljava/lang/String;

    .line 272
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v2, "contactid"

    aput-object v2, v0, v1

    const-string v1, "logtype"

    aput-object v1, v0, v4

    const-string v1, "number"

    aput-object v1, v0, v5

    const-string v1, "date"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_LOG:[Ljava/lang/String;

    .line 2342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listResult:Ljava/util/ArrayList;

    .line 2375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->numberArray:Ljava/util/ArrayList;

    return-void

    :cond_bd
    move v0, v2

    .line 135
    goto/16 :goto_16
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 128
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 149
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.provider.Telephony.CMAS_CONFIG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mCMASFilter:Landroid/content/IntentFilter;

    .line 152
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.contacts.DIALBUTTON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialButtonFilter:Landroid/content/IntentFilter;

    .line 207
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_counter:I

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;

    .line 219
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLock:Ljava/lang/Object;

    .line 221
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z

    .line 223
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z

    .line 291
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    .line 322
    new-instance v0, Lcom/android/phone/CallLogAsync;

    invoke-direct {v0}, Lcom/android/phone/CallLogAsync;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mCallLog:Lcom/android/phone/CallLogAsync;

    .line 323
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    .line 329
    new-instance v0, Lcom/android/phone/HapticFeedback;

    invoke-direct {v0}, Lcom/android/phone/HapticFeedback;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/HapticFeedback;

    .line 984
    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$1;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mReceiveHandler:Landroid/os/Handler;

    .line 3552
    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$9;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$9;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialButtonReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listCreateSimple(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_flag:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_flag:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_counter:I

    return v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_counter:I

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->loadPhoto(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->revert2Number(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 128
    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_PHONE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 128
    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listResult:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->subDialogBuilder(I)V

    return-void
.end method

.method static synthetic access$1902(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resultFlag:I

    return p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 128
    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z

    return p1
.end method

.method static synthetic access$2200()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 128
    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->numberArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/RelativeLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAddBtn:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;Ljava/lang/String;I)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setSearchLayout(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600()Landroid/os/ConditionVariable;
    .registers 1

    .prologue
    .line 128
    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->condition:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mReceiveHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    invoke-static {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLock:Ljava/lang/Object;

    return-object v0
.end method

.method private static addArray(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 1148
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1150
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 1151
    add-int/lit8 v1, v4, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1153
    if-eqz p1, :cond_593

    .line 1154
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v1

    .line 1156
    :goto_18
    packed-switch v5, :pswitch_data_596

    .line 1425
    :cond_1b
    :goto_1b
    :pswitch_1b
    return-object v3

    .line 1158
    :pswitch_1c
    if-ne v4, v6, :cond_24

    .line 1159
    const-string v0, "1"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_24
    move v1, v0

    .line 1161
    :goto_25
    if-ge v1, v2, :cond_1b

    .line 1162
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1163
    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1161
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_25

    .line 1168
    :pswitch_3a
    if-ne v4, v6, :cond_70

    .line 1169
    const-string v0, "2"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1170
    const-string v0, "a"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1171
    const-string v0, "b"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1172
    const-string v0, "c"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1174
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1175
    const-string v0, "\u05d3"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1176
    const-string v0, "\u05d4"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1177
    const-string v0, "\u05d5"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_70
    move v1, v0

    .line 1180
    :goto_71
    if-ge v1, v2, :cond_1b

    .line 1181
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1182
    const-string v4, "2"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1183
    const-string v4, "a"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1184
    const-string v4, "b"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1185
    const-string v4, "c"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1186
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "iw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c8

    .line 1187
    const-string v4, "\u05d3"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1188
    const-string v4, "\u05d4"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1189
    const-string v4, "\u05d5"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1180
    :cond_c8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_71

    .line 1195
    :pswitch_cc
    if-ne v4, v6, :cond_103

    .line 1196
    const-string v0, "3"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1197
    const-string v0, "d"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1198
    const-string v0, "e"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1199
    const-string v0, "f"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1200
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1201
    const-string v0, "\u05d0"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1202
    const-string v0, "\u05d1"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1203
    const-string v0, "\u05d2"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    :cond_103
    move v1, v0

    .line 1206
    :goto_104
    if-ge v1, v2, :cond_1b

    .line 1207
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1208
    const-string v4, "3"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1209
    const-string v4, "d"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1210
    const-string v4, "e"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1211
    const-string v4, "f"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1212
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "iw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15b

    .line 1213
    const-string v4, "\u05d0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1214
    const-string v4, "\u05d1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1215
    const-string v4, "\u05d2"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1206
    :cond_15b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_104

    .line 1221
    :pswitch_15f
    if-ne v4, v6, :cond_19b

    .line 1222
    const-string v0, "4"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1223
    const-string v0, "g"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1224
    const-string v0, "h"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1225
    const-string v0, "i"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1226
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1227
    const-string v0, "\u05dd"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1228
    const-string v0, "\u05de"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1229
    const-string v0, "\u05df"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1230
    const-string v0, "\u05e0"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    :cond_19b
    move v1, v0

    .line 1233
    :goto_19c
    if-ge v1, v2, :cond_1b

    .line 1234
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1235
    const-string v4, "4"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1236
    const-string v4, "g"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1237
    const-string v4, "h"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1238
    const-string v4, "i"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1239
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "iw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1fc

    .line 1240
    const-string v4, "\u05dd"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1241
    const-string v4, "\u05de"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1242
    const-string v4, "\u05df"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1243
    const-string v4, "\u05e0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1233
    :cond_1fc
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_19c

    .line 1249
    :pswitch_200
    if-ne v4, v6, :cond_23c

    .line 1250
    const-string v0, "5"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1251
    const-string v0, "j"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1252
    const-string v0, "k"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1253
    const-string v0, "l"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1254
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1255
    const-string v0, "\u05d9"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1256
    const-string v0, "\u05da"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1257
    const-string v0, "\u05db"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1258
    const-string v0, "\u05dc"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    :cond_23c
    move v1, v0

    .line 1261
    :goto_23d
    if-ge v1, v2, :cond_1b

    .line 1262
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1263
    const-string v4, "5"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1264
    const-string v4, "j"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1265
    const-string v4, "k"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1266
    const-string v4, "l"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1267
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "iw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29d

    .line 1268
    const-string v4, "\u05d9"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1269
    const-string v4, "\u05da"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1270
    const-string v4, "\u05db"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1271
    const-string v4, "\u05dc"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1261
    :cond_29d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_23d

    .line 1277
    :pswitch_2a1
    if-ne v4, v6, :cond_2d8

    .line 1278
    const-string v0, "6"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1279
    const-string v0, "m"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1280
    const-string v0, "n"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1281
    const-string v0, "o"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1282
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1283
    const-string v0, "\u05d6"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1284
    const-string v0, "\u05d7"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1285
    const-string v0, "\u05d8"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    :cond_2d8
    move v1, v0

    .line 1288
    :goto_2d9
    if-ge v1, v2, :cond_1b

    .line 1289
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1290
    const-string v4, "6"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1291
    const-string v4, "m"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1292
    const-string v4, "n"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1293
    const-string v4, "o"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1294
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "iw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_330

    .line 1295
    const-string v4, "\u05d6"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1296
    const-string v4, "\u05d7"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1297
    const-string v4, "\u05d8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1288
    :cond_330
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2d9

    .line 1303
    :pswitch_334
    if-ne v4, v6, :cond_370

    .line 1304
    const-string v0, "7"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1305
    const-string v0, "p"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1306
    const-string v0, "q"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1307
    const-string v0, "r"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1308
    const-string v0, "s"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1309
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1310
    const-string v0, "\u05e8"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1311
    const-string v0, "\u05e9"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1312
    const-string v0, "\u05ea"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    :cond_370
    move v1, v0

    .line 1315
    :goto_371
    if-ge v1, v2, :cond_1b

    .line 1316
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1317
    const-string v4, "7"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1318
    const-string v4, "p"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1319
    const-string v4, "q"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1320
    const-string v4, "r"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1321
    const-string v4, "s"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1322
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "iw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d1

    .line 1323
    const-string v4, "\u05e8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1324
    const-string v4, "\u05e9"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1325
    const-string v4, "\u05ea"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1315
    :cond_3d1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_371

    .line 1331
    :pswitch_3d5
    if-ne v4, v6, :cond_40c

    .line 1332
    const-string v0, "8"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1333
    const-string v0, "t"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1334
    const-string v0, "u"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1335
    const-string v0, "v"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1336
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1337
    const-string v0, "\u05e5"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1338
    const-string v0, "\u05e6"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1339
    const-string v0, "\u05e7"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    :cond_40c
    move v1, v0

    .line 1342
    :goto_40d
    if-ge v1, v2, :cond_1b

    .line 1343
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1344
    const-string v4, "8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1345
    const-string v4, "t"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1346
    const-string v4, "u"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1347
    const-string v4, "v"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1348
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "iw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_464

    .line 1349
    const-string v4, "\u05e5"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1350
    const-string v4, "\u05e6"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1351
    const-string v4, "\u05e7"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1342
    :cond_464
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_40d

    .line 1357
    :pswitch_468
    if-ne v4, v6, :cond_4a9

    .line 1358
    const-string v0, "9"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1359
    const-string v0, "w"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1360
    const-string v0, "x"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1361
    const-string v0, "y"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1362
    const-string v0, "z"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1363
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1364
    const-string v0, "\u05e1"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1365
    const-string v0, "\u05e2"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1366
    const-string v0, "\u05e3"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1367
    const-string v0, "\u05e4"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    :cond_4a9
    move v1, v0

    .line 1370
    :goto_4aa
    if-ge v1, v2, :cond_1b

    .line 1371
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1372
    const-string v4, "9"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1373
    const-string v4, "w"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1374
    const-string v4, "x"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1375
    const-string v4, "y"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1376
    const-string v4, "z"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1377
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "iw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_513

    .line 1378
    const-string v4, "\u05e1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1379
    const-string v4, "\u05e2"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1380
    const-string v4, "\u05e3"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1381
    const-string v4, "\u05e4"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1370
    :cond_513
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4aa

    .line 1387
    :pswitch_517
    if-ne v4, v6, :cond_520

    .line 1388
    const-string v0, "0"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    :cond_520
    move v1, v0

    .line 1390
    :goto_521
    if-ge v1, v2, :cond_1b

    .line 1391
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1390
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_521

    .line 1396
    :pswitch_536
    if-ne v4, v6, :cond_53f

    .line 1397
    const-string v0, "#"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    :cond_53f
    move v1, v0

    .line 1399
    :goto_540
    if-ge v1, v2, :cond_1b

    .line 1400
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "#"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1399
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_540

    .line 1405
    :pswitch_555
    if-ne v4, v6, :cond_55e

    .line 1406
    const-string v0, "*"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    :cond_55e
    move v1, v0

    .line 1408
    :goto_55f
    if-ge v1, v2, :cond_1b

    .line 1409
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "*"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1408
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_55f

    .line 1414
    :pswitch_574
    if-ne v4, v6, :cond_57d

    .line 1415
    const-string v0, "+"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    :cond_57d
    move v1, v0

    .line 1417
    :goto_57e
    if-ge v1, v2, :cond_1b

    .line 1418
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "+"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1417
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_57e

    :cond_593
    move v2, v0

    goto/16 :goto_18

    .line 1156
    :pswitch_data_596
    .packed-switch 0x23
        :pswitch_536
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_555
        :pswitch_574
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_517
        :pswitch_1c
        :pswitch_3a
        :pswitch_cc
        :pswitch_15f
        :pswitch_200
        :pswitch_2a1
        :pswitch_334
        :pswitch_3d5
        :pswitch_468
    .end packed-switch
.end method

.method private clearDialString()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 2937
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getSelectionStart()I

    move-result v0

    .line 2938
    .local v0, anchor:I
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getSelectionEnd()I

    move-result v3

    .line 2940
    .local v3, point:I
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2941
    .local v5, selectionStart:I
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2943
    .local v4, selectionEnd:I
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2944
    .local v1, digits:Landroid/text/Editable;
    const/4 v6, -0x1

    if-eq v5, v6, :cond_2f

    .line 2945
    if-ne v5, v4, :cond_29

    .line 2946
    if-nez v5, :cond_23

    .line 2960
    :goto_22
    return-void

    .line 2950
    :cond_23
    const-string v6, ""

    invoke-interface {v1, v7, v5, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_22

    .line 2952
    :cond_29
    const-string v6, ""

    invoke-interface {v1, v5, v4, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_22

    .line 2957
    :cond_2f
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v2

    .line 2958
    .local v2, len:I
    const-string v6, ""

    invoke-interface {v1, v7, v2, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_22
.end method

.method private constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;
    .registers 5
    .parameter

    .prologue
    .line 2833
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2834
    if-nez v1, :cond_8

    .line 2835
    const/4 v0, 0x0

    .line 2842
    :goto_7
    return-object v0

    .line 2837
    :cond_8
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 2838
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 2839
    const v2, 0x7f100005

    invoke-virtual {v0, v2}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 2840
    invoke-virtual {v0, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 2841
    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setupMenuItems(Landroid/view/Menu;)V

    goto :goto_7
.end method

.method private dailogBuildcreate()V
    .registers 6

    .prologue
    .line 2345
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listCreate(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listResult:Ljava/util/ArrayList;

    .line 2346
    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1d

    .line 2372
    :goto_1c
    return-void

    .line 2349
    :cond_1d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2350
    new-instance v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f040056

    sget-object v4, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listResult:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 2352
    new-instance v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$5;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0288

    new-instance v3, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$4;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$4;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0287

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2368
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->dialogResult:Landroid/app/AlertDialog;

    if-eqz v1, :cond_58

    .line 2369
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->dialogResult:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 2370
    :cond_58
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->dialogResult:Landroid/app/AlertDialog;

    .line 2371
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->dialogResult:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1c
.end method

.method private fillDigitsIfNecessary(Landroid/content/Intent;)Z
    .registers 15
    .parameter "intent"

    .prologue
    const/4 v12, 0x0

    const/4 v3, 0x0

    const/4 v11, 0x1

    .line 699
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 700
    .local v6, action:Ljava/lang/String;
    const-string v0, "android.intent.action.DIAL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 701
    :cond_17
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 702
    .local v10, uri:Landroid/net/Uri;
    if-eqz v10, :cond_80

    .line 703
    const-string v0, "tel"

    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 705
    invoke-virtual {v10}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    .line 706
    .local v8, data:Ljava/lang/String;
    invoke-direct {p0, v8, v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v11

    .line 732
    .end local v8           #data:Ljava/lang/String;
    .end local v10           #uri:Landroid/net/Uri;
    :goto_31
    return v0

    .line 709
    .restart local v10       #uri:Landroid/net/Uri;
    :cond_32
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v9

    .line 710
    .local v9, type:Ljava/lang/String;
    const-string v0, "vnd.android.cursor.item/person"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    const-string v0, "vnd.android.cursor.item/phone"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 713
    :cond_46
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "number"

    aput-object v4, v2, v12

    const-string v4, "number_key"

    aput-object v4, v2, v11

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 716
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_80

    .line 718
    :try_start_65
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 720
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_78
    .catchall {:try_start_65 .. :try_end_78} :catchall_82

    .line 724
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v11

    goto :goto_31

    :cond_7d
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v7           #c:Landroid/database/Cursor;
    .end local v9           #type:Ljava/lang/String;
    .end local v10           #uri:Landroid/net/Uri;
    :cond_80
    move v0, v12

    .line 732
    goto :goto_31

    .line 724
    .restart local v7       #c:Landroid/database/Cursor;
    .restart local v9       #type:Ljava/lang/String;
    .restart local v10       #uri:Landroid/net/Uri;
    :catchall_82
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getSpeedDialNumber(JZ)Ljava/lang/String;
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const v8, 0x7f0a028a

    const/4 v7, 0x0

    .line 3000
    const-string v6, ""

    .line 3001
    const-string v0, "content://com.android.contacts/contacts/speeddial"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3002
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_SPEEDDIAL:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key_number="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3004
    if-eqz v1, :cond_53

    .line 3005
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 3006
    const-string v0, "number"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3010
    :goto_41
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v6, v0

    .line 3016
    :cond_45
    :goto_45
    return-object v6

    .line 3008
    :cond_46
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move-object v0, v6

    goto :goto_41

    .line 3012
    :cond_53
    if-nez p3, :cond_45

    .line 3013
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_45
.end method

.method private getTouchWizFont()Landroid/graphics/Typeface;
    .registers 3

    .prologue
    .line 680
    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->ttfTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_14

    .line 681
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Input_TouchWiz_2010205.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->ttfTypeface:Landroid/graphics/Typeface;

    .line 683
    :cond_14
    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->ttfTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method private isDigitsEmpty()Z
    .registers 2

    .prologue
    .line 3465
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isLayoutReady()Z
    .registers 2

    .prologue
    .line 688
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static final isNonSeparator(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 1429
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_30

    :cond_8
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_30

    const/16 v0, 0x23

    if-eq p0, v0, :cond_30

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_30

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_30

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_30

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_30

    const/16 v0, 0x61

    if-lt p0, v0, :cond_28

    const/16 v0, 0x7a

    if-le p0, v0, :cond_30

    :cond_28
    const/16 v0, 0x41

    if-lt p0, v0, :cond_32

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_32

    :cond_30
    const/4 v0, 0x1

    :goto_31
    return v0

    :cond_32
    const/4 v0, 0x0

    goto :goto_31
.end method

.method private keyPressed(I)V
    .registers 4
    .parameter "keyCode"

    .prologue
    .line 2682
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 2683
    .local v0, event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v1, p1, v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 2684
    return-void
.end method

.method private listCreate(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2057
    iput v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    .line 2058
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2059
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2060
    if-nez v1, :cond_10

    .line 2096
    :goto_f
    return-object v0

    .line 2063
    :cond_10
    if-ne v1, v5, :cond_23

    .line 2064
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2065
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2066
    iput v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resultFlag:I

    .line 2068
    :cond_23
    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<++++++++++>Search Start for Dialog : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    iget v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resultFlag:I

    packed-switch v2, :pswitch_data_ac

    .line 2095
    :cond_40
    :goto_40
    sget-object v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<++++++++++>Search End for Dialog : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 2071
    :pswitch_5d
    if-ne v1, v5, :cond_6e

    .line 2072
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_SpeedDial(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2073
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Name(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_40

    .line 2074
    :cond_6e
    const/4 v2, 0x2

    if-ne v1, v2, :cond_79

    .line 2075
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Name(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_40

    .line 2077
    :cond_79
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Name(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2078
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Number(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2079
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Log(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_40

    .line 2085
    :pswitch_8f
    if-ne v1, v5, :cond_99

    .line 2086
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_SpeedDial(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_40

    .line 2087
    :cond_99
    const/4 v2, 0x3

    if-lt v1, v2, :cond_40

    .line 2088
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Number(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2089
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Log(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_40

    .line 2069
    nop

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_5d
        :pswitch_8f
        :pswitch_8f
        :pswitch_8f
    .end packed-switch
.end method

.method private listCreateSimple(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1765
    .line 1766
    iput v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    .line 1767
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1768
    if-nez v1, :cond_c

    .line 1823
    :cond_b
    :goto_b
    return-object v0

    .line 1771
    :cond_c
    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v3, "<++++++++++>List create start : "

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    if-ne v1, v5, :cond_2a

    .line 1773
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1774
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1775
    iput v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resultFlag:I

    .line 1777
    :cond_2a
    iget v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resultFlag:I

    packed-switch v2, :pswitch_data_7e

    goto :goto_b

    .line 1779
    :pswitch_30
    if-ne v1, v5, :cond_41

    .line 1780
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_SpeedDial_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    move-result-object v0

    .line 1781
    if-nez v0, :cond_3d

    .line 1782
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Name_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    move-result-object v0

    goto :goto_b

    .line 1784
    :cond_3d
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Name_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    goto :goto_b

    .line 1786
    :cond_41
    const/4 v0, 0x2

    if-ne v1, v0, :cond_49

    .line 1787
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Name_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    move-result-object v0

    goto :goto_b

    .line 1789
    :cond_49
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Name_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    move-result-object v0

    .line 1790
    if-nez v0, :cond_5e

    .line 1791
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Number_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    move-result-object v0

    .line 1792
    if-nez v0, :cond_5a

    .line 1793
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Log_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    move-result-object v0

    goto :goto_b

    .line 1795
    :cond_5a
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Log_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    goto :goto_b

    .line 1798
    :cond_5e
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Number_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    .line 1799
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Log_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    goto :goto_b

    .line 1807
    :pswitch_65
    if-ne v1, v5, :cond_6c

    .line 1808
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_SpeedDial_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    move-result-object v0

    goto :goto_b

    .line 1809
    :cond_6c
    const/4 v2, 0x3

    if-lt v1, v2, :cond_b

    .line 1810
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Number_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    move-result-object v0

    .line 1811
    if-nez v0, :cond_7a

    .line 1812
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Log_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    move-result-object v0

    goto :goto_b

    .line 1814
    :cond_7a
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->smartSearch_Log_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    goto :goto_b

    .line 1777
    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_30
        :pswitch_65
        :pswitch_65
        :pswitch_65
    .end packed-switch
.end method

.method private loadPhoto(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 1499
    .line 1502
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data15"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_3e

    move-result-object v1

    .line 1507
    if-eqz v1, :cond_38

    :try_start_20
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_38

    .line 1508
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 1509
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v3, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_37
    .catchall {:try_start_20 .. :try_end_37} :catchall_46

    move-result-object v6

    .line 1512
    :cond_38
    if-eqz v1, :cond_3d

    .line 1513
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1516
    :cond_3d
    return-object v6

    .line 1512
    :catchall_3e
    move-exception v0

    move-object v1, v6

    :goto_40
    if-eqz v1, :cond_45

    .line 1513
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_45
    throw v0

    .line 1512
    :catchall_46
    move-exception v0

    goto :goto_40
.end method

.method private static makeNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 1450
    .line 1452
    :goto_1
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_12

    .line 1453
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 1455
    :cond_12
    :goto_12
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_23

    .line 1456
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_12

    .line 1458
    :cond_23
    :goto_23
    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_34

    .line 1459
    const-string v0, ")"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_23

    .line 1461
    :cond_34
    :goto_34
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_45

    .line 1462
    const-string v0, "("

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_34

    .line 1464
    :cond_45
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private mannerModeSet()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2973
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAudioManager:Landroid/media/AudioManager;

    .line 2975
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eq v0, v3, :cond_32

    .line 2977
    invoke-direct {p0, v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setRingerMode(Z)V

    .line 2978
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a028b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2983
    :goto_31
    return-void

    .line 2980
    :cond_32
    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setRingerMode(Z)V

    .line 2981
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a028c

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_31
.end method

.method private newDialNumberIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 6
    .parameter

    .prologue
    .line 3506
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3508
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3509
    return-object v0
.end method

.method private newFlashIntent()Landroid/content/Intent;
    .registers 4

    .prologue
    .line 3500
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->newDialNumberIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3501
    const-string v1, "com.android.phone.extra.SEND_EMPTY_FLASH"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3502
    return-object v0
.end method

.method private newVoicemailIntent()Landroid/content/Intent;
    .registers 6

    .prologue
    .line 3493
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "voicemail"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3495
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3496
    return-object v0
.end method

.method private phoneIsCdma()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 3321
    .line 3323
    :try_start_1
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3324
    if-eqz v1, :cond_15

    .line 3325
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_16

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_15

    const/4 v0, 0x1

    .line 3330
    :cond_15
    :goto_15
    return v0

    .line 3327
    :catch_16
    move-exception v1

    .line 3328
    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v3, "phone.getActivePhoneType() failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method public static phoneIsInUse()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 3309
    :try_start_1
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3310
    if-eqz v1, :cond_14

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_15

    move-result v1

    if-nez v1, :cond_14

    const/4 v0, 0x1

    .line 3314
    :cond_14
    :goto_14
    return v0

    .line 3311
    :catch_15
    move-exception v1

    .line 3312
    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v3, "phone.isIdle() failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method private phoneIsOffhook()Z
    .registers 5

    .prologue
    .line 3337
    const/4 v0, 0x0

    .line 3339
    :try_start_1
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3340
    if-eqz v1, :cond_11

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_12

    move-result v0

    .line 3344
    :cond_11
    :goto_11
    return v0

    .line 3341
    :catch_12
    move-exception v1

    .line 3342
    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v3, "phone.isOffhook() failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method private placeCall_result(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 2963
    const-string v0, ""

    if-ne p1, v0, :cond_5

    .line 2969
    :goto_4
    return-void

    .line 2965
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2967
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2968
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_4
.end method

.method private queryLastOutgoingCall()V
    .registers 4

    .prologue
    .line 3475
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    .line 3476
    new-instance v0, Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$8;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$8;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;-><init>(Landroid/content/Context;Lcom/android/phone/CallLogAsync$OnLastOutgoingCallComplete;)V

    .line 3488
    .local v0, lastCallArgs:Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mCallLog:Lcom/android/phone/CallLogAsync;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallLogAsync;->getLastOutgoingCall(Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;)Landroid/os/AsyncTask;

    .line 3489
    return-void
.end method

.method private resolveIntent(Landroid/content/Intent;)Z
    .registers 16
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 755
    const/4 v9, 0x0

    .line 758
    .local v9, ignoreState:Z
    iput-boolean v13, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mIsAddCallMode:Z

    .line 761
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 762
    .local v6, action:Ljava/lang/String;
    const-string v0, "android.intent.action.DIAL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 765
    :cond_1a
    const-string v0, "add_call_mode"

    invoke-virtual {p1, v0, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mIsAddCallMode:Z

    .line 766
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    .line 768
    .local v11, uri:Landroid/net/Uri;
    if-eqz v11, :cond_5c

    .line 769
    iput v12, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resultFlag:I

    .line 770
    const-string v0, "tel"

    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 772
    const-string v8, ""

    .line 773
    .local v8, data:Ljava/lang/String;
    invoke-virtual {v11}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    .line 774
    iput-boolean v12, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z

    .line 775
    iput-boolean v12, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z

    .line 776
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0, v8}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    .line 777
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setSelection(I)V

    .line 778
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onKeypad:Ljava/lang/String;

    .line 802
    .end local v8           #data:Ljava/lang/String;
    .end local v11           #uri:Landroid/net/Uri;
    :cond_5c
    :goto_5c
    return v9

    .line 780
    .restart local v11       #uri:Landroid/net/Uri;
    :cond_5d
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v10

    .line 781
    .local v10, type:Ljava/lang/String;
    const-string v0, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 784
    :cond_71
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v12, [Ljava/lang/String;

    const-string v4, "data1"

    aput-object v4, v2, v13

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 787
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_5c

    .line 788
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 790
    iput-boolean v12, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z

    .line 791
    iput-boolean v12, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z

    .line 792
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    .line 793
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setSelection(I)V

    .line 794
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onKeypad:Ljava/lang/String;

    .line 796
    :cond_b5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_5c
.end method

.method private revert2Number(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2544
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 2545
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2547
    const/4 v0, 0x0

    :goto_a
    if-ge v0, v2, :cond_69

    .line 2548
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2549
    packed-switch v3, :pswitch_data_6e

    .line 2643
    :pswitch_13
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2547
    :goto_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 2551
    :pswitch_1b
    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_18

    .line 2560
    :pswitch_21
    const-string v3, "2"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_18

    .line 2569
    :pswitch_27
    const-string v3, "3"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_18

    .line 2578
    :pswitch_2d
    const-string v3, "4"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_18

    .line 2587
    :pswitch_33
    const-string v3, "5"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_18

    .line 2596
    :pswitch_39
    const-string v3, "6"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_18

    .line 2607
    :pswitch_3f
    const-string v3, "7"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_18

    .line 2616
    :pswitch_45
    const-string v3, "8"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_18

    .line 2627
    :pswitch_4b
    const-string v3, "9"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_18

    .line 2630
    :pswitch_51
    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_18

    .line 2633
    :pswitch_57
    const-string v3, "*"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_18

    .line 2636
    :pswitch_5d
    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_18

    .line 2639
    :pswitch_63
    const-string v3, "+"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_18

    .line 2647
    :cond_69
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2549
    :pswitch_data_6e
    .packed-switch 0x23
        :pswitch_5d
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_57
        :pswitch_63
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_51
        :pswitch_1b
        :pswitch_21
        :pswitch_27
        :pswitch_2d
        :pswitch_33
        :pswitch_39
        :pswitch_3f
        :pswitch_45
        :pswitch_4b
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_4b
        :pswitch_4b
        :pswitch_4b
        :pswitch_4b
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_4b
        :pswitch_4b
        :pswitch_4b
        :pswitch_4b
    .end packed-switch
.end method

.method private sendSMS()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 3051
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_2c

    .line 3052
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3054
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const-string v3, "sms"

    invoke-static {v3, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3056
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    .line 3061
    :goto_2b
    return-void

    .line 3058
    :cond_2c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "sms"

    const-string v3, ""

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3059
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2b
.end method

.method private setEditTextView(Landroid/view/View;)V
    .registers 7
    .parameter "fragmentView"

    .prologue
    .line 588
    const v3, 0x7f0d0155

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    iput-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    .line 590
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 591
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 592
    .local v2, mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getOrientation()I

    move-result v3

    if-nez v3, :cond_97

    .line 593
    const/16 v3, 0x85

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v3, 0x1e0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 597
    :goto_33
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 598
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 600
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setScaledWidth(F)V

    .line 601
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 602
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v3, p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 603
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v3, p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 604
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v3, p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 605
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v3, p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 606
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getTouchWizFont()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 609
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 610
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 611
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setScaledDensity(F)V

    .line 613
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v3, p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 614
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->requestFocus()Z

    .line 616
    return-void

    .line 595
    .end local v1           #metrics:Landroid/util/DisplayMetrics;
    :cond_97
    const/16 v3, 0x60

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v3, 0x186

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_33
.end method

.method private setFormattedDigits(Landroid/text/Editable;)V
    .registers 8
    .parameter "input"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 807
    iput-boolean v5, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mFormatting:Z

    .line 809
    iget-boolean v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDeletingHyphen:Z

    if-eqz v2, :cond_23

    iget v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHyphenStart:I

    if-lez v2, :cond_23

    .line 810
    iget-boolean v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDeletingBackward:Z

    if-eqz v2, :cond_3a

    .line 811
    iget v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHyphenStart:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    if-ge v2, v3, :cond_23

    .line 812
    iget v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHyphenStart:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHyphenStart:I

    invoke-interface {p1, v2, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 818
    :cond_23
    :goto_23
    sget v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->sFormatType:I

    invoke-static {p1, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 819
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 820
    .local v0, compare:Ljava/lang/String;
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 821
    invoke-interface {p1, v4, v5}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 828
    :cond_37
    :goto_37
    iput-boolean v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mFormatting:Z

    .line 829
    return-void

    .line 814
    .end local v0           #compare:Ljava/lang/String;
    :cond_3a
    iget v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHyphenStart:I

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    if-ge v2, v3, :cond_23

    .line 815
    iget v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHyphenStart:I

    iget v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHyphenStart:I

    add-int/lit8 v3, v3, 0x1

    invoke-interface {p1, v2, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_23

    .line 822
    .restart local v0       #compare:Ljava/lang/String;
    :cond_4c
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 823
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-interface {p1, v2, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_37

    .line 824
    :cond_62
    const-string v2, "--"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 825
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 826
    .local v1, tt:I
    add-int/lit8 v2, v1, 0x2

    const-string v3, "-"

    invoke-interface {p1, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_37
.end method

.method private setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "data"
    .parameter "normalizedNumber"

    .prologue
    .line 833
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 834
    .local v0, dialString:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;

    invoke-static {v0, p2, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 836
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 837
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 838
    .local v1, digits:Landroid/text/Editable;
    const/4 v2, 0x0

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-interface {v1, v2, v3, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 841
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->afterTextChanged(Landroid/text/Editable;)V

    .line 843
    .end local v1           #digits:Landroid/text/Editable;
    :cond_21
    return-void
.end method

.method private setInputNumber(Ljava/lang/String;)V
    .registers 6
    .parameter "text"

    .prologue
    .line 1469
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_counter:I

    .line 1470
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_flag:Z

    .line 1471
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1472
    .local v1, mNumber:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    iget v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_counter:I

    if-ge v0, v2, :cond_4b

    .line 1473
    aget-char v2, v1, v0

    sparse-switch v2, :sswitch_data_4c

    .line 1490
    aget-char v2, v1, v0

    const/16 v3, 0x30

    if-lt v2, v3, :cond_2a

    aget-char v2, v1, v0

    const/16 v3, 0x39

    if-gt v2, v3, :cond_2a

    .line 1491
    aget-char v2, v1, v0

    add-int/lit8 v2, v2, -0x29

    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    .line 1472
    :cond_2a
    :goto_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1475
    :sswitch_2d
    const/16 v2, 0x51

    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_2a

    .line 1478
    :sswitch_33
    const/16 v2, 0x37

    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_2a

    .line 1481
    :sswitch_39
    const/16 v2, 0x4a

    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_2a

    .line 1484
    :sswitch_3f
    const/16 v2, 0x11

    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_2a

    .line 1487
    :sswitch_45
    const/16 v2, 0x12

    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_2a

    .line 1496
    :cond_4b
    return-void

    .line 1473
    :sswitch_data_4c
    .sparse-switch
        0x23 -> :sswitch_45
        0x2a -> :sswitch_3f
        0x2b -> :sswitch_2d
        0x2c -> :sswitch_33
        0x3b -> :sswitch_39
    .end sparse-switch
.end method

.method private setRingerMode(Z)V
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2986
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAudioManager:Landroid/media/AudioManager;

    .line 2988
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "vibrate_in_silent"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2c

    move v0, v1

    .line 2991
    :goto_21
    if-eqz p1, :cond_30

    .line 2992
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2e

    move v0, v1

    :goto_28
    invoke-virtual {v3, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 2997
    :goto_2b
    return-void

    :cond_2c
    move v0, v2

    .line 2988
    goto :goto_21

    :cond_2e
    move v0, v2

    .line 2992
    goto :goto_28

    .line 2995
    :cond_30
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_2b
.end method

.method private setSearchLayout(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;Ljava/lang/String;I)V
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2422
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLayout:Landroid/widget/LinearLayout;

    .line 2423
    invoke-virtual {p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v2

    .line 2424
    invoke-virtual {p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2425
    invoke-virtual {p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getPhotoID()I

    move-result v0

    .line 2426
    invoke-virtual {p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getType()I

    move-result v1

    .line 2427
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 2431
    if-eqz v0, :cond_5c

    .line 2432
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2433
    int-to-long v8, v0

    invoke-direct {p0, v8, v9, v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->loadPhoto(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2434
    if-eqz v4, :cond_4c

    .line 2435
    const v0, 0x7f0d015c

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2443
    :goto_34
    packed-switch v1, :pswitch_data_2d4

    .line 2538
    :goto_37
    const v0, 0x7f0d0167

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2540
    return-void

    .line 2437
    :cond_4c
    const v0, 0x7f0d015c

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v4, 0x7f020117

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_34

    .line 2440
    :cond_5c
    const v0, 0x7f0d015c

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v4, 0x7f020117

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_34

    .line 2445
    :pswitch_6c
    const v0, 0x7f0d015e

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2447
    if-eqz v2, :cond_d1

    .line 2448
    const v0, 0x7f0d015f

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2451
    :goto_87
    const v0, 0x7f0d0160

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2452
    const v0, 0x7f0d0161

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2453
    const v0, 0x7f0d0163

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2454
    const v0, 0x7f0d0164

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2455
    const v0, 0x7f0d0165

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_37

    .line 2450
    :cond_d1
    const v0, 0x7f0d015f

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0286

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_87

    .line 2458
    :pswitch_e1
    invoke-direct {p0, v2, p2, v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->revert2Number(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2460
    invoke-virtual {v1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2461
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, " "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2462
    if-lez v0, :cond_2d0

    .line 2464
    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2465
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    .line 2467
    :goto_100
    const v0, 0x7f0d015e

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2469
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v4, "iw"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d4

    .line 2470
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2471
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070041

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    const/16 v4, 0x12

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2473
    const v0, 0x7f0d015f

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2486
    :cond_144
    :goto_144
    const-string v0, "content://com.android.contacts/contacts/"

    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2488
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_PHONE:[Ljava/lang/String;

    const-string v3, "mimetype"

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2491
    if-eqz v1, :cond_1aa

    .line 2492
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2cd

    .line 2493
    const-string v0, "data1"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2495
    :cond_18a
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1a6

    .line 2496
    const-string v2, "is_super_primary"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_18a

    .line 2497
    const-string v0, "data1"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2503
    :cond_1a6
    :goto_1a6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v6, v0

    .line 2505
    :cond_1aa
    const v0, 0x7f0d0163

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2506
    const v0, 0x7f0d0164

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2507
    const v0, 0x7f0d0165

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_37

    .line 2476
    :cond_1d4
    if-ltz v1, :cond_144

    add-int v0, v1, v3

    if-gt v1, v0, :cond_144

    .line 2478
    const v0, 0x7f0d015f

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2479
    const v0, 0x7f0d0160

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    add-int v4, v1, v3

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2480
    const v0, 0x7f0d0161

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_144

    .line 2510
    :pswitch_210
    const v0, 0x7f0d015e

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2512
    invoke-virtual {v6, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2513
    if-eqz v2, :cond_27b

    .line 2514
    const v0, 0x7f0d015f

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2517
    :goto_22f
    const v0, 0x7f0d0160

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2518
    const v0, 0x7f0d0161

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2519
    const v0, 0x7f0d0163

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v6, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2521
    const v0, 0x7f0d0164

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2522
    const v0, 0x7f0d0165

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    add-int/2addr v1, v3

    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_37

    .line 2516
    :cond_27b
    const v0, 0x7f0d015f

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0a0286

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_22f

    .line 2526
    :pswitch_28b
    invoke-virtual {v6, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2527
    const v0, 0x7f0d015e

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2529
    const v0, 0x7f0d0163

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v6, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2531
    const v0, 0x7f0d0164

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2532
    const v0, 0x7f0d0165

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    add-int/2addr v1, v3

    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_37

    :cond_2cd
    move-object v0, v6

    goto/16 :goto_1a6

    :cond_2d0
    move v1, v0

    goto/16 :goto_100

    .line 2443
    nop

    :pswitch_data_2d4
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_e1
        :pswitch_210
        :pswitch_28b
    .end packed-switch
.end method

.method private setSearchView(Landroid/view/View;)V
    .registers 4
    .parameter "fragmentView"

    .prologue
    .line 619
    const v0, 0x7f0d015a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLayout:Landroid/widget/LinearLayout;

    .line 620
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 622
    const v0, 0x7f0d0169

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAddBtn:Landroid/widget/RelativeLayout;

    .line 623
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAddBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 624
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAddBtn:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 626
    const v0, 0x7f0d015b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 627
    const v0, 0x7f0d0166

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 628
    return-void
.end method

.method private setupAddtionalButtons(Landroid/view/View;)V
    .registers 3
    .parameter "fragmentView"

    .prologue
    .line 632
    const v0, 0x7f0d013d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    .line 633
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 639
    const v0, 0x7f0d013f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mMessageButton:Landroid/view/View;

    .line 640
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mMessageButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 642
    const v0, 0x7f0d0140

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    .line 643
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 644
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 645
    return-void
.end method

.method private setupKeypad(Landroid/view/View;)V
    .registers 9
    .parameter "fragmentView"

    .prologue
    const v6, 0x7f0d0132

    const v5, 0x7f0d0131

    const v4, 0x7f0d012f

    const v3, 0x7f0d012e

    const v2, 0x7f0d0124

    .line 649
    const v1, 0x7f0d012d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 650
    .local v0, view:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 651
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 653
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 654
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 655
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 656
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 657
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 658
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 659
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 660
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 661
    const v1, 0x7f0d0133

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 662
    const v1, 0x7f0d0133

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 663
    const v1, 0x7f0d0135

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 664
    const v1, 0x7f0d0135

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 665
    const v1, 0x7f0d0136

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 666
    const v1, 0x7f0d0136

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 667
    const v1, 0x7f0d0137

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 668
    const v1, 0x7f0d0137

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 669
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 670
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 671
    const v1, 0x7f0d013a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 672
    const v1, 0x7f0d013a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 674
    const v1, 0x7f0d0139

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 675
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 676
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 677
    return-void
.end method

.method private setupMenuItems(Landroid/view/Menu;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2655
    const v0, 0x7f0d025d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 2656
    const v0, 0x7f0d0262

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2657
    const v1, 0x7f0d025e

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2658
    const v2, 0x7f0d025f

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 2659
    const v2, 0x7f0d0260

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 2660
    const v2, 0x7f0d0261

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 2662
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 2663
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2665
    :cond_30
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2666
    if-eqz v1, :cond_44

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 2667
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2672
    :goto_43
    return-void

    .line 2669
    :cond_44
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2670
    invoke-static {}, Lcom/android/contacts/activities/DialtactsActivity;->getCallSettingsIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_43
.end method

.method private showAddToContact()V
    .registers 5

    .prologue
    .line 1113
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a02b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a02b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1118
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0298

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$3;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0288

    new-instance v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$2;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1145
    return-void
.end method

.method private smartSearch_Log(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 2019
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2021
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z

    if-nez v0, :cond_c

    move-object v0, v6

    .line 2053
    :goto_b
    return-object v0

    .line 2024
    :cond_c
    const-string v0, "content://logs/call/search_log"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2029
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "%"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 2033
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_LOG:[Ljava/lang/String;

    const-string v3, "contactid"

    const-string v5, " = 0 and "

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "number"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, " LIKE ?"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "date DESC "

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2038
    if-nez v7, :cond_4d

    .line 2039
    iput-boolean v8, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z

    move-object v0, v6

    .line 2040
    goto :goto_b

    .line 2043
    :cond_4d
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 2045
    :cond_53
    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    const-string v3, ""

    const-string v1, "number"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    move-object v1, p0

    move v2, v8

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;ILjava/lang/String;Ljava/lang/String;I)V

    .line 2047
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2048
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_53

    .line 2052
    :goto_70
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    .line 2053
    goto :goto_b

    .line 2050
    :cond_75
    iput-boolean v8, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z

    goto :goto_70
.end method

.method private smartSearch_Log_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;
    .registers 11
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 1720
    .line 1722
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_7

    .line 1761
    :cond_6
    :goto_6
    return-object v6

    .line 1725
    :cond_7
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z

    if-eqz v0, :cond_6

    .line 1728
    const-string v0, "content://logs/call/search_log"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1733
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "%"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 1738
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_LOG:[Ljava/lang/String;

    const-string v3, "contactid"

    const-string v5, " = 0 and "

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "number"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, " LIKE ?"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "date"

    const-string v7, " DESC "

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1743
    if-nez v7, :cond_51

    .line 1744
    iput-boolean v8, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z

    goto :goto_6

    .line 1748
    :cond_51
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 1749
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    .line 1751
    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    const-string v3, ""

    const-string v1, "number"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    move-object v1, p0

    move v2, v8

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;ILjava/lang/String;Ljava/lang/String;I)V

    .line 1758
    :goto_74
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v6, v0

    .line 1761
    goto :goto_6

    .line 1755
    :cond_79
    iput-boolean v8, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z

    move-object v0, v6

    goto :goto_74
.end method

.method private smartSearch_Name(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 15
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1852
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1853
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1854
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    .line 1856
    if-ge v0, v10, :cond_13

    move-object v0, v8

    .line 1920
    :goto_12
    return-object v0

    .line 1860
    :cond_13
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1862
    const/4 v0, 0x1

    if-ne v10, v0, :cond_53

    .line 1863
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->addArray(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1873
    :goto_25
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1875
    const-string v0, "content://com.android.contacts/contacts/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1877
    const/4 v0, 0x0

    move v9, v0

    :goto_39
    if-ge v9, v12, :cond_4c

    .line 1880
    :try_start_3b
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_49
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3b .. :try_end_49} :catch_97

    move-object v6, v0

    .line 1886
    :goto_4a
    if-nez v6, :cond_a2

    .line 1919
    :cond_4c
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v0, v10, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v0, v8

    .line 1920
    goto :goto_12

    .line 1865
    :cond_53
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    add-int/lit8 v1, v10, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_65

    move-object v0, v8

    .line 1866
    goto :goto_12

    .line 1867
    :cond_65
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v10, 0x1

    if-ge v0, v1, :cond_83

    .line 1868
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    add-int/lit8 v2, v10, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->addArray(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_25

    .line 1870
    :cond_83
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    add-int/lit8 v2, v10, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->addArray(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    .line 1881
    :catch_97
    move-exception v0

    .line 1882
    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "Selection exception. Zeroing selection"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_4a

    .line 1888
    :cond_a2
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "%"

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v0, 0x1

    const-string v2, "%"

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    .line 1892
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_NAME:[Ljava/lang/String;

    const-string v3, "has_phone_number"

    const-string v5, " = 1 AND ("

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "display_name"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, " LIKE ? OR "

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "display_name_alt"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, " LIKE ? )"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "display_name"

    const-string v7, " COLLATE LOCALIZED ASC"

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1898
    if-eqz v0, :cond_140

    .line 1899
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_13d

    .line 1900
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_13d

    .line 1901
    iget v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    .line 1902
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1905
    :cond_107
    new-instance v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    const-string v3, "photo_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v3, "display_name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;ILjava/lang/String;Ljava/lang/String;I)V

    .line 1912
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1913
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_107

    .line 1916
    :cond_13d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1877
    :cond_140
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto/16 :goto_39
.end method

.method private smartSearch_Name_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;
    .registers 14
    .parameter

    .prologue
    .line 1555
    const/4 v7, 0x0

    .line 1556
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1557
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    .line 1558
    if-ge v0, v9, :cond_e

    .line 1617
    :cond_d
    :goto_d
    return-object v7

    .line 1562
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_14

    .line 1563
    const/4 v7, 0x0

    goto :goto_d

    .line 1565
    :cond_14
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1567
    const/4 v0, 0x1

    if-ne v9, v0, :cond_42

    .line 1568
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->addArray(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1578
    :goto_26
    const-string v0, "content://com.android.contacts/contacts/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1581
    const/4 v0, 0x0

    move v8, v0

    :goto_2e
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_95

    .line 1583
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_84

    .line 1584
    const/4 v7, 0x0

    goto :goto_d

    .line 1570
    :cond_42
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    add-int/lit8 v1, v9, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_d

    .line 1572
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v9, 0x1

    if-ge v0, v1, :cond_70

    .line 1573
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    add-int/lit8 v2, v9, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->addArray(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v9, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_26

    .line 1575
    :cond_70
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    add-int/lit8 v2, v9, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->addArray(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v9, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    .line 1586
    :cond_84
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 1587
    if-nez v6, :cond_9c

    .line 1614
    :cond_95
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v0, v9, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    .line 1589
    :cond_9c
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "%"

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v0, 0x1

    const-string v2, "%"

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    .line 1593
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_NAME:[Ljava/lang/String;

    const-string v3, "has_phone_number"

    const-string v5, " = 1 AND ("

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "display_name"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, " LIKE ? OR "

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "display_name_alt"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, " LIKE ? )"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "display_name"

    const-string v11, " COLLATE LOCALIZED ASC"

    invoke-virtual {v5, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1599
    if-eqz v0, :cond_135

    .line 1600
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_133

    .line 1601
    iget v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    .line 1602
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1603
    if-nez v7, :cond_133

    .line 1604
    new-instance v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    const-string v3, "photo_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v3, "display_name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;ILjava/lang/String;Ljava/lang/String;I)V

    .line 1611
    :goto_12a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1581
    :goto_12d
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    move-object v7, v2

    goto/16 :goto_2e

    :cond_133
    move-object v2, v7

    goto :goto_12a

    :cond_135
    move-object v2, v7

    goto :goto_12d
.end method

.method private smartSearch_Number(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v8, 0x22

    const/4 v9, 0x0

    .line 1924
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1926
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z

    if-nez v0, :cond_e

    move-object v0, v6

    .line 2015
    :goto_d
    return-object v0

    .line 1931
    :cond_e
    const-string v0, "content://com.android.contacts/data/phones/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1933
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "%"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 1937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1938
    const-string v2, "data1"

    .line 1940
    const-string v3, "replace("

    .line 1942
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1943
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1944
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1945
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v0, v9, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1947
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1948
    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1949
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1950
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1951
    const/16 v7, 0x29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1952
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1953
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v0, v9, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1955
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1956
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1957
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1958
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1959
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1961
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1962
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v0, v9, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1964
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1965
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1966
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1967
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1968
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1970
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1971
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v0, v9, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1973
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1974
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1975
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1976
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1977
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1979
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1980
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v0, v9, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1982
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1983
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1984
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1985
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1986
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1988
    const-string v2, " LIKE ?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1990
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1995
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_RESULT:[Ljava/lang/String;

    const-string v5, "display_name"

    const-string v7, " COLLATE LOCALIZED ASC"

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1998
    if-nez v7, :cond_ea

    .line 1999
    iput-boolean v9, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z

    move-object v0, v6

    .line 2000
    goto/16 :goto_d

    .line 2002
    :cond_ea
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_124

    .line 2005
    :cond_f0
    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    const-string v1, "photo_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v1, "display_name"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "data1"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;ILjava/lang/String;Ljava/lang/String;I)V

    .line 2009
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2010
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_f0

    .line 2014
    :goto_11e
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    .line 2015
    goto/16 :goto_d

    .line 2012
    :cond_124
    iput-boolean v9, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z

    goto :goto_11e
.end method

.method private smartSearch_Number_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;
    .registers 14
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/16 v8, 0x22

    const/4 v9, 0x0

    .line 1621
    .line 1623
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_b

    .line 1716
    :cond_a
    :goto_a
    return-object v6

    .line 1626
    :cond_b
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z

    if-eqz v0, :cond_a

    .line 1631
    const-string v0, "content://com.android.contacts/data/phones/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1633
    new-array v4, v10, [Ljava/lang/String;

    const-string v0, "%"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 1642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1643
    const-string v2, "data1"

    .line 1645
    const-string v3, "replace("

    .line 1647
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1648
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1649
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1650
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v0, v9, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1652
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1653
    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1654
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1655
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1656
    const/16 v7, 0x29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1657
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1658
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v0, v9, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1660
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1661
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1662
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1663
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1664
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1666
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1667
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v0, v9, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1669
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1670
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1671
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1672
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1673
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1675
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1676
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v0, v9, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1678
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1679
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1680
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1681
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1682
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1684
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1685
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v0, v9, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1687
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1688
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1689
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1690
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1691
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1693
    const-string v2, " LIKE ?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1695
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1697
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_RESULT:[Ljava/lang/String;

    const-string v5, "display_name"

    const-string v7, " COLLATE LOCALIZED ASC"

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1700
    if-nez v7, :cond_e9

    .line 1701
    iput-boolean v9, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z

    goto/16 :goto_a

    .line 1704
    :cond_e9
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_112

    .line 1705
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    .line 1706
    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x3

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;ILjava/lang/String;Ljava/lang/String;I)V

    .line 1713
    :goto_10c
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v6, v0

    .line 1716
    goto/16 :goto_a

    .line 1710
    :cond_112
    iput-boolean v9, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z

    move-object v0, v6

    goto :goto_10c
.end method

.method private smartSearch_SpeedDial(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 1827
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1828
    const-string v0, "content://com.android.contacts/contacts/speeddial"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1831
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x32

    if-lt v0, v2, :cond_1d

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x39

    if-le v0, v2, :cond_1f

    :cond_1d
    move-object v0, v6

    .line 1848
    :goto_1e
    return-object v0

    .line 1834
    :cond_1f
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_SPEEDDIAL:[Ljava/lang/String;

    const-string v3, "key_number="

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1837
    if-eqz v7, :cond_6d

    .line 1838
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 1839
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    .line 1840
    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    const-string v1, "photo_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v1, "display_name"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "number"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;ILjava/lang/String;Ljava/lang/String;I)V

    .line 1844
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1846
    :cond_6a
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6d
    move-object v0, v6

    .line 1848
    goto :goto_1e
.end method

.method private smartSearch_SpeedDial_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 1520
    .line 1521
    const-string v0, "content://com.android.contacts/contacts/speeddial"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1524
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_d

    .line 1551
    :cond_c
    :goto_c
    return-object v4

    .line 1527
    :cond_d
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x32

    if-lt v0, v2, :cond_c

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x39

    if-gt v0, v2, :cond_c

    .line 1533
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_SPEEDDIAL:[Ljava/lang/String;

    const-string v3, "key_number="

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1536
    if-eqz v6, :cond_6c

    .line 1537
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 1538
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    .line 1539
    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    const-string v1, "photo_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v1, "display_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "number"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;ILjava/lang/String;Ljava/lang/String;I)V

    .line 1546
    :goto_65
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_68
    move-object v4, v0

    .line 1551
    goto :goto_c

    :cond_6a
    move-object v0, v4

    goto :goto_65

    :cond_6c
    move-object v0, v4

    goto :goto_68
.end method

.method private static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "phoneNumber"

    .prologue
    .line 1434
    if-nez p0, :cond_4

    .line 1435
    const/4 v4, 0x0

    .line 1446
    :goto_3
    return-object v4

    .line 1437
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1438
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1440
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    if-ge v1, v2, :cond_20

    .line 1441
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1442
    .local v0, c:C
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1443
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1440
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1446
    .end local v0           #c:C
    :cond_20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3
.end method

.method private subDialogBuilder(I)V
    .registers 8
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2378
    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listResult:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 2379
    const-string v1, "content://com.android.contacts/contacts/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2381
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PROJECTION_PHONE:[Ljava/lang/String;

    const-string v3, "mimetype"

    const-string v5, "=\'"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2384
    if-eqz v0, :cond_74

    .line 2385
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 2386
    sget-object v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->numberArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2388
    :cond_4d
    sget-object v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->numberArray:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItem;

    const-string v3, "data2"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "data1"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItem;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2391
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_4d

    .line 2393
    :cond_71
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2396
    :cond_74
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2397
    new-instance v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItemAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f040055

    sget-object v4, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->numberArray:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v0, v3, v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItemAdapter;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 2399
    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listResult:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2400
    const v0, 0x7f0a0288

    new-instance v3, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2404
    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$7;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2414
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->subdialogResult:Landroid/app/AlertDialog;

    if-eqz v0, :cond_b6

    .line 2415
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->subdialogResult:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2416
    :cond_b6
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->subdialogResult:Landroid/app/AlertDialog;

    .line 2417
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->subdialogResult:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2418
    return-void
.end method

.method private updateDialString(Ljava/lang/String;)V
    .registers 10
    .parameter "newDigits"

    .prologue
    .line 3394
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getSelectionStart()I

    move-result v0

    .line 3395
    .local v0, anchor:I
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getSelectionEnd()I

    move-result v3

    .line 3397
    .local v3, point:I
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 3398
    .local v5, selectionStart:I
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 3400
    .local v4, selectionEnd:I
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 3401
    .local v1, digits:Landroid/text/Editable;
    const/4 v6, -0x1

    if-eq v5, v6, :cond_2e

    .line 3402
    if-ne v5, v4, :cond_23

    .line 3405
    invoke-interface {v1, v5, v5, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 3415
    :goto_22
    return-void

    .line 3407
    :cond_23
    invoke-interface {v1, v5, v4, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 3409
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setSelection(I)V

    goto :goto_22

    .line 3412
    :cond_2e
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v2

    .line 3413
    .local v2, len:I
    invoke-interface {v1, v2, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_22
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 8
    .parameter "input"

    .prologue
    const/4 v5, 0x1

    .line 391
    iget-boolean v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mFormatting:Z

    if-nez v4, :cond_12

    .line 392
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 394
    .local v3, temp:Ljava/lang/String;
    if-nez v3, :cond_13

    .line 395
    sget-object v4, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v5, "number string is null and returned"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    .end local v3           #temp:Ljava/lang/String;
    :cond_12
    :goto_12
    return-void

    .line 399
    .restart local v3       #temp:Ljava/lang/String;
    :cond_13
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 400
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 401
    .local v1, mTextSize:I
    iput-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->digitText:Ljava/lang/String;

    .line 403
    if-nez v1, :cond_33

    .line 404
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 405
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAddBtn:Landroid/widget/RelativeLayout;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 406
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setCursorVisible(Z)V

    goto :goto_12

    .line 409
    :cond_33
    if-le v1, v5, :cond_43

    const/4 v4, 0x5

    if-ge v1, v4, :cond_43

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 410
    const/4 v4, 0x2

    iput v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resultFlag:I

    .line 413
    :cond_43
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-static {v4, v3, v5}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 415
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->clear()V

    .line 423
    :cond_58
    :try_start_58
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_91

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_91

    .line 424
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 425
    .local v2, msg:Landroid/os/Message;
    const/16 v4, 0x11

    iput v4, v2, Landroid/os/Message;->what:I

    .line 426
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 430
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getSelectionStart()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v5}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getSelectionEnd()I

    move-result v5

    if-ne v4, v5, :cond_8c

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getSelectionStart()I

    move-result v4

    if-le v1, v4, :cond_8c

    .line 432
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z

    .line 433
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z

    .line 436
    :cond_8c
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_91
    .catch Ljava/lang/NullPointerException; {:try_start_58 .. :try_end_91} :catch_96

    .line 442
    .end local v2           #msg:Landroid/os/Message;
    :cond_91
    :goto_91
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setFormattedDigits(Landroid/text/Editable;)V

    goto/16 :goto_12

    .line 438
    :catch_96
    move-exception v0

    .line 439
    .local v0, e:Ljava/lang/NullPointerException;
    sget-object v4, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v5, "NullPointerException in afterTextChanged()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 11
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 352
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mWasEmptyBeforeTextChange:Z

    .line 354
    iget-boolean v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mFormatting:Z

    if-nez v2, :cond_32

    .line 356
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 357
    .local v1, selStart:I
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 358
    .local v0, selEnd:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v2, v4, :cond_36

    if-ne p3, v4, :cond_36

    if-nez p4, :cond_36

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_36

    if-ne v1, v0, :cond_36

    .line 363
    iput-boolean v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDeletingHyphen:Z

    .line 364
    iput p2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHyphenStart:I

    .line 366
    add-int/lit8 v2, p2, 0x1

    if-ne v1, v2, :cond_33

    .line 367
    iput-boolean v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDeletingBackward:Z

    .line 375
    .end local v0           #selEnd:I
    .end local v1           #selStart:I
    :cond_32
    :goto_32
    return-void

    .line 369
    .restart local v0       #selEnd:I
    .restart local v1       #selStart:I
    :cond_33
    iput-boolean v5, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDeletingBackward:Z

    goto :goto_32

    .line 372
    :cond_36
    iput-boolean v5, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDeletingHyphen:Z

    goto :goto_32
.end method

.method public callVoicemail()V
    .registers 2

    .prologue
    .line 3064
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->newVoicemailIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    .line 3065
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 3067
    return-void
.end method

.method public clearDigits()V
    .registers 3

    .prologue
    .line 3565
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    if-eqz v0, :cond_b

    .line 3566
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3567
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onKeypad:Ljava/lang/String;

    .line 3568
    return-void
.end method

.method public configureScreenFromIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 741
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isLayoutReady()Z

    move-result v0

    if-nez v0, :cond_e

    .line 746
    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "Screen configuration is requested before onCreateView() is called. Ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :goto_d
    return-void

    .line 751
    :cond_e
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resolveIntent(Landroid/content/Intent;)Z

    goto :goto_d
.end method

.method public dialButtonPressed()V
    .registers 4

    .prologue
    .line 3173
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 3174
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->phoneIsCdma()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->phoneIsOffhook()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3178
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->newFlashIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    .line 3255
    :cond_19
    :goto_19
    return-void

    .line 3183
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 3186
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3196
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setSelection(I)V

    goto :goto_19

    .line 3208
    :cond_39
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3213
    if-eqz v0, :cond_86

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_86

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_86

    const-string v1, "persist.radio.otaspdial"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_86

    .line 3217
    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "The phone number is prohibited explicitly by a rule."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3218
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_7c

    .line 3219
    const v0, 0x7f0a01ff

    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;->newInstance(I)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object v0

    .line 3221
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "phone_prohibited_dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 3225
    :cond_7c
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    goto :goto_19

    .line 3228
    :cond_86
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->phoneIsOffhook()Z

    move-result v1

    if-nez v1, :cond_8c

    .line 3243
    :cond_8c
    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->newDialNumberIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3244
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v1, :cond_9f

    .line 3245
    const-string v1, "com.android.phone.CALL_ORIGIN"

    const-string v2, "com.android.contacts.activities.DialtactsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3248
    :cond_9f
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    .line 3249
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    goto/16 :goto_19
.end method

.method public onClick(Landroid/view/View;)V
    .registers 10
    .parameter

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x7

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2700
    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick >>>>>>>>>>>>>>>>>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2702
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d0155

    if-eq v0, v1, :cond_3f

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d0156

    if-eq v0, v1, :cond_3f

    sget-boolean v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->MannerModePressed:Z

    if-nez v0, :cond_3f

    .line 2703
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v0}, Lcom/android/phone/HapticFeedback;->vibrate()V

    .line 2705
    :cond_3f
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_172

    .line 2830
    :cond_46
    :goto_46
    return-void

    .line 2707
    :sswitch_47
    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->playTone(I)V

    .line 2708
    invoke-direct {p0, v7}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_46

    .line 2712
    :sswitch_4e
    invoke-virtual {p0, v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->playTone(I)V

    .line 2713
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_46

    .line 2717
    :sswitch_57
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->playTone(I)V

    .line 2718
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_46

    .line 2722
    :sswitch_61
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->playTone(I)V

    .line 2723
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_46

    .line 2727
    :sswitch_6b
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->playTone(I)V

    .line 2728
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_46

    .line 2732
    :sswitch_75
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->playTone(I)V

    .line 2733
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_46

    .line 2737
    :sswitch_7f
    invoke-virtual {p0, v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->playTone(I)V

    .line 2738
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_46

    .line 2742
    :sswitch_88
    invoke-virtual {p0, v7}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->playTone(I)V

    .line 2743
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_46

    .line 2747
    :sswitch_91
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->playTone(I)V

    .line 2748
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_46

    .line 2752
    :sswitch_9c
    invoke-virtual {p0, v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->playTone(I)V

    .line 2753
    invoke-direct {p0, v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_46

    .line 2757
    :sswitch_a3
    sget-boolean v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->MannerModePressed:Z

    if-nez v0, :cond_b1

    .line 2758
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->playTone(I)V

    .line 2759
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    .line 2761
    :cond_b1
    sput-boolean v5, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->MannerModePressed:Z

    goto :goto_46

    .line 2765
    :sswitch_b4
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->playTone(I)V

    .line 2766
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_46

    .line 2770
    :sswitch_bf
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z

    .line 2771
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z

    .line 2772
    const/16 v0, 0x43

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto/16 :goto_46

    .line 2777
    :sswitch_ca
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleDSACode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_eb

    .line 2778
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->dialButtonPressed()V

    goto/16 :goto_46

    .line 2780
    :cond_eb
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    goto/16 :goto_46

    .line 2790
    :sswitch_f6
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->sendSMS()V

    goto/16 :goto_46

    .line 2794
    :sswitch_fb
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v0

    if-nez v0, :cond_106

    .line 2795
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setCursorVisible(Z)V

    .line 2797
    :cond_106
    iput v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resultFlag:I

    goto/16 :goto_46

    .line 2801
    :sswitch_10a
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;

    move-result-object v0

    .line 2802
    if-eqz v0, :cond_46

    .line 2803
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    goto/16 :goto_46

    .line 2808
    :sswitch_115
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->showAddToContact()V

    goto/16 :goto_46

    .line 2812
    :sswitch_11a
    const v0, 0x7f0d0163

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0d0164

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0d0165

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2819
    iput v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resultFlag:I

    .line 2820
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z

    .line 2821
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z

    .line 2822
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2823
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setSelection(I)V

    goto/16 :goto_46

    .line 2827
    :sswitch_16d
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->dailogBuildcreate()V

    goto/16 :goto_46

    .line 2705
    :sswitch_data_172
    .sparse-switch
        0x7f0d0124 -> :sswitch_b4
        0x7f0d012d -> :sswitch_47
        0x7f0d012e -> :sswitch_4e
        0x7f0d012f -> :sswitch_57
        0x7f0d0131 -> :sswitch_61
        0x7f0d0132 -> :sswitch_6b
        0x7f0d0133 -> :sswitch_75
        0x7f0d0135 -> :sswitch_7f
        0x7f0d0136 -> :sswitch_88
        0x7f0d0137 -> :sswitch_91
        0x7f0d0139 -> :sswitch_9c
        0x7f0d013a -> :sswitch_a3
        0x7f0d013d -> :sswitch_ca
        0x7f0d013f -> :sswitch_f6
        0x7f0d0140 -> :sswitch_bf
        0x7f0d0155 -> :sswitch_fb
        0x7f0d0156 -> :sswitch_10a
        0x7f0d015b -> :sswitch_11a
        0x7f0d0166 -> :sswitch_16d
        0x7f0d0169 -> :sswitch_115
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    .line 508
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 510
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resetAllLayout(Landroid/view/View;)V

    .line 511
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setEditTextView(Landroid/view/View;)V

    .line 513
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onKeypad:Ljava/lang/String;

    .line 514
    sget-boolean v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->DBG:Z

    if-eqz v0, :cond_37

    .line 515
    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged->>onKeypad == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onKeypad:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_37
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onKeypad:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_55

    .line 518
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resultFlag:I

    if-nez v0, :cond_56

    .line 519
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 520
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onKeypad:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setInputNumber(Ljava/lang/String;)V

    .line 526
    :cond_55
    :goto_55
    return-void

    .line 522
    :cond_56
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onKeypad:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setSelection(I)V

    goto :goto_55
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "state"

    .prologue
    const/4 v5, 0x1

    .line 448
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 449
    sget-object v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "<<<<<<<<<<<<<<<<<<onCreate>>>>>>>>>>>>>>>>>"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->argsName:Ljava/util/ArrayList;

    .line 453
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->digitText:Ljava/lang/String;

    .line 454
    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resultFlag:I

    .line 456
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1, v5}, Landroid/os/ConditionVariable;-><init>(Z)V

    sput-object v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->condition:Landroid/os/ConditionVariable;

    .line 458
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;

    .line 461
    :try_start_2a
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/HapticFeedback;->init(Landroid/content/Context;Z)V
    :try_end_3e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2a .. :try_end_3e} :catch_4f

    .line 467
    :goto_3e
    invoke-virtual {p0, v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setHasOptionsMenu(Z)V

    .line 469
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    .line 471
    return-void

    .line 463
    :catch_4f
    move-exception v0

    .line 464
    .local v0, nfe:Landroid/content/res/Resources$NotFoundException;
    sget-object v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "Vibrate control bool missing."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3e
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 964
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 965
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mShowOptionsMenu:Z

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isLayoutReady()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 967
    const v0, 0x7f100005

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 969
    :cond_21
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    .line 475
    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v3, "<<<<<<<<<<<<<<<<<<onCreateView>>>>>>>>>>>>>>>>>"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const v2, 0x7f04005a

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    .line 479
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 481
    .local v0, r:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setDefaultLayout()V

    .line 485
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setInputType(I)V

    .line 486
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->forceHideSoftInput(Z)V

    .line 487
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setCursorColor(I)V

    .line 489
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 501
    .local v1, salesCode:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->configureScreenFromIntent(Landroid/content/Intent;)V

    .line 503
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    return-object v2
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2687
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 2695
    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 2689
    :pswitch_9
    const/16 v0, 0x42

    if-ne p2, v0, :cond_7

    .line 2690
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->dialButtonPressed()V

    .line 2691
    const/4 v0, 0x1

    goto :goto_8

    .line 2687
    :pswitch_data_12
    .packed-switch 0x7f0d0155
        :pswitch_9
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2846
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    .line 2847
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 2849
    sput-boolean v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->MannerModePressed:Z

    .line 2851
    sparse-switch v2, :sswitch_data_fa

    move v0, v1

    .line 2930
    :goto_11
    return v0

    .line 2853
    :sswitch_12
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->clearDialString()V

    .line 2857
    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedCtNumberBefore:Z

    .line 2858
    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchedLogBefore:Z

    .line 2859
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_11

    .line 2863
    :sswitch_1f
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 2864
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->callVoicemail()V

    goto :goto_11

    :cond_29
    move v0, v1

    .line 2867
    goto :goto_11

    .line 2870
    :sswitch_2b
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v2

    if-nez v2, :cond_3d

    .line 2871
    const-wide/16 v2, 0x2

    invoke-direct {p0, v2, v3, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getSpeedDialNumber(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->placeCall_result(Ljava/lang/String;)V

    goto :goto_11

    :cond_3d
    move v0, v1

    .line 2873
    goto :goto_11

    .line 2875
    :sswitch_3f
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v2

    if-nez v2, :cond_51

    .line 2876
    const-wide/16 v2, 0x3

    invoke-direct {p0, v2, v3, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getSpeedDialNumber(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->placeCall_result(Ljava/lang/String;)V

    goto :goto_11

    :cond_51
    move v0, v1

    .line 2878
    goto :goto_11

    .line 2880
    :sswitch_53
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v2

    if-nez v2, :cond_65

    .line 2881
    const-wide/16 v2, 0x4

    invoke-direct {p0, v2, v3, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getSpeedDialNumber(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->placeCall_result(Ljava/lang/String;)V

    goto :goto_11

    :cond_65
    move v0, v1

    .line 2883
    goto :goto_11

    .line 2885
    :sswitch_67
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v2

    if-nez v2, :cond_79

    .line 2886
    const-wide/16 v2, 0x5

    invoke-direct {p0, v2, v3, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getSpeedDialNumber(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->placeCall_result(Ljava/lang/String;)V

    goto :goto_11

    :cond_79
    move v0, v1

    .line 2888
    goto :goto_11

    .line 2890
    :sswitch_7b
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v2

    if-nez v2, :cond_8d

    .line 2891
    const-wide/16 v2, 0x6

    invoke-direct {p0, v2, v3, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getSpeedDialNumber(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->placeCall_result(Ljava/lang/String;)V

    goto :goto_11

    :cond_8d
    move v0, v1

    .line 2893
    goto :goto_11

    .line 2895
    :sswitch_8f
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v2

    if-nez v2, :cond_a2

    .line 2896
    const-wide/16 v2, 0x7

    invoke-direct {p0, v2, v3, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getSpeedDialNumber(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->placeCall_result(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_a2
    move v0, v1

    .line 2898
    goto/16 :goto_11

    .line 2900
    :sswitch_a5
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v2

    if-nez v2, :cond_b8

    .line 2901
    const-wide/16 v2, 0x8

    invoke-direct {p0, v2, v3, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getSpeedDialNumber(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->placeCall_result(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_b8
    move v0, v1

    .line 2903
    goto/16 :goto_11

    .line 2905
    :sswitch_bb
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v2

    if-nez v2, :cond_ce

    .line 2906
    const-wide/16 v2, 0x9

    invoke-direct {p0, v2, v3, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getSpeedDialNumber(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->placeCall_result(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_ce
    move v0, v1

    .line 2908
    goto/16 :goto_11

    .line 2910
    :sswitch_d1
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v2

    if-nez v2, :cond_de

    .line 2911
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mannerModeSet()V

    .line 2912
    sput-boolean v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->MannerModePressed:Z

    :cond_de
    move v0, v1

    .line 2914
    goto/16 :goto_11

    .line 2916
    :sswitch_e1
    const/16 v1, 0x51

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V

    goto/16 :goto_11

    .line 2920
    :sswitch_e8
    const-string v1, ","

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->updateDialString(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 2924
    :sswitch_ef
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resultFlag:I

    .line 2925
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setCursorVisible(Z)V

    move v0, v1

    .line 2926
    goto/16 :goto_11

    .line 2851
    :sswitch_data_fa
    .sparse-switch
        0x7f0d0124 -> :sswitch_e8
        0x7f0d012d -> :sswitch_1f
        0x7f0d012e -> :sswitch_2b
        0x7f0d012f -> :sswitch_3f
        0x7f0d0131 -> :sswitch_53
        0x7f0d0132 -> :sswitch_67
        0x7f0d0133 -> :sswitch_7b
        0x7f0d0135 -> :sswitch_8f
        0x7f0d0136 -> :sswitch_a5
        0x7f0d0137 -> :sswitch_bb
        0x7f0d0139 -> :sswitch_e1
        0x7f0d013a -> :sswitch_d1
        0x7f0d0140 -> :sswitch_12
        0x7f0d0155 -> :sswitch_ef
    .end sparse-switch
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 3382
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 3353
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_3e

    .line 3376
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 3358
    :pswitch_a
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3359
    const-string v2, "additional"

    const-string v3, "phone-need-call"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3360
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 3363
    :pswitch_1e
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->showAddToContact()V

    goto :goto_9

    .line 3366
    :pswitch_22
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.contacts.activities.action.SPEED_DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3367
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 3370
    :pswitch_31
    const-string v1, ","

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->updateDialString(Ljava/lang/String;)V

    goto :goto_9

    .line 3373
    :pswitch_37
    const-string v1, ";"

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->updateDialString(Ljava/lang/String;)V

    goto :goto_9

    .line 3353
    nop

    :pswitch_data_3e
    .packed-switch 0x7f0d025d
        :pswitch_a
        :pswitch_1e
        :pswitch_22
        :pswitch_31
        :pswitch_37
    .end packed-switch
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 944
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 945
    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "<<<<<<<<<<<<<<<<<<<onPause>>>>>>>>>>>>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 948
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 950
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 951
    :try_start_1b
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_27

    .line 952
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 953
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 955
    :cond_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_30

    .line 958
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    .line 959
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resultFlag:I

    .line 960
    return-void

    .line 955
    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 3
    .parameter "menu"

    .prologue
    .line 974
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mShowOptionsMenu:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isLayoutReady()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 976
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setupMenuItems(Landroid/view/Menu;)V

    .line 978
    :cond_1b
    return-void
.end method

.method public onResume()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 873
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 874
    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v3, "<<<<<<<<<<<<<<<<<<<onResume>>>>>>>>>>>>>>>>>>>>>"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->queryLastOutgoingCall()V

    .line 882
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialButtonReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialButtonFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 884
    iput v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I

    .line 885
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_flag:Z

    .line 887
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resetAllLayout(Landroid/view/View;)V

    .line 888
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setEditTextView(Landroid/view/View;)V

    .line 890
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onKeypad:Ljava/lang/String;

    .line 891
    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume->>onKeypad == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onKeypad:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onKeypad:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6c

    .line 894
    iget v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resultFlag:I

    if-nez v2, :cond_bf

    .line 895
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    .line 896
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onKeypad:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setInputNumber(Ljava/lang/String;)V

    .line 905
    :cond_6c
    :goto_6c
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dtmf_tone"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_d2

    :goto_7c
    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDTMFToneEnabled:Z

    .line 909
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v0}, Lcom/android/phone/HapticFeedback;->checkSystemSetting()V

    .line 913
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 914
    :try_start_86
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_88
    .catchall {:try_start_86 .. :try_end_88} :catchall_f1

    if-nez v0, :cond_94

    .line 919
    :try_start_8a
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v2, 0x1

    const/16 v3, 0x50

    invoke-direct {v0, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_94
    .catchall {:try_start_8a .. :try_end_94} :catchall_f1
    .catch Ljava/lang/RuntimeException; {:try_start_8a .. :try_end_94} :catch_d4

    .line 926
    :cond_94
    :goto_94
    :try_start_94
    monitor-exit v1
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_f1

    .line 928
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 929
    instance-of v1, v0, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v1, :cond_a4

    .line 932
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->fillDigitsIfNecessary(Landroid/content/Intent;)Z

    .line 935
    :cond_a4
    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->sCachedLocale:Ljava/util/Locale;

    if-eqz v0, :cond_b0

    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->sCachedLocale:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    if-eq v0, v1, :cond_be

    .line 936
    :cond_b0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->sCachedLocale:Ljava/util/Locale;

    .line 937
    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->sCachedLocale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v0

    sput v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->sFormatType:I

    .line 940
    :cond_be
    return-void

    .line 898
    :cond_bf
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onKeypad:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    .line 899
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setSelection(I)V

    goto :goto_6c

    :cond_d2
    move v0, v1

    .line 905
    goto :goto_7c

    .line 921
    :catch_d4
    move-exception v0

    .line 922
    :try_start_d5
    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught while creating local tone generator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_94

    .line 926
    :catchall_f1
    move-exception v0

    monitor-exit v1
    :try_end_f3
    .catchall {:try_start_d5 .. :try_end_f3} :catchall_f1

    throw v0
.end method

.method public onStart()V
    .registers 4

    .prologue
    .line 848
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 849
    sget-object v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "<<<<<<<<<<<<<<<<<<<onStart>>>>>>>>>>>>>>>>>>>>>"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :try_start_a
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "DialerHandlerThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->thread:Landroid/os/HandlerThread;

    .line 854
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 855
    new-instance v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;
    :try_end_25
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_a .. :try_end_25} :catch_26

    .line 860
    :goto_25
    return-void

    .line 856
    :catch_26
    move-exception v0

    .line 857
    .local v0, e:Ljava/lang/IllegalThreadStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalThreadStateException;->printStackTrace()V

    goto :goto_25
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 864
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 865
    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "<<<<<<<<<<<<<<<<<<<onStop>>>>>>>>>>>>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mReceiveHandler:Landroid/os/Handler;

    const/16 v1, 0x111

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 868
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 869
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;

    .line 870
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .parameter "input"
    .parameter "start"
    .parameter "before"
    .parameter "changeCount"

    .prologue
    .line 378
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mWasEmptyBeforeTextChange:Z

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eq v1, v2, :cond_11

    .line 379
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 380
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_11

    .line 381
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 387
    .end local v0           #activity:Landroid/app/Activity;
    :cond_11
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 3
    .parameter "visible"

    .prologue
    .line 3518
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mShowOptionsMenu:Z

    .line 3524
    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 3525
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->queryLastOutgoingCall()V

    .line 3526
    :cond_8
    return-void
.end method

.method playTone(I)V
    .registers 6
    .parameter

    .prologue
    .line 3268
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDTMFToneEnabled:Z

    if-nez v0, :cond_5

    .line 3300
    :cond_4
    :goto_4
    return-void

    .line 3277
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3279
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 3280
    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    .line 3285
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3286
    :try_start_1d
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v2, :cond_3e

    .line 3287
    sget-object v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playTone: mToneGenerator == null, tone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3288
    monitor-exit v1

    goto :goto_4

    .line 3299
    :catchall_3b
    move-exception v0

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_1d .. :try_end_3d} :catchall_3b

    throw v0

    .line 3292
    :cond_3e
    :try_start_3e
    const-string v2, "situation=0;device=0"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 3294
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v2, v0}, Landroid/media/ToneGenerator;->setVolume(F)V

    .line 3298
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v2, 0x96

    invoke-virtual {v0, p1, v2}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 3299
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_3e .. :try_end_55} :catchall_3b

    goto :goto_4
.end method

.method public resetAllLayout(Landroid/view/View;)V
    .registers 6
    .parameter "fragmentView"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 540
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    if-eqz v1, :cond_c

    .line 541
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 551
    :cond_c
    const v1, 0x7f0d0156

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 553
    .local v0, overflowMenuButton:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getOrientation()I

    move-result v1

    if-nez v1, :cond_64

    .line 554
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 555
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialpadLand:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 556
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialpadAdditionalButtonsLand:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 557
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 558
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchViewLand:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 559
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setupKeypad(Landroid/view/View;)V

    .line 560
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setSearchView(Landroid/view/View;)V

    .line 561
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialpadAdditionalButtons:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setupAddtionalButtons(Landroid/view/View;)V

    .line 562
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 577
    :goto_50
    if-eqz v0, :cond_63

    .line 578
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-eqz v1, :cond_90

    .line 579
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 584
    :cond_63
    :goto_63
    return-void

    .line 565
    :cond_64
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 566
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialpadLand:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 567
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialpadAdditionalButtonsLand:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 568
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 569
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchViewLand:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 570
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialpadLand:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setupKeypad(Landroid/view/View;)V

    .line 571
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchViewLand:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setSearchView(Landroid/view/View;)V

    .line 572
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialpadAdditionalButtonsLand:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setupAddtionalButtons(Landroid/view/View;)V

    .line 573
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_50

    .line 581
    :cond_90
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_63
.end method

.method public setDefaultLayout()V
    .registers 3

    .prologue
    .line 529
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0d0155

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    .line 531
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0d014f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    .line 532
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0d0158

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialpadLand:Landroid/view/View;

    .line 533
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0d0150

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialpadAdditionalButtons:Landroid/view/View;

    .line 534
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0d0151

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDialpadAdditionalButtonsLand:Landroid/view/View;

    .line 535
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0d0159

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchView:Landroid/view/View;

    .line 536
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0d016c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchViewLand:Landroid/view/View;

    .line 537
    return-void
.end method

.method public setListener(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$Listener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 3513
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mListener:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$Listener;

    .line 3514
    return-void
.end method
