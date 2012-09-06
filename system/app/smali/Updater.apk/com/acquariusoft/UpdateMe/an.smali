.class public final Lcom/acquariusoft/UpdateMe/an;
.super Ljava/lang/Object;


# static fields
.field public static a:[I

.field public static b:[I

.field public static c:Ljava/lang/String;

.field public static d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

.field public static e:I

.field public static f:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    const/16 v1, 0x19

    new-array v0, v1, [I

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/acquariusoft/UpdateMe/an;->a:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_54

    sput-object v0, Lcom/acquariusoft/UpdateMe/an;->b:[I

    const-string v0, "acquariusoft.tft101.megatronparts"

    sput-object v0, Lcom/acquariusoft/UpdateMe/an;->c:Ljava/lang/String;

    sput-object v2, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const/4 v0, -0x1

    sput v0, Lcom/acquariusoft/UpdateMe/an;->e:I

    sput-object v2, Lcom/acquariusoft/UpdateMe/an;->f:Ljava/util/List;

    return-void

    nop

    :array_1e
    .array-data 0x4
        0x3t 0x0t 0x2t 0x7ft
        0x4t 0x0t 0x2t 0x7ft
        0x7t 0x0t 0x2t 0x7ft
        0x8t 0x0t 0x2t 0x7ft
        0x9t 0x0t 0x2t 0x7ft
        0xat 0x0t 0x2t 0x7ft
        0xbt 0x0t 0x2t 0x7ft
        0xct 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
        0x5t 0x0t 0x2t 0x7ft
        0x6t 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
        0x10t 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
        0x14t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
        0x16t 0x0t 0x2t 0x7ft
        0x17t 0x0t 0x2t 0x7ft
        0x18t 0x0t 0x2t 0x7ft
        0x19t 0x0t 0x2t 0x7ft
        0x1at 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
    .end array-data

    :array_54
    .array-data 0x4
        0xft 0x0t 0x2t 0x7ft
        0x10t 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
        0x14t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
        0x16t 0x0t 0x2t 0x7ft
        0x17t 0x0t 0x2t 0x7ft
        0x18t 0x0t 0x2t 0x7ft
        0x19t 0x0t 0x2t 0x7ft
        0x1at 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x1bt 0x0t 0x2t 0x7ft
        0x1ct 0x0t 0x2t 0x7ft
        0x1dt 0x0t 0x2t 0x7ft
        0x1et 0x0t 0x2t 0x7ft
        0x1ft 0x0t 0x2t 0x7ft
        0x21t 0x0t 0x2t 0x7ft
        0x22t 0x0t 0x2t 0x7ft
        0x23t 0x0t 0x2t 0x7ft
        0x24t 0x0t 0x2t 0x7ft
        0x25t 0x0t 0x2t 0x7ft
        0x26t 0x0t 0x2t 0x7ft
        0x27t 0x0t 0x2t 0x7ft
        0x28t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public static a(Ljava/io/File;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x2000

    new-array v3, v3, [B

    :goto_10
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_2f

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v1, 0x10

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x20

    :goto_2c
    if-lt v0, v2, :cond_33

    return-object v1

    :cond_2f
    invoke-virtual {v1, v3, v0, v4}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_10

    :cond_33
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2c
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, ""

    :try_start_2
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string v2, "sourceforge.net"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    sget-object v3, Lcom/acquariusoft/UpdateMe/ao;->q:Lcom/acquariusoft/UpdateMe/b/g;

    iget-object v3, v3, Lcom/acquariusoft/UpdateMe/b/g;->e:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_27

    const-string v3, "User-Agent"

    sget-object v4, Lcom/acquariusoft/UpdateMe/ao;->q:Lcom/acquariusoft/UpdateMe/b/g;

    iget-object v4, v4, Lcom/acquariusoft/UpdateMe/b/g;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    :cond_2a
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_38
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_42

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :goto_41
    return-object v0

    :cond_42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_52
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_52} :catch_56
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_52} :catch_54

    move-result-object v0

    goto :goto_38

    :catch_54
    move-exception v1

    goto :goto_41

    :catch_56
    move-exception v1

    goto :goto_41
.end method

.method public static a()V
    .registers 5

    new-instance v0, Lcom/acquariusoft/UpdateMe/b/h;

    invoke-direct {v0}, Lcom/acquariusoft/UpdateMe/b/h;-><init>()V

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/acquariusoft/UpdateMe/ao;->j:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_47

    sget-object v1, Lcom/acquariusoft/UpdateMe/ao;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/acquariusoft/UpdateMe/b/h;->a(Ljava/lang/String;)V

    :goto_17
    invoke-virtual {v0}, Lcom/acquariusoft/UpdateMe/b/h;->a()Lcom/acquariusoft/UpdateMe/b/g;

    move-result-object v0

    sput-object v0, Lcom/acquariusoft/UpdateMe/ao;->q:Lcom/acquariusoft/UpdateMe/b/g;

    sget-object v0, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    if-eqz v0, :cond_46

    sget-object v0, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/acquariusoft/UpdateMe/ao;->q:Lcom/acquariusoft/UpdateMe/b/g;

    const-string v2, "reboot_type"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/acquariusoft/UpdateMe/ao;->q:Lcom/acquariusoft/UpdateMe/b/g;

    iget v4, v4, Lcom/acquariusoft/UpdateMe/b/g;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/acquariusoft/UpdateMe/b/g;->f:I

    :cond_46
    return-void

    :cond_47
    sget-object v1, Lcom/acquariusoft/UpdateMe/ao;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/acquariusoft/UpdateMe/b/h;->a(Ljava/lang/String;)V

    goto :goto_17
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)V
    .registers 10

    const v6, 0x7f060014

    const/4 v7, 0x0

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Landroid/app/Notification;

    const v5, 0x7f020002

    invoke-direct {v4, v5, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060006

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " v. "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-direct {v5, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v7, v5, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v1, v2, v3, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public static a([Ljava/lang/String;)Z
    .registers 8

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "su"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_6f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_4a

    move-result-object v4

    :try_start_c
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_7f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_15} :catch_87

    :try_start_15
    array-length v3, p0

    move v1, v0

    :goto_17
    if-lt v1, v3, :cond_2c

    const-string v1, "exit\n"

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_82
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_24} :catch_8b

    :try_start_24
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2a} :catch_7b

    :goto_2a
    const/4 v0, 0x1

    :goto_2b
    return v0

    :cond_2c
    :try_start_2c
    aget-object v5, p0, v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_47
    .catchall {:try_start_2c .. :try_end_47} :catchall_82
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_47} :catch_8b

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :catch_4a
    move-exception v1

    move-object v2, v3

    :goto_4c
    :try_start_4c
    const-string v4, "TF-RR"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unexpected error - Here is what I know: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catchall {:try_start_4c .. :try_end_64} :catchall_84

    if-eqz v2, :cond_69

    :try_start_66
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    :cond_69
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6c} :catch_6d

    goto :goto_2b

    :catch_6d
    move-exception v1

    goto :goto_2b

    :catchall_6f
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    :goto_72
    if-eqz v2, :cond_77

    :try_start_74
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    :cond_77
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_7a} :catch_7d

    :goto_7a
    throw v0

    :catch_7b
    move-exception v0

    goto :goto_2a

    :catch_7d
    move-exception v1

    goto :goto_7a

    :catchall_7f
    move-exception v0

    move-object v2, v3

    goto :goto_72

    :catchall_82
    move-exception v0

    goto :goto_72

    :catchall_84
    move-exception v0

    move-object v4, v3

    goto :goto_72

    :catch_87
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    goto :goto_4c

    :catch_8b
    move-exception v1

    move-object v3, v4

    goto :goto_4c
