.class public Lcom/sec/android/app/mobileprint/MPrintProgressDialog;
.super Landroid/app/AlertDialog;
.source "MPrintProgressDialog.java"


# instance fields
.field mContext:Landroid/content/Context;

.field private mCurrentPage:I

.field private mHasStarted:Z

.field private mIncrementBy:I

.field private mMax:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mProgressNumber:Landroid/widget/TextView;

.field private mProgressNumberFormat:Ljava/lang/String;

.field private mProgressPercent:Landroid/widget/TextView;

.field private mProgressPercentFormat:Ljava/text/NumberFormat;

.field private mProgressVal:I

.field private mTotalPage:I

.field private mViewUpdateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 81
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mContext:Landroid/content/Context;

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 86
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mContext:Landroid/content/Context;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/mobileprint/MPrintProgressDialog;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/mobileprint/MPrintProgressDialog;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/mobileprint/MPrintProgressDialog;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/mobileprint/MPrintProgressDialog;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mTotalPage:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/mobileprint/MPrintProgressDialog;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/mobileprint/MPrintProgressDialog;)Ljava/text/NumberFormat;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/mobileprint/MPrintProgressDialog;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    return-object v0
.end method

.method private onProgressChanged()V
    .registers 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 231
    return-void
.end method


# virtual methods
.method public getCurrentPage()I
    .registers 2

    .prologue
    .line 190
    iget v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mCurrentPage:I

    return v0
.end method

.method public getMax()I
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    .line 177
    :goto_a
    return v0

    :cond_b
    iget v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mMax:I

    goto :goto_a
.end method

.method public getProgress()I
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 170
    :goto_a
    return v0

    :cond_b
    iget v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mProgressVal:I

    goto :goto_a
.end method

.method public getTotalPage()I
    .registers 2

    .prologue
    .line 201
    iget v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mTotalPage:I

    return v0
.end method

.method public incrementProgressBy(I)V
    .registers 3
    .parameter "diff"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_d

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 214
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->onProgressChanged()V

    .line 218
    :goto_c
    return-void

    .line 216
    :cond_d
    iget v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mIncrementBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mIncrementBy:I

    goto :goto_c
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 91
    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 96
    .local v0, inflater:Landroid/view/LayoutInflater;
    new-instance v2, Lcom/sec/android/app/mobileprint/MPrintProgressDialog$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/mobileprint/MPrintProgressDialog$1;-><init>(Lcom/sec/android/app/mobileprint/MPrintProgressDialog;)V

    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 110
    const v2, 0x7f030004

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 111
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0c0016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 112
    const v2, 0x7f0c0015

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 113
    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mMessageView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    const v2, 0x7f0c0017

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    .line 115
    const-string v2, "%d/%d"

    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 116
    const v2, 0x7f0c0018

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    .line 117
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 118
    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 119
    invoke-virtual {p0, v1}, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->setView(Landroid/view/View;)V

    .line 121
    iget v2, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mMax:I

    if-lez v2, :cond_64

    .line 122
    iget v2, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mMax:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->setMax(I)V

    .line 124
    :cond_64
    iget v2, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mProgressVal:I

    if-lez v2, :cond_6d

    .line 125
    iget v2, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mProgressVal:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->setProgress(I)V

    .line 127
    :cond_6d
    iget v2, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mIncrementBy:I

    if-lez v2, :cond_76

    .line 128
    iget v2, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mIncrementBy:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->incrementProgressBy(I)V

    .line 130
    :cond_76
    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v2, :cond_7f

    .line 131
    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->setMessageText(Ljava/lang/CharSequence;)V

    .line 133
    :cond_7f
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->onProgressChanged()V

    .line 134
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 135
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 151
    const/16 v0, 0x54

    if-eq p1, v0, :cond_8

    const/16 v0, 0x52

    if-ne p1, v0, :cond_a

    .line 152
    :cond_8
    const/4 v0, 0x1

    .line 154
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_9
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 139
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mHasStarted:Z

    .line 141
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 145
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mHasStarted:Z

    .line 147
    return-void
.end method

.method public setCurrentPage(I)V
    .registers 3
    .parameter "page"

    .prologue
    .line 194
    iput p1, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mCurrentPage:I

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_9

    .line 196
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->onProgressChanged()V

    .line 198
    :cond_9
    return-void
.end method

.method public setMax(I)V
    .registers 3
    .parameter "max"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_d

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 183
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->onProgressChanged()V

    .line 187
    :goto_c
    return-void

    .line 185
    :cond_d
    iput p1, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mMax:I

    goto :goto_c
.end method

.method public setMessageText(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_10

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mMessageView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    :goto_f
    return-void

    .line 225
    :cond_10
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mMessage:Ljava/lang/CharSequence;

    goto :goto_f
.end method

.method public setProgress(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mHasStarted:Z

    if-eqz v0, :cond_d

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 160
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->onProgressChanged()V

    .line 164
    :goto_c
    return-void

    .line 162
    :cond_d
    iput p1, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mProgressVal:I

    goto :goto_c
.end method

.method public setTotalPage(I)V
    .registers 3
    .parameter "page"

    .prologue
    .line 205
    iput p1, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mTotalPage:I

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_9

    .line 207
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->onProgressChanged()V

    .line 209
    :cond_9
    return-void
.end method
