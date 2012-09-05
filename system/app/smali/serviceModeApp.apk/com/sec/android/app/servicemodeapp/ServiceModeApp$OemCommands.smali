.class Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;
.super Ljava/lang/Object;
.source "ServiceModeApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/servicemodeapp/ServiceModeApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OemCommands"
.end annotation


# instance fields
.field final OEM_SERVM_FUNCTAG:C

.field final OEM_SM_ACTION:C

.field final OEM_SM_DUMMY:C

.field final OEM_SM_END_MODE_MESSAGE:C

.field final OEM_SM_ENTER_MODE_MESSAGE:C

.field final OEM_SM_GET_DISPLAY_DATA_MESSAGE:C

.field final OEM_SM_PROCESS_KEY_MESSAGE:C

.field final OEM_SM_QUERY:C

.field final OEM_SM_TYPE_MONITOR:C

.field final OEM_SM_TYPE_NAM_EDIT:C

.field final OEM_SM_TYPE_PHONE_TEST:C

.field final OEM_SM_TYPE_SUB_ALL_VERSION_ENTER:C

.field final OEM_SM_TYPE_SUB_BAND_SEL_ENTER:C

.field final OEM_SM_TYPE_SUB_BATTERY_INFO_ENTER:C

.field final OEM_SM_TYPE_SUB_BLUETOOTH_TEST_ENTER:C

.field final OEM_SM_TYPE_SUB_CIPHERING_PROTECTION_ENTER:C

.field final OEM_SM_TYPE_SUB_ENTER:C

.field final OEM_SM_TYPE_SUB_FACTORY_PRECONFIG_ENTER:C

.field final OEM_SM_TYPE_SUB_FACTORY_RESET_ENTER:C

.field final OEM_SM_TYPE_SUB_FACTORY_VF_TEST_ENTER:C

.field final OEM_SM_TYPE_SUB_FTA_HW_VERSION_ENTER:C

.field final OEM_SM_TYPE_SUB_FTA_SW_VERSION_ENTER:C

.field final OEM_SM_TYPE_SUB_GCF_TESTMODE_ENTER:C

.field final OEM_SM_TYPE_SUB_GET_SELLOUT_SMS_INFO_ENTER:C

.field final OEM_SM_TYPE_SUB_GPSONE_SS_TEST_ENTER:C

.field final OEM_SM_TYPE_SUB_GSM_FACTORY_AUDIO_LB_ENTER:C

.field final OEM_SM_TYPE_SUB_IMEI_READ_ENTER:C

.field final OEM_SM_TYPE_SUB_INTEGRITY_PROTECTION_ENTER:C

.field final OEM_SM_TYPE_SUB_MELODY_TEST_ENTER:C

.field final OEM_SM_TYPE_SUB_MP3_TEST_ENTER:C

.field final OEM_SM_TYPE_SUB_RRC_VERSION_ENTER:C

.field final OEM_SM_TYPE_SUB_RSC_FILE_VERSION_ENTER:C

.field final OEM_SM_TYPE_SUB_SELLOUT_SMS_DISABLE_ENTER:C

.field final OEM_SM_TYPE_SUB_SELLOUT_SMS_ENABLE_ENTER:C

.field final OEM_SM_TYPE_SUB_SELLOUT_SMS_PRODUCT_MODE_ON:C

.field final OEM_SM_TYPE_SUB_SELLOUT_SMS_TEST_MODE_ON:C

.field final OEM_SM_TYPE_SUB_SW_VERSION_ENTER:C

.field final OEM_SM_TYPE_SUB_TFS4_EXPLORE_ENTER:C

.field final OEM_SM_TYPE_SUB_TOTAL_CALL_TIME_INFO_ENTER:C

.field final OEM_SM_TYPE_SUB_TST_AUTO_ANSWER_ENTER:C

.field final OEM_SM_TYPE_SUB_TST_FTA_HW_VERSION_ENTER:C

.field final OEM_SM_TYPE_SUB_TST_FTA_SW_VERSION_ENTER:C

.field final OEM_SM_TYPE_SUB_TST_NV_RESET_ENTER:C

.field final OEM_SM_TYPE_SUB_USB_DRIVER_ENTER:C

.field final OEM_SM_TYPE_SUB_USB_UART_DIAG_CONTROL_ENTER:C

