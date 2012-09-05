.class public Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;
.super Landroid/app/Activity;
.source "TouchkeyTest.java"


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private Total_Test_Num:I

.field btnExit:Landroid/widget/Button;

.field private buttonDown:[Z

.field private isPass:[Z

.field private mBack:Landroid/widget/TextView;

.field private mHome:Landroid/widget/TextView;

.field private mMenu:Landroid/widget/TextView;

.field private mSearch:Landroid/widget/TextView;

.field private mSens_spec:Landroid/widget/TextView;

.field protected mTimerHandler:Landroid/os/Handler;

.field private mWindowManager:Landroid/view/IWindowManager;

.field private pBack:I

.field private pHome:I

.field private pMenu:I

.field private pSearch:I

.field private pass:Z

.field private pfBack:Landroid/widget/TextView;

.field private pfHome:Landroid/widget/TextView;

.field private pfMenu:Landroid/widget/TextView;

.field private pfSearch:Landroid/widget/TextView;

.field pm:Landroid/os/PowerManager;

.field private recv_sens:[Ljava/lang/String;

.field private sBack:Landroid/widget/TextView;

.field private sHome:Landroid/widget/TextView;

.field private sMenu:Landroid/widget/TextView;

.field private sSearch:Landroid/widget/TextView;

.field private vBack:I

.field private vHome:I

.field private vMenu:I

.field private vNoise_THD:Ljava/lang/String;

.field private vSearch:I

.field wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->Total_Test_Num:I

    .line 38
    iput-boolean v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pass:Z

    .line 39
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->Total_Test_Num:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->buttonDown:[Z

    .line 40
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->Total_Test_Num:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->isPass:[Z

    .line 61
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->recv_sens:[Ljava/lang/String;

    .line 63
    iput v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vSearch:I

    .line 64
    iput v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pSearch:I

    .line 70
    const-string v0, "TouchkeyTest"

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->LOG_TAG:Ljava/lang/String;

    .line 549
    new-instance v0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest$2;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest$2;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;)V

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->mTimerHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->onFinish()V

    return-void
.end method

.method private enableAutoCalibration()V
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 284
    const/16 v4, 0x64

    new-array v0, v4, [B

    .line 285
    .local v0, buffer:[B
    const/16 v4, 0x31

    aput-byte v4, v0, v5

    .line 286
    const/4 v4, 0x1

    aput-byte v5, v0, v4

    .line 288
    const/4 v2, 0x0

    .line 291
    .local v2, out:Ljava/io/OutputStream;
    :try_start_d
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/devices/virtual/sec/sec_touchkey/autocal_enable"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_67
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_19} :catch_2f
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_19} :catch_4b

    .line 292
    .end local v2           #out:Ljava/io/OutputStream;
    .local v3, out:Ljava/io/OutputStream;
    :try_start_19
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_7a
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_1c} :catch_80
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_7d

    .line 298
    if-eqz v3, :cond_83

    .line 300
    :try_start_1e
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_23

    .line 301
    const/4 v2, 0x0

    .line 307
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :cond_22
    :goto_22
    return-void

    .line 302
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_23
    move-exception v1

    .line 303
    .local v1, e:Ljava/io/IOException;
    iget-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 304
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_22

    .line 293
    .end local v1           #e:Ljava/io/IOException;
    :catch_2f
    move-exception v1

    .line 294
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_30
    :try_start_30
    iget-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_67

    .line 298
    if-eqz v2, :cond_22

    .line 300
    :try_start_3b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_40

    .line 301
    const/4 v2, 0x0

    goto :goto_22

    .line 302
    :catch_40
    move-exception v1

    .line 303
    .local v1, e:Ljava/io/IOException;
    iget-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 295
    .end local v1           #e:Ljava/io/IOException;
    :catch_4b
    move-exception v1

    .line 296
    .restart local v1       #e:Ljava/io/IOException;
    :goto_4c
    :try_start_4c
    iget-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_4c .. :try_end_55} :catchall_67

    .line 298
    if-eqz v2, :cond_22

    .line 300
    :try_start_57
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5c

    .line 301
    const/4 v2, 0x0

    goto :goto_22

    .line 302
    :catch_5c
    move-exception v1

    .line 303
    iget-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 298
    .end local v1           #e:Ljava/io/IOException;
    :catchall_67
    move-exception v4

    :goto_68
    if-eqz v2, :cond_6e

    .line 300
    :try_start_6a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6f

    .line 301
    const/4 v2, 0x0

    .line 304
    :cond_6e
    :goto_6e
    throw v4

    .line 302
    :catch_6f
    move-exception v1

    .line 303
    .restart local v1       #e:Ljava/io/IOException;
    iget-object v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    .line 298
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catchall_7a
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_68

    .line 295
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_7d
    move-exception v1

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_4c

    .line 293
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_80
    move-exception v1

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_30

    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :cond_83
    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_22
.end method

.method private init()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 126
    const v1, 0x7f0900de

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->mSens_spec:Landroid/widget/TextView;

    .line 133
    const-string v1, " "

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vNoise_THD:Ljava/lang/String;

    .line 148
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->mSens_spec:Landroid/widget/TextView;

    const-string v2, "Spec : 70~250"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    const v1, 0x7f09004e

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->mMenu:Landroid/widget/TextView;

    .line 155
    const v1, 0x7f090068

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->mBack:Landroid/widget/TextView;

    .line 156
    const v1, 0x7f090067

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->mHome:Landroid/widget/TextView;

    .line 157
    const v1, 0x7f090069

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->mSearch:Landroid/widget/TextView;

    .line 159
    const v1, 0x7f0900df

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->sMenu:Landroid/widget/TextView;

    .line 160
    const v1, 0x7f0900e0

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->sHome:Landroid/widget/TextView;

    .line 161
    const v1, 0x7f0900e1

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->sBack:Landroid/widget/TextView;

    .line 162
    const v1, 0x7f0900e2

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->sSearch:Landroid/widget/TextView;

    .line 164
    const v1, 0x7f0900e3

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pfMenu:Landroid/widget/TextView;

    .line 165
    const v1, 0x7f0900e4

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pfHome:Landroid/widget/TextView;

    .line 166
    const v1, 0x7f0900e5

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pfBack:Landroid/widget/TextView;

    .line 167
    const v1, 0x7f0900e6

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pfSearch:Landroid/widget/TextView;

    .line 174
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9c
    iget v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->Total_Test_Num:I

    if-ge v0, v1, :cond_ab

    .line 176
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->buttonDown:[Z

    aput-boolean v3, v1, v0

    .line 177
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->isPass:[Z

    aput-boolean v3, v1, v0

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_9c

    .line 179
    :cond_ab
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->init_testResult()V

    .line 181
    const v1, 0x7f0900e7

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->btnExit:Landroid/widget/Button;

    .line 182
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->btnExit:Landroid/widget/Button;

    new-instance v2, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest$1;

    invoke-direct {v2, p0}, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest$1;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    return-void
.end method

.method private init_testResult()V
    .registers 9

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/high16 v5, -0x1

    const v4, -0xffff01

    const/4 v3, 0x1

    .line 192
    invoke-direct {p0, v3}, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->touchkey_sensitivity(Z)V

    .line 193
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->recv_sens:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vMenu:I

    .line 194
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->recv_sens:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vHome:I

    .line 195
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->recv_sens:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vBack:I

    .line 196
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->recv_sens:[Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vSearch:I

    .line 198
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vMenu:I

    if-le v0, v7, :cond_8b

    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vMenu:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_8b

    .line 199
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vMenu:I

    const/16 v1, 0x46

    if-lt v0, v1, :cond_192

    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vMenu:I

    const/16 v1, 0xfa

    if-gt v0, v1, :cond_192

    .line 200
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->sMenu:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 201
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->sMenu:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vMenu:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pfMenu:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 203
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pfMenu:Landroid/widget/TextView;

    const v1, 0x7f0800c2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 205
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->isPass:[Z

    aput-boolean v3, v0, v6

    .line 215
    :goto_81
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pMenu:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pMenu:I

    .line 216
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->buttonDown:[Z

    aput-boolean v3, v0, v6

    .line 219
    :cond_8b
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vHome:I

    if-le v0, v7, :cond_e1

    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vHome:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_e1

    .line 220
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vHome:I

    const/16 v1, 0x46

    if-lt v0, v1, :cond_1ca

    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vHome:I

    const/16 v1, 0xfa

    if-gt v0, v1, :cond_1ca

    .line 221
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->sHome:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 222
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->sHome:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vHome:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pfHome:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 224
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pfHome:Landroid/widget/TextView;

    const v1, 0x7f0800c2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 226
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->isPass:[Z

    aput-boolean v3, v0, v3

    .line 236
    :goto_d7
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pHome:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pHome:I

    .line 237
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->buttonDown:[Z

    aput-boolean v3, v0, v3

    .line 240
    :cond_e1
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vBack:I

    if-le v0, v7, :cond_139

    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vBack:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_139

    .line 241
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vBack:I

    const/16 v1, 0x46

    if-lt v0, v1, :cond_202

    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vBack:I

    const/16 v1, 0xfa

    if-gt v0, v1, :cond_202

    .line 242
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->sBack:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 243
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->sBack:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vBack:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pfBack:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 245
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pfBack:Landroid/widget/TextView;

    const v1, 0x7f0800c2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 247
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->isPass:[Z

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 257
    :goto_12e
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pBack:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pBack:I

    .line 258
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->buttonDown:[Z

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 261
    :cond_139
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vSearch:I

    if-le v0, v7, :cond_191

    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vSearch:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_191

    .line 262
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vSearch:I

    const/16 v1, 0x46

    if-lt v0, v1, :cond_23b

    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vSearch:I

    const/16 v1, 0xfa

    if-gt v0, v1, :cond_23b

    .line 263
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->sSearch:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 264
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->sSearch:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vSearch:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pfSearch:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 266
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pfSearch:Landroid/widget/TextView;

    const v1, 0x7f0800c2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 268
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->isPass:[Z

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 278
    :goto_186
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pSearch:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pSearch:I

    .line 279
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->buttonDown:[Z

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 281
    :cond_191
    return-void

    .line 207
    :cond_192
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->sMenu:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->sMenu:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vMenu:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pfMenu:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 210
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pfMenu:Landroid/widget/TextView;

    const v1, 0x7f0800be

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 212
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->isPass:[Z

    aput-boolean v6, v0, v6

    goto/16 :goto_81

    .line 228
    :cond_1ca
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->sHome:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 229
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->sHome:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vHome:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pfHome:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 231
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pfHome:Landroid/widget/TextView;

    const v1, 0x7f0800be

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 233
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->isPass:[Z

    aput-boolean v6, v0, v3

    goto/16 :goto_d7

    .line 249
    :cond_202
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->sBack:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 250
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->sBack:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vBack:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pfBack:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 252
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pfBack:Landroid/widget/TextView;

    const v1, 0x7f0800be

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 254
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->isPass:[Z

    const/4 v1, 0x2

    aput-boolean v6, v0, v1

    goto/16 :goto_12e

    .line 270
    :cond_23b
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->sSearch:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 271
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->sSearch:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vSearch:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pfSearch:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 273
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pfSearch:Landroid/widget/TextView;

    const v1, 0x7f0800be

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 275
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->isPass:[Z

    const/4 v1, 0x3

    aput-boolean v6, v0, v1

    goto/16 :goto_186
.end method

.method private onFinish()V
    .registers 3

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/16 v0, 0xde

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->setResult(I)V

    .line 355
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->finish()V

    .line 356
    return-void
.end method

.method private touchkey_sensitivity(Z)V
    .registers 10
    .parameter "value"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 311
    const/16 v5, 0x64

    new-array v1, v5, [B

    .line 313
    .local v1, buffer:[B
    if-eqz p1, :cond_7c

    .line 314
    const/16 v5, 0x31

    aput-byte v5, v1, v6

    .line 315
    aput-byte v6, v1, v7

    .line 321
    :goto_e
    const/4 v3, 0x0

    .line 324
    .local v3, out:Ljava/io/OutputStream;
    :try_start_f
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    const-string v6, "/sys/devices/virtual/sec/sec_touchkey/touch_sensitivity"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_c7
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_1b} :catch_8f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1b} :catch_ab

    .line 325
    .end local v3           #out:Ljava/io/OutputStream;
    .local v4, out:Ljava/io/OutputStream;
    :try_start_1b
    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 326
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/devices/virtual/sec/sec_touchkey/touchkey_search"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 327
    .local v0, buf:Ljava/io/BufferedReader;
    iget-object v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->recv_sens:[Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 328
    new-instance v0, Ljava/io/BufferedReader;

    .end local v0           #buf:Ljava/io/BufferedReader;
    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/devices/virtual/sec/sec_touchkey/touchkey_back"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 329
    .restart local v0       #buf:Ljava/io/BufferedReader;
    iget-object v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->recv_sens:[Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 330
    new-instance v0, Ljava/io/BufferedReader;

    .end local v0           #buf:Ljava/io/BufferedReader;
    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/devices/virtual/sec/sec_touchkey/touchkey_home"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 331
    .restart local v0       #buf:Ljava/io/BufferedReader;
    iget-object v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->recv_sens:[Ljava/lang/String;

    const/4 v6, 0x2

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 332
    new-instance v0, Ljava/io/BufferedReader;

    .end local v0           #buf:Ljava/io/BufferedReader;
    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/devices/virtual/sec/sec_touchkey/touchkey_menu"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 333
    .restart local v0       #buf:Ljava/io/BufferedReader;
    iget-object v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->recv_sens:[Ljava/lang/String;

    const/4 v6, 0x3

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 334
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_75
    .catchall {:try_start_1b .. :try_end_75} :catchall_da
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_75} :catch_e0
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_75} :catch_dd

    .line 340
    if-eqz v4, :cond_e3

    .line 342
    :try_start_77
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_83

    .line 343
    const/4 v3, 0x0

    .line 349
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :cond_7b
    :goto_7b
    return-void

    .line 317
    .end local v3           #out:Ljava/io/OutputStream;
    :cond_7c
    const/16 v5, 0x30

    aput-byte v5, v1, v6

    .line 318
    aput-byte v6, v1, v7

    goto :goto_e

    .line 344
    .restart local v0       #buf:Ljava/io/BufferedReader;
    .restart local v4       #out:Ljava/io/OutputStream;
    :catch_83
    move-exception v2

    .line 345
    .local v2, e:Ljava/io/IOException;
    iget-object v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 346
    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    goto :goto_7b

    .line 335
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    :catch_8f
    move-exception v2

    .line 336
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_90
    :try_start_90
    iget-object v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catchall {:try_start_90 .. :try_end_99} :catchall_c7

    .line 340
    if-eqz v3, :cond_7b

    .line 342
    :try_start_9b
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_a0

    .line 343
    const/4 v3, 0x0

    goto :goto_7b

    .line 344
    :catch_a0
    move-exception v2

    .line 345
    .local v2, e:Ljava/io/IOException;
    iget-object v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b

    .line 337
    .end local v2           #e:Ljava/io/IOException;
    :catch_ab
    move-exception v2

    .line 338
    .restart local v2       #e:Ljava/io/IOException;
    :goto_ac
    :try_start_ac
    iget-object v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b5
    .catchall {:try_start_ac .. :try_end_b5} :catchall_c7

    .line 340
    if-eqz v3, :cond_7b

    .line 342
    :try_start_b7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_ba} :catch_bc

    .line 343
    const/4 v3, 0x0

    goto :goto_7b

    .line 344
    :catch_bc
    move-exception v2

    .line 345
    iget-object v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b

    .line 340
    .end local v2           #e:Ljava/io/IOException;
    :catchall_c7
    move-exception v5

    :goto_c8
    if-eqz v3, :cond_ce

    .line 342
    :try_start_ca
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_cd} :catch_cf

    .line 343
    const/4 v3, 0x0

    .line 346
    :cond_ce
    :goto_ce
    throw v5

    .line 344
    :catch_cf
    move-exception v2

    .line 345
    .restart local v2       #e:Ljava/io/IOException;
    iget-object v6, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ce

    .line 340
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v4       #out:Ljava/io/OutputStream;
    :catchall_da
    move-exception v5

    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    goto :goto_c8

    .line 337
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v4       #out:Ljava/io/OutputStream;
    :catch_dd
    move-exception v2

    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    goto :goto_ac

    .line 335
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v4       #out:Ljava/io/OutputStream;
    :catch_e0
    move-exception v2

    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    goto :goto_90

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    .restart local v4       #out:Ljava/io/OutputStream;
    :cond_e3
    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    goto :goto_7b
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v0, 0x7f030036

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->setContentView(I)V

    .line 79
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pm:Landroid/os/PowerManager;

    .line 82
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pm:Landroid/os/PowerManager;

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->wl:Landroid/os/PowerManager$WakeLock;

    .line 83
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->mWindowManager:Landroid/view/IWindowManager;

    .line 84
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 86
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->init()V

    .line 87
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 118
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 119
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 120
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 13
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v9, 0x3

    const/high16 v8, -0x1

    const v7, -0xffff01

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 359
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KEYCODE DOWN : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/16 v2, 0x52

    if-ne p1, v2, :cond_101

    .line 363
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->isPass:[Z

    aget-boolean v2, v2, v6

    if-nez v2, :cond_38a

    .line 365
    invoke-direct {p0, v5}, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->touchkey_sensitivity(Z)V

    .line 366
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->recv_sens:[Ljava/lang/String;

    aget-object v2, v2, v9

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vMenu:I

    .line 368
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KEYCODE_MENU   vMenu : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vMenu:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  pMenu : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pMenu:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vMenu:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_b8

    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vMenu:I

    const/16 v3, 0xff

    if-eq v2, v3, :cond_b8

    .line 372
    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vMenu:I

    const/16 v3, 0x46

    if-lt v2, v3, :cond_ca

    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vMenu:I

    const/16 v3, 0xfa

    if-gt v2, v3, :cond_ca

    .line 374
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->sMenu:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 375
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->sMenu:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vMenu:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pfMenu:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 377
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pfMenu:Landroid/widget/TextView;

    const v3, 0x7f0800c2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 379
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->isPass:[Z

    aput-boolean v5, v2, v6

    .line 391
    :goto_ae
    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pMenu:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pMenu:I

    .line 392
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->buttonDown:[Z

    aput-boolean v5, v2, v6

    .line 518
    :cond_b8
    :goto_b8
    iput-boolean v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pass:Z

    .line 520
    const/4 v0, 0x0

    .local v0, i:I
    :goto_bb
    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->Total_Test_Num:I

    if-ge v0, v2, :cond_36a

    .line 522
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->buttonDown:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_c7

    .line 524
    iput-boolean v6, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pass:Z

    .line 520
    :cond_c7
    add-int/lit8 v0, v0, 0x1

    goto :goto_bb

    .line 383
    .end local v0           #i:I
    :cond_ca
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->sMenu:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 384
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->sMenu:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vMenu:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pfMenu:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 386
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pfMenu:Landroid/widget/TextView;

    const v3, 0x7f0800be

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 388
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->isPass:[Z

    aput-boolean v6, v2, v6

    goto :goto_ae

    .line 400
    :cond_101
    if-ne p1, v9, :cond_1cd

    .line 402
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->isPass:[Z

    aget-boolean v2, v2, v5

    if-nez v2, :cond_38a

    .line 404
    invoke-direct {p0, v5}, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->touchkey_sensitivity(Z)V

    .line 405
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->recv_sens:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vHome:I

    .line 407
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KEYCODE_HOME   vHome : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vHome:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  pHome : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pHome:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vHome:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_b8

    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vHome:I

    const/16 v3, 0xff

    if-eq v2, v3, :cond_b8

    .line 411
    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vHome:I

    const/16 v3, 0x46

    if-lt v2, v3, :cond_196

    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vHome:I

    const/16 v3, 0xfa

    if-gt v2, v3, :cond_196

    .line 413
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->sHome:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 414
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->sHome:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vHome:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pfHome:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 416
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pfHome:Landroid/widget/TextView;

    const v3, 0x7f0800c2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 418
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->isPass:[Z

    aput-boolean v5, v2, v5

    .line 430
    :goto_18a
    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pHome:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pHome:I

    .line 431
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->buttonDown:[Z

    aput-boolean v5, v2, v5

    goto/16 :goto_b8

    .line 422
    :cond_196
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->sHome:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 423
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->sHome:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vHome:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pfHome:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 425
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pfHome:Landroid/widget/TextView;

    const v3, 0x7f0800be

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 427
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->isPass:[Z

    aput-boolean v6, v2, v5

    goto :goto_18a

    .line 439
    :cond_1cd
    const/4 v2, 0x4

    if-ne p1, v2, :cond_29d

    .line 441
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->isPass:[Z

    const/4 v3, 0x2

    aget-boolean v2, v2, v3

    if-nez v2, :cond_38a

    .line 443
    invoke-direct {p0, v5}, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->touchkey_sensitivity(Z)V

    .line 444
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->recv_sens:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vBack:I

    .line 446
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KEYCODE_BACK   vBack : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vBack:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  pBack : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pBack:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vBack:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_b8

    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vBack:I

    const/16 v3, 0xff

    if-eq v2, v3, :cond_b8

    .line 450
    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vBack:I

    const/16 v3, 0x46

    if-lt v2, v3, :cond_265

    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vBack:I

    const/16 v3, 0xfa

    if-gt v2, v3, :cond_265

    .line 452
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->sBack:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 453
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->sBack:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vBack:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pfBack:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 455
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pfBack:Landroid/widget/TextView;

    const v3, 0x7f0800c2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 457
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->isPass:[Z

    const/4 v3, 0x2

    aput-boolean v5, v2, v3

    .line 469
    :goto_258
    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pBack:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pBack:I

    .line 470
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->buttonDown:[Z

    const/4 v3, 0x2

    aput-boolean v5, v2, v3

    goto/16 :goto_b8

    .line 461
    :cond_265
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->sBack:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 462
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->sBack:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vBack:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pfBack:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 464
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pfBack:Landroid/widget/TextView;

    const v3, 0x7f0800be

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 466
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->isPass:[Z

    const/4 v3, 0x2

    aput-boolean v6, v2, v3

    goto :goto_258

    .line 478
    :cond_29d
    const/16 v2, 0x54

    if-ne p1, v2, :cond_b8

    .line 480
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->isPass:[Z

    aget-boolean v2, v2, v9

    if-nez v2, :cond_38a

    .line 482
    invoke-direct {p0, v5}, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->touchkey_sensitivity(Z)V

    .line 483
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->recv_sens:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vSearch:I

    .line 485
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KEYCODE_SEARCH   vSearch : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vSearch:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  pSearch : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pSearch:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vSearch:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_b8

    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vSearch:I

    const/16 v3, 0xff

    if-eq v2, v3, :cond_b8

    .line 489
    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vSearch:I

    const/16 v3, 0x46

    if-lt v2, v3, :cond_333

    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vSearch:I

    const/16 v3, 0xfa

    if-gt v2, v3, :cond_333

    .line 491
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->sSearch:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 492
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->sSearch:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vSearch:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pfSearch:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 494
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pfSearch:Landroid/widget/TextView;

    const v3, 0x7f0800c2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 496
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->isPass:[Z

    aput-boolean v5, v2, v9

    .line 508
    :goto_327
    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pSearch:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pSearch:I

    .line 509
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->buttonDown:[Z

    aput-boolean v5, v2, v9

    goto/16 :goto_b8

    .line 500
    :cond_333
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->sSearch:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 501
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->sSearch:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->vSearch:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pfSearch:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 503
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pfSearch:Landroid/widget/TextView;

    const v3, 0x7f0800be

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 505
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->isPass:[Z

    aput-boolean v6, v2, v9

    goto :goto_327

    .line 528
    .restart local v0       #i:I
    :cond_36a
    iget-boolean v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->pass:Z

    if-eqz v2, :cond_38a

    .line 530
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->LOG_TAG:Ljava/lang/String;

    const-string v3, "KEYCODE DOWN : All Button Pressed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/4 v1, 0x1

    .line 534
    .local v1, passed:Z
    const/4 v0, 0x0

    :goto_377
    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->Total_Test_Num:I

    if-ge v0, v2, :cond_385

    .line 536
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->isPass:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_382

    .line 538
    const/4 v1, 0x0

    .line 534
    :cond_382
    add-int/lit8 v0, v0, 0x1

    goto :goto_377

    .line 542
    :cond_385
    if-eqz v1, :cond_38a

    .line 543
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->startTimer()V

    .line 546
    .end local v0           #i:I
    .end local v1           #passed:Z
    :cond_38a
    return v5
.end method

.method public onPause()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 104
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 106
    :try_start_4
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 107
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1c} :catch_2c

    .line 112
    :cond_1c
    :goto_1c
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 113
    invoke-direct {p0, v5}, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->touchkey_sensitivity(Z)V

    .line 114
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void

    .line 109
    :catch_2c
    move-exception v0

    .line 110
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1c
.end method

.method public onResume()V
    .registers 6

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 91
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->enableAutoCalibration()V

    .line 93
    :try_start_6
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 94
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1e} :catch_2b

    .line 99
    :cond_1e
    :goto_1e
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 100
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void

    .line 96
    :catch_2b
    move-exception v0

    .line 97
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1e
.end method

.method protected startTimer()V
    .registers 5

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "startTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->mTimerHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 564
    return-void
.end method
