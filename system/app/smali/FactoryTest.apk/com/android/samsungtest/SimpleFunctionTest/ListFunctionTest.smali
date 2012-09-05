.class public Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;
.super Landroid/app/Activity;
.source "ListFunctionTest.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;,
        Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$FactoryTestAdapter;
    }
.end annotation


# static fields
.field private static pm:Landroid/os/PowerManager;

.field private static wl:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final SECONDARY_TEST_START:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrKey:I

.field private mCurrTime:J

.field mFTA:Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$FactoryTestAdapter;

.field private mFactoryTestAppListView:Landroid/widget/ListView;

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mPrevKey:I

.field private mPrevTime:J

.field private mTestName:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 103
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 105
    const-string v0, "FunctionTest"

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->LOG_TAG:Ljava/lang/String;

    .line 129
    const-string v0, "SECONDARY_TEST_START"

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->SECONDARY_TEST_START:Ljava/lang/String;

    .line 510
    return-void
.end method

.method private turnOffAutobrightness()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 267
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness_mode"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 268
    const/4 v4, 0x2

    new-array v0, v4, [B

    .line 269
    .local v0, buffer:[B
    const/4 v2, 0x0

    .line 272
    .local v2, out:Ljava/io/OutputStream;
    :try_start_e
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/lightsensor/switch_cmd/lightsensor_file_state"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_4e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_1a} :catch_2c
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1a} :catch_3d

    .line 273
    .end local v2           #out:Ljava/io/OutputStream;
    .local v3, out:Ljava/io/OutputStream;
    const/4 v4, 0x0

    const/16 v5, 0x30

    :try_start_1d
    aput-byte v5, v0, v4

    .line 274
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_5c
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_22} :catch_62
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_22} :catch_5f

    .line 280
    if-eqz v3, :cond_65

    :try_start_24
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_29

    const/4 v2, 0x0

    .line 283
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :cond_28
    :goto_28
    return-void

    .line 280
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_29
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_28

    .line 275
    :catch_2c
    move-exception v1

    .line 276
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_2d
    :try_start_2d
    const-string v4, "FunctionTest"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_4e

    .line 280
    if-eqz v2, :cond_28

    :try_start_38
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_56

    const/4 v2, 0x0

    goto :goto_28

    .line 277
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_3d
    move-exception v1

    .line 278
    .local v1, e:Ljava/io/IOException;
    :goto_3e
    :try_start_3e
    const-string v4, "FunctionTest"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_3e .. :try_end_47} :catchall_4e

    .line 280
    if-eqz v2, :cond_28

    :try_start_49
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_58

    const/4 v2, 0x0

    goto :goto_28

    .end local v1           #e:Ljava/io/IOException;
    :catchall_4e
    move-exception v4

    :goto_4f
    if-eqz v2, :cond_55

    :try_start_51
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_5a

    const/4 v2, 0x0

    :cond_55
    :goto_55
    throw v4

    .local v1, e:Ljava/io/FileNotFoundException;
    :catch_56
    move-exception v4

    goto :goto_28

    .local v1, e:Ljava/io/IOException;
    :catch_58
    move-exception v4

    goto :goto_28

    .end local v1           #e:Ljava/io/IOException;
    :catch_5a
    move-exception v5

    goto :goto_55

    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catchall_5c
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_4f

    .line 277
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_5f
    move-exception v1

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_3e

    .line 275
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_62
    move-exception v1

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_2d

    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :cond_65
    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_28
.end method