.field final OEM_SM_TYPE_SUB_VIBRATOR_TEST_ENTER:C

.field final OEM_SM_TYPE_TEST_AUTO:C

.field final OEM_SM_TYPE_TEST_MANUAL:C

.field final synthetic this$0:Lcom/sec/android/app/servicemodeapp/ServiceModeApp;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 154
    iput-object p1, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->this$0:Lcom/sec/android/app/servicemodeapp/ServiceModeApp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-char v1, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SERVM_FUNCTAG:C

    .line 159
    iput-char v2, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_DUMMY:C

    .line 160
    iput-char v1, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_ENTER_MODE_MESSAGE:C

    .line 161
    iput-char v3, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_END_MODE_MESSAGE:C

    .line 162
    iput-char v4, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_PROCESS_KEY_MESSAGE:C

    .line 163
    iput-char v5, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_GET_DISPLAY_DATA_MESSAGE:C

    .line 166
    iput-char v1, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_TYPE_TEST_MANUAL:C

    .line 167
    iput-char v3, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_TYPE_TEST_AUTO:C

    .line 168
    iput-char v4, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_TYPE_NAM_EDIT:C

    .line 169
    iput-char v5, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_TYPE_MONITOR:C

    .line 170
    const/4 v0, 0x5

    iput-char v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_TYPE_PHONE_TEST:C

    .line 173
    iput-char v2, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_TYPE_SUB_ENTER:C

    .line 174
    iput-char v1, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_TYPE_SUB_SW_VERSION_ENTER:C

    .line 175
    iput-char v3, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_TYPE_SUB_FTA_SW_VERSION_ENTER:C

    .line 176
    iput-char v4, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_TYPE_SUB_FTA_HW_VERSION_ENTER:C

    .line 177
    iput-char v5, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_TYPE_SUB_ALL_VERSION_ENTER:C

    .line 178
    const/4 v0, 0x5

    iput-char v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_TYPE_SUB_BATTERY_INFO_ENTER:C

    .line 179
    const/4 v0, 0x6

    iput-char v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_TYPE_SUB_CIPHERING_PROTECTION_ENTER:C

    .line 180
    const/4 v0, 0x7

    iput-char v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_TYPE_SUB_INTEGRITY_PROTECTION_ENTER:C

    .line 181
    const/16 v0, 0x8

    iput-char v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_TYPE_SUB_IMEI_READ_ENTER:C

    .line 182
    const/16 v0, 0x9

    iput-char v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_TYPE_SUB_BLUETOOTH_TEST_ENTER:C

    .line 183
    const/16 v0, 0xa

    iput-char v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_TYPE_SUB_VIBRATOR_TEST_ENTER:C

    .line 184
    const/16 v0, 0xb

    iput-char v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_TYPE_SUB_MELODY_TEST_ENTER:C

    .line 185
    const/16 v0, 0xc

    iput-char v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_TYPE_SUB_MP3_TEST_ENTER:C

    .line 186
    const/16 v0, 0xd

    iput-char v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_TYPE_SUB_FACTORY_RESET_ENTER:C

    .line 187
    const/16 v0, 0xe

    iput-char v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_TYPE_SUB_FACTORY_PRECONFIG_ENTER:C

    .line 188
    const/16 v0, 0xf

    iput-char v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_TYPE_SUB_TFS4_EXPLORE_ENTER:C

    .line 189
    const/16 v0, 0x11

    iput-char v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_TYPE_SUB_RSC_FILE_VERSION_ENTER:C

    .line 190
    const/16 v0, 0x12

    iput-char v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_TYPE_SUB_USB_DRIVER_ENTER:C

    .line 191
    const/16 v0, 0x13

    iput-char v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_TYPE_SUB_USB_UART_DIAG_CONTROL_ENTER:C

    .line 192
    const/16 v0, 0x14

    iput-char v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_TYPE_SUB_RRC_VERSION_ENTER:C

    .line 193
    const/16 v0, 0x15

    iput-char v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_TYPE_SUB_GPSONE_SS_TEST_ENTER:C

    .line 194
    const/16 v0, 0x16

    iput-char v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_TYPE_SUB_BAND_SEL_ENTER:C

    .line 195
    const/16 v0, 0x17

    iput-char v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_TYPE_SUB_GCF_TESTMODE_ENTER:C

    .line 196
    const/16 v0, 0x18

    iput-char v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_TYPE_SUB_GSM_FACTORY_AUDIO_LB_ENTER:C

    .line 197
    const/16 v0, 0x19

    iput-char v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_TYPE_SUB_FACTORY_VF_TEST_ENTER:C

    .line 198
    const/16 v0, 0x1a

    iput-char v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_TYPE_SUB_TOTAL_CALL_TIME_INFO_ENTER:C

    .line 199
    const/16 v0, 0x1b

    iput-char v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_TYPE_SUB_SELLOUT_SMS_ENABLE_ENTER:C

    .line 200
    const/16 v0, 0x1c

    iput-char v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_TYPE_SUB_SELLOUT_SMS_DISABLE_ENTER:C

    .line 201
    const/16 v0, 0x1d

    iput-char v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_TYPE_SUB_SELLOUT_SMS_TEST_MODE_ON:C

    .line 202
    const/16 v0, 0x1e

    iput-char v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_TYPE_SUB_SELLOUT_SMS_PRODUCT_MODE_ON:C

    .line 203
    const/16 v0, 0x1f

    iput-char v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_TYPE_SUB_GET_SELLOUT_SMS_INFO_ENTER:C

    .line 204
    const/16 v0, 0x20

    iput-char v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_TYPE_SUB_TST_AUTO_ANSWER_ENTER:C

    .line 205
    const/16 v0, 0x21

    iput-char v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_TYPE_SUB_TST_NV_RESET_ENTER:C

    .line 206
    const/16 v0, 0x1002

    iput-char v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_TYPE_SUB_TST_FTA_SW_VERSION_ENTER:C

    .line 207
    const/16 v0, 0x1003

    iput-char v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_TYPE_SUB_TST_FTA_HW_VERSION_ENTER:C

    .line 211
    iput-char v2, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_ACTION:C

    .line 212
    iput-char v1, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;->OEM_SM_QUERY:C

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;Lcom/sec/android/app/servicemodeapp/ServiceModeApp$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;-><init>(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;)V

    return-void
