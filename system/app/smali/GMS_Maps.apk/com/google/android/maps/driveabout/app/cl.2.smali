.class public Lcom/google/android/maps/driveabout/app/cL;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Landroid/app/Service;

.field protected final b:Landroid/app/Notification;

.field private final c:Landroid/app/NotificationManager;

.field private final d:Landroid/content/Intent;

.field private e:Z

.field private f:Landroid/app/PendingIntent;

.field private g:Ljava/lang/CharSequence;

.field private h:Ljava/lang/CharSequence;

.field private i:[Lo/P;

.field private j:I

.field private k:[Lo/b;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cL;->a:Landroid/app/Service;

    .line 57
    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cL;->c:Landroid/app/NotificationManager;

    .line 58
    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cL;->b:Landroid/app/Notification;

    .line 59
    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cL;->d:Landroid/content/Intent;

    .line 60
    return-void
.end method

.method private constructor <init>(Landroid/app/Service;)V
    .registers 7
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cL;->a:Landroid/app/Service;

    .line 43
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cL;->c:Landroid/app/NotificationManager;

    .line 46
    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f0202c7

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cL;->b:Landroid/app/Notification;

    .line 47
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cL;->b:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 49
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cL;->a:Landroid/app/Service;

    const-class v2, Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cL;->d:Landroid/content/Intent;

    .line 50
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cL;->d:Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cL;->d:Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 52
    return-void
.end method

.method private static a(Z)I
    .registers 2
    .parameter

    .prologue
    .line 109
    if-eqz p0, :cond_6

    .line 110
    const v0, 0x7f0202c7

    .line 112
    :goto_5
    return v0

    :cond_6
    const v0, 0x7f0202c8

    goto :goto_5
.end method

.method public static a(Landroid/app/Service;)Lcom/google/android/maps/driveabout/app/cL;
    .registers 2
    .parameter

    .prologue
    .line 38
    new-instance v0, Lcom/google/android/maps/driveabout/app/cL;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/cL;-><init>(Landroid/app/Service;)V

    return-object v0
.end method

.method private a([Lo/P;I[Lo/b;)Z
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 173
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cL;->i:[Lo/P;

    if-ne p1, v1, :cond_e

    iget v1, p0, Lcom/google/android/maps/driveabout/app/cL;->j:I

    if-ne p2, v1, :cond_e

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cL;->k:[Lo/b;

    if-ne p3, v1, :cond_e

    .line 188
    :goto_d
    return v0

    .line 177
    :cond_e
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cL;->d:Landroid/content/Intent;

    invoke-static {p1, p2, p3}, Lcom/google/android/maps/driveabout/app/bj;->a([Lo/P;I[Lo/b;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 179
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cL;->a:Landroid/app/Service;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/cL;->d:Landroid/content/Intent;

    const/high16 v3, 0x800

    invoke-static {v1, v0, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cL;->f:Landroid/app/PendingIntent;

    .line 182
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    .line 183
    invoke-static {}, Lcom/google/android/maps/driveabout/app/dp;->a()Lcom/google/android/maps/driveabout/app/dp;

    move-result-object v1

    .line 184
    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/app/dp;->a(Lo/P;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cL;->g:Ljava/lang/CharSequence;

    .line 185
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cL;->i:[Lo/P;

    .line 186
    iput p2, p0, Lcom/google/android/maps/driveabout/app/cL;->j:I

    .line 187
    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/cL;->k:[Lo/b;

    .line 188
    const/4 v0, 0x1

    goto :goto_d
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/cL;->d()V

    .line 121
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cL;->c:Landroid/app/NotificationManager;

    const/16 v1, 0x174f

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 122
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cL;->d:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 123
    return-void
.end method

.method public a([Lo/P;I[Lo/b;Ljava/lang/CharSequence;ZZ)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-static {p5}, Lcom/google/android/maps/driveabout/app/cL;->a(Z)I

    move-result v0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/app/cL;->a([Lo/P;I[Lo/b;)Z

    move-result v1

    .line 83
    if-nez v1, :cond_1c

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cL;->b:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    if-ne v0, v1, :cond_1c

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cL;->h:Ljava/lang/CharSequence;

    invoke-static {p4, v1}, Lcom/google/android/maps/driveabout/app/es;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/app/cL;->e:Z

    if-eq p6, v1, :cond_3b

    .line 86
    :cond_1c
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cL;->b:Landroid/app/Notification;

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 87
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cL;->b:Landroid/app/Notification;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cL;->a:Landroid/app/Service;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/cL;->g:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/cL;->f:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, p4, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 88
    iput-object p4, p0, Lcom/google/android/maps/driveabout/app/cL;->h:Ljava/lang/CharSequence;

    .line 91
    if-eqz p6, :cond_3c

    .line 92
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/cL;->c()V

    .line 98
    :goto_32
    :try_start_32
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cL;->c:Landroid/app/NotificationManager;

    const/16 v1, 0x174f

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/cL;->b:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_3b
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_3b} :catch_40

    .line 105
    :cond_3b
    :goto_3b
    return-void

    .line 94
    :cond_3c
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/cL;->d()V

    goto :goto_32

    .line 99
    :catch_40
    move-exception v0

    goto :goto_3b
.end method

.method public b()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cL;->d:Landroid/content/Intent;

    return-object v0
.end method

.method public c()V
    .registers 4

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/cL;->e:Z

    if-eqz v0, :cond_5

    .line 143
    :goto_4
    return-void

    .line 141
    :cond_5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cL;->a:Landroid/app/Service;

    const/16 v1, 0x174f

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/cL;->b:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/cL;->e:Z

    goto :goto_4
.end method

.method public d()V
    .registers 3

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/cL;->e:Z

    if-nez v0, :cond_5

    .line 158
    :goto_4
    return-void

    .line 156
    :cond_5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cL;->a:Landroid/app/Service;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopForeground(Z)V

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/cL;->e:Z

    goto :goto_4
.end method
