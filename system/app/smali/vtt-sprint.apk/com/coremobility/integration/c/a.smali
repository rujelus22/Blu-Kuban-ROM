.class public Lcom/coremobility/integration/c/a;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:Z

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/coremobility/integration/c/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/coremobility/integration/c/a;->a:Z

    const/4 v0, 0x5

    sput v0, Lcom/coremobility/integration/c/a;->b:I

    return-void

    :cond_f
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs a(ILjava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, p0, p1, p2}, Lcom/coremobility/integration/c/a;->a(ZIILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x6

    invoke-static {v0, v1, v2, p0, p1}, Lcom/coremobility/integration/c/a;->a(ZIILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Z)V
    .registers 6

    const/4 v1, 0x4

    if-nez p0, :cond_2d

    invoke-static {v1}, Lcom/coremobility/integration/c/a;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/coremobility/integration/c/a;->b(I)I

    move-result v1

    const-string v2, "CM_Assert"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Assertion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " at Line# "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    sget-boolean v0, Lcom/coremobility/integration/c/a;->a:Z

    if-nez v0, :cond_39

    if-nez p0, :cond_39

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_39
    return-void
.end method

.method private static varargs a(ZIILjava/lang/String;[Ljava/lang/Object;)V
    .registers 15

    const/4 v3, 0x6

    const/4 v2, 0x5

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-nez p0, :cond_2b

    sget v0, Lcom/coremobility/integration/c/a;->b:I

    if-ne v0, v2, :cond_2b

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v5

    const/16 v6, 0x407

    sget-boolean v0, Lcom/coremobility/a/b;->e:Z

    if-eqz v0, :cond_32

    move v0, v1

    :goto_25
    invoke-virtual {v5, v6, v4, v0}, Lcom/coremobility/integration/a/a;->a(III)I

    move-result v0

    sput v0, Lcom/coremobility/integration/c/a;->b:I

    :cond_2b
    if-nez p0, :cond_34

    sget v0, Lcom/coremobility/integration/c/a;->b:I

    if-le p1, v0, :cond_34

    :goto_31
    return-void

    :cond_32
    const/4 v0, 0x4

    goto :goto_25

    :cond_34
    if-eqz p0, :cond_8a

    move v0, v2

    :goto_37
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->c(I)Ljava/lang/String;

    move-result-object v5

    if-eqz p0, :cond_8c

    :goto_3d
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->b(I)I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mod:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    packed-switch p2, :pswitch_data_1e4

    const-string v0, "NoModuleID"

    :goto_51
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :try_start_59
    array-length v0, p4

    if-eqz v0, :cond_1aa

    array-length v7, p4

    move v0, v4

    :goto_5e
    if-ge v0, v7, :cond_1e0

    aget-object v2, p4, v0

    instance-of v2, v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_144

    move v0, v1

    :goto_67
    if-eqz v0, :cond_184

    new-array v8, v7, [Ljava/lang/Object;

    move v2, v4

    :goto_6c
    if-ge v2, v7, :cond_157

    aget-object v0, p4, v2

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_14b

    new-instance v9, Ljava/lang/Integer;

    aget-object v0, p4, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_148

    move v0, v1

    :goto_81
    invoke-direct {v9, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v8, v2
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_86} :catch_151

    :goto_86
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6c

    :cond_8a
    move v0, v3

    goto :goto_37

    :cond_8c
    move v2, v3

    goto :goto_3d

    :pswitch_8e
    const-string v0, "None"

    goto :goto_51

    :pswitch_91
    const-string v0, "Os"

    goto :goto_51

    :pswitch_94
    const-string v0, "Utilities"

    goto :goto_51

    :pswitch_97
    const-string v0, "TargetIntegration"

    goto :goto_51

    :pswitch_9a
    const-string v0, "Database"

    goto :goto_51

    :pswitch_9d
    const-string v0, "Configuration"

    goto :goto_51

    :pswitch_a0
    const-string v0, "VnotesApp"

    goto :goto_51

    :pswitch_a3
    const-string v0, "DoApi"

    goto :goto_51

    :pswitch_a6
    const-string v0, "Gui"

    goto :goto_51

    :pswitch_a9
    const-string v0, "Heap"

    goto :goto_51

    :pswitch_ac
    const-string v0, "CodeManager"

    goto :goto_51

    :pswitch_af
    const-string v0, "CallTrace"

    goto :goto_51

    :pswitch_b2
    const-string v0, "Network"

    goto :goto_51

    :pswitch_b5
    const-string v0, "Sip"

    goto :goto_51

    :pswitch_b8
    const-string v0, "JavaProxy"

    goto :goto_51

    :pswitch_bb
    const-string v0, "IntegratedDebugger"

    goto :goto_51

    :pswitch_be
    const-string v0, "Rtp"

    goto :goto_51

    :pswitch_c1
    const-string v0, "Vocoder"

    goto :goto_51

    :pswitch_c4
    const-string v0, "Ptt"

    goto :goto_51

    :pswitch_c7
    const-string v0, "CM_19"

    goto :goto_51

    :pswitch_ca
    const-string v0, "Simulator"

    goto :goto_51

    :pswitch_cd
    const-string v0, "CM_21"

    goto :goto_51

    :pswitch_d0
    const-string v0, "PttApp"

    goto/16 :goto_51

    :pswitch_d4
    const-string v0, "Integration"

    goto/16 :goto_51

    :pswitch_d8
    const-string v0, "AppletManager"

    goto/16 :goto_51

    :pswitch_dc
    const-string v0, "CM_25"

    goto/16 :goto_51

    :pswitch_e0
    const-string v0, "Dm"

    goto/16 :goto_51

    :pswitch_e4
    const-string v0, "NabApp"

    goto/16 :goto_51

    :pswitch_e8
    const-string v0, "Vnotes"

    goto/16 :goto_51

    :pswitch_ec
    const-string v0, "SMS"

    goto/16 :goto_51

    :pswitch_f0
    const-string v0, "VoIP"

    goto/16 :goto_51

    :pswitch_f4
    const-string v0, "WbApp"

    goto/16 :goto_51

    :pswitch_f8
    const-string v0, "SQA"

    goto/16 :goto_51

    :pswitch_fc
    const-string v0, "Mms"

    goto/16 :goto_51

    :pswitch_100
    const-string v0, "Phonebook"

    goto/16 :goto_51

    :pswitch_104
    const-string v0, "ContactsApp"

    goto/16 :goto_51

    :pswitch_108
    const-string v0, "Contacts"

    goto/16 :goto_51

    :pswitch_10c
    const-string v0, "ScriptEngine"

    goto/16 :goto_51

    :pswitch_110
    const-string v0, "License"

    goto/16 :goto_51

    :pswitch_114
    const-string v0, "WiFi"

    goto/16 :goto_51

    :pswitch_118
    const-string v0, "PhoneManager"

    goto/16 :goto_51

    :pswitch_11c
    const-string v0, "Glms"

    goto/16 :goto_51

    :pswitch_120
    const-string v0, "GlmsApp"

    goto/16 :goto_51

    :pswitch_124
    const-string v0, "Xcap"

    goto/16 :goto_51

    :pswitch_128
    const-string v0, "MPTTContacts"

    goto/16 :goto_51

    :pswitch_12c
    const-string v0, "KeySequence"

    goto/16 :goto_51

    :pswitch_130
    const-string v0, "Http"

    goto/16 :goto_51

    :pswitch_134
    const-string v0, "HttpAccess"

    goto/16 :goto_51

    :pswitch_138
    const-string v0, "NetworkMonitor"

    goto/16 :goto_51

    :pswitch_13c
    const-string v0, "Vtt"

    goto/16 :goto_51

    :pswitch_140
    const-string v0, "Rest"

    goto/16 :goto_51

    :cond_144
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5e

    :cond_148
    move v0, v4

    goto/16 :goto_81

    :cond_14b
    :try_start_14b
    aget-object v0, p4, v2

    aput-object v0, v8, v2
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_14f} :catch_151

    goto/16 :goto_86

    :catch_151
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_31

    :cond_157
    :try_start_157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Line# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_17c
    packed-switch p1, :pswitch_data_24e

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31

    :cond_184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Line# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17c

    :cond_1aa
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Line# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17c

    :pswitch_1cc
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31

    :pswitch_1d1
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31

    :pswitch_1d6
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31

    :pswitch_1db
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1de
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_1de} :catch_151

    goto/16 :goto_31

    :cond_1e0
    move v0, v4

    goto/16 :goto_67

    nop

    :pswitch_data_1e4
    .packed-switch 0x0
        :pswitch_8e
        :pswitch_91
        :pswitch_94
        :pswitch_97
        :pswitch_9a
        :pswitch_9d
        :pswitch_a0
        :pswitch_a3
        :pswitch_a6
        :pswitch_a9
        :pswitch_ac
        :pswitch_af
        :pswitch_b2
        :pswitch_b5
        :pswitch_b8
        :pswitch_bb
        :pswitch_be
        :pswitch_c1
        :pswitch_c4
        :pswitch_c7
        :pswitch_ca
        :pswitch_cd
        :pswitch_d0
        :pswitch_d4
        :pswitch_d8
        :pswitch_dc
        :pswitch_e0
        :pswitch_e4
        :pswitch_e8
        :pswitch_ec
        :pswitch_f0
        :pswitch_f4
        :pswitch_f8
        :pswitch_fc
        :pswitch_100
        :pswitch_104
        :pswitch_108
        :pswitch_10c
        :pswitch_110
        :pswitch_114
        :pswitch_118
        :pswitch_11c
        :pswitch_120
        :pswitch_124
        :pswitch_128
        :pswitch_12c
        :pswitch_130
        :pswitch_134
        :pswitch_138
        :pswitch_13c
        :pswitch_140
    .end packed-switch

    :pswitch_data_24e
    .packed-switch 0x1
        :pswitch_1cc
        :pswitch_1d6
        :pswitch_1d1
        :pswitch_1db
    .end packed-switch
.end method

.method public static a(ZLjava/lang/String;)V
    .registers 7

    const/4 v1, 0x4

    if-nez p0, :cond_37

    invoke-static {v1}, Lcom/coremobility/integration/c/a;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/coremobility/integration/c/a;->b(I)I

    move-result v1

    const-string v2, "CM_Assert"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Assertion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " at Line# "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    sget-boolean v0, Lcom/coremobility/integration/c/a;->a:Z

    if-nez v0, :cond_43

    if-nez p0, :cond_43

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_43
    return-void
.end method

.method public static a()Z
    .registers 2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static a(I)Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-gt p0, v1, :cond_6

    if-gtz p0, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    sput p0, Lcom/coremobility/integration/c/a;->b:I

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v1

    const/16 v2, 0x407

    invoke-virtual {v1, v2, v0, p0, v0}, Lcom/coremobility/integration/a/a;->a(IIIZ)Z

    const/4 v0, 0x1

    goto :goto_6
.end method

.method private static b(I)I
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v1, p0, :cond_f

    const/4 v0, 0x0

    :goto_e
    return v0

    :cond_f
    aget-object v0, v0, p0

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    goto :goto_e
.end method

.method public static varargs b(ILjava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v1, p0, p1, p2}, Lcom/coremobility/integration/c/a;->a(ZIILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static c(I)Ljava/lang/String;
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v1, p0, :cond_10

    const-string v0, ""

    :goto_f
    return-object v0

    :cond_10
    aget-object v0, v0, p0

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method public static varargs c(ILjava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1, p0, p1, p2}, Lcom/coremobility/integration/c/a;->a(ZIILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs d(ILjava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {v0, v1, p0, p1, p2}, Lcom/coremobility/integration/c/a;->a(ZIILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs e(ILjava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-static {v0, v1, p0, p1, p2}, Lcom/coremobility/integration/c/a;->a(ZIILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
