.class public Lcom/android/samsungtest/SimpleFunctionTest/VersionTest;
.super Landroid/app/Activity;
.source "VersionTest.java"


# instance fields
.field private build:Landroid/widget/TextView;

.field private hw:Landroid/widget/TextView;

.field private mCurrKey:I

.field private mCurrTime:J

.field private mPrevKey:I

.field private mPrevTime:J

.field private pda:Landroid/widget/TextView;

.field pm:Landroid/os/PowerManager;

.field private sdk:Landroid/widget/TextView;

.field wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getHwver()Ljava/lang/String;
    .registers 10

    .prologue
    .line 101
    const/4 v3, 0x0

    .line 102
    .local v3, reader:Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 104
    .local v1, hwVer:Ljava/lang/String;
    :try_start_2
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/proc/cpuinfo"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x400

    invoke-direct {v4, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_ac
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_10} :catch_94
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_10} :catch_a0

    .line 106
    .end local v3           #reader:Ljava/io/BufferedReader;
    .local v4, reader:Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 107
    .local v6, temp:Ljava/lang/String;
    const/4 v2, 0x0

    .line 108
    .local v2, model:Ljava/lang/String;
    const/4 v5, 0x0

    .line 109
    .local v5, rev:Ljava/lang/String;
    :cond_13
    :goto_13
    :try_start_13
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4b

    .line 110
    const-string v7, "Hardware"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_32

    .line 111
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_13

    .line 112
    :cond_32
    const-string v7, "Revision"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 113
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_13

    .line 116
    :cond_4b
    if-eqz v2, :cond_5e

    .line 117
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    :cond_5e
    if-eqz v5, :cond_79

    .line 120
    if-eqz v2, :cond_8f

    .line 121
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    :cond_79
    :goto_79
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_7e
    .catchall {:try_start_13 .. :try_end_7e} :catchall_b5
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_7e} :catch_bb
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_7e} :catch_b8

    .line 132
    if-eqz v4, :cond_be

    .line 134
    :try_start_80
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_91

    move-object v3, v4

    .line 138
    .end local v2           #model:Ljava/lang/String;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .end local v5           #rev:Ljava/lang/String;
    .end local v6           #temp:Ljava/lang/String;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :cond_84
    :goto_84
    if-eqz v1, :cond_8c

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8e

    .line 139
    :cond_8c
    const-string v1, "Unknown"

    .line 141
    :cond_8e
    return-object v1

    .line 123
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #model:Ljava/lang/String;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    .restart local v5       #rev:Ljava/lang/String;
    .restart local v6       #temp:Ljava/lang/String;
    :cond_8f
    move-object v1, v5

    goto :goto_79

    .line 135
    :catch_91
    move-exception v7

    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_84

    .line 127
    .end local v2           #model:Ljava/lang/String;
    .end local v5           #rev:Ljava/lang/String;
    .end local v6           #temp:Ljava/lang/String;
    :catch_94
    move-exception v0

    .line 128
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_95
    :try_start_95
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_ac

    .line 132
    if-eqz v3, :cond_84

    .line 134
    :try_start_9a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_9e

    goto :goto_84

    .line 135
    :catch_9e
    move-exception v7

    goto :goto_84

    .line 129
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_a0
    move-exception v0

    .line 130
    .local v0, e:Ljava/io/IOException;
    :goto_a1
    :try_start_a1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a4
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_ac

    .line 132
    if-eqz v3, :cond_84

    .line 134
    :try_start_a6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_aa

    goto :goto_84

    .line 135
    :catch_aa
    move-exception v7

    goto :goto_84

    .line 132
    .end local v0           #e:Ljava/io/IOException;
    :catchall_ac
    move-exception v7

    :goto_ad
    if-eqz v3, :cond_b2

    .line 134
    :try_start_af
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b2} :catch_b3

    .line 135
    :cond_b2
    :goto_b2
    throw v7

    :catch_b3
    move-exception v8

    goto :goto_b2

    .line 132
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #model:Ljava/lang/String;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    .restart local v5       #rev:Ljava/lang/String;
    .restart local v6       #temp:Ljava/lang/String;
    :catchall_b5
    move-exception v7

    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_ad

    .line 129
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :catch_b8
    move-exception v0

    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_a1

    .line 127
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :catch_bb
    move-exception v0

    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_95

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :cond_be
    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_84
.end method


# virtual methods
.method public BackKeyCheck()Z
    .registers 5

    .prologue
    .line 235
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/VersionTest;->mPrevKey:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_25

    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/VersionTest;->mPrevTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_25

    .line 236
    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/VersionTest;->mCurrTime:J

    iget-wide v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/VersionTest;->mPrevTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/VersionTest;->mCurrTime:J

    iget-wide v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/VersionTest;->mPrevTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5dc

    cmp-long v0, v0, v2

    if-gez v0, :cond_25

    .line 237
    const/4 v0, 0x1

    .line 243
    :goto_24
    return v0

    .line 241
    :cond_25
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/VersionTest;->mCurrKey:I

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/VersionTest;->mPrevKey:I

    .line 242
    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/VersionTest;->mCurrTime:J

    iput-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/VersionTest;->mPrevTime:J

    .line 243
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v0, 0x7f030038

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/VersionTest;->setContentView(I)V

    .line 73
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/VersionTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/VersionTest;->pm:Landroid/os/PowerManager;

    .line 74
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/VersionTest;->pm:Landroid/os/PowerManager;

    const/16 v1, 0xa

    const-string v2, "VersionTest"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/VersionTest;->wl:Landroid/os/PowerManager$WakeLock;

    .line 75
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/VersionTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 78
    iput v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/VersionTest;->mPrevKey:I

    .line 79
    iput-wide v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/VersionTest;->mPrevTime:J

    .line 80
    iput v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/VersionTest;->mCurrKey:I

    .line 81
    iput-wide v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/VersionTest;->mCurrTime:J

    .line 83
    const v0, 0x7f0900ea

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/VersionTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/VersionTest;->build:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/VersionTest;->build:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Build Id    - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ro.build.display.id"

    const-string v3, "Unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    const v0, 0x7f0900eb

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/VersionTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/VersionTest;->sdk:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/VersionTest;->sdk:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDK version - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ro.build.version.sdk"

    const-string v3, "Unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    const v0, 0x7f0900ec

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/VersionTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/VersionTest;->hw:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/VersionTest;->hw:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HW version  - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ril.hw_ver"

    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/VersionTest;->getHwver()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    const v0, 0x7f0900ed

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/VersionTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/VersionTest;->pda:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/VersionTest;->pda:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PDA version - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ro.build.PDA"

    const-string v3, "Unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    const-string v0, "VersionTest"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void
.end method

.method public onFinish()V
    .registers 2

    .prologue
    .line 206
    const/16 v0, 0x26

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/VersionTest;->setResult(I)V

    .line 207
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/VersionTest;->finish()V

    .line 208
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 218
    const-string v0, "KEYCODE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DOWN, keycode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iput p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/VersionTest;->mCurrKey:I

    .line 221
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/VersionTest;->mCurrTime:J

    .line 223
    const/4 v0, 0x4

    if-ne p1, v0, :cond_43

    .line 224
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/VersionTest;->BackKeyCheck()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-gtz v0, :cond_43

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-nez v0, :cond_43

    .line 226
    const-string v0, "KEYCODE"

    const-string v1, "This is back_key"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/VersionTest;->onFinish()V

    .line 231
    :cond_43
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 255
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 256
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/VersionTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 257
    const-string v0, "VersionTest"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 249
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 250
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/VersionTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 251
    const-string v0, "VersionTest"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void
.end method
