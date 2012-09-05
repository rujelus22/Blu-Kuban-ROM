.class public Lcom/sec/android/app/phoneutil/AutoAnswer;
.super Landroid/app/Activity;
.source "AutoAnswer.java"


# instance fields
.field private mAutoAnswerMode:Landroid/widget/RadioGroup;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initialSetting(Landroid/widget/RadioGroup;)V
    .registers 6
    .parameter "AutoAnswer"

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/sec/android/app/phoneutil/AutoAnswer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "autoanswering_without_device"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 91
    .local v0, currentStatus:I
    const-string v1, "Auto_ANSWER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AutoAnswer Init Status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    if-nez v0, :cond_2c

    .line 95
    const v1, 0x7f050003

    invoke-virtual {p1, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 100
    :cond_2b
    :goto_2b
    return-void

    .line 96
    :cond_2c
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2b

    .line 97
    const v1, 0x7f050002

    invoke-virtual {p1, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_2b
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    iput-object p0, p0, Lcom/sec/android/app/phoneutil/AutoAnswer;->mContext:Landroid/content/Context;

    .line 45
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/sec/android/app/phoneutil/AutoAnswer;->setContentView(I)V

    .line 47
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/sec/android/app/phoneutil/AutoAnswer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/sec/android/app/phoneutil/AutoAnswer;->mAutoAnswerMode:Landroid/widget/RadioGroup;

    .line 49
    iget-object v0, p0, Lcom/sec/android/app/phoneutil/AutoAnswer;->mAutoAnswerMode:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/sec/android/app/phoneutil/AutoAnswer$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/phoneutil/AutoAnswer$1;-><init>(Lcom/sec/android/app/phoneutil/AutoAnswer;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/phoneutil/AutoAnswer;->mAutoAnswerMode:Landroid/widget/RadioGroup;

    invoke-direct {p0, v0}, Lcom/sec/android/app/phoneutil/AutoAnswer;->initialSetting(Landroid/widget/RadioGroup;)V

    .line 85
    return-void
.end method
