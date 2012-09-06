.class public Lcom/dropbox/android/activity/lock/LockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "panda.py"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:J

.field private static c:J

.field private static d:J

.field private static e:J

.field private static f:Z

.field private static g:Z

.field private static h:Z

.field private static i:Lcom/dropbox/android/activity/lock/LockReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const-wide/16 v1, 0x0

    .line 36
    const-class v0, Lcom/dropbox/android/activity/lock/LockReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/activity/lock/LockReceiver;->a:Ljava/lang/String;

    .line 39
    sput-wide v1, Lcom/dropbox/android/activity/lock/LockReceiver;->b:J

    .line 42
    sput-wide v1, Lcom/dropbox/android/activity/lock/LockReceiver;->c:J

    .line 45
    sput-wide v1, Lcom/dropbox/android/activity/lock/LockReceiver;->d:J

    .line 51
    sput-boolean v3, Lcom/dropbox/android/activity/lock/LockReceiver;->f:Z

    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/dropbox/android/activity/lock/LockReceiver;->g:Z

    .line 57
    sput-boolean v3, Lcom/dropbox/android/activity/lock/LockReceiver;->h:Z

    .line 63
    new-instance v0, Lcom/dropbox/android/activity/lock/LockReceiver;

    invoke-direct {v0}, Lcom/dropbox/android/activity/lock/LockReceiver;-><init>()V

    sput-object v0, Lcom/dropbox/android/activity/lock/LockReceiver;->i:Lcom/dropbox/android/activity/lock/LockReceiver;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a()V
    .registers 4

    .prologue
    .line 133
    sget-boolean v0, Lcom/dropbox/android/activity/lock/LockReceiver;->f:Z

    if-nez v0, :cond_18

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/dropbox/android/activity/lock/LockReceiver;->c:J

    .line 135
    sget-wide v0, Lcom/dropbox/android/activity/lock/LockReceiver;->c:J

    sget-wide v2, Lcom/dropbox/android/activity/lock/LockReceiver;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    .line 141
    const/4 v0, 0x1

    sput-boolean v0, Lcom/dropbox/android/activity/lock/LockReceiver;->g:Z

    .line 144
    :cond_18
    return-void
.end method

.method public static a(Landroid/app/Activity;Z)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-static {p0}, Lcom/dropbox/android/activity/lock/LockReceiver;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 127
    :goto_6
    return-void

    .line 105
    :cond_7
    sput-boolean p1, Lcom/dropbox/android/activity/lock/LockReceiver;->h:Z

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 109
    sget-boolean v2, Lcom/dropbox/android/activity/lock/LockReceiver;->g:Z

    if-eqz v2, :cond_1e

    sget-wide v2, Lcom/dropbox/android/activity/lock/LockReceiver;->c:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_1e

    .line 110
    const/4 v2, 0x1

    sput-boolean v2, Lcom/dropbox/android/activity/lock/LockReceiver;->f:Z

    .line 112
    :cond_1e
    const/4 v2, 0x0

    sput-boolean v2, Lcom/dropbox/android/activity/lock/LockReceiver;->g:Z

    .line 114
    sget-wide v2, Lcom/dropbox/android/activity/lock/LockReceiver;->b:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_31

    .line 118
    sput-wide v0, Lcom/dropbox/android/activity/lock/LockReceiver;->b:J

    .line 119
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_6

    .line 120
    :cond_31
    sget-boolean v0, Lcom/dropbox/android/activity/lock/LockReceiver;->f:Z

    if-eqz v0, :cond_3b

    if-eqz p1, :cond_3b

    .line 123
    invoke-static {p0}, Lcom/dropbox/android/activity/lock/LockReceiver;->b(Landroid/content/Context;)V

    goto :goto_6

    .line 125
    :cond_3b
    invoke-static {p0, p1}, Lcom/dropbox/android/activity/lock/LockReceiver;->b(Landroid/app/Activity;Z)V

    goto :goto_6
.end method

.method public static a(Landroid/app/Application;)V
    .registers 3
    .parameter

    .prologue
    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 69
    sget-object v1, Lcom/dropbox/android/activity/lock/LockReceiver;->i:Lcom/dropbox/android/activity/lock/LockReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    return-void
.end method

.method public static a(Landroid/content/Intent;)V
    .registers 3
    .parameter

    .prologue
    .line 165
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_30

    const-class v1, Lcom/dropbox/android/activity/lock/LockCodeActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string v0, "PURPOSE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "PURPOSE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/dropbox/android/activity/lock/i;->a:Lcom/dropbox/android/activity/lock/i;

    invoke-virtual {v1}, Lcom/dropbox/android/activity/lock/i;->a()I

    move-result v1

    if-eq v0, v1, :cond_36

    .line 170
    :cond_30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/dropbox/android/activity/lock/LockReceiver;->d:J

    .line 172
    :cond_36
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 2
    .parameter

    .prologue
    .line 91
    invoke-static {p0}, Lcom/dropbox/android/activity/lock/LockReceiver;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-boolean v0, Lcom/dropbox/android/activity/lock/LockReceiver;->f:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static b()V
    .registers 2

    .prologue
    .line 152
    sget-boolean v0, Lcom/dropbox/android/activity/lock/LockReceiver;->f:Z

    if-nez v0, :cond_a

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/dropbox/android/activity/lock/LockReceiver;->c:J

    .line 155
    :cond_a
    return-void
