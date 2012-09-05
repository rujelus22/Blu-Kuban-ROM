.class public Lcom/sec/android/app/lcdtest/touch_firmware;
.super Landroid/app/Activity;
.source "touch_firmware.java"


# instance fields
.field private config:Lcom/sec/android/app/lcdtest/appConfig;

.field private mHandler:Landroid/os/Handler;

.field private mPartTSKVersion:Ljava/lang/String;

.field private mPartTSKVersionView:Landroid/widget/TextView;

.field private mPartTSKVersion_str_View:Landroid/widget/TextView;

.field private mPartTSPVersion:Ljava/lang/String;

.field private mPartTSPVersionView:Landroid/widget/TextView;

.field private mPhoneTSKVersion:Ljava/lang/String;

.field private mPhoneTSKVersionView:Landroid/widget/TextView;

.field private mPhoneTSKVersion_str_View:Landroid/widget/TextView;

.field private mPhoneTSPVersion:Ljava/lang/String;

.field private mPhoneTSPVersionView:Landroid/widget/TextView;

.field private mTSPThreshold:Ljava/lang/String;

.field private mTSPThresholdView:Landroid/widget/TextView;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    invoke-static {}, Lcom/sec/android/app/lcdtest/appConfig;->getInstance()Lcom/sec/android/app/lcdtest/appConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->config:Lcom/sec/android/app/lcdtest/appConfig;

    .line 307
    new-instance v0, Lcom/sec/android/app/lcdtest/touch_firmware$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/lcdtest/touch_firmware$3;-><init>(Lcom/sec/android/app/lcdtest/touch_firmware;)V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/lcdtest/touch_firmware;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/sec/android/app/lcdtest/touch_firmware;->startNewThread(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/lcdtest/touch_firmware;I)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/sec/android/app/lcdtest/touch_firmware;->readReturn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/lcdtest/touch_firmware;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/touch_firmware;->updateText()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/lcdtest/touch_firmware;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/sec/android/app/lcdtest/touch_firmware;->waitUpdateComplete(I)V

    return-void
.end method

.method private init()V
    .registers 5

    .prologue
    .line 59
    const v2, 0x7f08005e

    invoke-virtual {p0, v2}, Lcom/sec/android/app/lcdtest/touch_firmware;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 60
    .local v1, tspBtn:Landroid/widget/Button;
    new-instance v2, Lcom/sec/android/app/lcdtest/touch_firmware$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/lcdtest/touch_firmware$1;-><init>(Lcom/sec/android/app/lcdtest/touch_firmware;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v2, 0x7f080063

    invoke-virtual {p0, v2}, Lcom/sec/android/app/lcdtest/touch_firmware;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 74
    .local v0, tskBtn:Landroid/widget/Button;
    iget-object v2, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v3, "BOOL_TSK_SUPPORT"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    if-ne v2, v3, :cond_95

    .line 75
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 93
    :goto_2a
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->progressDialog:Landroid/app/ProgressDialog;

    .line 94
    iget-object v2, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 95
    iget-object v2, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->progressDialog:Landroid/app/ProgressDialog;

    const-string v3, "Now Updating... Warning!\nDo not turn off!"

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v2, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 98
    const v2, 0x7f080059

    invoke-virtual {p0, v2}, Lcom/sec/android/app/lcdtest/touch_firmware;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->mPhoneTSPVersionView:Landroid/widget/TextView;

    .line 99
    const v2, 0x7f08005b

    invoke-virtual {p0, v2}, Lcom/sec/android/app/lcdtest/touch_firmware;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->mPartTSPVersionView:Landroid/widget/TextView;

    .line 100
    const v2, 0x7f08005d

    invoke-virtual {p0, v2}, Lcom/sec/android/app/lcdtest/touch_firmware;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->mTSPThresholdView:Landroid/widget/TextView;

    .line 102
    const v2, 0x7f08005f

    invoke-virtual {p0, v2}, Lcom/sec/android/app/lcdtest/touch_firmware;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->mPhoneTSKVersion_str_View:Landroid/widget/TextView;

    .line 103
    const v2, 0x7f080061

    invoke-virtual {p0, v2}, Lcom/sec/android/app/lcdtest/touch_firmware;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->mPartTSKVersion_str_View:Landroid/widget/TextView;

    .line 105
    const v2, 0x7f080060

    invoke-virtual {p0, v2}, Lcom/sec/android/app/lcdtest/touch_firmware;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->mPhoneTSKVersionView:Landroid/widget/TextView;

    .line 106
    const v2, 0x7f080062

    invoke-virtual {p0, v2}, Lcom/sec/android/app/lcdtest/touch_firmware;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->mPartTSKVersionView:Landroid/widget/TextView;

    .line 109
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/touch_firmware;->updateText()V

    .line 110
    return-void

    .line 77
    :cond_95
    new-instance v2, Lcom/sec/android/app/lcdtest/touch_firmware$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/lcdtest/touch_firmware$2;-><init>(Lcom/sec/android/app/lcdtest/touch_firmware;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2a
.end method

.method private readReturn(I)Ljava/lang/String;
    .registers 9
    .parameter "mode"

    .prologue
    .line 162
    const/4 v3, 0x0

    .line 164
    .local v3, s:Ljava/lang/String;
    const/4 v0, 0x0

    .line 165
    .local v0, buf:Ljava/io/BufferedReader;
    if-nez p1, :cond_23

    .line 166
    :try_start_4
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v6, "PATH_TSP_STATUS"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .end local v0           #buf:Ljava/io/BufferedReader;
    .local v1, buf:Ljava/io/BufferedReader;
    move-object v0, v1

    .line 170
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :cond_17
    :goto_17
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 171
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1e} :catch_3a

    .line 176
    :goto_1e
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 167
    :cond_23
    const/4 v4, 0x1

    if-ne p1, v4, :cond_17

    .line 168
    :try_start_26
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v6, "PATH_TSK_STATUS"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_38} :catch_3a

    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_17

    .line 172
    :catch_3a
    move-exception v2

    .line 173
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 174
    const-string v3, "FAIL"

    goto :goto_1e
