.class public Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;
.super Landroid/app/Fragment;
.source "AccountSettingsOutOfOfficeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;
    }
.end annotation


# instance fields
.field private final FLAG_CANCEL_PRESEED:I

.field private final FLAG_DONE_PRESSED:I

.field private final FLAG_INVALID_DATES:I

.field private final FLAG_RESET:I

.field private final OOO_GET_ERROR:I

.field private final OOO_NO_PROTOCOL_SUPPORT:I

.field private final OOO_NO_STATUS:I

.field private final OOO_PROCESSING:I

.field private final OOO_RESPONSE_PARSE:I

.field private final OOO_SERVER_CONNECT:I

.field private final OOO_SET_ERROR:I

.field private final OOO_STATUS_COMPLETE:I

.field private final OOO_UNKNOWN_ERROR:I

.field private dialog:Landroid/app/Dialog;

.field private mAccountId:J

.field private mCheckFlag:I

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/email/Controller;

.field private mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mDay:I

.field private mEnableDateTimeCB:Landroid/widget/CheckBox;

.field private mEnableDateTimeCBLayout:Landroid/widget/LinearLayout;

.field private mEndDate:Ljava/util/Date;

.field private mEndDateButton:Landroid/widget/Button;

.field private mEndTimeButton:Landroid/widget/Button;

.field private mExternalKnownMsgState:I

.field private mExternalMsgCB:Landroid/widget/CheckBox;

.field private mExternalMsgCBLayout:Landroid/widget/LinearLayout;

.field private mExternalMsgEditText:Landroid/widget/EditText;

.field private mExternalUnKnownMsgState:I

.field private mHandler:Landroid/os/Handler;

.field private mHour:I

.field private mInternalMsgEditText:Landroid/widget/EditText;

.field private mInternalMsgState:I

.field private mIsStartDate:Z

.field private mIsStartTime:Z

.field mIsUIOn:Z

.field private mListener:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;

.field private mLoaded:Z

.field private mMessageForExternalKnownUsers:Ljava/lang/String;

.field private mMessageForExternalUnknownUsers:Ljava/lang/String;

.field private mMessageForInternalUsers:Ljava/lang/String;

.field private mMinute:I

.field private mMonth:I

