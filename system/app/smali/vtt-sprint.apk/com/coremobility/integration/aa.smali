.class public final Lcom/coremobility/integration/aa;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/coremobility/integration/aa;


# instance fields
.field a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/integration/aa;->b:Lcom/coremobility/integration/aa;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/integration/aa;->a:Z

    return-void
.end method

.method public static a()Lcom/coremobility/integration/aa;
    .registers 5

    const/4 v4, 0x0

    sget-object v0, Lcom/coremobility/integration/aa;->b:Lcom/coremobility/integration/aa;

    if-nez v0, :cond_18

    new-instance v0, Lcom/coremobility/integration/aa;

    invoke-direct {v0}, Lcom/coremobility/integration/aa;-><init>()V

    sput-object v0, Lcom/coremobility/integration/aa;->b:Lcom/coremobility/integration/aa;

    iput-boolean v4, v0, Lcom/coremobility/integration/aa;->a:Z

    :try_start_e
    const-string v0, "com.sprint.internal.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    sget-object v0, Lcom/coremobility/integration/aa;->b:Lcom/coremobility/integration/aa;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/coremobility/integration/aa;->a:Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_18} :catch_1b

    :cond_18
    :goto_18
    sget-object v0, Lcom/coremobility/integration/aa;->b:Lcom/coremobility/integration/aa;

    return-object v0

    :catch_1b
    move-exception v0

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sprint extentin library not availble : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/coremobility/integration/aa;->b:Lcom/coremobility/integration/aa;

    iput-boolean v4, v0, Lcom/coremobility/integration/aa;->a:Z

    goto :goto_18
.end method

.method public static a(IILjava/lang/StringBuffer;)Z
    .registers 8

    const/4 v4, 0x3

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_6a

    :pswitch_5
    const/4 v1, 0x3

    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetString: unknown id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_1f
    return v0

    :pswitch_20
    invoke-static {}, Lcom/coremobility/integration/c/a;->a()Z

    move-result v1

    if-nez v1, :cond_31

    sget-object v1, Lcom/coremobility/integration/aa;->b:Lcom/coremobility/integration/aa;

    iget-boolean v1, v1, Lcom/coremobility/integration/aa;->a:Z

    if-eqz v1, :cond_31

    invoke-static {p0, p1, p2}, Lcom/coremobility/integration/aa;->b(IILjava/lang/StringBuffer;)Z

    move-result v0

    goto :goto_1f

    :cond_31
    invoke-static {p0, p2}, Lcom/coremobility/integration/aa;->a(ILjava/lang/StringBuffer;)Z

    move-result v0

    goto :goto_1f

    :pswitch_36
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_43
    const/4 v0, 0x1

    goto :goto_1f

    :pswitch_45
    const-string v1, "android"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_4a} :catch_4b

    goto :goto_43

    :catch_4b
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1f

    nop

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_36
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_20
        :pswitch_20
        :pswitch_45
    .end packed-switch
.end method

.method public static a(II[I)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_8

    if-eqz p2, :cond_8

    array-length v1, p2

    if-nez v1, :cond_11

    :cond_8
    const/4 v1, 0x3

    const-string v2, "GetValue: index != 0 or pnValue == null or pnValue.length == 0"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_10
    return v0

    :cond_11
    packed-switch p0, :pswitch_data_1a

    goto :goto_10

    :pswitch_15
    aput v0, p2, v0

    const/4 v0, 0x1

    goto :goto_10

    nop

    :pswitch_data_1a
    .packed-switch 0x1f
        :pswitch_15
    .end packed-switch
.end method

.method private static a(ILjava/lang/StringBuffer;)Z
    .registers 7

    const/4 v4, 0x3

    const/4 v1, 0x0

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    packed-switch p0, :pswitch_data_c0

    :pswitch_15
    const/4 v0, 0x3

    :try_start_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetString: unknown id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    :goto_30
    return v0

    :pswitch_31
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_40

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3e
    const/4 v0, 0x1

    goto :goto_30

    :cond_40
    const-string v0, "6509571112"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_45} :catch_46

    goto :goto_3e

    :catch_46
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_30

    :pswitch_65
    move v0, v1

    goto :goto_30

    :pswitch_67
    move v0, v1

    goto :goto_30

    :pswitch_69
    :try_start_69
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3e

    :pswitch_71
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3e

    :pswitch_79
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_87

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3e

    :cond_87
    const-string v0, "6509571112"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3e

    :pswitch_8d
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9b

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3e

    :cond_9b
    const-string v0, "6509571112"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3e

    :pswitch_a1
    const-string v0, "g7w9cg"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3e

    :pswitch_a7
    const-string v0, "g7w9cg"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3e

    :pswitch_ad
    const-string v0, "sprintpcs.com"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3e

    :pswitch_b3
    const-string v0, "sprintpcs.com"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3e

    :pswitch_b9
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_be} :catch_46

    goto :goto_3e

    nop

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_31
        :pswitch_79
        :pswitch_a1
        :pswitch_ad
        :pswitch_8d
        :pswitch_a7
        :pswitch_b3
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_b9
        :pswitch_65
        :pswitch_69
        :pswitch_15
        :pswitch_71
        :pswitch_67
    .end packed-switch
