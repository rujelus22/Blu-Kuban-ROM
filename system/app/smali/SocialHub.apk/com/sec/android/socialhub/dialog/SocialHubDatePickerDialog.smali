.class public Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;
.super Landroid/app/DatePickerDialog;
.source "SocialHubDatePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static mCalendar:Ljava/util/Calendar;

.field private static mListener:Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog$OnDateChangedListener;


# instance fields
.field private mCurrent:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;->mListener:Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog$OnDateChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 26
    invoke-static {}, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;->getListener()Landroid/app/DatePickerDialog$OnDateSetListener;

    move-result-object v2

    const/16 v3, 0x76c

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 18
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;->mCurrent:J

    .line 28
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 30
    invoke-virtual {p0}, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;->initTime()V

    .line 31
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;->setButtonListener(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9
    .parameter "context"
    .parameter "date"

    .prologue
    const/4 v4, 0x1

    .line 36
    invoke-static {}, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;->getListener()Landroid/app/DatePickerDialog$OnDateSetListener;

    move-result-object v2

    const/16 v3, 0x76c

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 18
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;->mCurrent:J

    .line 37
    invoke-virtual {p0, p2}, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;->initTime(Ljava/lang/String;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;->setButtonListener(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method static synthetic access$000()Ljava/util/Calendar;
    .registers 1

    .prologue
    .line 15
    sget-object v0, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$100()Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog$OnDateChangedListener;
    .registers 1

    .prologue
    .line 15
    sget-object v0, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;->mListener:Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog$OnDateChangedListener;

    return-object v0
.end method

.method public static getListener()Landroid/app/DatePickerDialog$OnDateSetListener;
    .registers 1

    .prologue
    .line 101
    new-instance v0, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog$2;

    invoke-direct {v0}, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog$2;-><init>()V

    return-object v0
.end method

.method private setButtonListener(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 43
    const/4 v0, -0x2

    const v1, 0x7f08001b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog$1;

    invoke-direct {v2, p0}, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog$1;-><init>(Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 52
    return-void
.end method


# virtual methods
.method public initTime()V
    .registers 7

    .prologue
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;->mCurrent:J

    .line 63
    sget-object v3, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    iget-wide v4, p0, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;->mCurrent:J

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 65
    sget-object v3, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 66
    .local v2, t_year:I
    sget-object v3, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 67
    .local v1, t_month:I
    sget-object v3, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 69
    .local v0, t_day:I
    invoke-virtual {p0, v2, v1, v0}, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;->updateDate(III)V

    .line 70
    return-void
.end method

.method public initTime(Ljava/lang/String;)V
    .registers 9
    .parameter "date"

    .prologue
    .line 82
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 84
    .local v0, current:Ljava/util/Date;
    sget-object v5, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 86
    sget-object v5, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 87
    .local v4, t_year:I
    sget-object v5, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 88
    .local v3, t_month:I
    sget-object v5, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 90
    .local v2, t_day:I
    invoke-virtual {p0, v4, v3, v2}, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;->updateDate(III)V
    :try_end_29
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_29} :catch_2a

    .line 96
    .end local v0           #current:Ljava/util/Date;
    .end local v2           #t_day:I
    .end local v3           #t_month:I
    .end local v4           #t_year:I
    :goto_29
    return-void

    .line 92
    :catch_2a
    move-exception v1

    .line 94
    .local v1, e:Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_29
.end method

.method public setOnDateChangedListener(Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog$OnDateChangedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 56
    sput-object p1, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;->mListener:Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog$OnDateChangedListener;

    .line 57
    return-void
.end method
