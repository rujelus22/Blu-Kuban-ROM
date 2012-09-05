.class public Lcom/android/email/activity/setup/DayOfTheWeek;
.super Landroid/widget/LinearLayout;
.source "DayOfTheWeek.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/DayOfTheWeek$dayViewClickListener;
    }
.end annotation


# static fields
.field public static friSelected:Z

.field public static monSelected:Z

.field public static satSelected:Z

.field public static sunSelected:Z

.field public static thuSelected:Z

.field public static tueSelected:Z

.field public static wedSelected:Z


# instance fields
.field private DaysView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private selectedDays:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private t1:Landroid/widget/ToggleButton;

.field private t2:Landroid/widget/ToggleButton;

.field private t3:Landroid/widget/ToggleButton;

.field private t4:Landroid/widget/ToggleButton;

.field private t5:Landroid/widget/ToggleButton;

.field private t6:Landroid/widget/ToggleButton;

.field private t7:Landroid/widget/ToggleButton;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 47
    sput-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->monSelected:Z

    .line 49
    sput-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->tueSelected:Z

    .line 51
    sput-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->wedSelected:Z

    .line 53
    sput-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->thuSelected:Z

    .line 55
    sput-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->friSelected:Z

    .line 57
    sput-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->satSelected:Z

    .line 59
    sput-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->sunSelected:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "as"

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t1:Landroid/widget/ToggleButton;

    .line 27
    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t2:Landroid/widget/ToggleButton;

    .line 29
    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t3:Landroid/widget/ToggleButton;

    .line 31
    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t4:Landroid/widget/ToggleButton;

    .line 33
    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t5:Landroid/widget/ToggleButton;

    .line 35
    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t6:Landroid/widget/ToggleButton;

    .line 37
    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t7:Landroid/widget/ToggleButton;

    .line 39
    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->mInflater:Landroid/view/LayoutInflater;

    .line 41
    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->mContext:Landroid/content/Context;

    .line 43
    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->DaysView:Landroid/view/View;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->selectedDays:Ljava/util/HashMap;

    .line 364
    new-instance v0, Lcom/android/email/activity/setup/DayOfTheWeek$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/DayOfTheWeek$1;-><init>(Lcom/android/email/activity/setup/DayOfTheWeek;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    iput-object p1, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->mContext:Landroid/content/Context;

    .line 64
    invoke-direct {p0}, Lcom/android/email/activity/setup/DayOfTheWeek;->initDaySelector()V

    .line 65
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "refresh_widget"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    return-void
.end method

.method private initDaySelector()V
    .registers 4

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->mContext:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 117
    :goto_4
    return-void

    .line 72
    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->selectedDays:Ljava/util/HashMap;

    if-eqz v0, :cond_e

    .line 73
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->selectedDays:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 75
    :cond_e
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->mInflater:Landroid/view/LayoutInflater;

    .line 76
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040061

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->DaysView:Landroid/view/View;

    .line 78
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->DaysView:Landroid/view/View;

    const v1, 0x7f10011f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t1:Landroid/widget/ToggleButton;

    .line 82
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t1:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->DaysView:Landroid/view/View;

    const v1, 0x7f100120

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t2:Landroid/widget/ToggleButton;

    .line 87
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t2:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->DaysView:Landroid/view/View;

    const v1, 0x7f100121

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t3:Landroid/widget/ToggleButton;

    .line 92
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t3:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->DaysView:Landroid/view/View;

    const v1, 0x7f100122

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t4:Landroid/widget/ToggleButton;

    .line 97
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t4:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->DaysView:Landroid/view/View;

    const v1, 0x7f100123

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t5:Landroid/widget/ToggleButton;

    .line 102
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t5:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->DaysView:Landroid/view/View;

    const v1, 0x7f100124

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t6:Landroid/widget/ToggleButton;

    .line 107
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t6:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->DaysView:Landroid/view/View;

    const v1, 0x7f10011e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t7:Landroid/widget/ToggleButton;

    .line 112
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t7:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/email/activity/setup/DayOfTheWeek;->setWidgetProperties()V

    .line 116
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->DaysView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/DayOfTheWeek;->addView(Landroid/view/View;)V

    goto/16 :goto_4
.end method

.method private setFriView()V
    .registers 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t5:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->friSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 332
    sget-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->friSelected:Z

    if-eqz v0, :cond_12

    .line 333
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t5:Landroid/widget/ToggleButton;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 337
    :goto_11
    return-void

    .line 335
    :cond_12
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t5:Landroid/widget/ToggleButton;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    goto :goto_11
.end method

.method private setMonView()V
    .registers 3

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t1:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->monSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 279
    sget-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->monSelected:Z

    if-eqz v0, :cond_12

    .line 280
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t1:Landroid/widget/ToggleButton;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 284
    :goto_11
    return-void

    .line 282
    :cond_12
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t1:Landroid/widget/ToggleButton;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    goto :goto_11
.end method

.method private setSatView()V
    .registers 3

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t6:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->satSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 345
    sget-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->satSelected:Z

    if-eqz v0, :cond_12

    .line 346
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t6:Landroid/widget/ToggleButton;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 350
    :goto_11
    return-void

    .line 348
    :cond_12
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t6:Landroid/widget/ToggleButton;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    goto :goto_11
.end method

.method private setSunView()V
    .registers 3

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t7:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->sunSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 358
    return-void
.end method

.method private setThuView()V
    .registers 3

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t4:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->thuSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 319
    sget-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->thuSelected:Z

    if-eqz v0, :cond_12

    .line 320
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t4:Landroid/widget/ToggleButton;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 324
    :goto_11
    return-void

    .line 322
    :cond_12
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t4:Landroid/widget/ToggleButton;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    goto :goto_11
.end method

.method private setTueView()V
    .registers 3

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t2:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->tueSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 292
    sget-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->tueSelected:Z

    if-eqz v0, :cond_12

    .line 293
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t2:Landroid/widget/ToggleButton;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 297
    :goto_11
    return-void

    .line 295
    :cond_12
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t2:Landroid/widget/ToggleButton;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    goto :goto_11
.end method

.method private setWedView()V
    .registers 3

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t3:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->wedSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 305
    sget-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->wedSelected:Z

    if-eqz v0, :cond_12

    .line 306
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t3:Landroid/widget/ToggleButton;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 311
    :goto_11
    return-void

    .line 308
    :cond_12
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t3:Landroid/widget/ToggleButton;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    goto :goto_11
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    const/4 v5, -0x1

    const/high16 v4, -0x100

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_13a

    .line 249
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "No way to come here!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 252
    :goto_13
    return-void

    .line 134
    :pswitch_14
    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->monSelected:Z

    if-nez v2, :cond_19

    move v0, v1

    :cond_19
    sput-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->monSelected:Z

    .line 135
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t1:Landroid/widget/ToggleButton;

    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->monSelected:Z

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 142
    sget-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->monSelected:Z

    if-eqz v0, :cond_32

    .line 143
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t1:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 147
    :goto_2b
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->monSelected:Z

    aput-boolean v2, v0, v1

    goto :goto_13

    .line 145
    :cond_32
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t1:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setTextColor(I)V

    goto :goto_2b

    .line 151
    :pswitch_38
    const-string v2, ""

    const-string v3, "tuesday selected------------"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->tueSelected:Z

    if-nez v2, :cond_5d

    :goto_43
    sput-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->tueSelected:Z

    .line 153
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t2:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->tueSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 159
    sget-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->tueSelected:Z

    if-eqz v0, :cond_5f

    .line 160
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t2:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 164
    :goto_55
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x2

    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->tueSelected:Z

    aput-boolean v2, v0, v1

    goto :goto_13

    :cond_5d
    move v1, v0

    .line 152
    goto :goto_43

    .line 162
    :cond_5f
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t2:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setTextColor(I)V

    goto :goto_55

    .line 167
    :pswitch_65
    const-string v2, ""

    const-string v3, "wednesday selected------------"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->wedSelected:Z

    if-nez v2, :cond_8a

    :goto_70
    sput-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->wedSelected:Z

    .line 169
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t3:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->wedSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 175
    sget-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->wedSelected:Z

    if-eqz v0, :cond_8c

    .line 176
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t3:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 180
    :goto_82
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x3

    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->wedSelected:Z

    aput-boolean v2, v0, v1

    goto :goto_13

    :cond_8a
    move v1, v0

    .line 168
    goto :goto_70

    .line 178
    :cond_8c
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t3:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setTextColor(I)V

    goto :goto_82

    .line 183
    :pswitch_92
    const-string v2, ""

    const-string v3, "thursday selected------------"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->thuSelected:Z

    if-nez v2, :cond_b8

    :goto_9d
    sput-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->thuSelected:Z

    .line 185
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t4:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->thuSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 191
    sget-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->thuSelected:Z

    if-eqz v0, :cond_ba

    .line 192
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t4:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 196
    :goto_af
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x4

    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->thuSelected:Z

    aput-boolean v2, v0, v1

    goto/16 :goto_13

    :cond_b8
    move v1, v0

    .line 184
    goto :goto_9d

    .line 194
    :cond_ba
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t4:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setTextColor(I)V

    goto :goto_af

    .line 199
    :pswitch_c0
    const-string v2, ""

    const-string v3, "friday selected------------"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->friSelected:Z

    if-nez v2, :cond_e6

    :goto_cb
    sput-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->friSelected:Z

    .line 201
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t5:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->friSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 207
    sget-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->friSelected:Z

    if-eqz v0, :cond_e8

    .line 208
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t5:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 212
    :goto_dd
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x5

    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->friSelected:Z

    aput-boolean v2, v0, v1

    goto/16 :goto_13

    :cond_e6
    move v1, v0

    .line 200
    goto :goto_cb

    .line 210
    :cond_e8
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t5:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setTextColor(I)V

    goto :goto_dd

    .line 215
    :pswitch_ee
    const-string v2, ""

    const-string v3, "saturday selected------------"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->satSelected:Z

    if-nez v2, :cond_114

    :goto_f9
    sput-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->satSelected:Z

    .line 217
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t6:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->satSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 223
    sget-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->satSelected:Z

    if-eqz v0, :cond_116

    .line 224
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t6:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 228
    :goto_10b
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x6

    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->satSelected:Z

    aput-boolean v2, v0, v1

    goto/16 :goto_13

    :cond_114
    move v1, v0

    .line 216
    goto :goto_f9

    .line 226
    :cond_116
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t6:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setTextColor(I)V

    goto :goto_10b

    .line 231
    :pswitch_11c
    const-string v2, ""

    const-string v3, "sunday selected------------"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->sunSelected:Z

    if-nez v2, :cond_138

    :goto_127
    sput-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->sunSelected:Z

    .line 233
    iget-object v1, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t7:Landroid/widget/ToggleButton;

    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->sunSelected:Z

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 239
    sget-object v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->sunSelected:Z

    aput-boolean v2, v1, v0

    goto/16 :goto_13

    :cond_138
    move v1, v0

    .line 232
    goto :goto_127

    .line 132
    :pswitch_data_13a
    .packed-switch 0x7f10011e
        :pswitch_11c
        :pswitch_14
        :pswitch_38
        :pswitch_65
        :pswitch_92
        :pswitch_c0
        :pswitch_ee
    .end packed-switch
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 373
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 374
    return-void
.end method

.method public setWidgetProperties()V
    .registers 3

    .prologue
    .line 255
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    sput-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->monSelected:Z

    .line 256
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    sput-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->tueSelected:Z

    .line 257
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    sput-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->wedSelected:Z

    .line 258
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    sput-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->thuSelected:Z

    .line 259
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    sput-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->friSelected:Z

    .line 260
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x6

    aget-boolean v0, v0, v1

    sput-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->satSelected:Z

    .line 261
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    sput-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->sunSelected:Z

    .line 263
    invoke-direct {p0}, Lcom/android/email/activity/setup/DayOfTheWeek;->setMonView()V

    .line 264
    invoke-direct {p0}, Lcom/android/email/activity/setup/DayOfTheWeek;->setTueView()V

    .line 265
    invoke-direct {p0}, Lcom/android/email/activity/setup/DayOfTheWeek;->setWedView()V

    .line 266
    invoke-direct {p0}, Lcom/android/email/activity/setup/DayOfTheWeek;->setThuView()V

    .line 267
    invoke-direct {p0}, Lcom/android/email/activity/setup/DayOfTheWeek;->setFriView()V

    .line 268
    invoke-direct {p0}, Lcom/android/email/activity/setup/DayOfTheWeek;->setSatView()V

    .line 269
    invoke-direct {p0}, Lcom/android/email/activity/setup/DayOfTheWeek;->setSunView()V

    .line 270
    return-void
.end method