.end method

.method public static b()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/acquariusoft/UpdateMe/ao;->n:Lcom/acquariusoft/UpdateMe/b/a;

    sput-object v0, Lcom/acquariusoft/UpdateMe/ao;->o:Lcom/acquariusoft/UpdateMe/b/c;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/acquariusoft/UpdateMe/ao;->s:Z

    invoke-static {}, Lcom/acquariusoft/UpdateMe/an;->c()V

    return-void
.end method

.method public static c()V
    .registers 8

    sget-object v0, Lcom/acquariusoft/UpdateMe/ao;->n:Lcom/acquariusoft/UpdateMe/b/a;

    if-nez v0, :cond_19

    new-instance v0, Lcom/acquariusoft/UpdateMe/b/a;

    invoke-direct {v0}, Lcom/acquariusoft/UpdateMe/b/a;-><init>()V

    sput-object v0, Lcom/acquariusoft/UpdateMe/ao;->n:Lcom/acquariusoft/UpdateMe/b/a;

    sget-object v0, Lcom/acquariusoft/UpdateMe/ao;->q:Lcom/acquariusoft/UpdateMe/b/g;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/b/g;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_13
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_30

    :cond_19
    sget-object v0, Lcom/acquariusoft/UpdateMe/ao;->o:Lcom/acquariusoft/UpdateMe/b/c;

    if-nez v0, :cond_2f

    new-instance v0, Lcom/acquariusoft/UpdateMe/b/d;

    invoke-direct {v0}, Lcom/acquariusoft/UpdateMe/b/d;-><init>()V

    sget-object v1, Lcom/acquariusoft/UpdateMe/ao;->q:Lcom/acquariusoft/UpdateMe/b/g;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/b/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/acquariusoft/UpdateMe/b/d;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/acquariusoft/UpdateMe/b/d;->a()Lcom/acquariusoft/UpdateMe/b/c;

    move-result-object v0

    sput-object v0, Lcom/acquariusoft/UpdateMe/ao;->o:Lcom/acquariusoft/UpdateMe/b/c;

    :cond_2f
    return-void

    :cond_30
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v0, Lcom/acquariusoft/UpdateMe/b/b;

    invoke-direct {v0}, Lcom/acquariusoft/UpdateMe/b/b;-><init>()V

    sget-object v2, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const v3, 0x7f060005

    invoke-virtual {v2, v3}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const v4, 0x7f060002

    invoke-virtual {v3, v4}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const v5, 0x7f060003

    invoke-virtual {v4, v5}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const v7, 0x7f060004

    invoke-virtual {v5, v7}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/acquariusoft/UpdateMe/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/acquariusoft/UpdateMe/b/b;->a()Lcom/acquariusoft/UpdateMe/b/a;

    move-result-object v0

    sget-object v1, Lcom/acquariusoft/UpdateMe/ao;->n:Lcom/acquariusoft/UpdateMe/b/a;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/b/a;->a:Ljava/util/List;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/b/a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_13
