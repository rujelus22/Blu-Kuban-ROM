.class public Lcom/sec/android/app/MainLabel/MainLabel;
.super Landroid/app/Activity;
.source "MainLabel.java"


# instance fields
.field private mString:Ljava/lang/String;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/sec/android/app/MainLabel/MainLabel;->setContentView(I)V

    .line 20
    const-string v0, "Serial No."

    invoke-virtual {p0, v0}, Lcom/sec/android/app/MainLabel/MainLabel;->setTitle(Ljava/lang/CharSequence;)V

    .line 29
    const v0, 0x7f060008

    invoke-virtual {p0, v0}, Lcom/sec/android/app/MainLabel/MainLabel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/MainLabel/MainLabel;->mTextView:Landroid/widget/TextView;

    .line 30
    const-string v0, "ril.IMEI"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/MainLabel/MainLabel;->mString:Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/sec/android/app/MainLabel/MainLabel;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/MainLabel/MainLabel;->mString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    const v0, 0x7f06000b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/MainLabel/MainLabel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/MainLabel/MainLabel;->mTextView:Landroid/widget/TextView;

    .line 34
    const-string v0, "ril.serialnumber"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/MainLabel/MainLabel;->mString:Ljava/lang/String;

    .line 35
    iget-object v0, p0, Lcom/sec/android/app/MainLabel/MainLabel;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/MainLabel/MainLabel;->mString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/sec/android/app/MainLabel/MainLabel;->finish()V

    .line 41
    const/4 v0, 0x1

    return v0
.end method