.end method

.method private readThreshold()Ljava/lang/String;
    .registers 7

    .prologue
    .line 206
    const/4 v2, 0x0

    .line 209
    .local v2, threshold:Ljava/lang/String;
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    iget-object v4, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v5, "PATH_TSP_THRESHOLD"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 210
    .local v0, buf:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 211
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_1b

    .line 216
    .end local v0           #buf:Ljava/io/BufferedReader;
    :goto_1a
    return-object v2

    .line 212
    :catch_1b
    move-exception v1

    .line 213
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 214
    const-string v2, "0"

    goto :goto_1a
.end method

.method private readVersion(II)Ljava/lang/String;
    .registers 10
    .parameter "mode"
    .parameter "where"

    .prologue
    const/16 v6, 0x11

    const/16 v5, 0x10

    const/4 v4, 0x1

    .line 183
    const/4 v3, 0x0

    .line 186
    .local v3, s:Ljava/lang/String;
    const/4 v0, 0x0

    .line 187
    .local v0, buf:Ljava/io/BufferedReader;
    if-nez p1, :cond_2a

    if-ne p2, v5, :cond_2a

    .line 188
    :try_start_b
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v6, "PATH_TSP_FIRM_VER"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .end local v0           #buf:Ljava/io/BufferedReader;
    .local v1, buf:Ljava/io/BufferedReader;
    move-object v0, v1

    .line 196
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :cond_1e
    :goto_1e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 197
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_25} :catch_72

    .line 202
    :goto_25
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 189
    :cond_2a
    if-nez p1, :cond_42

    if-ne p2, v6, :cond_42

    .line 190
    :try_start_2e
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v6, "PATH_TSP_PART_VER"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_1e

    .line 191
    :cond_42
    if-ne p1, v4, :cond_5a

    if-ne p2, v5, :cond_5a

    .line 192
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v6, "PATH_TSK_FIRM_VER"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_1e

    .line 193
    :cond_5a
    if-ne p1, v4, :cond_1e

    if-ne p2, v6, :cond_1e

    .line 194
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v6, "PATH_TSK_PART_VER"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_70} :catch_72

    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_1e

    .line 198
    :catch_72
    move-exception v2

    .line 199
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "0"

    .line 200
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_25
.end method

