.class public Lcom/sec/android/app/servicemodeapp/GcfModeSettings;
.super Landroid/app/Activity;
.source "GcfModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/servicemodeapp/GcfModeSettings$OemCommands;
    }
.end annotation


# instance fields
.field private GcfMode:Ljava/lang/String;

.field private bGcfMode:Z

.field private buf:[B

.field private inFile:Ljava/lang/String;

.field private mClicked:Landroid/view/View$OnClickListener;

.field private mGcfMode:Landroid/widget/Button;

.field public mHandler:Landroid/os/Handler;

.field private mOem:Lcom/sec/android/app/servicemodeapp/GcfModeSettings$OemCommands;

.field private phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->phone:Lcom/android/internal/telephony/Phone;

    .line 55
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->buf:[B

    .line 57
    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->mOem:Lcom/sec/android/app/servicemodeapp/GcfModeSettings$OemCommands;

    .line 59
    new-instance v0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/servicemodeapp/GcfModeSettings$1;-><init>(Lcom/sec/android/app/servicemodeapp/GcfModeSettings;)V

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->mHandler:Landroid/os/Handler;

    .line 263
    new-instance v0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/servicemodeapp/GcfModeSettings$2;-><init>(Lcom/sec/android/app/servicemodeapp/GcfModeSettings;)V

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->mClicked:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private GcfModeSet(I)V
    .registers 8
    .parameter "mode"

    .prologue
    const/4 v3, 0x1

    .line 190
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 191
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 195
    .local v1, dos:Ljava/io/DataOutputStream;
    :try_start_b
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->mOem:Lcom/sec/android/app/servicemodeapp/GcfModeSettings$OemCommands;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 196
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->mOem:Lcom/sec/android/app/servicemodeapp/GcfModeSettings$OemCommands;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 197
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 199
    if-nez p1, :cond_3d

    .line 200
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_50
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_28} :catch_44

    .line 213
    :goto_28
    :try_start_28
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_55

    .line 221
    :goto_2b
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3f5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 222
    return-void

    .line 201
    :cond_3d
    if-ne p1, v3, :cond_4b

    .line 202
    const/4 v2, 0x1

    :try_start_40
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_50
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_28

    .line 206
    :catch_44
    move-exception v2

    .line 213
    :try_start_45
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_2b

    .line 215
    :catch_49
    move-exception v2

    goto :goto_2b

    .line 204
    :cond_4b
    const/4 v2, 0x3

    :try_start_4c
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_50
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_44

    goto :goto_28

    .line 211
    :catchall_50
    move-exception v2

    .line 213
    :try_start_51
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_57

    .line 218
    :goto_54
    throw v2

    .line 215
    :catch_55
    move-exception v2

    goto :goto_2b

    :catch_57
    move-exception v3

    goto :goto_54
.end method

.method private SendData(I)V
    .registers 6
    .parameter "cmd"

    .prologue
    .line 173
    const/4 v0, 0x0

    .line 175
    .local v0, data:[B
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->mOem:Lcom/sec/android/app/servicemodeapp/GcfModeSettings$OemCommands;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/servicemodeapp/GcfModeSettings$OemCommands;->StartSysDumpData(I)[B

    move-result-object v0

    .line 177
    if-nez v0, :cond_11

    .line 179
    const-string v1, "GcfModeSettings"

    const-string v2, " err - data is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_10
    :goto_10
    return-void

    .line 183
    :cond_11
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->mOem:Lcom/sec/android/app/servicemodeapp/GcfModeSettings$OemCommands;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0xf

    if-ne p1, v1, :cond_10

    .line 185
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_10
.end method

.method static synthetic access$000(Lcom/sec/android/app/servicemodeapp/GcfModeSettings;)[B
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->buf:[B

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/servicemodeapp/GcfModeSettings;)Lcom/sec/android/app/servicemodeapp/GcfModeSettings$OemCommands;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->mOem:Lcom/sec/android/app/servicemodeapp/GcfModeSettings$OemCommands;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/servicemodeapp/GcfModeSettings;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->bGcfMode:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/servicemodeapp/GcfModeSettings;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->bGcfMode:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/servicemodeapp/GcfModeSettings;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->mGcfMode:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/servicemodeapp/GcfModeSettings;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->SendData(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/servicemodeapp/GcfModeSettings;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->GcfModeSet(I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 227
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 229
    const v2, 0x7f030004

    invoke-virtual {p0, v2}, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->setContentView(I)V

    .line 231
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->phone:Lcom/android/internal/telephony/Phone;

    .line 232
    new-instance v2, Lcom/sec/android/app/servicemodeapp/GcfModeSettings$OemCommands;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/servicemodeapp/GcfModeSettings$OemCommands;-><init>(Lcom/sec/android/app/servicemodeapp/GcfModeSettings;Lcom/sec/android/app/servicemodeapp/GcfModeSettings$1;)V

    iput-object v2, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->mOem:Lcom/sec/android/app/servicemodeapp/GcfModeSettings$OemCommands;

    .line 234
    invoke-virtual {p0}, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 236
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "ril.sms.gcf-mode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->GcfMode:Ljava/lang/String;

    .line 238
    const v2, 0x7f06000d

    invoke-virtual {p0, v2}, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->mGcfMode:Landroid/widget/Button;

    .line 240
    const-string v2, "/data/log/gcf_mode"

    iput-object v2, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->inFile:Ljava/lang/String;

    .line 242
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->inFile:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    .local v1, oFile_Gcf_mode:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 246
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->mOem:Lcom/sec/android/app/servicemodeapp/GcfModeSettings$OemCommands;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0xf

    invoke-direct {p0, v2}, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->SendData(I)V

    .line 254
    :goto_49
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->mGcfMode:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    return-void

    .line 250
    :cond_51
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->mGcfMode:Landroid/widget/Button;

    const-string v3, "Gcf Mode Disabled"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 251
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->GcfModeSet(I)V

    goto :goto_49
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 260
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 261
    return-void
.end method
