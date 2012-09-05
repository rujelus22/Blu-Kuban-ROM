.class public Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;
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
    .line 66
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;)Ljava/text/NumberFormat;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mProgressPercentFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mProgressPercent:Landroid/widget/TextView;

    return-object v0
.end method

.method private onProgressChanged()V
    .registers 3

    .prologue
    .line 303
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mViewUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 304
    return-void
.end method


# virtual methods
.method public incrementProgressBy(I)V
    .registers 3
    .parameter "diff"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_d

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 221
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->onProgressChanged()V

    .line 227
    :goto_c
    return-void

    .line 225
    :cond_d
    iget v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mIncrementBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mIncrementBy:I

    goto :goto_c
.end method

.method public incrementSecondaryProgressBy(I)V
    .registers 3
    .parameter "diff"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_d

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    .line 234
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->onProgressChanged()V

    .line 240
    :goto_c
    return-void

    .line 238
    :cond_d
    iget v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mIncrementSecondaryBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mIncrementSecondaryBy:I

    goto :goto_c
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 78
    .local v0, inflater:Landroid/view/LayoutInflater;
    new-instance v2, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT$1;-><init>(Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;)V

    iput-object v2, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mViewUpdateHandler:Landroid/os/Handler;

    .line 92
    const v2, 0x7f030001

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 93
    .local v1, view:Landroid/view/View;
    const v2, 0x7f070009

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mProgress:Landroid/widget/ProgressBar;

    .line 94
    const v2, 0x7f07000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mProgressPercent:Landroid/widget/TextView;

    .line 95
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 96
    iget-object v2, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mProgressPercentFormat:Ljava/text/NumberFormat;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 97
    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->setView(Landroid/view/View;)V

    .line 99
    iget v2, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mMax:I

    if-lez v2, :cond_45

    .line 101
    iget v2, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mMax:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->setMax(I)V

    .line 103
    :cond_45
    iget v2, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mProgressVal:I

    if-lez v2, :cond_4e

    .line 105
    iget v2, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mProgressVal:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->setProgress(I)V

    .line 107
    :cond_4e
    iget v2, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mSecondaryProgressVal:I

    if-lez v2, :cond_57

    .line 109
    iget v2, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mSecondaryProgressVal:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->setSecondaryProgress(I)V

    .line 111
    :cond_57
    iget v2, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mIncrementBy:I

    if-lez v2, :cond_60

    .line 113
    iget v2, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mIncrementBy:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->incrementProgressBy(I)V

    .line 115
    :cond_60
    iget v2, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mIncrementSecondaryBy:I

    if-lez v2, :cond_69

    .line 117
    iget v2, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mIncrementSecondaryBy:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->incrementSecondaryProgressBy(I)V

    .line 119
    :cond_69
    iget-object v2, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_72

    .line 121
    iget-object v2, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    :cond_72
    iget-object v2, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7b

    .line 125
    iget-object v2, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    :cond_7b
    iget-object v2, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mMessage:Ljava/lang/CharSequence;

    if-eqz v2, :cond_84

    .line 129
    iget-object v2, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->setMessage(Ljava/lang/CharSequence;)V

    .line 131
    :cond_84
    iget-boolean v2, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mIndeterminate:Z

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->setIndeterminate(Z)V

    .line 132
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->onProgressChanged()V

    .line 133
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 134
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 139
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mHasStarted:Z

    .line 141
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 146
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mHasStarted:Z

    .line 148
    return-void
.end method

.method public setIndeterminate(Z)V
    .registers 3
    .parameter "indeterminate"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_a

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 276
    :goto_9
    return-void

    .line 274
    :cond_a
    iput-boolean p1, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mIndeterminate:Z

    goto :goto_9
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "d"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_a

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    :goto_9
    return-void

    .line 262
    :cond_a
    iput-object p1, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_9
.end method

.method public setMax(I)V
    .registers 3
    .parameter "max"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_d

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 208
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->onProgressChanged()V

    .line 214
    :goto_c
    return-void

    .line 212
    :cond_d
    iput p1, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mMax:I

    goto :goto_c
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_8

    .line 292
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 299
    :goto_7
    return-void

    .line 297
    :cond_8
    iput-object p1, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mMessage:Ljava/lang/CharSequence;

    goto :goto_7
.end method

.method public setProgress(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mHasStarted:Z

    if-eqz v0, :cond_d

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 155
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->onProgressChanged()V

    .line 161
    :goto_c
    return-void

    .line 159
    :cond_d
    iput p1, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mProgressVal:I

    goto :goto_c
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "d"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_a

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 252
    :goto_9
    return-void

    .line 250
    :cond_a
    iput-object p1, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_9
.end method

.method public setSecondaryProgress(I)V
    .registers 3
    .parameter "secondaryProgress"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_d

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 168
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->onProgressChanged()V

    .line 174
    :goto_c
    return-void

    .line 172
    :cond_d
    iput p1, p0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->mSecondaryProgressVal:I

    goto :goto_c
.end method