# virtual methods
.method public BackKeyCheck()Z
    .registers 5

    .prologue
    .line 254
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->mPrevKey:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_25

    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->mPrevTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_25

    .line 255
    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->mCurrTime:J

    iget-wide v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->mPrevTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->mCurrTime:J

    iget-wide v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->mPrevTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_25

    .line 256
    const/4 v0, 0x1

    .line 262
    :goto_24
    return v0

    .line 260
    :cond_25
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->mCurrKey:I

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->mPrevKey:I

    .line 261
    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->mCurrTime:J

    iput-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->mPrevTime:J

    .line 262
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 133
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    const v2, 0x7f03000e

    invoke-virtual {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->setContentView(I)V

    .line 136
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    .line 137
    .local v1, o:Ljava/lang/Object;
    if-eqz v1, :cond_1f

    move-object v0, v1

    .line 138
    check-cast v0, Ljava/util/HashMap;

    .line 139
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "mView"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iput-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->mView:Landroid/view/View;

    .line 141
    .end local v0           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1f
    iput-object p0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->mContext:Landroid/content/Context;

    .line 144
    new-instance v2, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$FactoryTestAdapter;

    invoke-direct {v2, p0}, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$FactoryTestAdapter;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;)V

    iput-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->mFTA:Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$FactoryTestAdapter;

    .line 145
    const v2, 0x7f09002f

    invoke-virtual {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->mFactoryTestAppListView:Landroid/widget/ListView;

    .line 146
    const v2, 0x7f090035

    invoke-virtual {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->mTestName:Landroid/widget/TextView;

    .line 147
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->mFactoryTestAppListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 148
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->mFactoryTestAppListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->mFTA:Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$FactoryTestAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 150
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    sput-object v2, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->pm:Landroid/os/PowerManager;

    .line 151
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->mWindowManager:Landroid/view/IWindowManager;

    .line 152
    sget-object v2, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->pm:Landroid/os/PowerManager;

    const v3, 0x1000000a

    const-string v4, "FunctionTest"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    sput-object v2, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->wl:Landroid/os/PowerManager$WakeLock;

    .line 154
    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 155
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v3, "FunctionTest"

    invoke-virtual {v2, v3}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 157
    sget-object v2, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 158
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v2}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 160
    sget-object v2, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_9f

    .line 162
    const-string v2, "FunctionTest"

    const-string v3, "WakeLock acquire"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    sget-object v2, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 166
    :cond_9f
    iput v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->mPrevKey:I

    .line 167
    iput-wide v6, p0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->mPrevTime:J

    .line 168
    iput v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->mCurrKey:I

    .line 169
    iput-wide v6, p0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->mCurrTime:J

    .line 170
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 201
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 202
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 204
    sget-object v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 205
    sget-object v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 206
    :cond_15
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    .line 293
    if-nez p3, :cond_f

    .line 294
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 295
    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->startActivity(Landroid/content/Intent;)V

    .line 344
    :cond_e
    :goto_e
    return-void

    .line 297
    :cond_f
    if-ne p3, v3, :cond_27

    .line 298
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/samsungtest/camera/Camera;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 299
    const-string v1, "camera_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 300
    const-string v1, "ommision_test"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 301
    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->startActivity(Landroid/content/Intent;)V

    goto :goto_e

    .line 303
    :cond_27
    if-ne p3, v1, :cond_3e

    .line 304
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/samsungtest/camera/Camera;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 305
    const-string v1, "camera_id"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 306
    const-string v1, "ommision_test"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 307
    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->startActivity(Landroid/content/Intent;)V

    goto :goto_e

    .line 309
    :cond_3e
    const/4 v0, 0x3

    if-ne p3, v0, :cond_58

    .line 310
    new-array v0, v1, [B

    .line 311
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 312
    const-string v2, "Mega_data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 313
    const-string v2, "Vga_data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 314
    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->startActivity(Landroid/content/Intent;)V

    goto :goto_e

    .line 316
    :cond_58
    const/4 v0, 0x4

    if-ne p3, v0, :cond_66

    .line 317
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 318
    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->startActivity(Landroid/content/Intent;)V

    goto :goto_e

    .line 321
    :cond_66
    const/4 v0, 0x5

    if-ne p3, v0, :cond_74

    .line 322
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 323
    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->startActivity(Landroid/content/Intent;)V

    goto :goto_e

    .line 325
    :cond_74
    const/4 v0, 0x6

    if-ne p3, v0, :cond_e

    .line 326
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 327
    const-class v1, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 328
    const-string v1, "SECONDARY_TEST_START"

    const-string v2, "SECONDARY_TEST_START"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->startActivity(Landroid/content/Intent;)V

    goto :goto_e
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 210
    const-string v1, "FunctionTest"

    const-string v2, "onKeyDown"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iput p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->mCurrKey:I

    .line 212
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->mCurrTime:J

    .line 213
    const/4 v1, 0x6

    if-ne p1, v1, :cond_14

    .line 250
    :cond_13
    :goto_13
    return v0

    .line 215
    :cond_14
    const/4 v1, 0x5

    if-eq p1, v1, :cond_13

    .line 218
    const/16 v1, 0x52

    if-eq p1, v1, :cond_13

    .line 221
    const/16 v1, 0x17

    if-eq p1, v1, :cond_13

    .line 224
    const/4 v1, 0x4

    if-ne p1, v1, :cond_53

    .line 226
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->BackKeyCheck()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-gtz v1, :cond_13

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-nez v1, :cond_13

    .line 228
    const-string v1, "FunctionTest"

    const-string v2, "This is back_key"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    sget-object v1, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 232
    const-string v1, "FunctionTest"

    const-string v2, "WakeLock release"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    sget-object v1, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 236
    :cond_4f
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->finish()V

    goto :goto_13

    .line 241
    :cond_53
    const/16 v1, 0x54

    if-eq p1, v1, :cond_13

    .line 245
    const/16 v1, 0x19

    if-eq p1, v1, :cond_13

    const/16 v1, 0x18

    if-eq p1, v1, :cond_13

    .line 250
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_13
.end method

.method protected onPause()V
    .registers 6

    .prologue
    .line 189
    const-string v1, "FunctionTest"

    const-string v2, "onPause()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 192
    :try_start_a
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 193
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_22} :catch_23

    .line 198
    :cond_22
    :goto_22
    return-void

    .line 195
    :catch_23
    move-exception v0

    .line 196
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_22
.end method

.method protected onResume()V
    .registers 6

    .prologue
    .line 173
    const-string v1, "FunctionTest"

    const-string v2, "onResume()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 176
    :try_start_a
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 177
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_22} :catch_2b

    .line 183
    :cond_22
    :goto_22
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->mFTA:Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$FactoryTestAdapter;

    invoke-virtual {v1}, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$FactoryTestAdapter;->notifyDataSetChanged()V

    .line 184
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->turnOffAutobrightness()V

    .line 185
    return-void

    .line 179
    :catch_2b
    move-exception v0

    .line 180
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_22
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 287
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 288
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "mView"

    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    return-object v0
.end method