.method private startNewThread(I)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 368
    const/4 v0, 0x0

    .line 369
    .local v0, thread:Ljava/lang/Thread;
    if-nez p1, :cond_11

    .line 370
    new-instance v0, Ljava/lang/Thread;

    .end local v0           #thread:Ljava/lang/Thread;
    new-instance v1, Lcom/sec/android/app/lcdtest/touch_firmware$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/lcdtest/touch_firmware$4;-><init>(Lcom/sec/android/app/lcdtest/touch_firmware;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 382
    .restart local v0       #thread:Ljava/lang/Thread;
    :cond_d
    :goto_d
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 383
    return-void

    .line 375
    :cond_11
    const/4 v1, 0x1

    if-ne p1, v1, :cond_d

    .line 376
    new-instance v0, Ljava/lang/Thread;

    .end local v0           #thread:Ljava/lang/Thread;
    new-instance v1, Lcom/sec/android/app/lcdtest/touch_firmware$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/lcdtest/touch_firmware$5;-><init>(Lcom/sec/android/app/lcdtest/touch_firmware;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .restart local v0       #thread:Ljava/lang/Thread;
    goto :goto_d
.end method

.method private updateText()V
    .registers 7

    .prologue
    const/16 v5, 0x11

    const/16 v4, 0x10

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 113
    invoke-direct {p0, v1, v4}, Lcom/sec/android/app/lcdtest/touch_firmware;->readVersion(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->mPhoneTSPVersion:Ljava/lang/String;

    .line 114
    invoke-direct {p0, v1, v5}, Lcom/sec/android/app/lcdtest/touch_firmware;->readVersion(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->mPartTSPVersion:Ljava/lang/String;

    .line 115
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/touch_firmware;->readThreshold()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->mTSPThreshold:Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->mPhoneTSPVersionView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->mPhoneTSPVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->mPartTSPVersionView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->mPartTSPVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->mTSPThresholdView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->mTSPThreshold:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v1, "BOOL_TSK_SUPPORT"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    if-ne v0, v1, :cond_4f

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->mPhoneTSKVersion_str_View:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->mPartTSKVersion_str_View:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->mPhoneTSKVersionView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->mPartTSKVersionView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    :goto_4e
    return-void

    .line 135
    :cond_4f
    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/lcdtest/touch_firmware;->readVersion(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->mPhoneTSKVersion:Ljava/lang/String;

    .line 136
    invoke-direct {p0, v3, v5}, Lcom/sec/android/app/lcdtest/touch_firmware;->readVersion(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->mPartTSKVersion:Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->mPhoneTSKVersionView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->mPhoneTSKVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->mPartTSKVersionView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->mPartTSKVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4e
.end method

.method private waitUpdateComplete(I)V
    .registers 6
    .parameter "mode"

    .prologue
    const-wide/16 v2, 0x1388

    .line 153
    const-string v0, "TouchFirmware"

    const-string v1, "waitUpdateComplete()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    if-nez p1, :cond_13

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xaf2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 159
    :cond_12
    :goto_12
    return-void

    .line 156
    :cond_13
    const/4 v0, 0x1

    if-ne p1, v0, :cond_12

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xaf3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_12
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v1, 0x7f030016

    invoke-virtual {p0, v1}, Lcom/sec/android/app/lcdtest/touch_firmware;->setContentView(I)V

    .line 52
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/touch_firmware;->init()V

    .line 53
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/lcdtest/touch_firmware;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 54
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x2000000a

    const-string v2, "TouchFirmware"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 56
    return-void
.end method

.method updateFirmware(I)V
    .registers 14
    .parameter "mode"

    .prologue
    const-wide/16 v10, 0x3a98

    const/4 v9, 0x1

    const/4 v8, 0x5

    .line 220
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 221
    .local v2, msg:Landroid/os/Message;
    const-string v5, "Thread Started"

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 222
    iput v8, v2, Landroid/os/Message;->what:I

    .line 223
    iget-object v5, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 225
    iget-object v5, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-nez v5, :cond_33

    .line 226
    const-string v5, "TouchFirmware"

    const-string v6, "<harris> Wakelock acquired"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v5, "Wakelock acquired"

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 228
    iput v8, v2, Landroid/os/Message;->what:I

    .line 229
    iget-object v5, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 230
    iget-object v5, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 233
    :cond_33
    const/4 v3, 0x0

    .line 235
    .local v3, out:Ljava/io/FileWriter;
    :try_start_34
    const-string v5, "Try Start()"

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 236
    const/4 v5, 0x5

    iput v5, v2, Landroid/os/Message;->what:I

    .line 237
    iget-object v5, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 239
    const-string v5, "Try Completed()"

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 240
    const/4 v5, 0x5

    iput v5, v2, Landroid/os/Message;->what:I

    .line 241
    iget-object v5, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 243
    if-nez p1, :cond_8e

    .line 244
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    iget-object v6, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v7, "PATH_TSP_UP"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 245
    .local v0, buf:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 246
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_66
    .catchall {:try_start_34 .. :try_end_66} :catchall_10f
    .catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_66} :catch_ad
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_66} :catch_dd

    .line 262
    .end local v0           #buf:Ljava/io/BufferedReader;
    :cond_66
    :goto_66
    if-eqz v3, :cond_6b

    .line 264
    :try_start_68
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_a4

    .line 270
    :cond_6b
    :goto_6b
    const-string v5, "TouchFirmware"

    const-string v6, "Update button clicked"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const-string v5, "Thread Notified DelayedMessage"

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 272
    iput v8, v2, Landroid/os/Message;->what:I

    .line 273
    iget-object v5, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 274
    if-nez p1, :cond_11f

    .line 275
    iget-object v5, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xaf2

    invoke-virtual {v5, v6, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 279
    :cond_86
    :goto_86
    const-string v5, "TouchFirmware"

    const-string v6, "Thread Notified Message"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-void

    .line 247
    :cond_8e
    if-ne p1, v9, :cond_66

    .line 248
    :try_start_90
    new-instance v4, Ljava/io/FileWriter;

    iget-object v5, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v6, "PATH_TSK_UP"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_9d
    .catchall {:try_start_90 .. :try_end_9d} :catchall_10f
    .catch Ljava/io/FileNotFoundException; {:try_start_90 .. :try_end_9d} :catch_ad
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_9d} :catch_dd

    .line 249
    .end local v3           #out:Ljava/io/FileWriter;
    .local v4, out:Ljava/io/FileWriter;
    const/16 v5, 0x53

    :try_start_9f
    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->write(I)V
    :try_end_a2
    .catchall {:try_start_9f .. :try_end_a2} :catchall_12a
    .catch Ljava/io/FileNotFoundException; {:try_start_9f .. :try_end_a2} :catch_130
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_12d

    move-object v3, v4

    .end local v4           #out:Ljava/io/FileWriter;
    .restart local v3       #out:Ljava/io/FileWriter;
    goto :goto_66

    .line 265
    :catch_a4
    move-exception v1

    .line 266
    .local v1, e:Ljava/io/IOException;
    const-string v5, "TouchFirmware"

    const-string v6, "File Close error"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    .line 251
    .end local v1           #e:Ljava/io/IOException;
    :catch_ad
    move-exception v1

    .line 252
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_ae
    :try_start_ae
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error catched()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 253
    const/4 v5, 0x5

    iput v5, v2, Landroid/os/Message;->what:I

    .line 254
    iget-object v5, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 255
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_ce
    .catchall {:try_start_ae .. :try_end_ce} :catchall_10f

    .line 262
    if-eqz v3, :cond_6b

    .line 264
    :try_start_d0
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_d4

    goto :goto_6b

    .line 265
    :catch_d4
    move-exception v1

    .line 266
    .local v1, e:Ljava/io/IOException;
    const-string v5, "TouchFirmware"

    const-string v6, "File Close error"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    .line 256
    .end local v1           #e:Ljava/io/IOException;
    :catch_dd
    move-exception v1

    .line 257
    .restart local v1       #e:Ljava/io/IOException;
    :goto_de
    :try_start_de
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error2 catched()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 258
    const/4 v5, 0x5

    iput v5, v2, Landroid/os/Message;->what:I

    .line 259
    iget-object v5, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 260
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_fe
    .catchall {:try_start_de .. :try_end_fe} :catchall_10f

    .line 262
    if-eqz v3, :cond_6b

    .line 264
    :try_start_100
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_103
    .catch Ljava/io/IOException; {:try_start_100 .. :try_end_103} :catch_105

    goto/16 :goto_6b

    .line 265
    :catch_105
    move-exception v1

    .line 266
    const-string v5, "TouchFirmware"

    const-string v6, "File Close error"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6b

    .line 262
    .end local v1           #e:Ljava/io/IOException;
    :catchall_10f
    move-exception v5

    :goto_110
    if-eqz v3, :cond_115

    .line 264
    :try_start_112
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_115
    .catch Ljava/io/IOException; {:try_start_112 .. :try_end_115} :catch_116

    .line 267
    :cond_115
    :goto_115
    throw v5

    .line 265
    :catch_116
    move-exception v1

    .line 266
    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "TouchFirmware"

    const-string v7, "File Close error"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_115

    .line 276
    .end local v1           #e:Ljava/io/IOException;
    :cond_11f
    if-ne p1, v9, :cond_86

    .line 277
    iget-object v5, p0, Lcom/sec/android/app/lcdtest/touch_firmware;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xaf3

    invoke-virtual {v5, v6, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_86

    .line 262
    .end local v3           #out:Ljava/io/FileWriter;
    .restart local v4       #out:Ljava/io/FileWriter;
    :catchall_12a
    move-exception v5

    move-object v3, v4

    .end local v4           #out:Ljava/io/FileWriter;
    .restart local v3       #out:Ljava/io/FileWriter;
    goto :goto_110

    .line 256
    .end local v3           #out:Ljava/io/FileWriter;
    .restart local v4       #out:Ljava/io/FileWriter;
    :catch_12d
    move-exception v1

    move-object v3, v4

    .end local v4           #out:Ljava/io/FileWriter;
    .restart local v3       #out:Ljava/io/FileWriter;
    goto :goto_de

    .line 251
    .end local v3           #out:Ljava/io/FileWriter;
    .restart local v4       #out:Ljava/io/FileWriter;
    :catch_130
    move-exception v1

    move-object v3, v4

    .end local v4           #out:Ljava/io/FileWriter;
    .restart local v3       #out:Ljava/io/FileWriter;
    goto/16 :goto_ae
.end method