.field private mMonths:[Ljava/lang/String;

.field private mOofOnOrOffCheck:Landroid/widget/CheckBox;

.field private mOofOnOrOffCheckLayout:Landroid/widget/LinearLayout;

.field private mOofState:Z

.field private mProgressDlg:Landroid/app/ProgressDialog;

.field private mRbKnown:Landroid/widget/RadioButton;

.field private mRbKnownLayout:Landroid/widget/LinearLayout;

.field private mRbLayout:Landroid/widget/LinearLayout;

.field private mRbUnKnown:Landroid/widget/RadioButton;

.field private mRbUnKnownLayout:Landroid/widget/LinearLayout;

.field private mStartDate:Ljava/util/Date;

.field private mStartDateButton:Landroid/widget/Button;

.field private mStartTimeButton:Landroid/widget/Button;

.field private mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private mYear:I


# direct methods
.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 75
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 81
    iput v3, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->FLAG_RESET:I

    .line 83
    iput v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->FLAG_DONE_PRESSED:I

    .line 85
    iput v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->FLAG_CANCEL_PRESEED:I

    .line 87
    iput v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->FLAG_INVALID_DATES:I

    .line 95
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mAccountId:J

    .line 126
    iput-boolean v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsStartDate:Z

    .line 136
    iput-boolean v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsStartTime:Z

    .line 184
    iput v3, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mCheckFlag:I

    .line 191
    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$1;-><init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 208
    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$2;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$2;-><init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 223
    iput v3, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->OOO_STATUS_COMPLETE:I

    .line 225
    iput v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->OOO_NO_STATUS:I

    .line 227
    iput v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->OOO_NO_PROTOCOL_SUPPORT:I

    .line 229
    iput v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->OOO_PROCESSING:I

    .line 231
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->OOO_SET_ERROR:I

    .line 233
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->OOO_GET_ERROR:I

    .line 235
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->OOO_SERVER_CONNECT:I

    .line 237
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->OOO_RESPONSE_PARSE:I

    .line 239
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->OOO_UNKNOWN_ERROR:I

    .line 243
    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;-><init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mListener:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;

    .line 245
    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$3;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$3;-><init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mHandler:Landroid/os/Handler;

    .line 1279
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsStartDate:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsStartDate:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Ljava/util/Date;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofState:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->toggleAllUIState()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->prepareDateTimeButtons()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->dialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/app/DatePickerDialog$OnDateSetListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/app/TimePickerDialog$OnTimeSetListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/widget/RadioButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/widget/RadioButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->updateStartDateTime()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mCheckFlag:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Ljava/util/Date;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->updateEndDateTime()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsStartTime:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsStartTime:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mProgressDlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mProgressDlg:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mListener:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Lcom/android/email/Controller;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;Landroid/os/Bundle;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->onSetOutOfOfficeComplete(Landroid/os/Bundle;)V

    return-void
.end method

.method private onSetOutOfOfficeComplete(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    const/16 v2, 0x64

    const/4 v0, 0x0

    .line 1257
    .line 1258
    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mCheckFlag:I

    .line 1260
    if-eqz p1, :cond_16

    .line 1262
    const-class v0, Lcom/android/emailcommon/service/OoODataList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1264
    sget-object v0, Lcom/android/emailcommon/utility/OoOConstants;->OOO_SET_DATA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1267
    :cond_16
    const/4 v1, 0x1

    if-ne v0, v1, :cond_33

    .line 1268
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f080371

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1272
    :goto_25
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 1274
    if-eqz v0, :cond_32

    .line 1275
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 1277
    :cond_32
    return-void

    .line 1270
    :cond_33
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f080372

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_25
.end method

.method private prepareDateTimeButtons()V
    .registers 3

    .prologue
    .line 1159
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 1161
    .local v0, value:Z
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDateButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1162
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDateButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setFocusable(Z)V

    .line 1163
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDateButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1164
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDateButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setFocusable(Z)V

    .line 1165
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartTimeButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1166
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartTimeButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setFocusable(Z)V

    .line 1167
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndTimeButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1168
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndTimeButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setFocusable(Z)V

    .line 1170
    if-eqz v0, :cond_36

    .line 1171
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->updateStartDateTime()V

    .line 1172
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->updateEndDateTime()V

    .line 1174
    :cond_36
    return-void
.end method

.method private prepareStartUpUI()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 831
    const/4 v2, 0x0

    .line 832
    .local v2, isTimeBased:Z
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "ooo_data"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 833
    .local v0, data:Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 835
    .local v3, oodl:Lcom/android/emailcommon/service/OoODataList;
    if-eqz v0, :cond_21

    .line 836
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 837
    sget-object v5, Lcom/android/emailcommon/utility/OoOConstants;->OOO_GET_DATA:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .end local v3           #oodl:Lcom/android/emailcommon/service/OoODataList;
    check-cast v3, Lcom/android/emailcommon/service/OoODataList;

    .line 840
    .restart local v3       #oodl:Lcom/android/emailcommon/service/OoODataList;
    :cond_21
    if-eqz v3, :cond_196

    .line 841
    const/4 v1, 0x0

    .local v1, i:I
    :goto_24
    invoke-virtual {v3}, Lcom/android/emailcommon/service/OoODataList;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_196

    .line 842
    invoke-virtual {v3, v1}, Lcom/android/emailcommon/service/OoODataList;->getItem(I)Lcom/android/emailcommon/service/OoOData;

    move-result-object v4

    .line 843
    .local v4, singleData:Lcom/android/emailcommon/service/OoOData;
    if-eqz v4, :cond_35

    .line 844
    iget v5, v4, Lcom/android/emailcommon/service/OoOData;->state:I

    packed-switch v5, :pswitch_data_1dc

    .line 841
    :cond_35
    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 846
    :pswitch_38
    iput-boolean v8, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofState:Z

    .line 847
    iput-boolean v8, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    .line 848
    iget v5, v4, Lcom/android/emailcommon/service/OoOData;->type:I

    packed-switch v5, :pswitch_data_1e6

    goto :goto_35

    .line 850
    :pswitch_42
    iget v5, v4, Lcom/android/emailcommon/service/OoOData;->enabled:I

    if-ne v5, v7, :cond_54

    .line 851
    iput v7, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgState:I

    .line 854
    :goto_48
    iget-object v5, v4, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForInternalUsers:Ljava/lang/String;

    .line 857
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForInternalUsers:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_35

    .line 853
    :cond_54
    iput v8, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgState:I

    goto :goto_48

    .line 862
    :pswitch_57
    iget v5, v4, Lcom/android/emailcommon/service/OoOData;->enabled:I

    if-ne v5, v7, :cond_73

    .line 863
    iput v7, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalKnownMsgState:I

    .line 864
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 865
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 868
    :goto_67
    iget-object v5, v4, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    .line 871
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_35

    .line 867
    :cond_73
    iput v8, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalKnownMsgState:I

    goto :goto_67

    .line 876
    :pswitch_76
    iget v5, v4, Lcom/android/emailcommon/service/OoOData;->enabled:I

    if-ne v5, v7, :cond_9e

    .line 877
    iput v7, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalUnKnownMsgState:I

    .line 878
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 879
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 882
    :goto_86
    iget-object v5, v4, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    .line 885
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    if-eqz v5, :cond_96

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_35

    .line 887
    :cond_96
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_35

    .line 881
    :cond_9e
    iput v8, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalUnKnownMsgState:I

    goto :goto_86

    .line 898
    :pswitch_a1
    iput-boolean v7, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    .line 899
    iput-boolean v7, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofState:Z

    .line 900
    iget v5, v4, Lcom/android/emailcommon/service/OoOData;->type:I

    packed-switch v5, :pswitch_data_1f0

    goto :goto_35

    .line 902
    :pswitch_ab
    iget v5, v4, Lcom/android/emailcommon/service/OoOData;->enabled:I

    if-ne v5, v7, :cond_be

    .line 903
    iput v7, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgState:I

    .line 906
    :goto_b1
    iget-object v5, v4, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForInternalUsers:Ljava/lang/String;

    .line 909
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForInternalUsers:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_35

    .line 905
    :cond_be
    iput v8, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgState:I

    goto :goto_b1

    .line 914
    :pswitch_c1
    iget v5, v4, Lcom/android/emailcommon/service/OoOData;->enabled:I

    if-ne v5, v7, :cond_de

    .line 915
    iput v7, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalKnownMsgState:I

    .line 916
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 917
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 920
    :goto_d1
    iget-object v5, v4, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    .line 923
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_35

    .line 919
    :cond_de
    iput v8, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalKnownMsgState:I

    goto :goto_d1

    .line 928
    :pswitch_e1
    iget v5, v4, Lcom/android/emailcommon/service/OoOData;->enabled:I

    if-ne v5, v7, :cond_10a

    .line 929
    iput v7, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalUnKnownMsgState:I

    .line 930
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 931
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 934
    :goto_f1
    iget-object v5, v4, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    .line 937
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    if-eqz v5, :cond_101

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_35

    .line 939
    :cond_101
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_35

    .line 933
    :cond_10a
    iput v8, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalUnKnownMsgState:I

    goto :goto_f1

    .line 950
    :pswitch_10d
    iput-boolean v7, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    .line 951
    iput-boolean v7, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofState:Z

    .line 952
    if-nez v2, :cond_121

    .line 953
    iget-object v5, v4, Lcom/android/emailcommon/service/OoOData;->start:Ljava/util/Date;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;

    .line 954
    iget-object v5, v4, Lcom/android/emailcommon/service/OoOData;->end:Ljava/util/Date;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    .line 955
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 956
    const/4 v2, 0x1

    .line 958
    :cond_121
    iget v5, v4, Lcom/android/emailcommon/service/OoOData;->type:I

    packed-switch v5, :pswitch_data_1fa

    goto/16 :goto_35

    .line 960
    :pswitch_128
    iget v5, v4, Lcom/android/emailcommon/service/OoOData;->enabled:I

    if-ne v5, v7, :cond_13b

    .line 961
    iput v7, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgState:I

    .line 964
    :goto_12e
    iget-object v5, v4, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForInternalUsers:Ljava/lang/String;

    .line 967
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForInternalUsers:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_35

    .line 963
    :cond_13b
    iput v8, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgState:I

    goto :goto_12e

    .line 972
    :pswitch_13e
    iget v5, v4, Lcom/android/emailcommon/service/OoOData;->enabled:I

    if-ne v5, v7, :cond_167

    .line 973
    iput v7, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalKnownMsgState:I

    .line 974
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 977
    :goto_149
    iget-object v5, v4, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    .line 980
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    if-eqz v5, :cond_35

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_35

    .line 982
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 983
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_35

    .line 976
    :cond_167
    iput v8, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalKnownMsgState:I

    goto :goto_149

    .line 989
    :pswitch_16a
    iget v5, v4, Lcom/android/emailcommon/service/OoOData;->enabled:I

    if-ne v5, v7, :cond_193

    .line 990
    iput v7, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalUnKnownMsgState:I

    .line 991
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 994
    :goto_175
    iget-object v5, v4, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    .line 998
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    if-eqz v5, :cond_35

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_35

    .line 1000
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1002
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_35

    .line 993
    :cond_193
    iput v8, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalUnKnownMsgState:I

    goto :goto_175

    .line 1019
    .end local v1           #i:I
    .end local v4           #singleData:Lcom/android/emailcommon/service/OoOData;
    :cond_196
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    if-eqz v5, :cond_1d2

    .line 1020
    iget v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalUnKnownMsgState:I

    if-eq v5, v7, :cond_1a6

    iget v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalUnKnownMsgState:I

    if-nez v5, :cond_1c4

    iget v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalKnownMsgState:I

    if-nez v5, :cond_1c4

    .line 1022
    :cond_1a6
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1034
    :cond_1ab
    :goto_1ab
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v5}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v5

    if-nez v5, :cond_1c0

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v5}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v5

    if-nez v5, :cond_1c0

    .line 1035
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1037
    :cond_1c0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->toggleAllUIState()V

    .line 1038
    return-void

    .line 1023
    :cond_1c4
    iget v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalKnownMsgState:I

    if-ne v5, v7, :cond_1ab

    .line 1024
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    if-eqz v5, :cond_1ab

    .line 1025
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1ab

    .line 1029
    :cond_1d2
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    if-eqz v5, :cond_1ab

    .line 1030
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1ab

    .line 844
    :pswitch_data_1dc
    .packed-switch 0x0
        :pswitch_38
        :pswitch_a1
        :pswitch_10d
    .end packed-switch

    .line 848
    :pswitch_data_1e6
    .packed-switch 0x4
        :pswitch_42
        :pswitch_57
        :pswitch_76
    .end packed-switch

    .line 900
    :pswitch_data_1f0
    .packed-switch 0x4
        :pswitch_ab
        :pswitch_c1
        :pswitch_e1
    .end packed-switch

    .line 958
    :pswitch_data_1fa
    .packed-switch 0x4
        :pswitch_128
        :pswitch_13e
        :pswitch_16a
    .end packed-switch
