.class public Lcom/android/email/activity/CustomizeDate;
.super Landroid/app/Activity;
.source "CustomizeDate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private cancelButton:Landroid/widget/Button;

.field private customizeLayout:Landroid/widget/RelativeLayout;

.field private customizeRadioButton:Landroid/widget/RadioButton;

.field private dateFormatter:Ljava/text/SimpleDateFormat;

.field private fromDateButton:Landroid/widget/Button;

.field private fromTextView:Landroid/widget/TextView;

.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mController:Lcom/android/email/Controller;

.field private final mDate:Ljava/util/Date;

.field private mDay:I

.field private mDayFromSearch:I

.field private mDayToSearch:I

.field private mEmailSearchAdapter:Lcom/android/email/EmailSearchAdapter;

.field private final mFromDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mHourFromSearch:I

.field private mHourToSearch:I

.field private mIsCustomize:Z

.field private mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

.field private mMinuteFromSearch:I

.field private mMinuteToSearch:I

.field private mMonth:I

.field private mMonthFromSearch:I

.field private mMonthToSearch:I

.field private final mToDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mYear:I

.field private mYearFromSearch:I

.field private mYearToSearch:I

.field private oneDayLayout:Landroid/widget/RelativeLayout;

.field private oneDayRadioButton:Landroid/widget/RadioButton;

.field private oneMonthLayout:Landroid/widget/RelativeLayout;

.field private oneMonthRadioButton:Landroid/widget/RadioButton;

.field private oneWeekLayout:Landroid/widget/RelativeLayout;

.field private oneWeekRadioButton:Landroid/widget/RadioButton;

.field private oneYearLayout:Landroid/widget/RelativeLayout;

.field private oneYearRadioButton:Landroid/widget/RadioButton;

.field private searchButton:Landroid/widget/Button;

.field private searchText:Ljava/lang/String;

.field private searchcancelButtonRelativeLayout:Landroid/widget/LinearLayout;

.field private sixMonthLayout:Landroid/widget/RelativeLayout;

.field private sixMonthRadioButton:Landroid/widget/RadioButton;

.field private toDateButton:Landroid/widget/Button;

.field private toTextView:Landroid/widget/TextView;

.field private todayLayout:Landroid/widget/RelativeLayout;

.field private todayRadioButton:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 114
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/CustomizeDate;->mIsCustomize:Z

    .line 508
    new-instance v0, Lcom/android/email/activity/CustomizeDate$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/CustomizeDate$1;-><init>(Lcom/android/email/activity/CustomizeDate;)V

    iput-object v0, p0, Lcom/android/email/activity/CustomizeDate;->mFromDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 522
    new-instance v0, Lcom/android/email/activity/CustomizeDate$2;

    invoke-direct {v0, p0}, Lcom/android/email/activity/CustomizeDate$2;-><init>(Lcom/android/email/activity/CustomizeDate;)V

    iput-object v0, p0, Lcom/android/email/activity/CustomizeDate;->mToDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/CustomizeDate;)Ljava/text/SimpleDateFormat;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->dateFormatter:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/CustomizeDate;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->fromDateButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/email/activity/CustomizeDate;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/android/email/activity/CustomizeDate;->mYearFromSearch:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/email/activity/CustomizeDate;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/android/email/activity/CustomizeDate;->mMonthFromSearch:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/email/activity/CustomizeDate;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/android/email/activity/CustomizeDate;->mDayFromSearch:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/email/activity/CustomizeDate;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->toDateButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/email/activity/CustomizeDate;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/android/email/activity/CustomizeDate;->mYearToSearch:I

    return p1
.end method

