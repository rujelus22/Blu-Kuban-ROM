.class public Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;
.super Landroid/widget/FrameLayout;
.source "RepeatBtnGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup$OnChangedListener;
    }
.end annotation


# instance fields
.field private final DEBUG:Z

.field mChangedListener:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup$OnChangedListener;

.field private mFri:Landroid/widget/ToggleButton;

.field private mMon:Landroid/widget/ToggleButton;

.field private mSat:Landroid/widget/ToggleButton;

.field private mSun:Landroid/widget/ToggleButton;

.field private mThu:Landroid/widget/ToggleButton;

.field private mTue:Landroid/widget/ToggleButton;

.field private mWed:Landroid/widget/ToggleButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 23
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG:Z

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->DEBUG:Z

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    sget-boolean v2, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG:Z

    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->DEBUG:Z

    .line 63
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 66
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030027

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 68
    const v2, 0x7f0e00e7

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mSun:Landroid/widget/ToggleButton;

    .line 70
    const v2, 0x7f0e00e8

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mMon:Landroid/widget/ToggleButton;

    .line 72
    const v2, 0x7f0e00e9

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mTue:Landroid/widget/ToggleButton;

    .line 74
    const v2, 0x7f0e00ea

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mWed:Landroid/widget/ToggleButton;

    .line 76
    const v2, 0x7f0e00eb

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mThu:Landroid/widget/ToggleButton;

    .line 78
    const v2, 0x7f0e00ec

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mFri:Landroid/widget/ToggleButton;

    .line 80
    const v2, 0x7f0e00ed

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mSat:Landroid/widget/ToggleButton;

    .line 82
    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup$1;-><init>(Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;)V

    .line 97
    .local v1, soundCL:Landroid/view/View$OnClickListener;
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mSun:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mMon:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mTue:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mWed:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mThu:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mFri:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mSat:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-void
.end method


# virtual methods
.method public getCheckDay()I
    .registers 5

    .prologue
    .line 209
    const/4 v0, 0x0

    .line 211
    .local v0, ret:I
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mSun:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_10

    .line 213
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mSun:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 215
    const/high16 v1, 0x100

    or-int/2addr v0, v1

    .line 219
    :cond_10
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mMon:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_1f

    .line 221
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mMon:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 223
    const/high16 v1, 0x10

    or-int/2addr v0, v1

    .line 227
    :cond_1f
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mTue:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_2e

    .line 229
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mTue:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 231
    const/high16 v1, 0x1

    or-int/2addr v0, v1

    .line 235
    :cond_2e
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mWed:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_3c

    .line 237
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mWed:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 239
    or-int/lit16 v0, v0, 0x1000

    .line 243
    :cond_3c
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mThu:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_4a

    .line 245
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mThu:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 247
    or-int/lit16 v0, v0, 0x100

    .line 251
    :cond_4a
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mFri:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_58

    .line 253
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mFri:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 255
    or-int/lit8 v0, v0, 0x10

    .line 259
    :cond_58
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mSat:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_66

    .line 261
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mSat:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_66

    .line 263
    or-int/lit8 v0, v0, 0x1

    .line 267
    :cond_66
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->DEBUG:Z

    if-eqz v1, :cond_82

    .line 269
    const-string v1, "RepeatBtnGroup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCheckDay : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_82
    return v0
.end method

.method public setCheckDay(I)V
    .registers 10
    .parameter "repeat"

    .prologue
    const/high16 v7, 0x100

    const/high16 v6, 0x10

    const/high16 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 115
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->DEBUG:Z

    if-eqz v0, :cond_24

    .line 117
    const-string v0, "RepeatBtnGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCheckDay : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_24
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mSun:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_31

    .line 123
    and-int v0, p1, v7

    if-ne v0, v7, :cond_86

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mSun:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 133
    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mMon:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_3e

    .line 135
    and-int v0, p1, v6

    if-ne v0, v6, :cond_8c

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mMon:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 145
    :cond_3e
    :goto_3e
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mTue:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_4b

    .line 147
    and-int v0, p1, v5

    if-ne v0, v5, :cond_92

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mTue:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 157
    :cond_4b
    :goto_4b
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mWed:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_5a

    .line 159
    and-int/lit16 v0, p1, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_98

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mWed:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 169
    :cond_5a
    :goto_5a
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mThu:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_69

    .line 171
    and-int/lit16 v0, p1, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_9e

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mThu:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 181
    :cond_69
    :goto_69
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mFri:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_78

    .line 183
    and-int/lit8 v0, p1, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a4

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mFri:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 193
    :cond_78
    :goto_78
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mSat:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_85

    .line 195
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v3, :cond_aa

    .line 197
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mSat:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 205
    :cond_85
    :goto_85
    return-void

    .line 129
    :cond_86
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mSun:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_31

    .line 141
    :cond_8c
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mMon:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_3e

    .line 153
    :cond_92
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mTue:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_4b

    .line 165
    :cond_98
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mWed:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_5a

    .line 177
    :cond_9e
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mThu:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_69

    .line 189
    :cond_a4
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mFri:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_78

    .line 201
    :cond_aa
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mSat:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_85
.end method

.method public setOnChangedListener(Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup$OnChangedListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mChangedListener:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup$OnChangedListener;

    .line 51
    return-void
.end method
