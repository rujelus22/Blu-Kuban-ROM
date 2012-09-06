.class public Lcom/google/googlenav/RatingReminderManager;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/aL;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/RatingReminderManager;-><init>(Lcom/google/googlenav/aL;)V

    .line 75
    return-void
.end method

.method constructor <init>(Lcom/google/googlenav/aL;)V
    .registers 2
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/google/googlenav/RatingReminderManager;->a:Lcom/google/googlenav/aL;

    .line 70
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 233
    const-string v0, "http://maps.google.com/maps/place?cid=%s&action=openratings"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 234
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.googlenav.RATING_REMINDER_ALARM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.google.googlenav.RatingReminderCid"

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.google.googlenav.RatingReminderPlaceName"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    return-object v1
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 174
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 175
    const-string v1, "com.google.android.apps.maps"

    const-string v2, "com.google.android.maps.MapsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 177
    const-string v1, "intent-source"

    const-string v2, "rr"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const v1, 0x7f02035a

    .line 181
    const/16 v2, 0x425

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object p3, v3, v7

    invoke-static {v2, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v3

    .line 183
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 189
    const/16 v1, 0x3ee

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 190
    iget-object v3, p0, Lcom/google/googlenav/RatingReminderManager;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/googlenav/RatingReminderManager;->b:Landroid/content/Context;

    const/high16 v6, 0x4000

    invoke-static {v4, v7, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v5, v3, v2, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 192
    iget v0, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v5, Landroid/app/Notification;->flags:I

    .line 194
    iget-object v0, p0, Lcom/google/googlenav/RatingReminderManager;->a:Lcom/google/googlenav/aL;

    if-nez v0, :cond_64

    .line 195
    new-instance v0, Lcom/google/googlenav/aK;

    iget-object v1, p0, Lcom/google/googlenav/RatingReminderManager;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/googlenav/aK;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/RatingReminderManager;->a:Lcom/google/googlenav/aL;

    .line 202
    :cond_64
    iget-object v0, p0, Lcom/google/googlenav/RatingReminderManager;->a:Lcom/google/googlenav/aL;

    const/4 v1, 0x5

    invoke-interface {v0, v1, v5}, Lcom/google/googlenav/aL;->a(ILandroid/app/Notification;)V

    .line 204
    const/16 v0, 0x55

    const-string v1, "rrs"

    invoke-static {v0, v1}, LaT/k;->a(ILjava/lang/String;)V

    .line 206
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/RatingReminderManager;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/RatingReminderManager;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/google/googlenav/h;)V
    .registers 5
    .parameter

    .prologue
    .line 269
    invoke-static {p0}, Lcom/google/googlenav/RatingReminderManager;->c(Lcom/google/googlenav/h;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 299
    :cond_6
    :goto_6
    return-void

    .line 272
    :cond_7
    invoke-virtual {p0}, Lcom/google/googlenav/h;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 273
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v1

    .line 274
    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-virtual {p0}, Lcom/google/googlenav/h;->o()Lcom/google/googlenav/i;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/i;->b:Lcom/google/googlenav/i;

    if-ne v2, v3, :cond_21

    .line 277
    invoke-static {v1, v0}, Lcom/google/googlenav/RatingReminderManager;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 286
    :cond_21
    invoke-static {}, Lcom/google/googlenav/aC;->a()Lcom/google/googlenav/aC;

    move-result-object v0

    .line 287
    if-eqz v0, :cond_2d

    invoke-virtual {v0, v1}, Lcom/google/googlenav/aC;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 293
    :cond_2d
    new-instance v0, Lcom/google/googlenav/aI;

    invoke-direct {v0}, Lcom/google/googlenav/aI;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/aI;->a(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public static a()Z
    .registers 2

    .prologue
    .line 132
    const-string v0, "RATING_REMINDERS_PREFERENCE"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/common/j;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 213
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 226
    :cond_4
    :goto_4
    return-void

    .line 217
    :cond_5
    invoke-static {p0, p1}, Lcom/google/googlenav/RatingReminderManager;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 218
    invoke-static {}, Lcom/google/googlenav/ui/bn;->e()Landroid/content/Context;

    move-result-object v1

    .line 219
    const/4 v2, 0x0

    const/high16 v3, 0x4000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 222
    const-string v0, "alarm"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 223
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v3

    .line 224
    const-wide/32 v5, 0x1b7740

    .line 225
    const/4 v1, 0x1

    add-long/2addr v3, v5

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_4
.end method

.method static synthetic b(Lcom/google/googlenav/h;)Z
    .registers 2
    .parameter

    .prologue
    .line 40
    invoke-static {p0}, Lcom/google/googlenav/RatingReminderManager;->c(Lcom/google/googlenav/h;)Z

    move-result v0

    return v0
.end method

.method private static c(Lcom/google/googlenav/h;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 302
    invoke-virtual {p0}, Lcom/google/googlenav/h;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 303
    if-nez v0, :cond_8

    .line 310
    :cond_7
    :goto_7
    return v2

    .line 306
    :cond_8
    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    .line 307
    invoke-virtual {p0}, Lcom/google/googlenav/h;->o()Lcom/google/googlenav/i;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/i;->a:Lcom/google/googlenav/i;

    if-ne v0, v1, :cond_7

    goto :goto_7
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/googlenav/RatingReminderManager;->b:Landroid/content/Context;

    .line 85
    invoke-static {p1}, Lcom/google/googlenav/android/c;->a(Landroid/content/Context;)V

    .line 86
    invoke-static {p1}, Lcom/google/googlenav/android/c;->b(Landroid/content/Context;)Lac/h;

    .line 88
    invoke-static {}, Lcom/google/googlenav/RatingReminderManager;->a()Z

    move-result v0

    if-nez v0, :cond_f

    .line 120
    :cond_e
    :goto_e
    return-void

    .line 92
    :cond_f
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 93
    const-string v1, "com.google.googlenav.RatingReminderCid"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    const-string v2, "com.google.googlenav.RatingReminderPlaceName"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    if-eqz v0, :cond_e

    if-eqz v1, :cond_e

    if-eqz v2, :cond_e

    .line 102
    invoke-static {}, Lcom/google/googlenav/aC;->a()Lcom/google/googlenav/aC;

    move-result-object v3

    .line 103
    if-eqz v3, :cond_31

    invoke-virtual {v3, v1}, Lcom/google/googlenav/aC;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 112
    :cond_31
    new-instance v3, Lcom/google/googlenav/aH;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/google/googlenav/aH;-><init>(Lcom/google/googlenav/RatingReminderManager;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/google/googlenav/aH;->a(Ljava/lang/String;)V

    goto :goto_e
.end method