.end method

.method private sendDataToExchange()V
    .registers 10

    .prologue
    const/4 v1, 0x4

    const/4 v8, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1177
    .line 1179
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mController:Lcom/android/email/Controller;

    .line 1180
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mController:Lcom/android/email/Controller;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mListener:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;

    invoke-virtual {v0, v5}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 1183
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofState:Z

    if-ne v0, v3, :cond_126

    .line 1185
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1186
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    if-eqz v5, :cond_36

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v5}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 1187
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    .line 1188
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    .line 1190
    :cond_36
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    if-eqz v5, :cond_4e

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v5}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 1191
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    .line 1192
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    .line 1195
    :cond_4e
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1196
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1197
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForInternalUsers:Ljava/lang/String;

    .line 1200
    :cond_62
    new-instance v0, Lcom/android/emailcommon/service/OoODataList;

    invoke-direct {v0}, Lcom/android/emailcommon/service/OoODataList;-><init>()V

    .line 1201
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_139

    .line 1203
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_99

    .line 1204
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f080379

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1205
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mListener:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 1206
    iput v8, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mCheckFlag:I

    .line 1253
    :goto_98
    return-void

    .line 1209
    :cond_99
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_c1

    .line 1210
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f080379

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1211
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mListener:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 1212
    iput v8, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mCheckFlag:I

    goto :goto_98

    :cond_c1
    move v7, v3

    .line 1216
    :goto_c2
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForInternalUsers:Ljava/lang/String;

    if-eqz v4, :cond_d1

    .line 1217
    if-eqz v7, :cond_f9

    .line 1218
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForInternalUsers:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    invoke-virtual/range {v0 .. v6}, Lcom/android/emailcommon/service/OoODataList;->AddOoOData(IIILjava/lang/String;Ljava/util/Date;Ljava/util/Date;)I

    .line 1226
    :cond_d1
    :goto_d1
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_f1

    .line 1227
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_106

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    if-eqz v1, :cond_106

    .line 1228
    if-eqz v7, :cond_ff

    .line 1229
    const/4 v1, 0x5

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    invoke-virtual/range {v0 .. v6}, Lcom/android/emailcommon/service/OoODataList;->AddOoOData(IIILjava/lang/String;Ljava/util/Date;Ljava/util/Date;)I

    .line 1247
    :cond_f1
    :goto_f1
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mController:Lcom/android/email/Controller;

    iget-wide v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mAccountId:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/email/Controller;->setOutOfOffice(JLcom/android/emailcommon/service/OoODataList;)V

    goto :goto_98

    .line 1221
    :cond_f9
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForInternalUsers:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v3, v4}, Lcom/android/emailcommon/service/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    goto :goto_d1

    .line 1233
    :cond_ff
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/android/emailcommon/service/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    goto :goto_f1

    .line 1236
    :cond_106
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_f1

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    if-eqz v1, :cond_f1

    .line 1237
    if-eqz v7, :cond_11f

    .line 1238
    const/4 v1, 0x6

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    invoke-virtual/range {v0 .. v6}, Lcom/android/emailcommon/service/OoODataList;->AddOoOData(IIILjava/lang/String;Ljava/util/Date;Ljava/util/Date;)I

    goto :goto_f1

    .line 1242
    :cond_11f
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/android/emailcommon/service/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    goto :goto_f1

    .line 1249
    :cond_126
    new-instance v0, Lcom/android/emailcommon/service/OoODataList;

    invoke-direct {v0}, Lcom/android/emailcommon/service/OoODataList;-><init>()V

    .line 1250
    const-string v1, ""

    invoke-virtual {v0, v8, v4, v4, v1}, Lcom/android/emailcommon/service/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    .line 1251
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mController:Lcom/android/email/Controller;

    iget-wide v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mAccountId:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/email/Controller;->setOutOfOffice(JLcom/android/emailcommon/service/OoODataList;)V

    goto/16 :goto_98

    :cond_139
    move v7, v4

    goto :goto_c2
