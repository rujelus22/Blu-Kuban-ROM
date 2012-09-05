.class public Leu/chainfire/supersu/NativeAccessReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, ""

    sput-object v0, Leu/chainfire/supersu/NativeAccessReceiver;->a:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Leu/chainfire/supersu/NativeAccessReceiver;->b:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;I)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16

    const v9, 0x7f09000e

    const/4 v0, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v7, 0x0

    const-string v1, "SuperSU"

    const-string v2, "[SuperSU] onReceive"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_16e

    const-string v1, "su_access"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v1, "su_appname"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_38

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v3, :cond_38

    const/4 v4, 0x0

    :try_start_29
    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_164

    move-result-object v4

    if-eqz v4, :cond_38

    :try_start_2f
    invoke-virtual {v4, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_35} :catch_167

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    :cond_38
    :goto_38
    const-string v3, "su_fromuid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "su_touid"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "su_cmd"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "su_code"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    move v12, v2

    move-object v2, v0

    move v0, v12

    :goto_53
    if-nez v1, :cond_59

    invoke-static {p1, v9}, Leu/chainfire/supersu/NativeAccessReceiver;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    :cond_59
    if-nez v5, :cond_5f

    invoke-static {p1, v9}, Leu/chainfire/supersu/NativeAccessReceiver;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    :cond_5f
    const-string v8, "INTERACTIVE"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-ne v6, v11, :cond_16b

    if-eqz v8, :cond_70

    const v5, 0x7f09001d

    invoke-static {p1, v5}, Leu/chainfire/supersu/NativeAccessReceiver;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    :cond_70
    new-instance v9, Leu/chainfire/supersu/Settings;

    invoke-direct {v9, p1}, Leu/chainfire/supersu/Settings;-><init>(Landroid/content/Context;)V

    if-eqz v2, :cond_fc

    move-object v6, v2

    :goto_78
    invoke-virtual {v9, v6}, Leu/chainfire/supersu/Settings;->a(Ljava/lang/String;)Leu/chainfire/supersu/Settings$App;

    move-result-object v6

    iget-boolean v9, v6, Leu/chainfire/supersu/Settings$App;->a:Z

    if-nez v9, :cond_ff

    iget v9, v6, Leu/chainfire/supersu/Settings$App;->i:I

    if-eq v9, v11, :cond_ff

    iget v4, v6, Leu/chainfire/supersu/Settings$App;->i:I

    invoke-virtual {v6, v0, v4}, Leu/chainfire/supersu/Settings$App;->a(II)V

    move v0, v4

    :goto_8a
    if-nez v2, :cond_12b

    const v2, 0x7f090011

    invoke-static {p1, v2}, Leu/chainfire/supersu/NativeAccessReceiver;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-static {v3}, Leu/chainfire/supersu/Constants;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v10

    if-ne v0, v10, :cond_126

    const v0, 0x7f09000f

    :goto_a3
    invoke-static {p1, v0}, Leu/chainfire/supersu/NativeAccessReceiver;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_ad
    if-eqz v8, :cond_14b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f090013

    invoke-static {p1, v1}, Leu/chainfire/supersu/NativeAccessReceiver;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_cd
    sget-object v1, Leu/chainfire/supersu/NativeAccessReceiver;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e2

    sget-wide v1, Leu/chainfire/supersu/NativeAccessReceiver;->b:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x7530

    sub-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gez v1, :cond_fb

    :cond_e2
    sput-object v0, Leu/chainfire/supersu/NativeAccessReceiver;->a:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sput-wide v1, Leu/chainfire/supersu/NativeAccessReceiver;->b:J

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Leu/chainfire/supersu/NativeAccessReceiver$1;

    invoke-direct {v2, p0, p1, v0}, Leu/chainfire/supersu/NativeAccessReceiver$1;-><init>(Leu/chainfire/supersu/NativeAccessReceiver;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_fb
    :goto_fb
    return-void

    :cond_fc
    move-object v6, v1

    goto/16 :goto_78

    :cond_ff
    iget-boolean v7, v6, Leu/chainfire/supersu/Settings$App;->a:Z

    if-eqz v7, :cond_106

    invoke-virtual {v6}, Leu/chainfire/supersu/Settings$App;->f()V

    :cond_106
    invoke-static/range {v0 .. v5}, Leu/chainfire/supersu/PromptQueue;->a(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_122

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v1, 0x3000000a

    const-string v2, "SuperSU Receiver Wakelock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_122
    invoke-static {p1}, Leu/chainfire/supersu/PromptQueue;->a(Landroid/content/Context;)Z

    goto :goto_fb

    :cond_126
    const v0, 0x7f090010

    goto/16 :goto_a3

    :cond_12b
    const v2, 0x7f090012

    invoke-static {p1, v2}, Leu/chainfire/supersu/NativeAccessReceiver;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v1, v3, v7

    if-ne v0, v10, :cond_147

    const v0, 0x7f09000f

    :goto_13b
    invoke-static {p1, v0}, Leu/chainfire/supersu/NativeAccessReceiver;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v10

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_ad

    :cond_147
    const v0, 0x7f090010

    goto :goto_13b

    :cond_14b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ":\n\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_cd

    :catch_164
    move-exception v3

    goto/16 :goto_38

    :catch_167
    move-exception v0

    move-object v0, v1

    goto/16 :goto_38

    :cond_16b
    move v0, v6

    goto/16 :goto_8a

    :cond_16e
    move-object v5, v0

    move v4, v7

    move v3, v7

    move-object v2, v0

    move-object v1, v0

    move v6, v7

    move v0, v7

    goto/16 :goto_53
.end method
