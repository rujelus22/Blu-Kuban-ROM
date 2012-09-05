.class public Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;
.super Landroid/app/AlertDialog;
.source "FileManagerProgressDialog.java"


# static fields
.field public static final STYLE_HORIZONTAL:I = 0x1

.field public static final STYLE_SPINNER:I


# instance fields
.field private mHasStarted:Z

.field private mIncrementBy:I

.field private mIncrementSecondaryBy:I

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mMax:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressCircle:Landroid/widget/ProgressBar;

.field private mProgressCount:Landroid/widget/TextView;

.field private mProgressCountFormat:Ljava/lang/String;

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressMessage:Landroid/widget/TextView;

.field private mProgressPercent:Landroid/widget/TextView;

.field private mProgressPercentFormat:Ljava/text/NumberFormat;

.field private mProgressStyle:I

.field private mProgressVal:I

.field private mSecondaryProgressVal:I

.field private mUnit:Ljava/lang/CharSequence;

.field private mViewUpdateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressStyle:I

    .line 56
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1(Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;)Landroid/widget/TextView;
    .registers 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;)Ljava/lang/CharSequence;
    .registers 2
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$3(Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressCountFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;)Landroid/widget/TextView;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressCount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;)Ljava/lang/CharSequence;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mUnit:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$6(Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;)Ljava/text/NumberFormat;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method static synthetic access$7(Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;)Landroid/widget/TextView;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    return-object v0
.end method

.method private onProgressChanged()V
    .registers 3

    .prologue
    .line 328
    iget v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 329
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 331
    :cond_b
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;
    .registers 4
    .parameter "context"
    .parameter "title"
    .parameter "message"

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;
    .registers 10
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "indeterminate"

    .prologue
    .line 63
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;
    .registers 11
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "indeterminate"
    .parameter "cancelable"

    .prologue
    .line 67
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;
    .registers 8
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "indeterminate"
    .parameter "cancelable"
    .parameter "cancelListener"

    .prologue
    .line 71
    new-instance v0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;-><init>(Landroid/content/Context;)V

    .line 72
    .local v0, dialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;
    invoke-virtual {v0, p1}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {v0, p3}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->setIndeterminate(Z)V

    .line 74
    invoke-virtual {v0, p4}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->setCancelable(Z)V

    .line 75
    invoke-virtual {v0, p5}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 76
    new-instance v1, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog$1;

    invoke-direct {v1}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 86
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 87
    invoke-virtual {v0}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->show()V

    .line 88
    return-object v0
.end method


# virtual methods
.method public getMax()I
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    .line 229
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    .line 231
    :goto_a
    return v0

    :cond_b
    iget v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mMax:I

    goto :goto_a
.end method

.method public getProgress()I
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    .line 215
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 217
    :goto_a
    return v0

    :cond_b
    iget v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressVal:I

    goto :goto_a
.end method

.method public getSecondaryProgress()I
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    .line 222
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v0

    .line 224
    :goto_a
    return v0

    :cond_b
    iget v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mSecondaryProgressVal:I

    goto :goto_a
.end method

.method public incrementProgressBy(I)V
    .registers 3
    .parameter "diff"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_d

    .line 246
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 247
    invoke-direct {p0}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->onProgressChanged()V

    .line 252
    :goto_c
    return-void

    .line 250
    :cond_d
    iget v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mIncrementBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mIncrementBy:I

    goto :goto_c
.end method

.method public incrementSecondaryProgressBy(I)V
    .registers 3
    .parameter "diff"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_d

    .line 256
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    .line 257
    invoke-direct {p0}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->onProgressChanged()V

    .line 262
    :goto_c
    return-void

    .line 260
    :cond_d
    iget v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mIncrementSecondaryBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mIncrementSecondaryBy:I

    goto :goto_c
.end method

