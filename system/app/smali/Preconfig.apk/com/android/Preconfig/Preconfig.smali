.class public Lcom/android/Preconfig/Preconfig;
.super Landroid/app/ListActivity;
.source "Preconfig.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field LOG_TAG:Ljava/lang/String;

.field list_fold:[Ljava/lang/String;

.field public mHandler:Landroid/os/Handler;

.field private mInputCode:Landroid/widget/EditText;

.field path_csc:Ljava/lang/String;

.field path_mps:Ljava/lang/String;

.field private phone:Lcom/android/internal/telephony/Phone;

.field userInput:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 54
    const-string v0, "Preconfig"

    iput-object v0, p0, Lcom/android/Preconfig/Preconfig;->LOG_TAG:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/android/Preconfig/Preconfig;->userInput:Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/Preconfig/Preconfig;->phone:Lcom/android/internal/telephony/Phone;

    .line 66
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/Preconfig/Preconfig;->list_fold:[Ljava/lang/String;

    .line 67
    const-string v0, "/system/csc"

    iput-object v0, p0, Lcom/android/Preconfig/Preconfig;->path_csc:Ljava/lang/String;

    .line 68
    const-string v0, "/efs/imei/mps_code.dat"

    iput-object v0, p0, Lcom/android/Preconfig/Preconfig;->path_mps:Ljava/lang/String;

    .line 251
    new-instance v0, Lcom/android/Preconfig/Preconfig$2;

    invoke-direct {v0, p0}, Lcom/android/Preconfig/Preconfig$2;-><init>(Lcom/android/Preconfig/Preconfig;)V

    iput-object v0, p0, Lcom/android/Preconfig/Preconfig;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/Preconfig/Preconfig;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/Preconfig/Preconfig;->phone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/Preconfig/Preconfig;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/Preconfig/Preconfig;->runAndroidFactoryReset()V

    return-void
.end method

.method private runAndroidFactoryReset()V
    .registers 3

    .prologue
    .line 294
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/Preconfig/Preconfig;->sendBroadcast(Landroid/content/Intent;)V

    .line 307
    return-void
.end method

.method private setSalesCode(Ljava/lang/String;)V
    .registers 10
    .parameter "str"

    .prologue
    const/4 v5, 0x0

    .line 227
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 228
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 229
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v4, 0x3

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 230
    iget-object v4, p0, Lcom/android/Preconfig/Preconfig;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set user input code : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :try_start_28
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v3, v4, 0x5

    .line 235
    .local v3, fileSize:I
    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 236
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 237
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 238
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 239
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 240
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v1, v4, v5, v6}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_51} :catch_63

    .line 247
    iget-object v4, p0, Lcom/android/Preconfig/Preconfig;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/Preconfig/Preconfig;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x7ce

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 248
    .end local v3           #fileSize:I
    :goto_62
    return-void

    .line 242
    :catch_63
    move-exception v2

    .line 244
    .local v2, e:Ljava/io/IOException;
    goto :goto_62
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_32

    .line 205
    :goto_7
    return-void

    .line 191
    :pswitch_8
    iget-object v0, p0, Lcom/android/Preconfig/Preconfig;->userInput:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_23

    .line 193
    iget-object v0, p0, Lcom/android/Preconfig/Preconfig;->LOG_TAG:Ljava/lang/String;

    const-string v1, "to short input!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const-string v0, "Must be THREE chars."

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 197
    :cond_23
    iget-object v0, p0, Lcom/android/Preconfig/Preconfig;->userInput:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/Preconfig/Preconfig;->setSalesCode(Ljava/lang/String;)V

    goto :goto_7

    .line 202
    :pswitch_2d
    invoke-virtual {p0}, Lcom/android/Preconfig/Preconfig;->finish()V

    goto :goto_7

    .line 187
    nop

    :pswitch_data_32
    .packed-switch 0x7f050002
        :pswitch_8
        :pswitch_2d
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 16
    .parameter "savedInstanceState"

    .prologue
    const/4 v13, 0x1

    .line 95
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    iput-object v10, p0, Lcom/android/Preconfig/Preconfig;->phone:Lcom/android/internal/telephony/Phone;

    .line 99
    const/high16 v10, 0x7f03

    invoke-virtual {p0, v10}, Lcom/android/Preconfig/Preconfig;->setContentView(I)V

    .line 101
    const/high16 v10, 0x7f05

    invoke-virtual {p0, v10}, Lcom/android/Preconfig/Preconfig;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    iput-object v10, p0, Lcom/android/Preconfig/Preconfig;->mInputCode:Landroid/widget/EditText;

    .line 103
    const v10, 0x7f050002

    invoke-virtual {p0, v10}, Lcom/android/Preconfig/Preconfig;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 104
    .local v2, InstallButton:Landroid/view/View;
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v10, 0x7f050003

    invoke-virtual {p0, v10}, Lcom/android/Preconfig/Preconfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 107
    .local v0, CancelButton:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v10, 0x7f050001

    invoke-virtual {p0, v10}, Lcom/android/Preconfig/Preconfig;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 111
    .local v1, EmptyText:Landroid/widget/TextView;
    new-instance v5, Ljava/io/File;

    iget-object v10, p0, Lcom/android/Preconfig/Preconfig;->path_csc:Ljava/lang/String;

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v5, fp:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_c0

    .line 115
    new-instance v10, Lcom/android/Preconfig/Preconfig$1;

    invoke-direct {v10, p0}, Lcom/android/Preconfig/Preconfig$1;-><init>(Lcom/android/Preconfig/Preconfig;)V

    invoke-virtual {v5, v10}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/Preconfig/Preconfig;->list_fold:[Ljava/lang/String;

    .line 129
    iget-object v10, p0, Lcom/android/Preconfig/Preconfig;->LOG_TAG:Ljava/lang/String;

    const-string v11, "OK - CSC_File Path"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :goto_55
    new-instance v10, Landroid/widget/ArrayAdapter;

    const v11, 0x109000f

    iget-object v12, p0, Lcom/android/Preconfig/Preconfig;->list_fold:[Ljava/lang/String;

    invoke-direct {v10, p0, v11, v12}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v10}, Lcom/android/Preconfig/Preconfig;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/Preconfig/Preconfig;->getListView()Landroid/widget/ListView;

    move-result-object v8

    .line 140
    .local v8, listView:Landroid/widget/ListView;
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 141
    invoke-virtual {v8, v13}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 145
    :try_start_6d
    new-instance v4, Ljava/io/File;

    iget-object v10, p0, Lcom/android/Preconfig/Preconfig;->path_mps:Ljava/lang/String;

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    .local v4, fe:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_ce

    .line 148
    new-instance v6, Ljava/io/FileReader;

    iget-object v10, p0, Lcom/android/Preconfig/Preconfig;->path_mps:Ljava/lang/String;

    invoke-direct {v6, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 150
    .local v6, fr:Ljava/io/FileReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 152
    .local v3, br:Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 154
    .local v9, str:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/Preconfig/Preconfig;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Comfirm_SALES:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v10, p0, Lcom/android/Preconfig/Preconfig;->mInputCode:Landroid/widget/EditText;

    invoke-virtual {v10, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 158
    const/4 v7, 0x0

    .local v7, i:I
    :goto_a8
    iget-object v10, p0, Lcom/android/Preconfig/Preconfig;->list_fold:[Ljava/lang/String;

    array-length v10, v10

    if-ge v7, v10, :cond_c8

    .line 160
    iget-object v10, p0, Lcom/android/Preconfig/Preconfig;->list_fold:[Ljava/lang/String;

    aget-object v10, v10, v7

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_bd

    .line 162
    const/4 v10, 0x1

    invoke-virtual {v8, v7, v10}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 163
    iput-object v9, p0, Lcom/android/Preconfig/Preconfig;->userInput:Ljava/lang/String;
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_bd} :catch_cf

    .line 158
    :cond_bd
    add-int/lit8 v7, v7, 0x1

    goto :goto_a8

    .line 133
    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v4           #fe:Ljava/io/File;
    .end local v6           #fr:Ljava/io/FileReader;
    .end local v7           #i:I
    .end local v8           #listView:Landroid/widget/ListView;
    .end local v9           #str:Ljava/lang/String;
    :cond_c0
    iget-object v10, p0, Lcom/android/Preconfig/Preconfig;->LOG_TAG:Ljava/lang/String;

    const-string v11, "Error - CSC_File Path"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    .line 166
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v4       #fe:Ljava/io/File;
    .restart local v6       #fr:Ljava/io/FileReader;
    .restart local v7       #i:I
    .restart local v8       #listView:Landroid/widget/ListView;
    .restart local v9       #str:Ljava/lang/String;
    :cond_c8
    :try_start_c8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 167
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_ce} :catch_cf

    .line 173
    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v4           #fe:Ljava/io/File;
    .end local v6           #fr:Ljava/io/FileReader;
    .end local v7           #i:I
    .end local v9           #str:Ljava/lang/String;
    :cond_ce
    :goto_ce
    return-void

    .line 170
    :catch_cf
    move-exception v10

    goto :goto_ce
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 210
    const-string v1, "HDW_DEBUG"

    const-string v2, "Preconfig onKeyDown:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    packed-switch p1, :pswitch_data_2a

    .line 223
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_e
    return v1

    .line 214
    :pswitch_f
    const-string v1, "HDW_DEBUG"

    const-string v2, "Preconfig onKeyDown KEYCODE_CALL!!:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CSC_COMPARE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "MODE"

    const-string v2, "PRECONFIG"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    invoke-virtual {p0, v0}, Lcom/android/Preconfig/Preconfig;->sendBroadcast(Landroid/content/Intent;)V

    .line 220
    const/4 v1, 0x1

    goto :goto_e

    .line 211
    nop

    :pswitch_data_2a
    .packed-switch 0x52
        :pswitch_f
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 9
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/Preconfig/Preconfig;->list_fold:[Ljava/lang/String;

    aget-object v0, v0, p3

    iput-object v0, p0, Lcom/android/Preconfig/Preconfig;->userInput:Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcom/android/Preconfig/Preconfig;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onListItemClick = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 183
    return-void
.end method

.method setEndModeData()[B
    .registers 7

    .prologue
    .line 73
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 74
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 75
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x4

    .line 78
    .local v3, fileSize:I
    const/16 v4, 0xc

    :try_start_d
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 79
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 80
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 81
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1c} :catch_21

    .line 88
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    :goto_20
    return-object v4

    .line 83
    :catch_21
    move-exception v2

    .line 84
    .local v2, e:Ljava/io/IOException;
    iget-object v4, p0, Lcom/android/Preconfig/Preconfig;->LOG_TAG:Ljava/lang/String;

    const-string v5, "IOException in getServMQueryData!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v4, 0x0

    goto :goto_20
.end method