.end method

.method private toggleAllUIState()V
    .registers 3

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1042
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 1043
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDateButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1044
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDateButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 1045
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartTimeButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1046
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartTimeButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 1047
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDateButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1048
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDateButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 1049
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndTimeButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1050
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndTimeButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 1052
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgEditText:Landroid/widget/EditText;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1053
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgEditText:Landroid/widget/EditText;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1054
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1055
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 1056
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 1057
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setFocusable(Z)V

    .line 1058
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 1059
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setFocusable(Z)V

    .line 1060
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgEditText:Landroid/widget/EditText;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1062
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    if-nez v0, :cond_93

    .line 1063
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 1064
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 1067
    :cond_93
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    if-eqz v0, :cond_de

    .line 1068
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->prepareDateTimeButtons()V

    .line 1069
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1070
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_b2

    .line 1071
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 1073
    :cond_b2
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 1074
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setFocusable(Z)V

    .line 1075
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 1076
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setFocusable(Z)V

    .line 1079
    :cond_de
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheck:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1080
    return-void
.end method

.method private updateEndDateTime()V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 1096
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mHour:I

    .line 1097
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMinute:I

    .line 1098
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMonth:I

    .line 1099
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mDay:I

    .line 1100
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, 0x76c

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mYear:I

    .line 1102
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDateButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    invoke-virtual {p0, v0, v2}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->setDateButtonText(Landroid/widget/Button;Ljava/util/Date;)V

    .line 1104
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndTimeButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v7

    new-instance v0, Ljava/util/Date;

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mHour:I

    iget v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMinute:I

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v5}, Ljava/util/Date;-><init>(IIIII)V

    invoke-virtual {v7, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1106
    return-void
.end method

.method private updateStartDateTime()V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 1083
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mHour:I

    .line 1084
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMinute:I

    .line 1085
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMonth:I

    .line 1086
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mDay:I

    .line 1087
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, 0x76c

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mYear:I

    .line 1089
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDateButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;

    invoke-virtual {p0, v0, v2}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->setDateButtonText(Landroid/widget/Button;Ljava/util/Date;)V

    .line 1091
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartTimeButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v7

    new-instance v0, Ljava/util/Date;

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mHour:I

    iget v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMinute:I

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v5}, Ljava/util/Date;-><init>(IIIII)V

    invoke-virtual {v7, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1093
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 655
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_90

    .line 711
    :cond_9
    :goto_9
    :pswitch_9
    return-void

    .line 659
    :pswitch_a
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 660
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_9

    .line 662
    :cond_18
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_9

    .line 668
    :pswitch_1e
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 669
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 670
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_9

    .line 672
    :cond_34
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_9

    .line 679
    :pswitch_3a
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 680
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 681
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_9

    .line 683
    :cond_50
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_9

    .line 691
    :pswitch_56
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 692
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 693
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_9

    .line 695
    :cond_6c
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_9

    .line 702
    :pswitch_72
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 703
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 704
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_9

    .line 706
    :cond_88
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_9

    .line 655
    nop

    :pswitch_data_90
    .packed-switch 0x7f100236
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_1e
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_3a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_56
        :pswitch_9
        :pswitch_72
        :pswitch_9
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 291
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 292
    if-eqz p1, :cond_e

    .line 293
    const-string v0, "AccountSettingsOutOfOfficeFragment.loaded"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mLoaded:Z

    .line 295
    :cond_e
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 591
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 592
    const v0, 0x7f0f0006

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 593
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 13
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v7, -0x1

    const/4 v6, 0x0

    .line 303
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "account_id"

    invoke-virtual {v4, v5, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mAccountId:J

    .line 304
    iget-wide v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mAccountId:J

    cmp-long v4, v4, v7

    if-nez v4, :cond_1f

    .line 305
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 306
    .local v2, pa:Landroid/preference/PreferenceActivity;
    const/4 v4, 0x0

    invoke-virtual {v2, p0, v6, v4}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 309
    .end local v2           #pa:Landroid/preference/PreferenceActivity;
    :cond_1f
    const v4, 0x7f04000c

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 311
    .local v3, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mContext:Landroid/content/Context;

    .line 313
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;

    .line 314
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    .line 315
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getDate()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Date;->setDate(I)V

    .line 316
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;

    invoke-virtual {v4, v6}, Ljava/util/Date;->setMinutes(I)V

    .line 317
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    invoke-virtual {v4, v6}, Ljava/util/Date;->setMinutes(I)V

    .line 319
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0026

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMonths:[Ljava/lang/String;

    .line 324
    const v4, 0x7f100236

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheckLayout:Landroid/widget/LinearLayout;

    .line 325
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheckLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 326
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheckLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheckLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 328
    const v4, 0x7f100238

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheck:Landroid/widget/CheckBox;

    .line 329
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheck:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 330
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheck:Landroid/widget/CheckBox;

    new-instance v5, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$4;

    invoke-direct {v5, p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$4;-><init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 345
    const v4, 0x7f10023b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    .line 346
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    new-instance v5, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$5;

    invoke-direct {v5, p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$5;-><init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 352
    const v4, 0x7f100239

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCBLayout:Landroid/widget/LinearLayout;

    .line 353
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCBLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCBLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 360
    const v4, 0x7f10023d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDateButton:Landroid/widget/Button;

    .line 361
    const v4, 0x7f100240

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDateButton:Landroid/widget/Button;

    .line 363
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDateButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$6;

    invoke-direct {v5, p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$6;-><init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDateButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$7;

    invoke-direct {v5, p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$7;-><init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "date_format"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, currentFormat:Ljava/lang/String;
    if-eqz v0, :cond_fd

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10b

    .line 390
    :cond_fd
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_210

    .line 391
    const-string v0, "MM-dd-yyyy"

    .line 401
    :cond_10b
    :goto_10b
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDateButton:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDateButton:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 405
    const v4, 0x7f10023e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartTimeButton:Landroid/widget/Button;

    .line 406
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartTimeButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$8;

    invoke-direct {v5, p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$8;-><init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    const v4, 0x7f100241

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndTimeButton:Landroid/widget/Button;

    .line 418
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndTimeButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$9;

    invoke-direct {v5, p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$9;-><init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->updateStartDateTime()V

    .line 429
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->updateEndDateTime()V

    .line 432
    const v4, 0x7f100247

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    .line 433
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v4, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v4, p0}, Landroid/widget/RadioButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 435
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    new-instance v5, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$10;

    invoke-direct {v5, p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$10;-><init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 444
    const v4, 0x7f100248

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbLayout:Landroid/widget/LinearLayout;

    .line 445
    const v4, 0x7f100249

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnownLayout:Landroid/widget/LinearLayout;

    .line 446
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnownLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnownLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 449
    const v4, 0x7f10024c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    .line 450
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v4, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v4, p0}, Landroid/widget/RadioButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 452
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    new-instance v5, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$11;

    invoke-direct {v5, p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$11;-><init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 461
    const v4, 0x7f10024b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnownLayout:Landroid/widget/LinearLayout;

    .line 463
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnownLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnownLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 465
    const v4, 0x7f100243

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgEditText:Landroid/widget/EditText;

    .line 466
    const v4, 0x7f10024d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgEditText:Landroid/widget/EditText;

    .line 467
    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$12;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$12;-><init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V

    .line 480
    .local v1, focusChanged:Landroid/view/View$OnFocusChangeListener;
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 481
    const v4, 0x7f100244

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    .line 482
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v4, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v4, p0}, Landroid/widget/CheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 484
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    new-instance v5, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$13;

    invoke-direct {v5, p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$13;-><init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 525
    const v4, 0x7f100245

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCBLayout:Landroid/widget/LinearLayout;

    .line 527
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCBLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 528
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCBLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 530
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->prepareStartUpUI()V

    .line 553
    return-object v3

    .line 392
    .end local v1           #focusChanged:Landroid/view/View$OnFocusChangeListener;
    :cond_210
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_234

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_234

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_238

    .line 395
    :cond_234
    const-string v0, "yyyy-MM-dd"

    goto/16 :goto_10b

    .line 397
    :cond_238
    const-string v0, "dd-MM-yyyy"

    goto/16 :goto_10b
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    .line 583
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 584
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->dialog:Landroid/app/Dialog;

    .line 586
    :cond_c
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 587
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v2, 0x3

    .line 633
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 634
    .local v0, pa:Landroid/preference/PreferenceActivity;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_34

    .line 651
    :cond_e
    :goto_e
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 637
    :pswitch_13
    iget v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mCheckFlag:I

    if-eqz v1, :cond_1b

    iget v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mCheckFlag:I

    if-ne v1, v2, :cond_e

    .line 638
    :cond_1b
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mCheckFlag:I

    .line 639
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->sendDataToExchange()V

    goto :goto_e

    .line 644
    :pswitch_22
    iget v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mCheckFlag:I

    if-eqz v1, :cond_2a

    iget v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mCheckFlag:I

    if-ne v1, v2, :cond_e

    .line 645
    :cond_2a
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mCheckFlag:I

    .line 646
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_e

    .line 634
    nop

    :pswitch_data_34
    .packed-switch 0x7f1002df
        :pswitch_13
        :pswitch_22
    .end packed-switch
.end method

.method public onPause()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 571
    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->setHasOptionsMenu(Z)V

    .line 572
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 574
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 575
    .local v1, view:Landroid/view/View;
    if-eqz v0, :cond_23

    if-eqz v1, :cond_23

    .line 576
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 577
    :cond_23
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 578
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 10
    .parameter "menu"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x1

    .line 598
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v2, v5, Landroid/content/res/Configuration;->orientation:I

    .line 600
    .local v2, mOrientation:I
    const v5, 0x7f1002df

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 601
    .local v3, okItem:Landroid/view/MenuItem;
    const v5, 0x7f1002e0

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 603
    .local v0, cancelItem:Landroid/view/MenuItem;
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 604
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 606
    if-ne v2, v6, :cond_42

    .line 607
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v4

    .line 608
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_27
    if-ge v1, v4, :cond_58

    .line 609
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-eqz v5, :cond_3f

    .line 610
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 611
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 608
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 618
    .end local v1           #i:I
    .end local v4           #size:I
    :cond_42
    if-eqz v3, :cond_4d

    .line 619
    const v5, 0x7f02022c

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 620
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 623
    :cond_4d
    if-eqz v0, :cond_58

    .line 624
    const v5, 0x7f02021f

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 625
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 629
    :cond_58
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->prepareDateTimeButtons()V

    .line 566
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 567
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 558
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->setHasOptionsMenu(Z)V

    .line 559
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 560
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 715
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_148

    move v0, v1

    .line 827
    :cond_a
    :goto_a
    return v0

    .line 717
    :sswitch_b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_15e

    .line 737
    :sswitch_12
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_16a

    .line 760
    :sswitch_19
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_176

    .line 783
    :sswitch_20
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 784
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_182

    goto :goto_a

    .line 786
    :pswitch_30
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setPressed(Z)V

    goto :goto_a

    .line 719
    :pswitch_36
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_a

    .line 722
    :pswitch_3c
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_a

    .line 725
    :pswitch_42
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    .line 726
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 727
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 730
    :goto_54
    invoke-virtual {p1, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_a

    .line 729
    :cond_58
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_54

    .line 733
    :pswitch_5e
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_a

    .line 739
    :pswitch_64
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 740
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_a

    .line 743
    :pswitch_72
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_a

    .line 746
    :pswitch_78
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 747
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    .line 748
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_97

    .line 749
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 752
    :goto_92
    invoke-virtual {p1, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto/16 :goto_a

    .line 751
    :cond_97
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_92

    .line 756
    :pswitch_9d
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto/16 :goto_a

    .line 762
    :pswitch_a4
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 763
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto/16 :goto_a

    .line 766
    :pswitch_b3
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto/16 :goto_a

    .line 769
    :pswitch_ba
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 770
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    .line 771
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_d9

    .line 772
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 775
    :goto_d4
    invoke-virtual {p1, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto/16 :goto_a

    .line 774
    :cond_d9
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_d4

    .line 779
    :pswitch_df
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto/16 :goto_a

    .line 789
    :pswitch_e6
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setPressed(Z)V

    goto/16 :goto_a

    .line 792
    :pswitch_ed
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setPressed(Z)V

    .line 793
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-nez v2, :cond_ff

    .line 794
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 795
    :cond_ff
    invoke-virtual {p1, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto/16 :goto_a

    .line 798
    :pswitch_104
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setPressed(Z)V

    goto/16 :goto_a

    .line 805
    :sswitch_10b
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 806
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_18e

    goto/16 :goto_a

    .line 808
    :pswitch_11c
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setPressed(Z)V

    goto/16 :goto_a

    .line 811
    :pswitch_123
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setPressed(Z)V

    goto/16 :goto_a

    .line 814
    :pswitch_12a
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setPressed(Z)V

    .line 815
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-nez v2, :cond_13c

    .line 816
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 817
    :cond_13c
    invoke-virtual {p1, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto/16 :goto_a

    .line 821
    :pswitch_141
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setPressed(Z)V

    goto/16 :goto_a

    .line 715
    :sswitch_data_148
    .sparse-switch
        0x7f100236 -> :sswitch_b
        0x7f100239 -> :sswitch_12
        0x7f100245 -> :sswitch_19
        0x7f100249 -> :sswitch_20
        0x7f10024b -> :sswitch_10b
    .end sparse-switch

    .line 717
    :pswitch_data_15e
    .packed-switch 0x0
        :pswitch_36
        :pswitch_42
        :pswitch_3c
        :pswitch_5e
    .end packed-switch

    .line 737
    :pswitch_data_16a
    .packed-switch 0x0
        :pswitch_64
        :pswitch_78
        :pswitch_72
        :pswitch_9d
    .end packed-switch

    .line 760
    :pswitch_data_176
    .packed-switch 0x0
        :pswitch_a4
        :pswitch_ba
        :pswitch_b3
        :pswitch_df
    .end packed-switch

    .line 784
    :pswitch_data_182
    .packed-switch 0x0
        :pswitch_30
        :pswitch_ed
        :pswitch_e6
        :pswitch_104
    .end packed-switch

    .line 806
    :pswitch_data_18e
    .packed-switch 0x0
        :pswitch_11c
        :pswitch_12a
        :pswitch_123
        :pswitch_141
    .end packed-switch
.end method

.method public setDateButtonText(Landroid/widget/Button;Ljava/util/Date;)V
    .registers 10
    .parameter "button"
    .parameter "date"

    .prologue
    .line 1111
    const-string v2, ""

    .line 1112
    .local v2, text:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "date_format"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1116
    .local v0, currentFormat:Ljava/lang/String;
    if-eqz v0, :cond_18

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1117
    :cond_18
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_95

    .line 1118
    const-string v0, "MM-dd-yyyy"

    .line 1128
    :cond_26
    :goto_26
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3e

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13e

    .line 1130
    :cond_3e
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080468

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1131
    .local v1, dayStr:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080469

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1132
    .local v3, yearStr:Ljava/lang/String;
    const-string v4, "yyyy-MM-dd"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c1

    .line 1133
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mYear:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMonths:[Ljava/lang/String;

    invoke-virtual {p2}, Ljava/util/Date;->getMonth()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mDay:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1151
    .end local v1           #dayStr:Ljava/lang/String;
    .end local v3           #yearStr:Ljava/lang/String;
    :cond_91
    :goto_91
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1152
    return-void

    .line 1119
    :cond_95
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bd

    .line 1122
    :cond_b9
    const-string v0, "yyyy-MM-dd"

    goto/16 :goto_26

    .line 1124
    :cond_bd
    const-string v0, "dd-MM-yyyy"

    goto/16 :goto_26

    .line 1134
    .restart local v1       #dayStr:Ljava/lang/String;
    .restart local v3       #yearStr:Ljava/lang/String;
    :cond_c1
    const-string v4, "dd-MM-yyyy"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ff

    .line 1135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mDay:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMonths:[Ljava/lang/String;

    invoke-virtual {p2}, Ljava/util/Date;->getMonth()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mYear:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_91

    .line 1136
    :cond_ff
    const-string v4, "MM-dd-yyyy"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_91

    .line 1137
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMonths:[Ljava/lang/String;

    invoke-virtual {p2}, Ljava/util/Date;->getMonth()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mDay:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mYear:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_91

    .line 1140
    .end local v1           #dayStr:Ljava/lang/String;
    .end local v3           #yearStr:Ljava/lang/String;
    :cond_13e
    const-string v4, "yyyy-MM-dd"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_175

    .line 1141
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mYear:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMonths:[Ljava/lang/String;

    invoke-virtual {p2}, Ljava/util/Date;->getMonth()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mDay:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_91

    .line 1142
    :cond_175
    const-string v4, "dd-MM-yyyy"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1ac

    .line 1143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mDay:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMonths:[Ljava/lang/String;

    invoke-virtual {p2}, Ljava/util/Date;->getMonth()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mYear:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_91

    .line 1144
    :cond_1ac
    const-string v4, "MM-dd-yyyy"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_91

    .line 1145
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMonths:[Ljava/lang/String;

    invoke-virtual {p2}, Ljava/util/Date;->getMonth()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mDay:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mYear:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_91
.end method
