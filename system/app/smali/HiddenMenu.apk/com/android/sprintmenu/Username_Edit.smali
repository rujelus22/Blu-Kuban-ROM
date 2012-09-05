.class public Lcom/android/sprintmenu/Username_Edit;
.super Landroid/preference/PreferenceActivity;
.source "Username_Edit.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field static buf:[B

.field private static sNotSet:Ljava/lang/String;


# instance fields
.field private AA_PasswordPref:Landroid/preference/EditTextPreference;

.field private HA_PasswordPref:Landroid/preference/EditTextPreference;

.field MN_AAA_length:I

.field MN_AAA_value:I

.field MN_HA_length:I

.field MN_HA_value:I

.field private M_Home_AddrPref:Landroid/preference/EditTextPreference;

.field NAI_length:I

.field private Pev_TunnelPref:Landroid/preference/CheckBoxPreference;

.field private Prim_Home_AddrPref:Landroid/preference/EditTextPreference;

.field private SPI_MN_AAAPref:Landroid/preference/EditTextPreference;

.field private SPI_MN_HAPref:Landroid/preference/EditTextPreference;

.field private Sec_Home_AgentPref:Landroid/preference/EditTextPreference;

.field UserEditStatus:Ljava/lang/Boolean;

.field private User_NamePref:Landroid/preference/EditTextPreference;

.field bytedata:Ljava/nio/ByteBuffer;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private savedInstanceState:Landroid/os/Bundle;