.end method

.method private static b(IILjava/lang/StringBuffer;)Z
    .registers 10

    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v5, 0x3

    const/4 v0, 0x0

    invoke-static {}, Lcom/coremobility/integration/d;->a()Lcom/coremobility/integration/d;

    move-result-object v2

    new-array v3, v1, [I

    packed-switch p0, :pswitch_data_130

    :cond_e
    :goto_e
    :pswitch_e
    return v0

    :pswitch_f
    :try_start_f
    invoke-virtual {v2, p0, p1, v3}, Lcom/coremobility/integration/d;->a(II[I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aget v3, v3, v4

    if-eqz v3, :cond_e

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_23
    move v0, v1

    goto :goto_e

    :pswitch_25
    invoke-virtual {v2, p0, p1, v3}, Lcom/coremobility/integration/d;->a(II[I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aget v3, v3, v4

    if-eqz v3, :cond_36

    if-eqz v2, :cond_36

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v6, :cond_6a

    :cond_36
    if-nez v2, :cond_60

    const/4 v1, 0x3

    const-string v2, "GetString: Esn is null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_41} :catch_42

    goto :goto_e

    :catch_42
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v5, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e

    :cond_60
    const/4 v1, 0x3

    :try_start_61
    const-string v2, "GetString: Esn is not 8 chars"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e

    :cond_6a
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_23

    :pswitch_6e
    const-string v2, "sprint"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_23

    :pswitch_74
    invoke-virtual {v2, p0, p1, v3}, Lcom/coremobility/integration/d;->a(II[I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aget v3, v3, v4

    if-eqz v3, :cond_e

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_e

    if-nez v2, :cond_8c

    const/4 v2, 0x0

    :goto_88
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_23

    :cond_8c
    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_88

    :pswitch_98
    invoke-virtual {v2, p0, p1, v3}, Lcom/coremobility/integration/d;->a(II[I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aget v3, v3, v4

    if-eqz v3, :cond_e

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_23

    :pswitch_b0
    invoke-virtual {v2, p0, p1, v3}, Lcom/coremobility/integration/d;->a(II[I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aget v3, v3, v4

    if-eqz v3, :cond_e

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_e

    if-nez v2, :cond_c9

    const/4 v2, 0x0

    :goto_c4
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_23

    :cond_c9
    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_c4

    :pswitch_d6
    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    if-eqz v2, :cond_e0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_f8

    :cond_e0
    if-nez v2, :cond_ed

    const/4 v1, 0x3

    const-string v2, "GetString: Version is null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_e

    :cond_ed
    const/4 v1, 0x3

    const-string v2, "GetString: Version is 0 length"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_e

    :cond_f8
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_23

    :pswitch_fd
    invoke-virtual {v2, p0, p1, v3}, Lcom/coremobility/integration/d;->a(II[I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aget v3, v3, v4

    if-eqz v3, :cond_10e

    if-eqz v2, :cond_10e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v6, :cond_126

    :cond_10e
    if-nez v2, :cond_11b

    const/4 v1, 0x3

    const-string v2, "GetString: Esn is null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_e

    :cond_11b
    const/4 v1, 0x3

    const-string v2, "GetString: Esn is not 8 chars"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_e

    :cond_126
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_12e} :catch_42

    goto/16 :goto_23

    :pswitch_data_130
    .packed-switch 0x0
        :pswitch_f
        :pswitch_74
        :pswitch_98
        :pswitch_b0
        :pswitch_74
        :pswitch_98
        :pswitch_b0
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d6
        :pswitch_25
        :pswitch_f
        :pswitch_fd
        :pswitch_6e
        :pswitch_f
    .end packed-switch
.end method

.method public static d()Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    :try_start_11
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_18

    move-result-object v0

    :goto_15
    if-eqz v0, :cond_39

    :goto_17
    return-object v0

    :catch_18
    move-exception v0

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_15

    :cond_39
    const-string v0, ""

    goto :goto_17
.end method


# virtual methods
.method public final b()V
    .registers 2

    invoke-static {}, Lcom/coremobility/integration/c/a;->a()Z

    move-result v0

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/coremobility/integration/aa;->a:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/coremobility/integration/d;->a()Lcom/coremobility/integration/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/d;->b()V

    :cond_11
    return-void
.end method

.method public final c()V
    .registers 2

    invoke-static {}, Lcom/coremobility/integration/c/a;->a()Z

    move-result v0

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/coremobility/integration/aa;->a:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/coremobility/integration/d;->a()Lcom/coremobility/integration/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/d;->c()V

    :cond_11
    return-void
.end method
