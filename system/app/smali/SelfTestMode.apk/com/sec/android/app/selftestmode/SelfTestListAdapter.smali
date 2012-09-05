.class public Lcom/sec/android/app/selftestmode/SelfTestListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelfTestListAdapter.java"


# static fields
.field public static ACC_SENSOR_TEST:I

.field public static BLUETOOTH_TEST:I

.field public static CAMERA_TEST:I

.field public static DIMMING_TEST:I

.field public static LIGHT_SENSOR_TEST:I

.field public static MELODY_TEST:I

.field public static PROXIMITY_SENSOR_TEST:I

.field public static SPEAKER_TEST:I

.field public static TSP_DOT_TEST:I

.field public static TSP_GRID_TEST:I

.field public static UNKOWN_TEST:I

.field public static VIBRATION_TEST:I

.field public static VT_CAMERA_TEST:I


# instance fields
.field private mBluePosition:I

.field private mContext:Landroid/content/Context;

.field private mDefaultTestName:[Ljava/lang/String;

.field private mDefaultTestNum:I

.field private mSelfTestMode:Lcom/sec/android/app/selftestmode/SelfTestMode;

.field mTestItemTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 73
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->UNKOWN_TEST:I

    .line 75
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->MELODY_TEST:I

    .line 77
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->VIBRATION_TEST:I

    .line 79
    const/4 v0, 0x2

    sput v0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->SPEAKER_TEST:I

    .line 81
    const/4 v0, 0x3

    sput v0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->DIMMING_TEST:I

    .line 83
    const/4 v0, 0x4

    sput v0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->CAMERA_TEST:I

    .line 85
    const/4 v0, 0x5

    sput v0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->VT_CAMERA_TEST:I

    .line 87
    const/4 v0, 0x6

    sput v0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->BLUETOOTH_TEST:I

    .line 89
    const/4 v0, 0x7

    sput v0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->TSP_DOT_TEST:I

    .line 91
    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->TSP_GRID_TEST:I

    .line 93
    const/16 v0, 0x9

    sput v0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->ACC_SENSOR_TEST:I

    .line 95
    const/16 v0, 0xa

    sput v0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->PROXIMITY_SENSOR_TEST:I

    .line 97
    const/16 v0, 0xb

    sput v0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->LIGHT_SENSOR_TEST:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 63
    sget v0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->UNKOWN_TEST:I

    iput v0, p0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->mBluePosition:I

    .line 103
    iput-object p1, p0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->mContext:Landroid/content/Context;

    .line 105
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->setForAries()V

    .line 107
    new-instance v0, Lcom/sec/android/app/selftestmode/SelfTestMode;

    iget-object v1, p0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/selftestmode/SelfTestMode;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->mSelfTestMode:Lcom/sec/android/app/selftestmode/SelfTestMode;

    .line 109
    return-void
.end method

.method private setForAries()V
    .registers 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->mDefaultTestName:[Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->mDefaultTestName:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->mDefaultTestNum:I

    .line 119
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 201
    iget v0, p0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->mDefaultTestNum:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "pos"

    .prologue
    .line 209
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 125
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 133
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030005

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 135
    .local v0, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 137
    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->mTestItemTextView:Landroid/widget/TextView;

    .line 139
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->mTestItemTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->mDefaultTestName:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget v1, p0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->mBluePosition:I

    if-ne p1, v1, :cond_3e

    .line 145
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->mTestItemTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    :goto_3d
    return-object v0

    .line 149
    :cond_3e
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->mTestItemTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3d
.end method

.method public setBlue(I)V
    .registers 3
    .parameter "pos"

    .prologue
    .line 191
    iget v0, p0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->mBluePosition:I

    if-ne v0, p1, :cond_6

    sget p1, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->UNKOWN_TEST:I

    .end local p1
    :cond_6
    iput p1, p0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->mBluePosition:I

    .line 193
    invoke-virtual {p0}, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->notifyDataSetChanged()V

    .line 195
    return-void
.end method

.method public startTest(I)V
    .registers 4
    .parameter "pos"

    .prologue
    .line 161
    sget v0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->MELODY_TEST:I

    if-lt p1, v0, :cond_18

    sget v0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->DIMMING_TEST:I

    if-gt p1, v0, :cond_18

    .line 163
    const-string v0, "SelfTestListAdaptor"

    const-string v1, "select melody test ~ dimming test"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {p0, p1}, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->setBlue(I)V

    .line 173
    :goto_12
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->mSelfTestMode:Lcom/sec/android/app/selftestmode/SelfTestMode;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/selftestmode/SelfTestMode;->selfTest(I)V

    .line 175
    return-void

    .line 169
    :cond_18
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->setBlue(I)V

    goto :goto_12
.end method

.method public stopTest()V
    .registers 2

    .prologue
    .line 181
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->setBlue(I)V

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/SelfTestListAdapter;->mSelfTestMode:Lcom/sec/android/app/selftestmode/SelfTestMode;

    invoke-virtual {v0}, Lcom/sec/android/app/selftestmode/SelfTestMode;->testOff()V

    .line 185
    return-void
.end method
