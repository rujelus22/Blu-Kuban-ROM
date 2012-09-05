.class public Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;
.super Landroid/app/AlertDialog;
.source "ProgressDialogForFT.java"


# instance fields
.field private mHasStarted:Z

.field private mIncrementBy:I

.field private mIncrementSecondaryBy:I

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mMax:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressPercent:Landroid/widget/TextView;

.field private mProgressPercentFormat:Ljava/text/NumberFormat;

.field private mProgressVal:I

.field private mSecondaryProgressVal:I

.field private mViewUpdateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;)Ljava/text/NumberFormat;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mProgressPercentFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mProgressPercent:Landroid/widget/TextView;

    return-object v0
.end method

.method private onProgressChanged()V
    .registers 3

    .prologue
    .line 308
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mViewUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 309
    return-void
.end method


# virtual methods
.method public incrementProgressBy(I)V
    .registers 3
    .parameter "diff"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_d

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 226
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->onProgressChanged()V

    .line 232
    :goto_c
    return-void

    .line 230
    :cond_d
    iget v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mIncrementBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mIncrementBy:I

    goto :goto_c
.end method

.method public incrementSecondaryProgressBy(I)V
    .registers 3
    .parameter "diff"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_d

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    .line 239
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->onProgressChanged()V

    .line 245
    :goto_c
    return-void

    .line 243
    :cond_d
    iget v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mIncrementSecondaryBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mIncrementSecondaryBy:I

    goto :goto_c
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 82
    .local v0, inflater:Landroid/view/LayoutInflater;
    new-instance v2, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT$1;-><init>(Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;)V

    iput-object v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mViewUpdateHandler:Landroid/os/Handler;

    .line 97
    const v2, 0x7f030001

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 98
    .local v1, view:Landroid/view/View;
    const v2, 0x7f070001

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mProgress:Landroid/widget/ProgressBar;

    .line 99
    const v2, 0x7f070002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mProgressPercent:Landroid/widget/TextView;

    .line 100
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 101
    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mProgressPercentFormat:Ljava/text/NumberFormat;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 102
    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->setView(Landroid/view/View;)V

    .line 104
    iget v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mMax:I

    if-lez v2, :cond_45

    .line 106
    iget v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mMax:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->setMax(I)V

    .line 108
    :cond_45
    iget v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mProgressVal:I

    if-lez v2, :cond_4e

    .line 110
    iget v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mProgressVal:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->setProgress(I)V

    .line 112
    :cond_4e
    iget v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mSecondaryProgressVal:I

    if-lez v2, :cond_57

    .line 114
    iget v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mSecondaryProgressVal:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->setSecondaryProgress(I)V

    .line 116
    :cond_57
    iget v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mIncrementBy:I

    if-lez v2, :cond_60

    .line 118
    iget v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mIncrementBy:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->incrementProgressBy(I)V

    .line 120
    :cond_60
    iget v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mIncrementSecondaryBy:I

    if-lez v2, :cond_69

    .line 122
    iget v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mIncrementSecondaryBy:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->incrementSecondaryProgressBy(I)V

    .line 124
    :cond_69
    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_72

    .line 126
    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    :cond_72
    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7b

    .line 130
    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    :cond_7b
    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mMessage:Ljava/lang/CharSequence;

    if-eqz v2, :cond_84

    .line 134
    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->setMessage(Ljava/lang/CharSequence;)V

    .line 136
    :cond_84
    iget-boolean v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mIndeterminate:Z

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->setIndeterminate(Z)V

    .line 137
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->onProgressChanged()V

    .line 138
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 139
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mHasStarted:Z

    .line 146
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mHasStarted:Z

    .line 153
    return-void
.end method

.method public setIndeterminate(Z)V
    .registers 3
    .parameter "indeterminate"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_a

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 281
    :goto_9
    return-void

    .line 279
    :cond_a
    iput-boolean p1, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mIndeterminate:Z

    goto :goto_9
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "d"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_a

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 269
    :goto_9
    return-void

    .line 267
    :cond_a
    iput-object p1, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_9
.end method

.method public setMax(I)V
    .registers 3
    .parameter "max"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_d

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 213
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->onProgressChanged()V

    .line 219
    :goto_c
    return-void

    .line 217
    :cond_d
    iput p1, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mMax:I

    goto :goto_c
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_8

    .line 297
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 304
    :goto_7
    return-void

    .line 302
    :cond_8
    iput-object p1, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mMessage:Ljava/lang/CharSequence;

    goto :goto_7
.end method

.method public setProgress(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mHasStarted:Z

    if-eqz v0, :cond_d

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 160
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->onProgressChanged()V

    .line 166
    :goto_c
    return-void

    .line 164
    :cond_d
    iput p1, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mProgressVal:I

    goto :goto_c
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "d"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_a

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 257
    :goto_9
    return-void

    .line 255
    :cond_a
    iput-object p1, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_9
.end method

.method public setSecondaryProgress(I)V
    .registers 3
    .parameter "secondaryProgress"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_d

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 173
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->onProgressChanged()V

    .line 179
    :goto_c
    return-void

    .line 177
    :cond_d
    iput p1, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mSecondaryProgressVal:I

    goto :goto_c
.end method