.field senddata:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const-class v0, Lcom/android/sprintmenu/Username_Edit;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/sprintmenu/Username_Edit;->LOG_TAG:Ljava/lang/String;

    .line 49
    const-string v0, "<Not set>"

    sput-object v0, Lcom/android/sprintmenu/Username_Edit;->sNotSet:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sprintmenu/Username_Edit;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 59
    iput v1, p0, Lcom/android/sprintmenu/Username_Edit;->MN_HA_value:I

    .line 60
    iput v1, p0, Lcom/android/sprintmenu/Username_Edit;->MN_AAA_value:I

    .line 67
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sprintmenu/Username_Edit;->UserEditStatus:Ljava/lang/Boolean;

    .line 307
    new-instance v0, Lcom/android/sprintmenu/Username_Edit$1;

    invoke-direct {v0, p0}, Lcom/android/sprintmenu/Username_Edit$1;-><init>(Lcom/android/sprintmenu/Username_Edit;)V

    iput-object v0, p0, Lcom/android/sprintmenu/Username_Edit;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private SendOemData()V
    .registers 22

    .prologue
    .line 138
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 139
    .local v4, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 144
    .local v6, dos:Ljava/io/DataOutputStream;
    const/4 v11, 0x0

    .line 146
    .local v11, len:I
    new-instance v17, Ljava/lang/String;

    const-string v18, ""

    invoke-direct/range {v17 .. v18}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sprintmenu/Username_Edit;->senddata:Ljava/lang/String;

    .line 147
    const/16 v17, 0x100

    invoke-static/range {v17 .. v17}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sprintmenu/Username_Edit;->bytedata:Ljava/nio/ByteBuffer;

    .line 150
    sget-object v17, Lcom/android/sprintmenu/Username_Edit;->LOG_TAG:Ljava/lang/String;

    const-string v18, "SendOemData"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Username_Edit;->bytedata:Ljava/nio/ByteBuffer;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Username_Edit;->User_NamePref:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->byteValue()B

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 154
    const/4 v11, 0x1

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Username_Edit;->User_NamePref:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_72

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Username_Edit;->bytedata:Ljava/nio/ByteBuffer;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Username_Edit;->User_NamePref:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 158
    :cond_72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Username_Edit;->User_NamePref:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v11, v11, v17

    .line 162
    const/16 v17, 0x40

    invoke-static/range {v17 .. v17}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 164
    .local v15, temp_bytedata:Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Username_Edit;->SPI_MN_HAPref:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 165
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v12

    .line 166
    .local v12, newBytes:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Username_Edit;->bytedata:Ljava/nio/ByteBuffer;

    move-object/from16 v17, v0

    invoke-static {v12}, Lcom/android/sprintmenu/Username_Edit;->byteArrayconv([B)[B

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 168
    add-int/lit8 v11, v11, 0x4

    .line 169
    sget-object v17, Lcom/android/sprintmenu/Username_Edit;->LOG_TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "HA : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Username_Edit;->SPI_MN_HAPref:Landroid/preference/EditTextPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Username_Edit;->SPI_MN_AAAPref:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 175
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v12

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Username_Edit;->bytedata:Ljava/nio/ByteBuffer;

    move-object/from16 v17, v0

    invoke-static {v12}, Lcom/android/sprintmenu/Username_Edit;->byteArrayconv([B)[B

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 177
    sget-object v17, Lcom/android/sprintmenu/Username_Edit;->LOG_TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "AAA : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Username_Edit;->SPI_MN_HAPref:Landroid/preference/EditTextPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    add-int/lit8 v11, v11, 0x4

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Username_Edit;->bytedata:Ljava/nio/ByteBuffer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Username_Edit;->Pev_TunnelPref:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v17

    if-eqz v17, :cond_1a8

    const/16 v17, 0x1

    :goto_134
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->byteValue()B

    move-result v17

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 184
    add-int/lit8 v11, v11, 0x1

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Username_Edit;->M_Home_AddrPref:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/EditTextPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    const-string v18, "[.]"

    const/16 v19, 0x4

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, IP_temp:[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_15a
    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v10, v0, :cond_1ea

    .line 191
    :try_start_161
    array-length v0, v3

    move/from16 v17, v0

    sub-int v17, v17, v10

    add-int/lit8 v17, v17, -0x1

    aget-object v17, v3, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->byteValue()B
    :try_end_171
    .catch Ljava/lang/Exception; {:try_start_161 .. :try_end_171} :catch_1ab

    .line 197
    const/4 v9, 0x0

    .line 198
    .local v9, homeAddByte:I
    array-length v0, v3

    move/from16 v17, v0

    sub-int v17, v17, v10

    add-int/lit8 v17, v17, -0x1

    aget-object v17, v3, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 199
    if-ltz v9, :cond_1cb

    const/16 v17, 0xff

    move/from16 v0, v17

    if-gt v9, v0, :cond_1cb

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Username_Edit;->bytedata:Ljava/nio/ByteBuffer;

    move-object/from16 v17, v0

    array-length v0, v3

    move/from16 v18, v0

    sub-int v18, v18, v10

    add-int/lit8 v18, v18, -0x1

    aget-object v18, v3, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->byteValue()B

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 189
    add-int/lit8 v10, v10, 0x1

    goto :goto_15a

    .line 182
    .end local v3           #IP_temp:[Ljava/lang/String;
    .end local v9           #homeAddByte:I
    .end local v10           #i:I
    :cond_1a8
    const/16 v17, 0x0

    goto :goto_134

    .line 192
    .restart local v3       #IP_temp:[Ljava/lang/String;
    .restart local v10       #i:I
    :catch_1ab
    move-exception v7

    .line 193
    .local v7, e:Ljava/lang/Exception;
    const-string v17, "Invalid M Home Address"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Username_Edit;->savedInstanceState:Landroid/os/Bundle;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/sprintmenu/Username_Edit;->onCreate(Landroid/os/Bundle;)V

    .line 304
    .end local v7           #e:Ljava/lang/Exception;
    :goto_1ca
    return-void

    .line 203
    .restart local v9       #homeAddByte:I
    :cond_1cb
    const-string v17, "Invalid M Home Address"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Username_Edit;->savedInstanceState:Landroid/os/Bundle;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/sprintmenu/Username_Edit;->onCreate(Landroid/os/Bundle;)V

    goto :goto_1ca

    .line 208
    .end local v9           #homeAddByte:I
    :cond_1ea
    add-int/lit8 v11, v11, 0x4

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Username_Edit;->Prim_Home_AddrPref:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/EditTextPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    const-string v18, "[.]"

    const/16 v19, 0x4

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 213
    const/4 v10, 0x0

    :goto_201
    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v10, v0, :cond_28f

    .line 215
    :try_start_208
    array-length v0, v3

    move/from16 v17, v0

    sub-int v17, v17, v10

    add-int/lit8 v17, v17, -0x1

    aget-object v17, v3, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I
    :try_end_218
    .catch Ljava/lang/Exception; {:try_start_208 .. :try_end_218} :catch_24e

    .line 221
    array-length v0, v3

    move/from16 v17, v0

    sub-int v17, v17, v10

    add-int/lit8 v17, v17, -0x1

    aget-object v17, v3, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 222
    .local v13, primeAddByte:I
    if-ltz v13, :cond_26f

    const/16 v17, 0xff

    move/from16 v0, v17

    if-gt v13, v0, :cond_26f

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Username_Edit;->bytedata:Ljava/nio/ByteBuffer;

    move-object/from16 v17, v0

    array-length v0, v3

    move/from16 v18, v0

    sub-int v18, v18, v10

    add-int/lit8 v18, v18, -0x1

    aget-object v18, v3, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->byteValue()B

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 213
    add-int/lit8 v10, v10, 0x1

    goto :goto_201

    .line 216
    .end local v13           #primeAddByte:I
    :catch_24e
    move-exception v7

    .line 217
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v17, "Invalid Prim Home Address"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Username_Edit;->savedInstanceState:Landroid/os/Bundle;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/sprintmenu/Username_Edit;->onCreate(Landroid/os/Bundle;)V

    goto/16 :goto_1ca

    .line 225
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v13       #primeAddByte:I
    :cond_26f
    const-string v17, "Invalid Prim Home Address"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Username_Edit;->savedInstanceState:Landroid/os/Bundle;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/sprintmenu/Username_Edit;->onCreate(Landroid/os/Bundle;)V

    goto/16 :goto_1ca

    .line 230
    .end local v13           #primeAddByte:I
    :cond_28f
    add-int/lit8 v11, v11, 0x4

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Username_Edit;->Sec_Home_AgentPref:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/EditTextPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    const-string v18, "[.]"

    const/16 v19, 0x4

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 234
    const/4 v10, 0x0

    :goto_2a6
    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v10, v0, :cond_334

    .line 237
    :try_start_2ad
    array-length v0, v3

    move/from16 v17, v0

    sub-int v17, v17, v10

    add-int/lit8 v17, v17, -0x1

    aget-object v17, v3, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I
    :try_end_2bd
    .catch Ljava/lang/Exception; {:try_start_2ad .. :try_end_2bd} :catch_2f3

    .line 243
    array-length v0, v3

    move/from16 v17, v0

    sub-int v17, v17, v10

    add-int/lit8 v17, v17, -0x1

    aget-object v17, v3, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 244
    .local v14, secAddByte:I
    if-ltz v14, :cond_314

    const/16 v17, 0xff

    move/from16 v0, v17

    if-gt v14, v0, :cond_314

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Username_Edit;->bytedata:Ljava/nio/ByteBuffer;

    move-object/from16 v17, v0

    array-length v0, v3

    move/from16 v18, v0

    sub-int v18, v18, v10

    add-int/lit8 v18, v18, -0x1

    aget-object v18, v3, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->byteValue()B

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 234
    add-int/lit8 v10, v10, 0x1

    goto :goto_2a6

    .line 238
    .end local v14           #secAddByte:I
    :catch_2f3
    move-exception v7

    .line 239
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v17, "Invalid Sec Home Address"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Username_Edit;->savedInstanceState:Landroid/os/Bundle;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/sprintmenu/Username_Edit;->onCreate(Landroid/os/Bundle;)V

    goto/16 :goto_1ca

    .line 247
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v14       #secAddByte:I
    :cond_314
    const-string v17, "Invalid Sec Home Address"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Username_Edit;->savedInstanceState:Landroid/os/Bundle;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/sprintmenu/Username_Edit;->onCreate(Landroid/os/Bundle;)V

    goto/16 :goto_1ca

    .line 252
    .end local v14           #secAddByte:I
    :cond_334
    add-int/lit8 v11, v11, 0x4

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Username_Edit;->bytedata:Ljava/nio/ByteBuffer;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Username_Edit;->AA_PasswordPref:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->byteValue()B

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 256
    add-int/lit8 v11, v11, 0x1

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Username_Edit;->AA_PasswordPref:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_37e

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Username_Edit;->bytedata:Ljava/nio/ByteBuffer;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Username_Edit;->AA_PasswordPref:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 261
    :cond_37e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Username_Edit;->AA_PasswordPref:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v11, v11, v17

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Username_Edit;->bytedata:Ljava/nio/ByteBuffer;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Username_Edit;->HA_PasswordPref:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->byteValue()B

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 265
    add-int/lit8 v11, v11, 0x1

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Username_Edit;->HA_PasswordPref:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_3d6

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Username_Edit;->bytedata:Ljava/nio/ByteBuffer;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Username_Edit;->HA_PasswordPref:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 270
    :cond_3d6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Username_Edit;->HA_PasswordPref:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v11, v11, v17

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Username_Edit;->bytedata:Ljava/nio/ByteBuffer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    .line 275
    .local v5, byteArray:[B
    new-instance v16, Ljava/lang/String;

    const-string v17, "byteData : "

    invoke-direct/range {v16 .. v17}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 277
    .local v16, testLog:Ljava/lang/String;
    const/4 v10, 0x0

    :goto_3f8
    array-length v0, v5

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v10, v0, :cond_42b

    .line 278
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-byte v18, v5, v10

    invoke-static/range {v18 .. v18}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Byte;->hashCode()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 277
    add-int/lit8 v10, v10, 0x1

    goto :goto_3f8

    .line 280
    :cond_42b
    sget-object v17, Lcom/android/sprintmenu/Username_Edit;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    add-int/lit8 v8, v11, 0x3

    .line 292
    .local v8, fileSize:I
    const/16 v17, 0x51

    :try_start_438
    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 293
    const/16 v17, 0xf

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 294
    add-int/lit8 v17, v8, 0x1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 297
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v5, v0, v11}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_452
    .catch Ljava/io/IOException; {:try_start_438 .. :try_end_452} :catch_46d

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Username_Edit;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Username_Edit;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0xf

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto/16 :goto_1ca

    .line 299
    :catch_46d
    move-exception v7

    .line 301
    .local v7, e:Ljava/io/IOException;
    goto/16 :goto_1ca
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/sprintmenu/Username_Edit;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/sprintmenu/Username_Edit;)Landroid/preference/EditTextPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/sprintmenu/Username_Edit;->User_NamePref:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/sprintmenu/Username_Edit;)Landroid/preference/EditTextPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/sprintmenu/Username_Edit;->AA_PasswordPref:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/sprintmenu/Username_Edit;)Landroid/preference/EditTextPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/sprintmenu/Username_Edit;->HA_PasswordPref:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$200([B)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    invoke-static {p0}, Lcom/android/sprintmenu/Username_Edit;->byteArrayToInt([B)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/sprintmenu/Username_Edit;)Landroid/preference/EditTextPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/sprintmenu/Username_Edit;->SPI_MN_HAPref:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/sprintmenu/Username_Edit;)Landroid/preference/EditTextPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/sprintmenu/Username_Edit;->SPI_MN_AAAPref:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/sprintmenu/Username_Edit;)Landroid/preference/CheckBoxPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/sprintmenu/Username_Edit;->Pev_TunnelPref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/sprintmenu/Username_Edit;)Landroid/preference/EditTextPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/sprintmenu/Username_Edit;->M_Home_AddrPref:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/sprintmenu/Username_Edit;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/sprintmenu/Username_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/sprintmenu/Username_Edit;)Landroid/preference/EditTextPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/sprintmenu/Username_Edit;->Prim_Home_AddrPref:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/sprintmenu/Username_Edit;)Landroid/preference/EditTextPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/sprintmenu/Username_Edit;->Sec_Home_AgentPref:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method private static byteArrayToInt([B)I
    .registers 7
    .parameter "bytes"

    .prologue
    const/4 v5, 0x4

    .line 89
    const/4 v3, 0x4

    .line 90
    .local v3, size:I
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 91
    .local v0, buff:Ljava/nio/ByteBuffer;
    new-array v2, v5, [B

    .line 92
    .local v2, newBytes:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    if-ge v1, v5, :cond_1e

    .line 93
    array-length v4, p0

    add-int/2addr v4, v1

    if-ge v4, v5, :cond_15

    .line 94
    const/4 v4, 0x0

    aput-byte v4, v2, v1

    .line 92
    :goto_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 96
    :cond_15
    array-length v4, p0

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x4

    aget-byte v4, p0, v4

    aput-byte v4, v2, v1

    goto :goto_12

    .line 99
    :cond_1e
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 100
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 101
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    return v4
.end method

.method private static byteArrayconv([B)[B
    .registers 7
    .parameter "bytes"

    .prologue
    const/4 v5, 0x4

    .line 105
    const/4 v3, 0x4

    .line 106
    .local v3, size:I
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 107
    .local v0, buff:Ljava/nio/ByteBuffer;
    new-array v2, v5, [B

    .line 108
    .local v2, newBytes:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    if-ge v1, v5, :cond_16

    .line 109
    rsub-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, p0, v4

    aput-byte v4, v2, v1

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 111
    :cond_16
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    return-object v4
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "value"

    .prologue
    .line 71
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 72
    :cond_8
    sget-object p1, Lcom/android/sprintmenu/Username_Edit;->sNotSet:Ljava/lang/String;

    .line 74
    .end local p1
    :cond_a
    return-object p1
.end method

.method private getOemData()V
    .registers 9

    .prologue
    const/16 v7, 0xe

    .line 119
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 120
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 124
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x3

    .line 125
    .local v3, fileSize:I
    const/16 v4, 0x51

    :try_start_f
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 126
    const/16 v4, 0xe

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 127
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1b} :catch_2b

    .line 133
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/sprintmenu/Username_Edit;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 134
    :goto_2a
    return-void

    .line 129
    :catch_2b
    move-exception v2

    .line 131
    .local v2, e:Ljava/io/IOException;
    goto :goto_2a
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "savedInstanceState"

    .prologue
    const v10, 0x7f050062

    const v9, 0x7f050061

    const v8, 0x7f050060

    const v7, 0x7f05005f

    const/16 v6, 0x80

    .line 569
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 570
    sget-object v4, Lcom/android/sprintmenu/Username_Edit;->LOG_TAG:Ljava/lang/String;

    const-string v5, "onCreate"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-virtual {p0}, Lcom/android/sprintmenu/Username_Edit;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 574
    .local v1, root:Landroid/preference/PreferenceScreen;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->UserEditStatus:Ljava/lang/Boolean;

    .line 575
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 576
    invoke-direct {p0}, Lcom/android/sprintmenu/Username_Edit;->getOemData()V

    .line 577
    sget-object v4, Lcom/android/sprintmenu/Username_Edit;->LOG_TAG:Ljava/lang/String;

    const-string v5, "onCreate:getdata"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 580
    .local v0, inlinePrefCat:Landroid/preference/PreferenceCategory;
    const v4, 0x7f05000a

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 581
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 583
    new-instance v4, Landroid/preference/EditTextPreference;

    invoke-direct {v4, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->User_NamePref:Landroid/preference/EditTextPreference;

    .line 584
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->User_NamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v7}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 585
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->User_NamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v7}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 586
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->User_NamePref:Landroid/preference/EditTextPreference;

    const-string v5, "User_NamePref"

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 587
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->User_NamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 588
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->User_NamePref:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/sprintmenu/Username_Edit;->User_NamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/sprintmenu/Username_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 590
    new-instance v4, Landroid/preference/EditTextPreference;

    invoke-direct {v4, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->SPI_MN_HAPref:Landroid/preference/EditTextPreference;

    .line 591
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->SPI_MN_HAPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v8}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 592
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->SPI_MN_HAPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v8}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 593
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->SPI_MN_HAPref:Landroid/preference/EditTextPreference;

    const-string v5, "portPref"

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 594
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->SPI_MN_HAPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 595
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->SPI_MN_HAPref:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/sprintmenu/Username_Edit;->SPI_MN_HAPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/sprintmenu/Username_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 597
    new-instance v4, Landroid/preference/EditTextPreference;

    invoke-direct {v4, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->SPI_MN_AAAPref:Landroid/preference/EditTextPreference;

    .line 598
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->SPI_MN_AAAPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v9}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 599
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->SPI_MN_AAAPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v9}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 600
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->SPI_MN_AAAPref:Landroid/preference/EditTextPreference;

    const-string v5, "SPI_MN_AAApref"

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 601
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->SPI_MN_AAAPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 602
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->SPI_MN_AAAPref:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/sprintmenu/Username_Edit;->SPI_MN_AAAPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/sprintmenu/Username_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 604
    new-instance v4, Landroid/preference/EditTextPreference;

    invoke-direct {v4, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->M_Home_AddrPref:Landroid/preference/EditTextPreference;

    .line 605
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->M_Home_AddrPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v10}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 606
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->M_Home_AddrPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v10}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 607
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->M_Home_AddrPref:Landroid/preference/EditTextPreference;

    const-string v5, "M_Home_Addrpref"

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 608
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->M_Home_AddrPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 609
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->M_Home_AddrPref:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/sprintmenu/Username_Edit;->M_Home_AddrPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/sprintmenu/Username_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 611
    new-instance v4, Landroid/preference/EditTextPreference;

    invoke-direct {v4, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->Prim_Home_AddrPref:Landroid/preference/EditTextPreference;

    .line 612
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->Prim_Home_AddrPref:Landroid/preference/EditTextPreference;

    const v5, 0x7f050063

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 613
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->Prim_Home_AddrPref:Landroid/preference/EditTextPreference;

    const v5, 0x7f050063

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 614
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->Prim_Home_AddrPref:Landroid/preference/EditTextPreference;

    const-string v5, "Prim_Home_AddrPref"

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 615
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->Prim_Home_AddrPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 616
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->Prim_Home_AddrPref:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/sprintmenu/Username_Edit;->Prim_Home_AddrPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/sprintmenu/Username_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 618
    new-instance v4, Landroid/preference/EditTextPreference;

    invoke-direct {v4, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->Sec_Home_AgentPref:Landroid/preference/EditTextPreference;

    .line 619
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->Sec_Home_AgentPref:Landroid/preference/EditTextPreference;

    const v5, 0x7f050064

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 620
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->Sec_Home_AgentPref:Landroid/preference/EditTextPreference;

    const v5, 0x7f050064

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 621
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->Sec_Home_AgentPref:Landroid/preference/EditTextPreference;

    const-string v5, "Sec_Home_Agentpref"

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 622
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->Sec_Home_AgentPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 623
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->Sec_Home_AgentPref:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/sprintmenu/Username_Edit;->Sec_Home_AgentPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/sprintmenu/Username_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 625
    new-instance v4, Landroid/preference/CheckBoxPreference;

    invoke-direct {v4, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->Pev_TunnelPref:Landroid/preference/CheckBoxPreference;

    .line 626
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->Pev_TunnelPref:Landroid/preference/CheckBoxPreference;

    const-string v5, "Pev_TunnelPref"

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 627
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->Pev_TunnelPref:Landroid/preference/CheckBoxPreference;

    const v5, 0x7f050065

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 628
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->Pev_TunnelPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 629
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->Pev_TunnelPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1ea

    .line 630
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->Pev_TunnelPref:Landroid/preference/CheckBoxPreference;

    const v5, 0x7f050066

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 634
    :goto_184
    new-instance v4, Landroid/preference/EditTextPreference;

    invoke-direct {v4, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->AA_PasswordPref:Landroid/preference/EditTextPreference;

    .line 635
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->AA_PasswordPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    .line 636
    .local v2, txt1:Landroid/widget/EditText;
    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 638
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 640
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->AA_PasswordPref:Landroid/preference/EditTextPreference;

    const-string v5, "AAA password"

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 641
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->AA_PasswordPref:Landroid/preference/EditTextPreference;

    const-string v5, "AAA password"

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 642
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->AA_PasswordPref:Landroid/preference/EditTextPreference;

    const-string v5, "AA_Passwordpref"

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 643
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->AA_PasswordPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 646
    new-instance v4, Landroid/preference/EditTextPreference;

    invoke-direct {v4, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->HA_PasswordPref:Landroid/preference/EditTextPreference;

    .line 647
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->HA_PasswordPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    .line 648
    .local v3, txt2:Landroid/widget/EditText;
    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 650
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 652
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->HA_PasswordPref:Landroid/preference/EditTextPreference;

    const-string v5, "HA password"

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 653
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->HA_PasswordPref:Landroid/preference/EditTextPreference;

    const-string v5, "HA password"

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 654
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->HA_PasswordPref:Landroid/preference/EditTextPreference;

    const-string v5, "HA_Passwordpref"

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 655
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->HA_PasswordPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 658
    invoke-virtual {p0, v1}, Lcom/android/sprintmenu/Username_Edit;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 660
    return-void

    .line 632
    .end local v2           #txt1:Landroid/widget/EditText;
    .end local v3           #txt2:Landroid/widget/EditText;
    :cond_1ea
    iget-object v4, p0, Lcom/android/sprintmenu/Username_Edit;->Pev_TunnelPref:Landroid/preference/CheckBoxPreference;

    const v5, 0x7f050067

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_184
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 672
    invoke-virtual {p0}, Lcom/android/sprintmenu/Username_Edit;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 673
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 674
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 665
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 666
    invoke-virtual {p0}, Lcom/android/sprintmenu/Username_Edit;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 667
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 9
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 488
    invoke-virtual {p0, p2}, Lcom/android/sprintmenu/Username_Edit;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 492
    .local v2, pref:Landroid/preference/Preference;
    sget-object v3, Lcom/android/sprintmenu/Username_Edit;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSharedPreferenceChanged : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    if-eqz v2, :cond_61

    .line 495
    :try_start_1e
    const-string v3, "M Home Address"

    invoke-virtual {v2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    const-string v3, "Prim Home Agent"

    invoke-virtual {v2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    const-string v3, "Sec Home Address"

    invoke-virtual {v2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 502
    :cond_42
    sget-object v3, Lcom/android/sprintmenu/Username_Edit;->LOG_TAG:Ljava/lang/String;

    const-string v4, "IP type set"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const-string v3, ""

    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/sprintmenu/Username_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 554
    :cond_56
    :goto_56
    iget-object v3, p0, Lcom/android/sprintmenu/Username_Edit;->UserEditStatus:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_61

    .line 556
    invoke-direct {p0}, Lcom/android/sprintmenu/Username_Edit;->SendOemData()V

    .line 564
    :cond_61
    :goto_61
    return-void

    .line 507
    :cond_62
    const-string v3, "Rev Tunnel Pref"

    invoke-virtual {v2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 509
    move-object v0, v2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_97

    .line 511
    sget-object v3, Lcom/android/sprintmenu/Username_Edit;->LOG_TAG:Ljava/lang/String;

    const-string v4, "checked"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const v3, 0x7f050066

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_85} :catch_86

    goto :goto_56

    .line 559
    :catch_86
    move-exception v1

    .line 560
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "Invalid Input, Try again"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 561
    iget-object v3, p0, Lcom/android/sprintmenu/Username_Edit;->savedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p0, v3}, Lcom/android/sprintmenu/Username_Edit;->onCreate(Landroid/os/Bundle;)V

    goto :goto_61

    .line 516
    .end local v1           #e:Ljava/lang/Exception;
    :cond_97
    :try_start_97
    sget-object v3, Lcom/android/sprintmenu/Username_Edit;->LOG_TAG:Ljava/lang/String;

    const-string v4, "unchecked"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const v3, 0x7f050067

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_56

    .line 522
    :cond_a5
    sget-object v3, Lcom/android/sprintmenu/Username_Edit;->LOG_TAG:Ljava/lang/String;

    const-string v4, "else others"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const-string v3, ""

    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/sprintmenu/Username_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 525
    const-string v3, "User Name"

    invoke-virtual {v2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_113

    .line 527
    iget-object v3, p0, Lcom/android/sprintmenu/Username_Edit;->User_NamePref:Landroid/preference/EditTextPreference;

    const-string v4, ""

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v3, p0, Lcom/android/sprintmenu/Username_Edit;->User_NamePref:Landroid/preference/EditTextPreference;

    const-string v4, ""

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 529
    iget-object v3, p0, Lcom/android/sprintmenu/Username_Edit;->User_NamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, p0, Lcom/android/sprintmenu/Username_Edit;->NAI_length:I

    .line 530
    sget-object v3, Lcom/android/sprintmenu/Username_Edit;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "user_name["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/sprintmenu/Username_Edit;->NAI_length:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/sprintmenu/Username_Edit;->User_NamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_56

    .line 532
    :cond_113
    const-string v3, "SPI MN-HA"

    invoke-virtual {v2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14f

    .line 534
    const-string v3, ""

    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/sprintmenu/Username_Edit;->MN_HA_value:I

    .line 535
    sget-object v3, Lcom/android/sprintmenu/Username_Edit;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "spi mn ha"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_56

    .line 537
    :cond_14f
    const-string v3, "SPI MN-AAA"

    invoke-virtual {v2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18b

    .line 539
    const-string v3, ""

    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/sprintmenu/Username_Edit;->MN_AAA_value:I

    .line 540
    sget-object v3, Lcom/android/sprintmenu/Username_Edit;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "spi mn aaa"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_56

    .line 542
    :cond_18b
    const-string v3, "AAA password"

    invoke-virtual {v2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1be

    .line 544
    sget-object v3, Lcom/android/sprintmenu/Username_Edit;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aaa_pw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v3, p0, Lcom/android/sprintmenu/Username_Edit;->AA_PasswordPref:Landroid/preference/EditTextPreference;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_56

    .line 547
    :cond_1be
    const-string v3, "HA password"

    invoke-virtual {v2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 549
    sget-object v3, Lcom/android/sprintmenu/Username_Edit;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ha_pw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v3, p0, Lcom/android/sprintmenu/Username_Edit;->HA_PasswordPref:Landroid/preference/EditTextPreference;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1ef
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_1ef} :catch_86

    goto/16 :goto_56
.end method
