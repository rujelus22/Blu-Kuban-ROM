.class public Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
.super Landroid/app/Activity;
.source "CallDetailActivity.java"

# interfaces
.implements Lcom/android/contacts/ProximitySensorAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;,
        Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;,
        Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;
    }
.end annotation


# static fields
.field static final CALL_LOG_PROJECTION:[Ljava/lang/String;

.field static final PHONES_PROJECTION:[Ljava/lang/String;

.field public static mCallDetailIsRunning:Z

.field private static mContext:Landroid/content/Context;


# instance fields
.field private bConfigurationChanged:Z

.field ids:[J

.field public keyPressed:Z

.field private mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

.field private mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

.field private mCanPlaceCallsTo:Z

.field private mCnapName:Ljava/lang/String;

.field private mContactBackgroundView:Landroid/widget/ImageView;

.field private mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field private mDefaultCountryIso:Ljava/lang/String;

.field private mHasEditNumberBeforeCall:Z

.field private mHeaderOverlayView:Landroid/view/View;

.field private mHeaderTextView:Landroid/widget/TextView;

.field mInflater:Landroid/view/LayoutInflater;

.field private mIsVoicemailNumber:Z

.field private mMainActionPushLayerView:Landroid/widget/ImageButton;

.field private mName:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

.field private mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

.field private final mPrimaryActionListener:Landroid/view/View$OnClickListener;

.field private final mProximitySensorListener:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;

.field private mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

.field mResources:Landroid/content/res/Resources;

.field private mResumeOnPortrait:Z

.field private final mSecondaryActionListener:Landroid/view/View$OnClickListener;

.field mServiceType:I

.field private final mTertiaryActionListener:Landroid/view/View$OnClickListener;

.field private final mVideoLetterActionListener:Landroid/view/View$OnClickListener;

.field private mVoiceMailNumber:Ljava/lang/String;

.field private nameText:Ljava/lang/String;

.field private uri:Landroid/net/Uri;

.field private uris:[Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 86
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    .line 140
    sput-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetailIsRunning:Z

    .line 209
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "duration"

    aput-object v1, v0, v5

    const-string v1, "number"

    aput-object v1, v0, v6

    const-string v1, "type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "countryiso"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "geocoded_location"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "logtype"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "cnap_name"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "cdnip_number"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "service_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 233
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    const-string v1, "label"

    aput-object v1, v0, v6

    const-string v1, "number"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "normalized_number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "photo_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "lookup"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 120
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    .line 121
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mName:Ljava/lang/String;

    .line 123
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResumeOnPortrait:Z

    .line 125
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCnapName:Ljava/lang/String;

    .line 130
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bConfigurationChanged:Z

    .line 141
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCanPlaceCallsTo:Z

    .line 142
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mIsVoicemailNumber:Z

    .line 145
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mProximitySensorListener:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;

    .line 149
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->nameText:Ljava/lang/String;

    .line 156
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->keyPressed:Z

    .line 252
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    .line 262
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$2;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    .line 272
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$3;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mTertiaryActionListener:Landroid/view/View$OnClickListener;

    .line 279
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$4;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mVideoLetterActionListener:Landroid/view/View$OnClickListener;

    .line 881
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Landroid/net/Uri;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getPhoneCallDetailsForUri(Landroid/net/Uri;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mHeaderOverlayView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->configureCallButton(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;)V

    return-void
.end method

.method static synthetic access$1402(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mHasEditNumberBeforeCall:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Landroid/net/Uri;J)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->loadContactPhotos(Landroid/net/Uri;J)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->configureActionBar(Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;I)V

    return-void
.end method

.method static synthetic access$202(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bConfigurationChanged:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCanPlaceCallsTo:Z

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCanPlaceCallsTo:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mIsVoicemailNumber:Z

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mIsVoicemailNumber:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResumeOnPortrait:Z

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMainActionPushLayerView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private configureActionBar(Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;I)V
    .registers 12
    .parameter "detailForActionbar"
    .parameter "listLength"

    .prologue
    .line 1096
    const-string v6, "CallDetail"

    const-string v7, "configureActionBar"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1098
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_7f

    .line 1099
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1100
    .local v4, mName:Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1101
    .local v5, mSubTitle:Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    .line 1102
    .local v3, isEmptyName:Z
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    iget-object v7, p1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    iget-object v8, p1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1105
    .local v1, displayNumber:Ljava/lang/CharSequence;
    const/16 v6, 0xc

    const/16 v7, 0xe

    invoke-virtual {v0, v6, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 1109
    iget-object v6, p1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_86

    .line 1110
    iget-object v6, p1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    check-cast v6, Ljava/lang/String;

    check-cast v6, Ljava/lang/String;

    iget-object v7, p1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_80

    .line 1111
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1116
    :goto_44
    const/4 v3, 0x0

    .line 1122
    :goto_45
    const/4 v6, 0x1

    if-le p2, v6, :cond_59

    .line 1123
    const/16 v6, 0x28

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1124
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1125
    const/16 v6, 0x29

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1128
    :cond_59
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1130
    if-eqz v3, :cond_8a

    .line 1131
    iget-object v6, p1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    if-nez v6, :cond_7f

    .line 1132
    iget-object v6, p1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    .line 1133
    .local v2, isEmergencyNumber:Z
    if-eqz v2, :cond_7f

    .line 1134
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0a02b6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1135
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1192
    .end local v1           #displayNumber:Ljava/lang/CharSequence;
    .end local v2           #isEmergencyNumber:Z
    .end local v3           #isEmptyName:Z
    .end local v4           #mName:Ljava/lang/StringBuilder;
    .end local v5           #mSubTitle:Ljava/lang/StringBuilder;
    :cond_7f
    :goto_7f
    return-void

    .line 1114
    .restart local v1       #displayNumber:Ljava/lang/CharSequence;
    .restart local v3       #isEmptyName:Z
    .restart local v4       #mName:Ljava/lang/StringBuilder;
    .restart local v5       #mSubTitle:Ljava/lang/StringBuilder;
    :cond_80
    iget-object v6, p1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_44

    .line 1119
    :cond_86
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_45

    .line 1140
    :cond_8a
    iget-object v6, p1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mVoiceMailNumber:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a1

    .line 1141
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0a007e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_7f

    .line 1143
    :cond_a1
    iget-object v6, p1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v7, "-1"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ba

    .line 1144
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0a007f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_7f

    .line 1147
    :cond_ba
    iget-object v6, p1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    check-cast v6, Ljava/lang/String;

    check-cast v6, Ljava/lang/String;

    iget-object v7, p1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7f

    .line 1148
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1149
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1151
    iget v6, p1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberType:I

    if-nez v6, :cond_df

    .line 1152
    iget-object v6, p1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1155
    :goto_db
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_7f

    .line 1154
    :cond_df
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    iget v7, p1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberType:I

    invoke-static {v7}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_db
.end method

.method private configureCallButton(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;)V
    .registers 13
    .parameter "entry"

    .prologue
    const/16 v10, 0x8

    .line 927
    const v8, 0x7f0d0032

    invoke-virtual {p0, v8}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 929
    .local v1, convertView:Landroid/view/View;
    if-nez p1, :cond_32

    .line 930
    const v8, 0x7f0d0031

    invoke-virtual {p0, v8}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 931
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_31

    .line 932
    const v8, 0x7f0d0030

    invoke-virtual {p0, v8}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 933
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mHeaderOverlayView:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 976
    :cond_31
    :goto_31
    return-void

    .line 939
    :cond_32
    const v8, 0x7f0d0033

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 940
    .local v0, call_button:Landroid/widget/Button;
    const v8, 0x7f0d0035

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 941
    .local v3, vcall_button:Landroid/widget/Button;
    const v8, 0x7f0d0034

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 942
    .local v2, sms_button:Landroid/widget/Button;
    const v8, 0x7f0d0039

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 943
    .local v4, video_letter_button:Landroid/widget/Button;
    const v8, 0x7f0d0038

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 953
    .local v5, video_letter_button_layout:Landroid/widget/LinearLayout;
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 954
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 957
    const v8, 0x7f0d0036

    invoke-virtual {p0, v8}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 958
    .local v7, viewVideoCall:Landroid/widget/LinearLayout;
    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 960
    iget-boolean v8, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mIsVoicemailNumber:Z

    if-eqz v8, :cond_88

    .line 961
    const v8, 0x7f0d0037

    invoke-virtual {p0, v8}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 962
    .local v6, viewSmsBtn:Landroid/widget/LinearLayout;
    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 974
    .end local v6           #viewSmsBtn:Landroid/widget/LinearLayout;
    :goto_83
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_31

    .line 964
    :cond_88
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mTertiaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 965
    invoke-virtual {v2, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_83
.end method

.method private getCallLogEntryUris()[Landroid/net/Uri;
    .registers 6

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->uri:Landroid/net/Uri;

    .line 361
    const-string v1, "CallDetail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCallLogEntryUris, uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_CALL_LOG_CONTACT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->nameText:Ljava/lang/String;

    .line 365
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->uri:Landroid/net/Uri;

    if-eqz v1, :cond_3d

    .line 367
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->uri:Landroid/net/Uri;

    aput-object v3, v1, v2

    .line 374
    :goto_3c
    return-object v1

    .line 369
    :cond_3d
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_CALL_LOG_IDS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->ids:[J

    .line 370
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->ids:[J

    array-length v1, v1

    new-array v1, v1, [Landroid/net/Uri;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->uris:[Landroid/net/Uri;

    .line 371
    const/4 v0, 0x0

    .local v0, index:I
    :goto_51
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->ids:[J

    array-length v1, v1

    if-ge v0, v1, :cond_67

    .line 372
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->uris:[Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->ids:[J

    aget-wide v3, v3, v0

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v0

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 374
    :cond_67
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->uris:[Landroid/net/Uri;

    goto :goto_3c
.end method

.method private getPhoneCallDetailsForUri(Landroid/net/Uri;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .registers 38
    .parameter "callUri"

    .prologue
    .line 753
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 754
    .local v2, resolver:Landroid/content/ContentResolver;
    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 756
    .local v24, callCursor:Landroid/database/Cursor;
    if-eqz v24, :cond_17

    :try_start_11
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_39

    .line 757
    :cond_17
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot find content: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_32
    .catchall {:try_start_11 .. :try_end_32} :catchall_32

    .line 864
    :catchall_32
    move-exception v4

    if-eqz v24, :cond_38

    .line 865
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    :cond_38
    throw v4

    .line 761
    :cond_39
    const/4 v4, 0x0

    :try_start_3a
    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 762
    .local v27, id:I
    const/4 v4, 0x3

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 763
    .local v31, number:Ljava/lang/String;
    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 764
    .local v11, date:J
    const/4 v4, 0x2

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 765
    .local v13, duration:J
    const/4 v4, 0x4

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 766
    .local v25, callType:I
    const/4 v4, 0x5

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 767
    .local v8, countryIso:Ljava/lang/String;
    const/4 v4, 0x6

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 768
    .local v9, geocode:Ljava/lang/String;
    const/4 v4, 0x7

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 772
    .local v15, logType:I
    const-string v4, "cdnip_number"

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 773
    .local v28, idxCDNIPNumber:I
    const-string v4, "service_type"

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 774
    .local v30, idxServiceType:I
    const-string v4, "cnap_name"

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 776
    .local v29, idxCNAPName:I
    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mServiceType:I

    .line 777
    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCnapName:Ljava/lang/String;

    .line 778
    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 781
    .local v23, cdnipNumber:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b3

    .line 782
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDefaultCountryIso:Ljava/lang/String;

    .line 788
    :cond_b3
    const-string v16, ""

    .line 789
    .local v16, nameText:Ljava/lang/CharSequence;
    const/16 v17, 0x0

    .line 790
    .local v17, numberType:I
    const-string v18, ""

    .line 791
    .local v18, numberLabel:Ljava/lang/CharSequence;
    const/16 v20, 0x0

    .line 792
    .local v20, photoUri:Landroid/net/Uri;
    const/16 v19, 0x0

    .line 794
    .local v19, contactUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f5

    .line 795
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    const/4 v5, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v4, v0, v5}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 860
    .local v7, numberText:Ljava/lang/CharSequence;
    :goto_d4
    new-instance v4, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/4 v5, 0x1

    new-array v10, v5, [I

    const/4 v5, 0x0

    aput v25, v10, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mServiceType:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCnapName:Ljava/lang/String;

    move-object/from16 v22, v0

    move/from16 v5, v27

    move-object/from16 v6, v31

    invoke-direct/range {v4 .. v23}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_ef
    .catchall {:try_start_3a .. :try_end_ef} :catchall_32

    .line 864
    if-eqz v24, :cond_f4

    .line 865
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    :cond_f4
    return-object v4

    .line 798
    .end local v7           #numberText:Ljava/lang/CharSequence;
    :cond_f5
    const/4 v3, 0x0

    .line 824
    .local v3, phoneUri:Landroid/net/Uri;
    :try_start_f6
    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {v31 .. v31}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 828
    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_108
    .catchall {:try_start_f6 .. :try_end_108} :catchall_32

    move-result-object v34

    .line 829
    .local v34, phonesCursor:Landroid/database/Cursor;
    move-object/from16 v26, v31

    .line 831
    .local v26, candidateNumberText:Ljava/lang/String;
    if-eqz v34, :cond_16d

    :try_start_10d
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_16d

    .line 832
    const/4 v4, 0x1

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 834
    const/4 v4, 0x6

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 835
    .local v35, photoUriString:Ljava/lang/String;
    if-nez v35, :cond_168

    const/16 v20, 0x0

    .line 836
    :goto_125
    const/4 v4, 0x4

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    move-object/from16 v0, v34

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 840
    const/4 v4, 0x2

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 841
    const/4 v4, 0x3

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 842
    const/4 v4, 0x0

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 843
    .local v32, personId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v32, v4

    if-lez v4, :cond_15f

    .line 844
    const/4 v4, 0x7

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-wide/from16 v0, v32

    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_15e
    .catchall {:try_start_10d .. :try_end_15e} :catchall_174

    move-result-object v19

    .line 855
    .end local v32           #personId:J
    .end local v35           #photoUriString:Ljava/lang/String;
    :cond_15f
    :goto_15f
    if-eqz v34, :cond_164

    :try_start_161
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V
    :try_end_164
    .catchall {:try_start_161 .. :try_end_164} :catchall_32

    .line 856
    :cond_164
    move-object/from16 v7, v26

    .line 857
    .restart local v7       #numberText:Ljava/lang/CharSequence;
    goto/16 :goto_d4

    .line 835
    .end local v7           #numberText:Ljava/lang/CharSequence;
    .restart local v35       #photoUriString:Ljava/lang/String;
    :cond_168
    :try_start_168
    invoke-static/range {v35 .. v35}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    goto :goto_125

    .line 851
    .end local v35           #photoUriString:Ljava/lang/String;
    :cond_16d
    move-object/from16 v0, v31

    invoke-static {v0, v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_172
    .catchall {:try_start_168 .. :try_end_172} :catchall_174

    move-result-object v26

    goto :goto_15f

    .line 855
    :catchall_174
    move-exception v4

    if-eqz v34, :cond_17a

    :try_start_177
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    .line 856
    :cond_17a
    move-object/from16 v7, v26

    .restart local v7       #numberText:Ljava/lang/CharSequence;
    throw v4
    :try_end_17d
    .catchall {:try_start_177 .. :try_end_17d} :catchall_32
.end method

.method private getVoicemailNumber()Ljava/lang/String;
    .registers 3

    .prologue
    .line 876
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 878
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private loadContactPhotos(Landroid/net/Uri;J)V
    .registers 11
    .parameter "photoUri"
    .parameter "randomSeed"

    .prologue
    const/4 v3, 0x1

    .line 872
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContactBackgroundView:Landroid/widget/ImageView;

    move-object v2, p1

    move v4, v3

    move-wide v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZJ)V

    .line 873
    return-void
.end method

.method private onHomeSelected()V
    .registers 4

    .prologue
    .line 1196
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1198
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1202
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 1203
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->finish()V

    .line 1204
    return-void
.end method

.method private varargs updateData([Landroid/net/Uri;)V
    .registers 6
    .parameter "callUris"

    .prologue
    .line 748
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;->UPDATE_PHONE_CALL_DETAILS:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;[Landroid/net/Uri;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/contacts/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 749
    return-void
.end method


# virtual methods
.method public disableProximitySensor(Z)V
    .registers 3
    .parameter "waitForFarState"

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

    invoke-virtual {v0, p1}, Lcom/android/contacts/ProximitySensorManager;->disable(Z)V

    .line 1238
    return-void
.end method

.method public enableProximitySensor()V
    .registers 2

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

    invoke-virtual {v0}, Lcom/android/contacts/ProximitySensorManager;->enable()V

    .line 1233
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x1

    .line 333
    const-string v0, "CallDetail"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 336
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bConfigurationChanged:Z

    .line 338
    const v0, 0x7f040006

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->setContentView(I)V

    .line 340
    const v0, 0x7f0d0026

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContactBackgroundView:Landroid/widget/ImageView;

    .line 342
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_49

    .line 343
    const v0, 0x7f0d0029

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;

    .line 344
    const v0, 0x7f0d0028

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mHeaderOverlayView:Landroid/view/View;

    .line 345
    const v0, 0x7f0d002a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMainActionPushLayerView:Landroid/widget/ImageButton;

    .line 348
    :cond_49
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getCallLogEntryUris()[Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->updateData([Landroid/net/Uri;)V

    .line 349
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "icicle"

    .prologue
    .line 288
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 290
    const v0, 0x7f040006

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->setContentView(I)V

    .line 292
    sput-object p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    .line 293
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mVoiceMailNumber:Ljava/lang/String;

    .line 296
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 297
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    .line 299
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    .line 300
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getVoicemailNumber()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    .line 301
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;-><init>(Landroid/content/res/Resources;Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    .line 304
    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDefaultCountryIso:Ljava/lang/String;

    .line 305
    invoke-static {p0}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 306
    new-instance v0, Lcom/android/contacts/ProximitySensorManager;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mProximitySensorListener:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/ProximitySensorManager;-><init>(Landroid/content/Context;Lcom/android/contacts/ProximitySensorManager$Listener;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

    .line 307
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 981
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 982
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 1226
    const-string v0, "CallDetail"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1228
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 379
    packed-switch p1, :pswitch_data_2c

    .line 393
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    :goto_7
    return v2

    .line 382
    :pswitch_8
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 384
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-nez v2, :cond_3

    .line 385
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 387
    .local v0, callIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 388
    const/4 v2, 0x1

    goto :goto_7

    .line 379
    nop

    :pswitch_data_2c
    .packed-switch 0x5
        :pswitch_8
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1045
    .line 1046
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_7a

    .line 1091
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 1048
    :sswitch_d
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->onHomeSelected()V

    goto :goto_c

    .line 1053
    :sswitch_11
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getCallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_c

    .line 1057
    :sswitch_24
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    const-class v3, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1058
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->uri:Landroid/net/Uri;

    if-nez v2, :cond_3c

    .line 1059
    const-string v2, "EXTRA_CALL_LOG_IDS"

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->ids:[J

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 1063
    :goto_38
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_c

    .line 1061
    :cond_3c
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_38

    .line 1071
    :sswitch_42
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 1072
    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->sendContactInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 1074
    :cond_54
    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mName:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->sendContactInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 1078
    :sswitch_5e
    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedBefore:Z

    if-eqz v1, :cond_6a

    .line 1079
    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockContact(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_c

    .line 1081
    :cond_6a
    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->showAddtoRejectListConfirmDlg(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_c

    .line 1085
    :sswitch_72
    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->unblockContact(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_c

    .line 1046
    :sswitch_data_7a
    .sparse-switch
        0x102002c -> :sswitch_d
        0x7f0d024a -> :sswitch_11
        0x7f0d024b -> :sswitch_24
        0x7f0d024c -> :sswitch_42
        0x7f0d024d -> :sswitch_42
        0x7f0d024e -> :sswitch_5e
        0x7f0d024f -> :sswitch_72
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1208
    const-string v0, "CallDetail"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetailIsRunning:Z

    .line 1211
    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->disableProximitySensor(Z)V

    .line 1212
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mProximitySensorListener:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;->clearPendingRequests()V

    .line 1213
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1214
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 8
    .parameter "menu"

    .prologue
    const v5, 0x7f0d024d

    const v4, 0x7f0d024c

    const v3, 0x7f0d024a

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 989
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mIsVoicemailNumber:Z

    if-nez v0, :cond_55

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCanPlaceCallsTo:Z

    if-eqz v0, :cond_55

    .line 990
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 994
    :goto_1a
    const v0, 0x7f0d024b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 996
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->nameText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 997
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mHasEditNumberBeforeCall:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 998
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1005
    :goto_3c
    const v0, 0x7f0d024e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1006
    const v0, 0x7f0d024f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1040
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 992
    :cond_55
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1a

    .line 1001
    :cond_5d
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mHasEditNumberBeforeCall:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1002
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3c
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 311
    const-string v0, "CallDetail"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 313
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetailIsRunning:Z

    .line 315
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bConfigurationChanged:Z

    if-nez v0, :cond_56

    .line 316
    invoke-static {}, Lcom/android/contacts/util/AsyncTaskExecutors;->createThreadPoolExecutor()Lcom/android/contacts/util/AsyncTaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    .line 317
    const v0, 0x7f0d0026

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContactBackgroundView:Landroid/widget/ImageView;

    .line 319
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_4f

    .line 320
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResumeOnPortrait:Z

    .line 321
    const v0, 0x7f0d0029

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;

    .line 322
    const v0, 0x7f0d0028

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mHeaderOverlayView:Landroid/view/View;

    .line 323
    const v0, 0x7f0d002a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMainActionPushLayerView:Landroid/widget/ImageButton;

    .line 326
    :cond_4f
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getCallLogEntryUris()[Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->updateData([Landroid/net/Uri;)V

    .line 329
    :cond_56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->keyPressed:Z

    .line 330
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 1218
    const-string v0, "CallDetail"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1221
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/contacts/util/AsyncTaskExecutor;->cancel(Z)Z

    .line 1222
    return-void
.end method
