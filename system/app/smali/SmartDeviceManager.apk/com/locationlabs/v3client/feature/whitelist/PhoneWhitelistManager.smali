.class public Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;
.super Landroid/content/BroadcastReceiver;
.source "a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager$a;
    }
.end annotation


# static fields
.field public static a:Z

.field public static b:Z

.field private static c:Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager$a;

.field private static d:I

.field private static e:Z

.field private static f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 31
    sput-boolean v1, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;->a:Z

    .line 38
    sput-object v2, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;->c:Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager$a;

    .line 79
    const/4 v0, 0x1

    sput-boolean v0, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;->b:Z

    .line 82
    const/16 v0, 0xbb8

    sput v0, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;->d:I

    .line 120
    sput-boolean v1, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;->e:Z

    .line 121
    sput-object v2, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;->f:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 41
    return-void
.end method

.method public static a()V
    .registers 1

    .prologue
    .line 88
    const/4 v0, 0x0

    sput-object v0, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;->f:Ljava/util/List;

    .line 89
    const/4 v0, 0x1

    sput-boolean v0, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;->e:Z

    .line 92
    return-void
.end method

.method static synthetic a(Landroid/content/Context;)V
    .registers 1
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;->c(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lbf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    sput-object p1, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;->f:Ljava/util/List;

    .line 100
    const/4 v0, 0x1

    sput-boolean v0, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;->e:Z

    .line 102
    invoke-static {p0}, Lbg;->a(Landroid/content/Context;)Lbg;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lbg;->a()Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-virtual {v0}, Lbg;->b()Lbe;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_1f

    .line 109
    invoke-static {p0, v0, v1}, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;->a(Landroid/content/Context;Lbe;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 111
    invoke-static {p0}, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;->c(Landroid/content/Context;)V

    .line 112
    invoke-static {}, Lcom/locationlabs/v3client/feature/SoundQuencher;->d()V

    .line 118
    :cond_1f
    return-void
.end method

.method private static a(Landroid/content/Context;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 303
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_12

    move v0, v3

    .line 308
    :goto_f
    if-ne p1, v0, :cond_14

    .line 318
    :goto_11
    return-void

    :cond_12
    move v0, v2

    .line 303
    goto :goto_f

    .line 310
    :cond_14
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    if-eqz p1, :cond_1d

    move v2, v3

    :cond_1d
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 313
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 314
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 316
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_11
.end method

.method public static a(Z)V
    .registers 1
    .parameter

    .prologue
    .line 35
    sput-boolean p0, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;->a:Z

    .line 36
    return-void
.end method

.method private static a(Landroid/content/Context;Lbe;Ljava/lang/String;)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 247
    invoke-static {p2}, Ls;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-static {v0}, Le;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    move v0, v2

    .line 273
    :goto_c
    return v0

    .line 254
    :cond_d
    sget-boolean v1, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;->a:Z

    if-eqz v1, :cond_27

    invoke-static {p0}, Lcom/locationlabs/v3client/util/HandsFree;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 255
    sget-object v0, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;->c:Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager$a;

    if-nez v0, :cond_25

    new-instance v0, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager$a;

    invoke-direct {v0}, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager$a;-><init>()V

    sput-object v0, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;->c:Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager$a;

    invoke-virtual {v0}, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager$a;->start()V

    :cond_25
    move v0, v2

    .line 256
    goto :goto_c

    .line 260
    :cond_27
    sget-boolean v1, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;->e:Z

    if-eqz v1, :cond_2f

    sget-object v1, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;->f:Ljava/util/List;

    if-nez v1, :cond_31

    :cond_2f
    move v0, v2

    goto :goto_c

    .line 262
    :cond_31
    sget-object v1, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;->f:Ljava/util/List;

    .line 264
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbf;

    .line 265
    iget-object v2, p0, Lbf;->a:Lbe;

    sget-object v3, Lbe;->c:Lbe;

    if-eq v2, v3, :cond_4d

    iget-object v2, p0, Lbf;->a:Lbe;

    if-ne v2, p1, :cond_37

    :cond_4d
    iget-object v2, p0, Lbf;->b:Ljava/lang/String;

    if-eqz v2, :cond_59

    iget-object v2, p0, Lbf;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 268
    :cond_59
    iget-boolean v0, p0, Lbf;->c:Z

    goto :goto_c

    .line 273
    :cond_5c
    const/4 v0, 0x0

    goto :goto_c
.end method

.method static synthetic b()I
    .registers 1

    .prologue
    .line 24
    sget v0, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;->d:I

    return v0
.end method

.method private static b(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 240
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/locationlabs/v3client/feature/whitelist/PhoneCoverer;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 241
    const/high16 v1, 0x30a0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 242
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c()Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager$a;
    .registers 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;->c:Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager$a;

    return-object v0
.end method

.method private static c(Landroid/content/Context;)V
    .registers 8
    .parameter

    .prologue
    .line 287
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;->a(Landroid/content/Context;Z)V

    .line 289
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 290
    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget v4, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;->d:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "com.locationlabs.v3client.action.AIRPLANE_MODE_DIP"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v5, 0x0

    const/high16 v6, 0x4000

    invoke-static {p0, v5, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 293
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x3

    const-wide/16 v4, 0x1f4

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 127
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 129
    const-string v2, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 130
    const-string v0, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v0}, Le;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 134
    const-string v1, "Emergency Call Detected"

    invoke-static {v1}, Li;->c(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/locationlabs/v3client/LockScreenService;->e(Landroid/content/Context;)V

    .line 144
    :cond_25
    invoke-static {p1}, Lbg;->a(Landroid/content/Context;)Lbg;

    move-result-object v1

    sget-object v2, Lbe;->b:Lbe;

    invoke-virtual {v1, v0, v2}, Lbg;->a(Ljava/lang/String;Lbe;)Lbg;

    .line 236
    :cond_2e
    :goto_2e
    return-void

    .line 136
    :cond_2f
    sget-object v1, Lbe;->b:Lbe;

    invoke-static {p1, v1, v0}, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;->a(Landroid/content/Context;Lbe;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 137
    sput-boolean v8, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;->b:Z

    .line 139
    const-string v0, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p2, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    invoke-virtual {p0, v9}, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;->setResultData(Ljava/lang/String;)V

    goto :goto_2e

    .line 147
    :cond_42
    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_145

    .line 148
    invoke-static {p1}, Lbg;->a(Landroid/content/Context;)Lbg;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lbg;->a()Ljava/lang/String;

    move-result-object v2

    .line 151
    const-string v3, "state"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 152
    const-string v6, "incoming_number"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 154
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 156
    sget-object v7, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_bc

    .line 163
    invoke-static {p1}, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;->b(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 165
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 166
    invoke-virtual {p0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 167
    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 169
    invoke-virtual {v0}, Lbg;->b()Lbe;

    move-result-object v1

    .line 170
    sget-object v2, Lbe;->a:Lbe;

    if-ne v1, v2, :cond_90

    .line 171
    invoke-virtual {v0}, Lbg;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;->a(Landroid/content/Context;Lbe;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 172
    invoke-static {}, Lcom/locationlabs/v3client/feature/SoundQuencher;->d()V

    .line 186
    :cond_90
    :goto_90
    iget-object v0, v0, Lbg;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_phone_number"

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "last_direction"

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2e

    .line 175
    :cond_a4
    invoke-static {}, Lcom/locationlabs/v3client/feature/SoundQuencher;->b()V

    .line 176
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/locationlabs/v3client/feature/whitelist/PhoneCoverer;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    const-string v2, "com.locationlabs.v3client.action.STOP"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const/high16 v2, 0x30a0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 182
    invoke-static {p1, v1}, La;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_90

    .line 188
    :cond_bc
    sget-object v7, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_123

    .line 189
    sget-object v2, Lbe;->a:Lbe;

    invoke-virtual {v0, v6, v2}, Lbg;->a(Ljava/lang/String;Lbe;)Lbg;

    .line 191
    sget-object v0, Lbe;->a:Lbe;

    invoke-static {p1, v0, v6}, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;->a(Landroid/content/Context;Lbe;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 193
    const/4 v0, 0x1

    sput-boolean v0, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;->b:Z

    .line 194
    invoke-static {}, Lcom/locationlabs/v3client/feature/SoundQuencher;->c()V

    goto/16 :goto_2e

    .line 197
    :cond_d9
    sput-boolean v8, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;->b:Z

    .line 198
    invoke-static {}, Lcom/locationlabs/v3client/feature/SoundQuencher;->a()V

    .line 200
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 202
    invoke-virtual {p0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_102

    .line 205
    invoke-static {p1}, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;->b(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 207
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 208
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto/16 :goto_2e

    .line 214
    :cond_102
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.locationlabs.v3client.action.POKE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-static {p1, v8, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 217
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 218
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long v3, v6, v4

    invoke-virtual {p0, v1, v3, v4, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 219
    invoke-static {p1, v0}, La;->c(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_2e

    .line 223
    :cond_123
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 224
    invoke-virtual {v0}, Lbg;->b()Lbe;

    move-result-object v0

    sget-object v1, Lbe;->a:Lbe;

    if-ne v0, v1, :cond_2e

    sget-object v0, Lbe;->a:Lbe;

    invoke-static {p1, v0, v2}, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;->a(Landroid/content/Context;Lbe;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 226
    const-string v0, "User managed to answer non-whitelisted call, drop."

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    .line 227
    invoke-static {p1}, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;->c(Landroid/content/Context;)V

    goto/16 :goto_2e

    .line 231
    :cond_145
    const-string v1, "com.locationlabs.v3client.action.AIRPLANE_MODE_DIP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 233
    invoke-static {p1, v8}, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;->a(Landroid/content/Context;Z)V

    goto/16 :goto_2e
.end method