.end method

.method public static d()V
    .registers 2

    new-instance v0, Lcom/acquariusoft/UpdateMe/b/d;

    invoke-direct {v0}, Lcom/acquariusoft/UpdateMe/b/d;-><init>()V

    sget-object v1, Lcom/acquariusoft/UpdateMe/ao;->q:Lcom/acquariusoft/UpdateMe/b/g;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/b/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/acquariusoft/UpdateMe/b/d;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/acquariusoft/UpdateMe/b/d;->a()Lcom/acquariusoft/UpdateMe/b/c;

    move-result-object v0

    sput-object v0, Lcom/acquariusoft/UpdateMe/ao;->p:Lcom/acquariusoft/UpdateMe/b/c;

    return-void
.end method

.method public static e()Z
    .registers 3

    new-instance v0, Lcom/acquariusoft/UpdateMe/b/k;

    sget-object v1, Lcom/acquariusoft/UpdateMe/ao;->q:Lcom/acquariusoft/UpdateMe/b/g;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/b/g;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/acquariusoft/UpdateMe/b/k;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/acquariusoft/UpdateMe/b/k;

    sget-object v2, Lcom/acquariusoft/UpdateMe/ao;->o:Lcom/acquariusoft/UpdateMe/b/c;

    iget-object v2, v2, Lcom/acquariusoft/UpdateMe/b/c;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/acquariusoft/UpdateMe/b/k;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/acquariusoft/UpdateMe/b/k;->a(Lcom/acquariusoft/UpdateMe/b/k;)Z

    move-result v0

    return v0
.end method

.method public static f()Z
    .registers 3

    new-instance v0, Lcom/acquariusoft/UpdateMe/b/k;

    sget-object v1, Lcom/acquariusoft/UpdateMe/ao;->q:Lcom/acquariusoft/UpdateMe/b/g;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/b/g;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/acquariusoft/UpdateMe/b/k;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/acquariusoft/UpdateMe/b/k;

    sget-object v2, Lcom/acquariusoft/UpdateMe/ao;->p:Lcom/acquariusoft/UpdateMe/b/c;

    iget-object v2, v2, Lcom/acquariusoft/UpdateMe/b/c;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/acquariusoft/UpdateMe/b/k;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/acquariusoft/UpdateMe/b/k;->a(Lcom/acquariusoft/UpdateMe/b/k;)Z

    move-result v0

    return v0
.end method

.method public static g()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "reboot recovery"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/acquariusoft/UpdateMe/an;->a([Ljava/lang/String;)Z

    return-void
.end method
