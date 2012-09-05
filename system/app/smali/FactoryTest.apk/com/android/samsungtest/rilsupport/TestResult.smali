.class public Lcom/android/samsungtest/rilsupport/TestResult;
.super Landroid/app/Activity;
.source "TestResult.java"


# instance fields
.field private final IPC_FACTORY_AUTO_CDMA_COMMAND_LENGTH:I

.field private final OEM_FACTORY_SET_PROCESS_TEST:I

.field private final OEM_FUNCTION_ID_FACTORY:I

.field private TAG:Ljava/lang/String;

.field public failText:Ljava/lang/String;

.field items:[Ljava/lang/String;

.field private mTextView:Landroid/widget/TextView;

.field private mTextView1:Landroid/widget/TextView;

.field public nullText:Ljava/lang/String;

.field public passResult_new:[Ljava/lang/String;

.field private phone:Lcom/android/internal/telephony/Phone;

.field public testArray:[I

.field public testArray_new:[I

.field private testNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private testResultMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field test_result_arr:[B


# direct methods
.method public constructor <init>()V
    .registers 9

    .prologue
    const/16 v7, 0x3c

    const/16 v6, 0x14

    const/16 v5, 0x12

    const/4 v4, 0x5

    const/4 v3, 0x4

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    const-string v0, "TestResult"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/TestResult;->TAG:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/TestResult;->phone:Lcom/android/internal/telephony/Phone;

    .line 44
    iput v5, p0, Lcom/android/samsungtest/rilsupport/TestResult;->OEM_FUNCTION_ID_FACTORY:I

    .line 45
    iput v3, p0, Lcom/android/samsungtest/rilsupport/TestResult;->OEM_FACTORY_SET_PROCESS_TEST:I

    .line 46
    iput v4, p0, Lcom/android/samsungtest/rilsupport/TestResult;->IPC_FACTORY_AUTO_CDMA_COMMAND_LENGTH:I

    .line 71
    new-array v0, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SMD function"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "PBA Test"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "RF CAL"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "FINAL Test"

    aput-object v2, v0, v1

    const-string v1, "WLAN"

    aput-object v1, v0, v3

    const-string v1, "IMEI Write"

    aput-object v1, v0, v4

    const/4 v1, 0x6

    const-string v2, "Magnetic Sensor"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "2nd RSSI"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Simple Test"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Call"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Bluetooth"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "SDcard"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "(L)Speaker"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "(R)Speaker"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Call"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Ear"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Ear Key"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "TSP Test"

    aput-object v2, v0, v1

    const-string v1, "Battery Test"

    aput-object v1, v0, v5

    const/16 v1, 0x13

    const-string v2, "USB Path"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/TestResult;->items:[Ljava/lang/String;

    .line 95
    new-array v0, v6, [I

    fill-array-data v0, :array_a0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/TestResult;->testArray:[I

    .line 116
    new-array v0, v7, [I

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/TestResult;->testArray_new:[I

    .line 117
    new-array v0, v7, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/TestResult;->passResult_new:[Ljava/lang/String;

    .line 119
    const-string v0, "F"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/TestResult;->failText:Ljava/lang/String;

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/TestResult;->nullText:Ljava/lang/String;

    return-void

    .line 95
    :array_a0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private init()V
    .registers 5

    .prologue
    .line 151
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/TestResult;->testResultMap:Ljava/util/Map;

    .line 152
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/TestResult;->testNameMap:Ljava/util/Map;

    .line 153
    const/4 v0, 0x0

    .local v0, i:I
    :goto_f
    const/16 v1, 0x14

    if-ge v0, v1, :cond_36

    .line 155
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/TestResult;->testResultMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/TestResult;->testArray:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "E"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/TestResult;->testNameMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/TestResult;->testArray:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/samsungtest/rilsupport/TestResult;->items:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 158
    :cond_36
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 127
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    const v1, 0x7f030012

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/rilsupport/TestResult;->setContentView(I)V

    .line 129
    const v1, 0x7f09003c

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/rilsupport/TestResult;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/TestResult;->mTextView:Landroid/widget/TextView;

    .line 130
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/TestResult;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    const v1, 0x7f09003a

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/rilsupport/TestResult;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/TestResult;->mTextView1:Landroid/widget/TextView;

    .line 132
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/TestResult;->mTextView1:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/TestResult;->TAG:Ljava/lang/String;

    const-string v2, "OnCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/TestResult;->init()V

    .line 136
    invoke-virtual {p0}, Lcom/android/samsungtest/rilsupport/TestResult;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 137
    .local v0, i:Landroid/content/Intent;
    const-string v1, "test_result"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/TestResult;->test_result_arr:[B

    .line 139
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/TestResult;->test_result_arr:[B

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/rilsupport/TestResult;->setTestResult_to_map([B)V

    .line 141
    return-void
.end method

.method public declared-synchronized onResume()V
    .registers 3

    .prologue
    .line 146
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 147
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/TestResult;->TAG:Ljava/lang/String;

    const-string v1, "OnResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 148
    monitor-exit p0

    return-void

    .line 146
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public result_to_string(B)Ljava/lang/String;
    .registers 6
    .parameter "buf"

    .prologue
    .line 214
    const/16 v1, 0x50

    if-ne p1, v1, :cond_29

    .line 216
    const-string v0, "P"

    .line 226
    .local v0, result:Ljava/lang/String;
    :goto_6
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/TestResult;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result_to_string() buf = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ==>  result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-object v0

    .line 218
    .end local v0           #result:Ljava/lang/String;
    :cond_29
    const/16 v1, 0x46

    if-ne p1, v1, :cond_30

    .line 220
    const-string v0, "F"

    .restart local v0       #result:Ljava/lang/String;
    goto :goto_6

    .line 224
    .end local v0           #result:Ljava/lang/String;
    :cond_30
    const-string v0, "E"

    .restart local v0       #result:Ljava/lang/String;
    goto :goto_6
.end method

.method public setTestResult_to_map([B)V
    .registers 8
    .parameter "buf"

    .prologue
    .line 168
    const/16 v0, 0x76

    .local v0, j:I
    :goto_2
    const/4 v3, -0x1

    if-le v0, v3, :cond_fa

    .line 170
    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/android/samsungtest/rilsupport/TestResult;->result_to_string(B)Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, result:Ljava/lang/String;
    const-string v3, "E"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 168
    :goto_15
    add-int/lit8 v0, v0, -0x2

    goto :goto_2

    .line 175
    :cond_18
    iget-object v3, p0, Lcom/android/samsungtest/rilsupport/TestResult;->testResultMap:Ljava/util/Map;

    aget-byte v4, p1, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 177
    .local v2, resultNow:Ljava/lang/String;
    if-eqz v2, :cond_de

    .line 179
    const-string v3, "E"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 181
    iget-object v3, p0, Lcom/android/samsungtest/rilsupport/TestResult;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setTestResult_to_map   E  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "...  result  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v3, p0, Lcom/android/samsungtest/rilsupport/TestResult;->testResultMap:Ljava/util/Map;

    aget-byte v4, p1, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :goto_5f
    const-string v1, ""

    goto :goto_15

    .line 184
    :cond_62
    const-string v3, "F"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c3

    .line 186
    const-string v3, "P"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a2

    .line 188
    iget-object v3, p0, Lcom/android/samsungtest/rilsupport/TestResult;->testResultMap:Ljava/util/Map;

    aget-byte v4, p1, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v3, p0, Lcom/android/samsungtest/rilsupport/TestResult;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setTestResult_to_map   F  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "...  result  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    .line 193
    :cond_a2
    iget-object v3, p0, Lcom/android/samsungtest/rilsupport/TestResult;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setTestResult_to_map   F  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "...  Already Fail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    .line 198
    :cond_c3
    iget-object v3, p0, Lcom/android/samsungtest/rilsupport/TestResult;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setTestResult_to_map   Already Pass : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    .line 203
    :cond_de
    iget-object v3, p0, Lcom/android/samsungtest/rilsupport/TestResult;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setTestResult_to_map delete Test ID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5f

    .line 208
    .end local v1           #result:Ljava/lang/String;
    .end local v2           #resultNow:Ljava/lang/String;
    :cond_fa
    invoke-virtual {p0}, Lcom/android/samsungtest/rilsupport/TestResult;->updateNVStatus_new()V

    .line 209
    return-void
.end method

.method public updateNVStatus_new()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 232
    const-string v5, ""

    .line 234
    .local v5, status:Ljava/lang/String;
    const-string v6, "HIST_NV LIST"

    .line 235
    .local v6, testResult:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/samsungtest/rilsupport/TestResult;->mTextView1:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v7, p0, Lcom/android/samsungtest/rilsupport/TestResult;->testResultMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 238
    .local v4, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 239
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    iget-object v7, p0, Lcom/android/samsungtest/rilsupport/TestResult;->testNameMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 241
    .local v2, iterName:Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_76

    .line 243
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 244
    .local v3, keycode:I
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 245
    .local v0, entryName:Ljava/util/Map$Entry;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v7, p0, Lcom/android/samsungtest/rilsupport/TestResult;->testResultMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 246
    goto :goto_1e

    .line 248
    .end local v0           #entryName:Ljava/util/Map$Entry;
    .end local v3           #keycode:I
    :cond_76
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/samsungtest/rilsupport/TestResult;->nullText:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 250
    iget-object v7, p0, Lcom/android/samsungtest/rilsupport/TestResult;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 251
    iget-object v7, p0, Lcom/android/samsungtest/rilsupport/TestResult;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v7, p0, Lcom/android/samsungtest/rilsupport/TestResult;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    return-void
.end method
