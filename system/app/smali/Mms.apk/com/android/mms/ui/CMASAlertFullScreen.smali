.class public Lcom/android/mms/ui/CMASAlertFullScreen;
.super Landroid/app/Activity;
.source "CMASAlertFullScreen.java"


# static fields
.field private static NEW_INCOMING_CMAS_CONSTRAINT:Ljava/lang/String;

.field private static final SMS_CMAS_PROJECTION:[Ljava/lang/String;

.field private static mThreadId:Ljava/lang/Long;


# instance fields
.field private expiryTimeMillis:J

.field private mCmasType:Ljava/lang/String;

.field private mDate:Ljava/lang/String;

.field private mcmasdate:Landroid/widget/TextView;

.field private mcmastype:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 48
    const-string v0, "(type = 1 AND seen = 0 "

    sput-object v0, Lcom/android/mms/ui/CMASAlertFullScreen;->NEW_INCOMING_CMAS_CONSTRAINT:Ljava/lang/String;

    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "address"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/CMASAlertFullScreen;->SMS_CMAS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Long;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/mms/ui/CMASAlertFullScreen;->mThreadId:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/CMASAlertFullScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/mms/ui/CMASAlertFullScreen;->dismiss()V

    return-void
.end method

.method private dismiss()V
    .registers 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASAlertFullScreen;->finish()V

    .line 124
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const-string v1, "CMASAlertFullScreen"

    const-string v2, "CMASALertFullScreen onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/CMASAlertFullScreen;->requestWindowFeature(I)Z

    .line 67
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASAlertFullScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 68
    .local v0, win:Landroid/view/Window;
    const v1, 0x680001

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 81
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASAlertFullScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "cmasType"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/CMASAlertFullScreen;->mCmasType:Ljava/lang/String;

    .line 82
    const-string v1, "CMASAlertFullScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/CMASAlertFullScreen;->mCmasType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASAlertFullScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "expiryTime"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/mms/ui/CMASAlertFullScreen;->expiryTimeMillis:J

    .line 86
    iget-wide v1, p0, Lcom/android/mms/ui/CMASAlertFullScreen;->expiryTimeMillis:J

    invoke-static {p0, v1, v2, v5}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/CMASAlertFullScreen;->mDate:Ljava/lang/String;

    .line 87
    const-string v1, "CMASAlertFullScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/CMASAlertFullScreen;->mDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASAlertFullScreen;->updateLayout()V

    .line 92
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 217
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 218
    const-string v0, "CMASAlertFullScreen"

    const-string v1, " onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 127
    const-string v0, "CMASAlertFullScreen"

    const-string v1, "CMASAlertFullScreen onKeyDown()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_16

    .line 140
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_12
    return v0

    .line 136
    :sswitch_13
    const/4 v0, 0x1

    goto :goto_12

    .line 128
    nop

    :sswitch_data_16
    .sparse-switch
        0x4 -> :sswitch_13
        0x5 -> :sswitch_13
        0x6 -> :sswitch_13
        0x18 -> :sswitch_13
        0x19 -> :sswitch_13
        0x1b -> :sswitch_13
    .end sparse-switch
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 203
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 204
    const-string v0, "CMASAlertFullScreen"

    const-string v1, " onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-void
.end method

.method public onRestart()V
    .registers 3

    .prologue
    .line 197
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 198
    const-string v0, "CMASAlertFullScreen"

    const-string v1, " onRestart()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 191
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 192
    const-string v0, "CMASAlertFullScreen"

    const-string v1, " onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 210
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 211
    const-string v0, "CMASAlertFullScreen"

    const-string v1, " onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return-void
.end method

.method public updateLayout()V
    .registers 4

    .prologue
    .line 96
    const v1, 0x7f030005

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/CMASAlertFullScreen;->setContentView(I)V

    .line 98
    const v1, 0x7f080011

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/CMASAlertFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/CMASAlertFullScreen;->mcmastype:Landroid/widget/TextView;

    .line 99
    const v1, 0x7f080013

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/CMASAlertFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/CMASAlertFullScreen;->mcmasdate:Landroid/widget/TextView;

    .line 100
    iget-object v1, p0, Lcom/android/mms/ui/CMASAlertFullScreen;->mcmastype:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/ui/CMASAlertFullScreen;->mCmasType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v1, p0, Lcom/android/mms/ui/CMASAlertFullScreen;->mcmasdate:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/ui/CMASAlertFullScreen;->mDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    const v1, 0x7f080015

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/CMASAlertFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 104
    .local v0, viewButton:Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 105
    new-instance v1, Lcom/android/mms/ui/CMASAlertFullScreen$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/CMASAlertFullScreen$1;-><init>(Lcom/android/mms/ui/CMASAlertFullScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v1, 0x7f080014

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/CMASAlertFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/mms/ui/CMASAlertFullScreen$2;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/CMASAlertFullScreen$2;-><init>(Lcom/android/mms/ui/CMASAlertFullScreen;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    return-void
.end method