.method public isIndeterminate()Z
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    .line 293
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    .line 295
    :goto_a
    return v0

    :cond_b
    iget-boolean v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mIndeterminate:Z

    goto :goto_a
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const v8, 0x7f0c0183

    const v7, 0x7f0c0182

    const v6, 0x7f0c0180

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 95
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030039

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 96
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->setView(Landroid/view/View;)V

    .line 98
    const v2, 0x7f0c0181

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressMessage:Landroid/widget/TextView;

    .line 99
    iget v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressStyle:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d2

    .line 101
    new-instance v2, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog$2;

    invoke-direct {v2, p0}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog$2;-><init>(Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;)V

    iput-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 122
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressCircle:Landroid/widget/ProgressBar;

    .line 123
    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressCircle:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 125
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 126
    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 128
    const v2, 0x7f0c0184

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressCount:Landroid/widget/TextView;

    .line 129
    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressCount:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    .line 132
    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    const-string v2, "%d/%d"

    iput-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressCountFormat:Ljava/lang/String;

    .line 135
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 136
    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    invoke-virtual {v2, v4}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 152
    :cond_7c
    :goto_7c
    iget v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mMax:I

    if-lez v2, :cond_85

    .line 153
    iget v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mMax:I

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->setMax(I)V

    .line 155
    :cond_85
    iget v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressVal:I

    if-lez v2, :cond_8e

    .line 156
    iget v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressVal:I

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->setProgress(I)V

    .line 158
    :cond_8e
    iget v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mSecondaryProgressVal:I

    if-lez v2, :cond_97

    .line 159
    iget v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mSecondaryProgressVal:I

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->setSecondaryProgress(I)V

    .line 161
    :cond_97
    iget v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mIncrementBy:I

    if-lez v2, :cond_a0

    .line 162
    iget v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mIncrementBy:I

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->incrementProgressBy(I)V

    .line 164
    :cond_a0
    iget v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mIncrementSecondaryBy:I

    if-lez v2, :cond_a9

    .line 165
    iget v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mIncrementSecondaryBy:I

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->incrementSecondaryProgressBy(I)V

    .line 167
    :cond_a9
    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_b2

    .line 168
    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    :cond_b2
    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_bb

    .line 171
    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    :cond_bb
    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressMessage:Landroid/widget/TextView;

    if-eqz v2, :cond_c6

    .line 174
    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressMessage:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    :cond_c6
    iget-boolean v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mIndeterminate:Z

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->setIndeterminate(Z)V

    .line 177
    invoke-direct {p0}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->onProgressChanged()V

    .line 178
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 179
    return-void

    .line 138
    :cond_d2
    iget v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressStyle:I

    if-nez v2, :cond_7c

    .line 140
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressCircle:Landroid/widget/ProgressBar;

    .line 141
    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressCircle:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 143
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 144
    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 146
    const v2, 0x7f0c0184

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressCount:Landroid/widget/TextView;

    .line 147
    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressCount:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    .line 150
    iget-object v2, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7c
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 183
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mHasStarted:Z

    .line 185
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 189
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mHasStarted:Z

    .line 191
    return-void
.end method

.method public setIndeterminate(Z)V
    .registers 3
    .parameter "indeterminate"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_a

    .line 284
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 289
    :goto_9
    return-void

    .line 287
    :cond_a
    iput-boolean p1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mIndeterminate:Z

    goto :goto_9
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "d"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_a

    .line 275
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 280
    :goto_9
    return-void

    .line 278
    :cond_a
    iput-object p1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_9
.end method

.method public setMax(I)V
    .registers 3
    .parameter "max"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_d

    .line 236
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 237
    invoke-direct {p0}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->onProgressChanged()V

    .line 242
    :goto_c
    return-void

    .line 240
    :cond_d
    iput p1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mMax:I

    goto :goto_c
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 300
    iput-object p1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mMessage:Ljava/lang/CharSequence;

    .line 301
    return-void
.end method

.method public setProgress(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mHasStarted:Z

    if-eqz v0, :cond_d

    .line 195
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 196
    invoke-direct {p0}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->onProgressChanged()V

    .line 201
    :goto_c
    return-void

    .line 199
    :cond_d
    iput p1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressVal:I

    goto :goto_c
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "d"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_a

    .line 266
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 271
    :goto_9
    return-void

    .line 269
    :cond_a
    iput-object p1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_9
.end method

.method public setProgressNumberFormat(Ljava/lang/String;)V
    .registers 2
    .parameter "format"

    .prologue
    .line 324
    iput-object p1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressCountFormat:Ljava/lang/String;

    .line 325
    return-void
.end method

.method public setProgressStyle(I)V
    .registers 2
    .parameter "style"

    .prologue
    .line 304
    iput p1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressStyle:I

    .line 305
    return-void
.end method

.method public setProgressUnit(I)V
    .registers 3
    .parameter "unit"

    .prologue
    .line 308
    sparse-switch p1, :sswitch_data_16

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mUnit:Ljava/lang/CharSequence;

    .line 314
    :goto_6
    return-void

    .line 309
    :sswitch_7
    const-string v0, " (KB)"

    iput-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mUnit:Ljava/lang/CharSequence;

    goto :goto_6

    .line 310
    :sswitch_c
    const-string v0, " (MB)"

    iput-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mUnit:Ljava/lang/CharSequence;

    goto :goto_6

    .line 311
    :sswitch_11
    const-string v0, " (GB)"

    iput-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mUnit:Ljava/lang/CharSequence;

    goto :goto_6

    .line 308
    :sswitch_data_16
    .sparse-switch
        0x400 -> :sswitch_7
        0x100000 -> :sswitch_c
        0x40000000 -> :sswitch_11
    .end sparse-switch
.end method

.method public setSecondaryProgress(I)V
    .registers 3
    .parameter "secondaryProgress"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_d

    .line 205
    iget-object v0, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 206
    invoke-direct {p0}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->onProgressChanged()V

    .line 211
    :goto_c
    return-void

    .line 209
    :cond_d
    iput p1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mSecondaryProgressVal:I

    goto :goto_c
.end method