.method static synthetic access$702(Lcom/android/email/activity/CustomizeDate;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/android/email/activity/CustomizeDate;->mMonthToSearch:I

    return p1
.end method

.method static synthetic access$802(Lcom/android/email/activity/CustomizeDate;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/android/email/activity/CustomizeDate;->mDayToSearch:I

    return p1
.end method

.method private disableCustomView()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 566
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->fromTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 567
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->fromTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 568
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->toTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 569
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->toTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 570
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->fromDateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 571
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->fromDateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 572
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->toDateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 573
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->toDateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 574
    return-void
.end method

.method private enableCustomView()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 577
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->fromTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 578
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->fromTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 579
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->toTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 580
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->toTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 581
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->fromDateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 582
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->fromDateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 583
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->toDateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 584
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->toDateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 585
    return-void
.end method

.method private init()V
    .registers 6

    .prologue
    .line 238
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 240
    .local v1, today:Ljava/util/Date;
    const v2, 0x7f100100

    invoke-virtual {p0, v2}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->todayLayout:Landroid/widget/RelativeLayout;

    .line 241
    const v2, 0x7f100103

    invoke-virtual {p0, v2}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->oneDayLayout:Landroid/widget/RelativeLayout;

    .line 242
    const v2, 0x7f100106

    invoke-virtual {p0, v2}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->oneWeekLayout:Landroid/widget/RelativeLayout;

    .line 243
    const v2, 0x7f100109

    invoke-virtual {p0, v2}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->oneMonthLayout:Landroid/widget/RelativeLayout;

    .line 244
    const v2, 0x7f10010c

    invoke-virtual {p0, v2}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->sixMonthLayout:Landroid/widget/RelativeLayout;

    .line 245
    const v2, 0x7f10010f

    invoke-virtual {p0, v2}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->oneYearLayout:Landroid/widget/RelativeLayout;

    .line 246
    const v2, 0x7f100112

    invoke-virtual {p0, v2}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->customizeLayout:Landroid/widget/RelativeLayout;

    .line 248
    const v2, 0x7f100102

    invoke-virtual {p0, v2}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->todayRadioButton:Landroid/widget/RadioButton;

    .line 249
    iget-object v2, p0, Lcom/android/email/activity/CustomizeDate;->todayRadioButton:Landroid/widget/RadioButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 250
    const v2, 0x7f100105

    invoke-virtual {p0, v2}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->oneDayRadioButton:Landroid/widget/RadioButton;

    .line 251
    const v2, 0x7f100108

    invoke-virtual {p0, v2}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->oneWeekRadioButton:Landroid/widget/RadioButton;

    .line 252
    const v2, 0x7f10010b

    invoke-virtual {p0, v2}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->oneMonthRadioButton:Landroid/widget/RadioButton;

    .line 253
    const v2, 0x7f10010e

    invoke-virtual {p0, v2}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->sixMonthRadioButton:Landroid/widget/RadioButton;

    .line 254
    const v2, 0x7f100111

    invoke-virtual {p0, v2}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->oneYearRadioButton:Landroid/widget/RadioButton;

    .line 255
    const v2, 0x7f100114

    invoke-virtual {p0, v2}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->customizeRadioButton:Landroid/widget/RadioButton;

    .line 257
    const v2, 0x7f100115

    invoke-virtual {p0, v2}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->fromTextView:Landroid/widget/TextView;

    .line 258
    const v2, 0x7f100118

    invoke-virtual {p0, v2}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->toTextView:Landroid/widget/TextView;

    .line 260
    const v2, 0x7f100117

    invoke-virtual {p0, v2}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->fromDateButton:Landroid/widget/Button;

    .line 261
    const v2, 0x7f10011a

    invoke-virtual {p0, v2}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->toDateButton:Landroid/widget/Button;

    .line 263
    const v2, 0x7f10011c

    invoke-virtual {p0, v2}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->searchButton:Landroid/widget/Button;

    .line 264
    const v2, 0x7f10011d

    invoke-virtual {p0, v2}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->cancelButton:Landroid/widget/Button;

    .line 266
    invoke-virtual {p0}, Lcom/android/email/activity/CustomizeDate;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "date_format"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, currentFormat:Ljava/lang/String;
    if-eqz v0, :cond_fb

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_109

    .line 271
    :cond_fb
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_135

    .line 272
    const-string v0, "MM-dd-yyyy"

    .line 281
    :cond_109
    :goto_109
    const-string v2, "yyyy-MM-dd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15f

    .line 282
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy. MMM. d. EEE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->dateFormatter:Ljava/text/SimpleDateFormat;

    .line 290
    :cond_11e
    :goto_11e
    iget-object v2, p0, Lcom/android/email/activity/CustomizeDate;->fromDateButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/email/activity/CustomizeDate;->dateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v2, p0, Lcom/android/email/activity/CustomizeDate;->toDateButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/email/activity/CustomizeDate;->dateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 292
    return-void

    .line 273
    :cond_135
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_159

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_159

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15c

    .line 276
    :cond_159
    const-string v0, "yyyy-MM-dd"

    goto :goto_109

    .line 278
    :cond_15c
    const-string v0, "dd-MM-yyyy"

    goto :goto_109

    .line 283
    :cond_15f
    const-string v2, "dd-MM-yyyy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_175

    .line 284
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE, d MMM, yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->dateFormatter:Ljava/text/SimpleDateFormat;

    goto :goto_11e

    .line 285
    :cond_175
    const-string v2, "MM-dd-yyyy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11e

    .line 286
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE, MMM d, yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v2, p0, Lcom/android/email/activity/CustomizeDate;->dateFormatter:Ljava/text/SimpleDateFormat;

    goto :goto_11e
.end method

.method private readArgumentsFromIntent()V
    .registers 9

    .prologue
    const-wide/16 v6, -0x1

    .line 211
    invoke-virtual {p0}, Lcom/android/email/activity/CustomizeDate;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "com.android.email.AccountId"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 212
    .local v0, accountId:J
    invoke-virtual {p0}, Lcom/android/email/activity/CustomizeDate;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "com.android.email.SearchText"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/CustomizeDate;->searchText:Ljava/lang/String;

    .line 213
    cmp-long v4, v0, v6

    if-nez v4, :cond_38

    .line 214
    const-string v4, "CustomizeDate"

    const-string v5, "Must pass com.android.email.AccountId of type long in extras"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {p0}, Lcom/android/email/activity/CustomizeDate;->finish()V

    .line 219
    :goto_26
    invoke-virtual {p0}, Lcom/android/email/activity/CustomizeDate;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "com.android.email.MailboxId"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 220
    .local v2, mailboxId:J
    cmp-long v4, v2, v6

    if-gtz v4, :cond_3f

    .line 221
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/email/activity/CustomizeDate;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 225
    :goto_37
    return-void

    .line 217
    .end local v2           #mailboxId:J
    :cond_38
    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/CustomizeDate;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    goto :goto_26

    .line 223
    .restart local v2       #mailboxId:J
    :cond_3f
    invoke-static {p0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/CustomizeDate;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    goto :goto_37
.end method

.method private setDefaultValues()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 554
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, 0x76c

    iput v0, p0, Lcom/android/email/activity/CustomizeDate;->mYearToSearch:I

    .line 555
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/CustomizeDate;->mMonthToSearch:I

    .line 556
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/CustomizeDate;->mDayToSearch:I

    .line 558
    iput v1, p0, Lcom/android/email/activity/CustomizeDate;->mHourFromSearch:I

    .line 559
    iput v1, p0, Lcom/android/email/activity/CustomizeDate;->mMinuteFromSearch:I

    .line 561
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/CustomizeDate;->mHourToSearch:I

    .line 562
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/CustomizeDate;->mMinuteToSearch:I

    .line 563
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;JJILjava/lang/String;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 229
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 230
    const-class v1, Lcom/android/email/activity/CustomizeDate;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 231
    const-string v1, "com.android.email.AccountId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 232
    const-string v1, "com.android.email.MailboxId"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 233
    const-string v1, "com.android.email.SearchText"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    invoke-virtual {p0, v0, p5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 235
    return-void
.end method

.method private toggleAllRadioButtons()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 544
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->todayRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 545
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->oneDayRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 546
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->oneWeekRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 547
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->oneMonthRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 548
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->sixMonthRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 549
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->oneYearRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 550
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->customizeRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 551
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 18
    .parameter "v"

    .prologue
    .line 296
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->todayLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p1

    if-eq v0, v12, :cond_10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->todayRadioButton:Landroid/widget/RadioButton;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_4d

    .line 297
    :cond_10
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/email/activity/CustomizeDate;->mIsCustomize:Z

    .line 298
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->toggleAllRadioButtons()V

    .line 299
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->todayRadioButton:Landroid/widget/RadioButton;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 300
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v12}, Ljava/util/Date;->getYear()I

    move-result v12

    add-int/lit16 v12, v12, 0x76c

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mYearFromSearch:I

    .line 301
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v12}, Ljava/util/Date;->getMonth()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mMonthFromSearch:I

    .line 302
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v12}, Ljava/util/Date;->getDate()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mDayFromSearch:I

    .line 303
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->setDefaultValues()V

    .line 304
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->disableCustomView()V

    .line 488
    :cond_4c
    :goto_4c
    return-void

    .line 305
    :cond_4d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->oneDayLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p1

    if-eq v0, v12, :cond_5d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->oneDayRadioButton:Landroid/widget/RadioButton;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_a0

    .line 306
    :cond_5d
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/email/activity/CustomizeDate;->mIsCustomize:Z

    .line 307
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->toggleAllRadioButtons()V

    .line 308
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->oneDayRadioButton:Landroid/widget/RadioButton;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 309
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 310
    .local v4, date:Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v12}, Ljava/util/Date;->getDate()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v4, v12}, Ljava/util/Date;->setDate(I)V

    .line 311
    invoke-virtual {v4}, Ljava/util/Date;->getYear()I

    move-result v12

    add-int/lit16 v12, v12, 0x76c

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mYearFromSearch:I

    .line 312
    invoke-virtual {v4}, Ljava/util/Date;->getMonth()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mMonthFromSearch:I

    .line 313
    invoke-virtual {v4}, Ljava/util/Date;->getDate()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mDayFromSearch:I

    .line 314
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->setDefaultValues()V

    .line 315
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->disableCustomView()V

    goto :goto_4c

    .line 316
    .end local v4           #date:Ljava/util/Date;
    :cond_a0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->oneWeekLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p1

    if-eq v0, v12, :cond_b0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->oneWeekRadioButton:Landroid/widget/RadioButton;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_f4

    .line 317
    :cond_b0
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/email/activity/CustomizeDate;->mIsCustomize:Z

    .line 318
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->toggleAllRadioButtons()V

    .line 319
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->oneWeekRadioButton:Landroid/widget/RadioButton;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 320
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 321
    .restart local v4       #date:Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v12}, Ljava/util/Date;->getDate()I

    move-result v12

    add-int/lit8 v12, v12, -0x7

    invoke-virtual {v4, v12}, Ljava/util/Date;->setDate(I)V

    .line 322
    invoke-virtual {v4}, Ljava/util/Date;->getYear()I

    move-result v12

    add-int/lit16 v12, v12, 0x76c

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mYearFromSearch:I

    .line 323
    invoke-virtual {v4}, Ljava/util/Date;->getMonth()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mMonthFromSearch:I

    .line 324
    invoke-virtual {v4}, Ljava/util/Date;->getDate()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mDayFromSearch:I

    .line 325
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->setDefaultValues()V

    .line 326
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->disableCustomView()V

    goto/16 :goto_4c

    .line 327
    .end local v4           #date:Ljava/util/Date;
    :cond_f4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->oneMonthLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p1

    if-eq v0, v12, :cond_104

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->oneMonthRadioButton:Landroid/widget/RadioButton;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_148

    .line 328
    :cond_104
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/email/activity/CustomizeDate;->mIsCustomize:Z

    .line 329
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->toggleAllRadioButtons()V

    .line 330
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->oneMonthRadioButton:Landroid/widget/RadioButton;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 331
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 332
    .restart local v4       #date:Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v12}, Ljava/util/Date;->getMonth()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v4, v12}, Ljava/util/Date;->setMonth(I)V

    .line 333
    invoke-virtual {v4}, Ljava/util/Date;->getYear()I

    move-result v12

    add-int/lit16 v12, v12, 0x76c

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mYearFromSearch:I

    .line 334
    invoke-virtual {v4}, Ljava/util/Date;->getMonth()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mMonthFromSearch:I

    .line 335
    invoke-virtual {v4}, Ljava/util/Date;->getDate()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mDayFromSearch:I

    .line 336
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->setDefaultValues()V

    .line 337
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->disableCustomView()V

    goto/16 :goto_4c

    .line 338
    .end local v4           #date:Ljava/util/Date;
    :cond_148
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->sixMonthLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p1

    if-eq v0, v12, :cond_158

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->sixMonthRadioButton:Landroid/widget/RadioButton;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_19c

    .line 339
    :cond_158
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/email/activity/CustomizeDate;->mIsCustomize:Z

    .line 340
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->toggleAllRadioButtons()V

    .line 341
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->sixMonthRadioButton:Landroid/widget/RadioButton;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 342
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 343
    .restart local v4       #date:Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v12}, Ljava/util/Date;->getMonth()I

    move-result v12

    add-int/lit8 v12, v12, -0x6

    invoke-virtual {v4, v12}, Ljava/util/Date;->setMonth(I)V

    .line 344
    invoke-virtual {v4}, Ljava/util/Date;->getYear()I

    move-result v12

    add-int/lit16 v12, v12, 0x76c

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mYearFromSearch:I

    .line 345
    invoke-virtual {v4}, Ljava/util/Date;->getMonth()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mMonthFromSearch:I

    .line 346
    invoke-virtual {v4}, Ljava/util/Date;->getDate()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mDayFromSearch:I

    .line 347
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->setDefaultValues()V

    .line 348
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->disableCustomView()V

    goto/16 :goto_4c

    .line 349
    .end local v4           #date:Ljava/util/Date;
    :cond_19c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->oneYearLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p1

    if-eq v0, v12, :cond_1ac

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->oneYearRadioButton:Landroid/widget/RadioButton;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_1f0

    .line 350
    :cond_1ac
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/email/activity/CustomizeDate;->mIsCustomize:Z

    .line 351
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->toggleAllRadioButtons()V

    .line 352
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->oneYearRadioButton:Landroid/widget/RadioButton;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 353
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 354
    .restart local v4       #date:Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v12}, Ljava/util/Date;->getYear()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v4, v12}, Ljava/util/Date;->setYear(I)V

    .line 355
    invoke-virtual {v4}, Ljava/util/Date;->getYear()I

    move-result v12

    add-int/lit16 v12, v12, 0x76c

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mYearFromSearch:I

    .line 356
    invoke-virtual {v4}, Ljava/util/Date;->getMonth()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mMonthFromSearch:I

    .line 357
    invoke-virtual {v4}, Ljava/util/Date;->getDate()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mDayFromSearch:I

    .line 358
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->setDefaultValues()V

    .line 359
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->disableCustomView()V

    goto/16 :goto_4c

    .line 360
    .end local v4           #date:Ljava/util/Date;
    :cond_1f0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->customizeLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p1

    if-eq v0, v12, :cond_200

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->customizeRadioButton:Landroid/widget/RadioButton;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_290

    .line 361
    :cond_200
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 362
    .restart local v4       #date:Ljava/util/Date;
    invoke-virtual {v4}, Ljava/util/Date;->getYear()I

    move-result v12

    add-int/lit16 v12, v12, 0x76c

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mYearFromSearch:I

    .line 363
    invoke-virtual {v4}, Ljava/util/Date;->getMonth()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mMonthFromSearch:I

    .line 364
    invoke-virtual {v4}, Ljava/util/Date;->getDate()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mDayFromSearch:I

    .line 365
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mHourFromSearch:I

    .line 366
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mMinuteFromSearch:I

    .line 367
    invoke-virtual {v4}, Ljava/util/Date;->getYear()I

    move-result v12

    add-int/lit16 v12, v12, 0x76c

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mYearToSearch:I

    .line 368
    invoke-virtual {v4}, Ljava/util/Date;->getMonth()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mMonthToSearch:I

    .line 369
    invoke-virtual {v4}, Ljava/util/Date;->getDate()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mDayToSearch:I

    .line 370
    invoke-virtual {v4}, Ljava/util/Date;->getHours()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mHourToSearch:I

    .line 371
    invoke-virtual {v4}, Ljava/util/Date;->getMinutes()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/email/activity/CustomizeDate;->mMinuteToSearch:I

    .line 372
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/email/activity/CustomizeDate;->mIsCustomize:Z

    .line 374
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    .local v5, defaultBuilder:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->dateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v12, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    const-string v12, "~"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->dateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v12, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->toggleAllRadioButtons()V

    .line 380
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->customizeRadioButton:Landroid/widget/RadioButton;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 381
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->enableCustomView()V

    goto/16 :goto_4c

    .line 382
    .end local v4           #date:Ljava/util/Date;
    .end local v5           #defaultBuilder:Ljava/lang/StringBuilder;
    :cond_290
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->fromDateButton:Landroid/widget/Button;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_2a1

    .line 383
    const/16 v12, 0x3e8

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/email/activity/CustomizeDate;->showDialog(I)V

    goto/16 :goto_4c

    .line 384
    :cond_2a1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->toDateButton:Landroid/widget/Button;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_2b2

    .line 385
    const/16 v12, 0x7d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/email/activity/CustomizeDate;->showDialog(I)V

    goto/16 :goto_4c

    .line 386
    :cond_2b2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->searchButton:Landroid/widget/Button;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_5c9

    .line 387
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 388
    .local v7, fromCal:Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 389
    .local v10, toCal:Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/email/activity/CustomizeDate;->mYearFromSearch:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/email/activity/CustomizeDate;->mMonthFromSearch:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/email/activity/CustomizeDate;->mDayFromSearch:I

    invoke-virtual {v7, v12, v13, v14}, Ljava/util/Calendar;->set(III)V

    .line 390
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/email/activity/CustomizeDate;->mYearToSearch:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/email/activity/CustomizeDate;->mMonthToSearch:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/email/activity/CustomizeDate;->mDayToSearch:I

    invoke-virtual {v10, v12, v13, v14}, Ljava/util/Calendar;->set(III)V

    .line 392
    invoke-virtual {v7, v10}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2f8

    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0803ea

    const/16 v14, 0x7d0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4c

    .line 400
    :cond_2f8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->mEmailSearchAdapter:Lcom/android/email/EmailSearchAdapter;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/CustomizeDate;->searchText:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/android/email/EmailSearchAdapter;->setFreeText(Ljava/lang/String;)V

    .line 402
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Text entered is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/CustomizeDate;->searchText:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 403
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "from y m d "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/email/activity/CustomizeDate;->mYearFromSearch:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/email/activity/CustomizeDate;->mMonthFromSearch:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/email/activity/CustomizeDate;->mDayFromSearch:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 405
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "to y m d "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/email/activity/CustomizeDate;->mYearToSearch:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/email/activity/CustomizeDate;->mMonthToSearch:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/email/activity/CustomizeDate;->mDayToSearch:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 407
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "from h m "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/email/activity/CustomizeDate;->mHourFromSearch:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/email/activity/CustomizeDate;->mMinuteFromSearch:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 408
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "to h m "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/email/activity/CustomizeDate;->mHourToSearch:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/email/activity/CustomizeDate;->mMinuteToSearch:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 410
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v12, "dd/MM/yyyy hh:mm:ss a"

    invoke-direct {v6, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 411
    .local v6, formatter:Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 412
    .local v1, c:Ljava/util/Calendar;
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/email/activity/CustomizeDate;->mYearFromSearch:I

    invoke-virtual {v1, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 413
    const/4 v12, 0x2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/email/activity/CustomizeDate;->mMonthFromSearch:I

    invoke-virtual {v1, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 414
    const/4 v12, 0x5

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/email/activity/CustomizeDate;->mDayFromSearch:I

    invoke-virtual {v1, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 416
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/email/activity/CustomizeDate;->mHourFromSearch:I

    const/16 v13, 0xc

    if-lt v12, v13, :cond_58d

    .line 417
    const/16 v12, 0xa

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/email/activity/CustomizeDate;->mHourFromSearch:I

    add-int/lit8 v13, v13, -0xc

    invoke-virtual {v1, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 421
    :goto_419
    const/16 v12, 0xc

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/email/activity/CustomizeDate;->mMinuteFromSearch:I

    invoke-virtual {v1, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 422
    const/16 v12, 0xd

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 424
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/email/activity/CustomizeDate;->mHourFromSearch:I

    const/16 v13, 0xc

    if-ge v12, v13, :cond_598

    .line 425
    const/16 v12, 0x9

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 429
    :goto_436
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->mEmailSearchAdapter:Lcom/android/email/EmailSearchAdapter;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/email/EmailSearchAdapter;->setGreaterThanDateStr(Ljava/lang/String;)V

    .line 431
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "on click greater + "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 433
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v12, "dd/MM/yyyy hh:mm:ss a"

    invoke-direct {v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 434
    .local v11, to_formatter:Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 435
    .local v2, cTo:Ljava/util/Calendar;
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/email/activity/CustomizeDate;->mYearToSearch:I

    invoke-virtual {v2, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 436
    const/4 v12, 0x2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/email/activity/CustomizeDate;->mMonthToSearch:I

    invoke-virtual {v2, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 437
    const/4 v12, 0x5

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/email/activity/CustomizeDate;->mDayToSearch:I

    invoke-virtual {v2, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 439
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/email/activity/CustomizeDate;->mHourToSearch:I

    const/16 v13, 0xc

    if-lt v12, v13, :cond_5a0

    .line 440
    const/16 v12, 0xa

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/email/activity/CustomizeDate;->mHourToSearch:I

    add-int/lit8 v13, v13, -0xc

    invoke-virtual {v2, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 444
    :goto_49b
    const/16 v12, 0xd

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 445
    const/16 v12, 0xc

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/email/activity/CustomizeDate;->mMinuteToSearch:I

    invoke-virtual {v2, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 447
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/email/activity/CustomizeDate;->mHourToSearch:I

    const/16 v13, 0xc

    if-ge v12, v13, :cond_5ab

    .line 448
    const/16 v12, 0x9

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 452
    :goto_4b8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->mEmailSearchAdapter:Lcom/android/email/EmailSearchAdapter;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/email/EmailSearchAdapter;->setLessThanDateStr(Ljava/lang/String;)V

    .line 454
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "on click less + "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 456
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v12, :cond_5b3

    .line 457
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->mEmailSearchAdapter:Lcom/android/email/EmailSearchAdapter;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/CustomizeDate;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v13, v13, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/email/EmailSearchAdapter;->setIdStr(Ljava/lang/String;)V

    .line 461
    :goto_4fe
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-nez v12, :cond_5be

    .line 462
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->mEmailSearchAdapter:Lcom/android/email/EmailSearchAdapter;

    const-string v13, "True"

    invoke-virtual {v12, v13}, Lcom/android/email/EmailSearchAdapter;->setoptionsDeepTraversalStr(Ljava/lang/String;)V

    .line 466
    :goto_50d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->mController:Lcom/android/email/Controller;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/CustomizeDate;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v13, v13, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v15, 0x8

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v8

    .line 469
    .local v8, searchFolderId:J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->mEmailSearchAdapter:Lcom/android/email/EmailSearchAdapter;

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/email/EmailSearchAdapter;->setFoldIdStr(Ljava/lang/String;)V

    .line 471
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v12, :cond_566

    .line 472
    const-string v12, "CustomizeDate"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fzhang email Search Adapter search is called mMailbox = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/CustomizeDate;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v14, v14, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " foldid ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "accoundid = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/CustomizeDate;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v14, v14, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_566
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->mEmailSearchAdapter:Lcom/android/email/EmailSearchAdapter;

    invoke-virtual {v12}, Lcom/android/email/EmailSearchAdapter;->search()I

    .line 479
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 480
    .local v3, data:Landroid/content/Intent;
    const-string v12, "com.android.email.activity.messagelistxl.searchaccoundid"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/CustomizeDate;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v13, v13, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 481
    const-string v12, "com.android.email.activity.messagelistxl.searchfolderid"

    invoke-virtual {v3, v12, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 483
    const/4 v12, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v3}, Lcom/android/email/activity/CustomizeDate;->setResult(ILandroid/content/Intent;)V

    .line 484
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->finish()V

    goto/16 :goto_4c

    .line 419
    .end local v2           #cTo:Ljava/util/Calendar;
    .end local v3           #data:Landroid/content/Intent;
    .end local v8           #searchFolderId:J
    .end local v11           #to_formatter:Ljava/text/SimpleDateFormat;
    :cond_58d
    const/16 v12, 0xa

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/email/activity/CustomizeDate;->mHourFromSearch:I

    invoke-virtual {v1, v12, v13}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_419

    .line 427
    :cond_598
    const/16 v12, 0x9

    const/4 v13, 0x1

    invoke-virtual {v1, v12, v13}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_436

    .line 442
    .restart local v2       #cTo:Ljava/util/Calendar;
    .restart local v11       #to_formatter:Ljava/text/SimpleDateFormat;
    :cond_5a0
    const/16 v12, 0xa

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/email/activity/CustomizeDate;->mHourToSearch:I

    invoke-virtual {v2, v12, v13}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_49b

    .line 450
    :cond_5ab
    const/16 v12, 0x9

    const/4 v13, 0x1

    invoke-virtual {v2, v12, v13}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_4b8

    .line 459
    :cond_5b3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->mEmailSearchAdapter:Lcom/android/email/EmailSearchAdapter;

    const-string v13, "-1"

    invoke-virtual {v12, v13}, Lcom/android/email/EmailSearchAdapter;->setIdStr(Ljava/lang/String;)V

    goto/16 :goto_4fe

    .line 464
    :cond_5be
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->mEmailSearchAdapter:Lcom/android/email/EmailSearchAdapter;

    const-string v13, "False"

    invoke-virtual {v12, v13}, Lcom/android/email/EmailSearchAdapter;->setoptionsDeepTraversalStr(Ljava/lang/String;)V

    goto/16 :goto_50d

    .line 485
    .end local v1           #c:Ljava/util/Calendar;
    .end local v2           #cTo:Ljava/util/Calendar;
    .end local v6           #formatter:Ljava/text/SimpleDateFormat;
    .end local v7           #fromCal:Ljava/util/Calendar;
    .end local v10           #toCal:Ljava/util/Calendar;
    .end local v11           #to_formatter:Ljava/text/SimpleDateFormat;
    :cond_5c9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/CustomizeDate;->cancelButton:Landroid/widget/Button;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_4c

    .line 486
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/CustomizeDate;->finish()V

    goto/16 :goto_4c
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const v4, 0x7f080391

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 141
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 142
    const v1, 0x7f04005f

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDate;->setContentView(I)V

    .line 144
    if-eqz p1, :cond_18

    .line 145
    const-string v1, "isCustomizeDate"

    invoke-virtual {p1, v1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/email/activity/CustomizeDate;->mIsCustomize:Z

    .line 148
    :cond_18
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 149
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/CustomizeDate;->mYear:I

    .line 150
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/CustomizeDate;->mMonth:I

    .line 151
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/CustomizeDate;->mDay:I

    .line 153
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDate;->readArgumentsFromIntent()V

    .line 155
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v1, :cond_fc

    .line 156
    invoke-virtual {p0}, Lcom/android/email/activity/CustomizeDate;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/email/activity/CustomizeDate;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-virtual {v1, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDate;->setTitle(Ljava/lang/CharSequence;)V

    .line 169
    :goto_4a
    invoke-virtual {p0}, Lcom/android/email/activity/CustomizeDate;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDate;->mController:Lcom/android/email/Controller;

    .line 170
    new-instance v1, Lcom/android/email/EmailSearchAdapter;

    invoke-direct {v1, p0}, Lcom/android/email/EmailSearchAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDate;->mEmailSearchAdapter:Lcom/android/email/EmailSearchAdapter;

    .line 171
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->mEmailSearchAdapter:Lcom/android/email/EmailSearchAdapter;

    iget-object v2, p0, Lcom/android/email/activity/CustomizeDate;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1, v2}, Lcom/android/email/EmailSearchAdapter;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 173
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDate;->init()V

    .line 175
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    iput v1, p0, Lcom/android/email/activity/CustomizeDate;->mYearFromSearch:I

    .line 176
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/CustomizeDate;->mMonthFromSearch:I

    .line 177
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/CustomizeDate;->mDayFromSearch:I

    .line 178
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDate;->setDefaultValues()V

    .line 180
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->todayLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->oneDayLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->oneWeekLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->oneMonthLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->sixMonthLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->oneYearLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->customizeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->fromDateButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->toDateButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->searchButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->todayRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->oneDayRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->oneWeekRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->oneMonthRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->sixMonthRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->oneYearRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->customizeRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-boolean v1, p0, Lcom/android/email/activity/CustomizeDate;->mIsCustomize:Z

    if-eqz v1, :cond_e3

    .line 201
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDate;->enableCustomView()V

    .line 203
    :cond_e3
    const v1, 0x7f10011b

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDate;->searchcancelButtonRelativeLayout:Landroid/widget/LinearLayout;

    .line 204
    invoke-static {}, Lcom/android/email/util/EmailFeature;->isQ1BasedModel()Z

    move-result v1

    if-eqz v1, :cond_fb

    .line 205
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->searchcancelButtonRelativeLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x91

    invoke-virtual {v1, v7, v2, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 208
    :cond_fb
    return-void

    .line 158
    :cond_fc
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v1, :cond_117

    .line 159
    invoke-virtual {p0}, Lcom/android/email/activity/CustomizeDate;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/email/activity/CustomizeDate;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDate;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_4a

    .line 161
    :cond_117
    const-string v1, "CustomizeDate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not restoreAccountWithId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/email/activity/CustomizeDate;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.android.email.AccountId"

    const-wide/16 v5, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {p0}, Lcom/android/email/activity/CustomizeDate;->finish()V

    goto/16 :goto_4a
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter "id"

    .prologue
    .line 492
    sparse-switch p1, :sswitch_data_24

    .line 498
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 494
    :sswitch_5
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/android/email/activity/CustomizeDate;->mFromDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lcom/android/email/activity/CustomizeDate;->mYear:I

    iget v4, p0, Lcom/android/email/activity/CustomizeDate;->mMonth:I

    iget v5, p0, Lcom/android/email/activity/CustomizeDate;->mDay:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_4

    .line 496
    :sswitch_14
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/android/email/activity/CustomizeDate;->mToDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lcom/android/email/activity/CustomizeDate;->mYear:I

    iget v4, p0, Lcom/android/email/activity/CustomizeDate;->mMonth:I

    iget v5, p0, Lcom/android/email/activity/CustomizeDate;->mDay:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_4

    .line 492
    nop

    :sswitch_data_24
    .sparse-switch
        0x3e8 -> :sswitch_5
        0x7d0 -> :sswitch_14
    .end sparse-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 6
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 504
    check-cast p2, Landroid/app/DatePickerDialog;

    .end local p2
    iget v0, p0, Lcom/android/email/activity/CustomizeDate;->mYear:I

    iget v1, p0, Lcom/android/email/activity/CustomizeDate;->mMonth:I

    iget v2, p0, Lcom/android/email/activity/CustomizeDate;->mDay:I

    invoke-virtual {p2, v0, v1, v2}, Landroid/app/DatePickerDialog;->updateDate(III)V

    .line 506
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 538
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 540
    const-string v0, "isCustomizeDate"

    iget-boolean v1, p0, Lcom/android/email/activity/CustomizeDate;->mIsCustomize:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 541
    return-void
.end method
