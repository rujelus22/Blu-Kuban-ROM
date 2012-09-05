.class public Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;
.super Landroid/app/Activity;
.source "FactoryTestMainHistoryView.java"


# instance fields
.field BT:Ljava/lang/String;

.field private final FACTORY_TEST_HISTORY_VIEW_FIRST_COMMAND:I

.field private final FACTORY_TEST_HISTORY_VIEW_SECOND_COMMAND:I

.field private final GET_HISTORY_VIEW_ITEM_ACTION:Ljava/lang/String;

.field private final ITEM_MAX_SIZE:I

.field SF:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field earphone:Ljava/lang/String;

.field earphonekey:Ljava/lang/String;

.field loop:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mEarphoneTestValue:Ljava/lang/String;

.field private mItemTextView:[Landroid/widget/TextView;

.field mItemValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNameTextView:[Landroid/widget/TextView;

.field private final mResetValue:Ljava/lang/String;

.field private mResultTextView:[Landroid/widget/TextView;

.field mResultValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTextView:Landroid/widget/TextView;

.field private mTextView1:Landroid/widget/TextView;

.field private mValueSize:I

.field magnet:Ljava/lang/String;

.field public passResult_new:[Ljava/lang/String;

.field private phone:Lcom/android/internal/telephony/Phone;

.field speaker:Ljava/lang/String;

.field public testNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/16 v2, 0x3c

    const/4 v1, 0x7

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    iput v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->ITEM_MAX_SIZE:I

    .line 37
    const-string v0, "FactoryTestMainHistoryView"

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->TAG:Ljava/lang/String;

    .line 39
    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->mItemTextView:[Landroid/widget/TextView;

    .line 40
    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->mResultTextView:[Landroid/widget/TextView;

    .line 41
    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->mNameTextView:[Landroid/widget/TextView;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->mItemValue:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->mResultValue:Ljava/util/List;

    .line 48
    const-string v0, "com.android.samsungtest.RilOmissionCommand"

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->GET_HISTORY_VIEW_ITEM_ACTION:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->mValueSize:I

    .line 50
    const-string v0, "FF"

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->mResetValue:Ljava/lang/String;

    .line 51
    const-string v0, "7F"

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->mEarphoneTestValue:Ljava/lang/String;

    .line 55
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->passResult_new:[Ljava/lang/String;

    .line 56
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->testNames:[Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->phone:Lcom/android/internal/telephony/Phone;

    .line 63
    const/16 v0, 0x12

    iput v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->FACTORY_TEST_HISTORY_VIEW_FIRST_COMMAND:I

    .line 64
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->FACTORY_TEST_HISTORY_VIEW_SECOND_COMMAND:I

    .line 67
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->SF:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->BT:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->speaker:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->magnet:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->loop:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->earphone:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->earphonekey:Ljava/lang/String;

    .line 446
    new-instance v0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView$1;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView$1;-><init>(Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;)V

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private HexToDec()V
    .registers 7

    .prologue
    .line 219
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->mItemValue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_5b

    .line 220
    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->mItemValue:Ljava/util/List;

    new-instance v4, Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->mItemValue:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v5, 0x10

    invoke-direct {v4, v2, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->mResultValue:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 222
    .local v1, mTempResult:Ljava/lang/String;
    const-string v2, "50"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->mResultValue:Ljava/util/List;

    const-string v3, "P"

    invoke-interface {v2, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 219
    :cond_38
    :goto_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 223
    :cond_3b
    const-string v2, "45"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->mResultValue:Ljava/util/List;

    const-string v3, "N"

    invoke-interface {v2, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_38

    .line 224
    :cond_4b
    const-string v2, "46"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->mResultValue:Ljava/util/List;

    const-string v3, "E"

    invoke-interface {v2, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_38

    .line 226
    .end local v1           #mTempResult:Ljava/lang/String;
    :cond_5b
    return-void
.end method

.method static synthetic access$000(Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->getFactoryTestHistoryValue(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->setFactoryTestHistoryValue()V

    return-void
.end method

.method private getDataFromRilFactory()V
    .registers 8

    .prologue
    .line 149
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 150
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 151
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x7

    .line 152
    .local v3, fileSize:I
    const-string v4, "FactoryTestMainHistoryView"

    const-string v5, "getDataFromRilFactory()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/16 v4, 0x12

    :try_start_14
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 155
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 156
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 157
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 158
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 159
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_2a} :catch_35

    .line 163
    :goto_2a
    iget-object v4, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 164
    return-void

    .line 160
    :catch_35
    move-exception v2

    .line 161
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2a
.end method

.method private getFactoryTestHistoryValue(Landroid/content/Intent;)V
    .registers 9
    .parameter "intent"

    .prologue
    .line 167
    const-string v4, "COMMAND"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, valuesString:Ljava/lang/String;
    if-nez v3, :cond_11

    .line 170
    const-string v4, "FactoryTestMainHistoryView"

    const-string v5, "No History in NV_item"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v3, ""

    .line 177
    :cond_11
    const-string v4, "FactoryTestMainHistoryView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "String : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string v4, "FactoryTestMainHistoryView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StringSize : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v0, 0x6

    .local v0, i:I
    :goto_46
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_9b

    .line 181
    add-int/lit8 v4, v0, 0x2

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, mTempItemValue:Ljava/lang/String;
    add-int/lit8 v4, v0, 0x2

    add-int/lit8 v5, v0, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, mTempResultValue:Ljava/lang/String;
    const-string v4, "50"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_72

    const-string v4, "45"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_72

    const-string v4, "46"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 184
    :cond_72
    iget-object v4, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->mItemValue:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v4, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->mResultValue:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_7c
    const-string v4, "FactoryTestMainHistoryView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    add-int/lit8 v0, v0, 0x4

    goto :goto_46

    .line 190
    .end local v1           #mTempItemValue:Ljava/lang/String;
    .end local v2           #mTempResultValue:Ljava/lang/String;
    :cond_9b
    invoke-direct {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->HexToDec()V

    .line 208
    return-void
.end method

.method private registerBroadcastReceiver()V
    .registers 3

    .prologue
    .line 441
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 442
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.android.samsungtest.RilOmissionCommand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 443
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 444
    return-void
.end method

.method private setFactoryTestHistoryValue()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 236
    const-string v6, "FactoryTestMainHistoryView"

    const-string v7, "setFactoryTestHistoryValue()"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const-string v2, ""

    .line 242
    .local v2, blank:Ljava/lang/String;
    const-string v5, ""

    .line 248
    .local v5, status:Ljava/lang/String;
    const-string v6, "FactoryTestMainHistoryView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mItemValue.size(): 02 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->mItemValue:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v6, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->mItemValue:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, i:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_33
    if-ltz v3, :cond_cd

    const/16 v6, 0x3c

    if-ge v4, v6, :cond_cd

    .line 251
    const-string v7, "FactoryTestMainHistoryView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mItemValue: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->mItemValue:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " mResultValue: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->mResultValue:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v6, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->mItemValue:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 254
    .local v0, ItemValue:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->mResultValue:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 256
    .local v1, ResultValue:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0xa

    if-ge v6, v7, :cond_ca

    .line 257
    const-string v2, "  "

    .line 262
    :goto_89
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->testNames:[Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 250
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_33

    .line 259
    :cond_ca
    const-string v2, ""

    goto :goto_89

    .line 267
    .end local v0           #ItemValue:Ljava/lang/String;
    .end local v1           #ResultValue:Ljava/lang/String;
    :cond_cd
    iget-object v6, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 268
    iget-object v6, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v6, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->setContentView(I)V

    .line 82
    const-string v0, "FactoryTestMainHistoryView"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const v0, 0x7f09003c

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->mTextView:Landroid/widget/TextView;

    .line 86
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    const v0, 0x7f09003a

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->mTextView1:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->mTextView1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->mTextView1:Landroid/widget/TextView;

    const-string v1, "Test Result"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->testNames:[Ljava/lang/String;

    const/16 v1, 0x15

    const-string v2, "Simple Test\t\t\t\t\t\t\t"

    aput-object v2, v0, v1

    .line 97
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->testNames:[Ljava/lang/String;

    const/16 v1, 0x16

    const-string v2, "PacketLoopBack \t\t"

    aput-object v2, v0, v1

    .line 98
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->testNames:[Ljava/lang/String;

    const/16 v1, 0x17

    const-string v2, "BT \t\t\t\t\t\t\t\t\t\t\t\t\t\t"

    aput-object v2, v0, v1

    .line 99
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->testNames:[Ljava/lang/String;

    const/16 v1, 0x18

    const-string v2, "SDCARD Test \t\t\t\t\t\t"

    aput-object v2, v0, v1

    .line 100
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->testNames:[Ljava/lang/String;

    const/16 v1, 0x19

    const-string v2, "Speaker\t\t\t\t\t\t\t\t\t\t"

    aput-object v2, v0, v1

    .line 102
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->testNames:[Ljava/lang/String;

    const/16 v1, 0x26

    const-string v2, "Magnetic Sensor\t\t"

    aput-object v2, v0, v1

    .line 103
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->testNames:[Ljava/lang/String;

    const/16 v1, 0x20

    const-string v2, "EarPhone \t\t\t\t\t\t\t\t"

    aput-object v2, v0, v1

    .line 104
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->testNames:[Ljava/lang/String;

    const/16 v1, 0x21

    const-string v2, "EarPhoneKey  \t\t\t\t"

    aput-object v2, v0, v1

    .line 105
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->testNames:[Ljava/lang/String;

    const/16 v1, 0x22

    const-string v2, "TSP Test \t\t\t\t\t\t\t\t\t"

    aput-object v2, v0, v1

    .line 106
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->testNames:[Ljava/lang/String;

    const/16 v1, 0x1b

    const-string v2, "Touch Key Test\t\t\t\t"

    aput-object v2, v0, v1

    .line 108
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->testNames:[Ljava/lang/String;

    const/16 v1, 0x27

    const-string v2, "USB Test \t\t\t\t\t\t\t\t"

    aput-object v2, v0, v1

    .line 109
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->testNames:[Ljava/lang/String;

    const/16 v1, 0x14

    const-string v2, "Secondary Test \t\t\t"

    aput-object v2, v0, v1

    .line 110
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->testNames:[Ljava/lang/String;

    const/16 v1, 0x13

    const-string v2, "Gyroscope Test \t\t\t"

    aput-object v2, v0, v1

    .line 112
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->testNames:[Ljava/lang/String;

    const/16 v1, 0x1a

    const-string v2, "Speaker\t\t\t\t\t"

    aput-object v2, v0, v1

    .line 113
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->testNames:[Ljava/lang/String;

    const/16 v1, 0x23

    const-string v2, "Battery Test\t\t\t"

    aput-object v2, v0, v1

    .line 114
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->testNames:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "SMD Test \t\t\t\t\t\t\t\t"

    aput-object v2, v0, v1

    .line 115
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->testNames:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "PBA Test \t\t\t\t\t\t\t\t"

    aput-object v2, v0, v1

    .line 116
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->testNames:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, "RF CAL Test\t\t\t\t\t\t\t"

    aput-object v2, v0, v1

    .line 117
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->testNames:[Ljava/lang/String;

    const/16 v1, 0xb

    const-string v2, "Final Test\t\t\t\t\t\t\t\t"

    aput-object v2, v0, v1

    .line 118
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->testNames:[Ljava/lang/String;

    const/16 v1, 0x10

    const-string v2, "MEID Test\t\t\t\t"

    aput-object v2, v0, v1

    .line 119
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->testNames:[Ljava/lang/String;

    const/16 v1, 0x24

    const-string v2, "WIBRO Test \t\t\t"

    aput-object v2, v0, v1

    .line 120
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->testNames:[Ljava/lang/String;

    const/16 v1, 0x11

    const-string v2, "Sensor Test\t\t\t\t\t\t\t"

    aput-object v2, v0, v1

    .line 121
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->testNames:[Ljava/lang/String;

    const/16 v1, 0x12

    const-string v2, "HDMI Test\t\t\t\t\t\t\t"

    aput-object v2, v0, v1

    .line 123
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->phone:Lcom/android/internal/telephony/Phone;

    .line 124
    invoke-direct {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->getDataFromRilFactory()V

    .line 125
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 138
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 139
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 128
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 130
    const-string v0, "FactoryTestMainHistoryView"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-direct {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->registerBroadcastReceiver()V

    .line 133
    return-void
.end method