.end method


# virtual methods
.method getServMEnterData(CCCC)[B
    .registers 11
    .parameter "svcMode"
    .parameter "modeType"
    .parameter "subType"
    .parameter "query"

    .prologue
    .line 216
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 217
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 218
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x7

    .line 220
    .local v3, fileSize:C
    const/4 v4, 0x1

    :try_start_c
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 221
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 222
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 223
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 224
    invoke-virtual {v1, p3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 225
    invoke-virtual {v1, p4}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1e} :catch_23

    .line 232
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    :goto_22
    return-object v4

    .line 227
    :catch_23
    move-exception v2

    .line 228
    .local v2, e:Ljava/io/IOException;
    const-string v4, "ServiceMode"

    const-string v5, "IOException in getServMQueryData!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v4, 0x0

    goto :goto_22
.end method

.method setEndModeData(CC)[B
    .registers 9
    .parameter "svcMode"
    .parameter "modeType"

    .prologue
    .line 259
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 260
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 261
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x5

    .line 264
    .local v3, fileSize:I
    const/4 v4, 0x1

    :try_start_c
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 265
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 266
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 267
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_18} :catch_1d

    .line 274
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    :goto_1c
    return-object v4

    .line 269
    :catch_1d
    move-exception v2

    .line 270
    .local v2, e:Ljava/io/IOException;
    const-string v4, "ServiceMode"

    const-string v5, "IOException in getServMQueryData!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v4, 0x0

    goto :goto_1c
.end method

.method setPressKeyData(CCC)[B
    .registers 11
    .parameter "svcMode"
    .parameter "keycode"
    .parameter "query"

    .prologue
    .line 237
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 238
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 239
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x6

    .line 241
    .local v3, fileSize:I
    const-string v4, "ServiceMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keycode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v4, 0x1

    :try_start_24
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 245
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 246
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 247
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 248
    invoke-virtual {v1, p3}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_33} :catch_38

    .line 254
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    :goto_37
    return-object v4

    .line 249
    :catch_38
    move-exception v2

    .line 250
    .local v2, e:Ljava/io/IOException;
    const-string v4, "ServiceMode"

    const-string v5, "IOException in getServMQueryData!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v4, 0x0

    goto :goto_37
.end method