.end method

.method private static b(Landroid/app/Activity;Z)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 214
    invoke-static {}, Ldbxyzptlk/j/a;->a()Ldbxyzptlk/j/a;

    move-result-object v2

    .line 215
    invoke-virtual {v2}, Ldbxyzptlk/j/a;->g()J

    move-result-wide v2

    .line 217
    sget-wide v4, Lcom/dropbox/android/activity/lock/LockReceiver;->e:J

    sub-long v4, v0, v4

    const-wide/32 v6, 0x493e0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1b

    cmp-long v2, v0, v2

    if-gez v2, :cond_3e

    .line 219
    :cond_1b
    sget-object v0, Lcom/dropbox/android/activity/lock/LockReceiver;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Locking from activity timeout "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/dropbox/android/activity/lock/LockReceiver;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v0, 0x1

    sput-boolean v0, Lcom/dropbox/android/activity/lock/LockReceiver;->f:Z

    .line 221
    if-eqz p1, :cond_3d

    .line 222
    invoke-static {p0}, Lcom/dropbox/android/activity/lock/LockReceiver;->b(Landroid/content/Context;)V

    .line 227
    :cond_3d
    :goto_3d
    return-void

    .line 225
    :cond_3e
    sput-wide v0, Lcom/dropbox/android/activity/lock/LockReceiver;->e:J

    goto :goto_3d
.end method

.method private static b(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 184
    invoke-static {p0}, Lcom/dropbox/android/activity/lock/LockReceiver;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 205
    :goto_6
    return-void

    .line 189
    :cond_7
    sget-object v0, Lcom/dropbox/android/activity/lock/LockReceiver;->a:Ljava/lang/String;

    const-string v1, "Activity is locked, redirecting to lock code"

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/dropbox/android/activity/lock/LockCodeActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 191
    const/high16 v0, 0x400

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 193
    instance-of v0, p0, Lcom/dropbox/android/activity/D;

    if-eqz v0, :cond_2a

    move-object v0, p0

    .line 194
    check-cast v0, Lcom/dropbox/android/activity/D;

    .line 195
    const-string v2, "FULL_SCREEN"

    invoke-interface {v0}, Lcom/dropbox/android/activity/D;->g()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 197
    :cond_2a
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_3a

    .line 198
    check-cast p0, Landroid/app/Activity;

    .line 199
    sget-object v0, Lcom/dropbox/android/activity/lock/i;->a:Lcom/dropbox/android/activity/lock/i;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/lock/i;->a()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_6

    .line 201
    :cond_3a
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 202
    const-string v0, "FULL_SCREEN"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 203
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_6
.end method

.method static c()V
    .registers 2

    .prologue
    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/dropbox/android/activity/lock/LockReceiver;->e:J

    .line 176
    const/4 v0, 0x0

    sput-boolean v0, Lcom/dropbox/android/activity/lock/LockReceiver;->f:Z

    .line 177
    return-void
.end method

.method private static c(Landroid/content/Context;)Z
    .registers 2
    .parameter

    .prologue
    .line 208
    invoke-static {}, Ldbxyzptlk/j/a;->a()Ldbxyzptlk/j/a;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Ldbxyzptlk/j/a;->d()Z

    move-result v0

    return v0
.end method

.method static d()V
    .registers 2

    .prologue
    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/dropbox/android/activity/lock/LockReceiver;->b:J

    .line 181
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 75
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 76
    const/4 v0, 0x1

    sput-boolean v0, Lcom/dropbox/android/activity/lock/LockReceiver;->f:Z

    .line 77
    const/4 v0, 0x0

    sput-boolean v0, Lcom/dropbox/android/activity/lock/LockReceiver;->g:Z

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 80
    sget-boolean v2, Lcom/dropbox/android/activity/lock/LockReceiver;->h:Z

    if-eqz v2, :cond_2d

    sget-wide v2, Lcom/dropbox/android/activity/lock/LockReceiver;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gez v0, :cond_2d

    .line 84
    sget-object v0, Lcom/dropbox/android/activity/lock/LockReceiver;->a:Ljava/lang/String;

    const-string v1, "Screen has turned off, locking"

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {p1}, Lcom/dropbox/android/activity/lock/LockReceiver;->b(Landroid/content/Context;)V

    .line 88
    :cond_2d
    return-void
.end method
