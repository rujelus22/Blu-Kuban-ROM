.class public Lcom/google/android/maps/driveabout/app/cX;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Landroid/app/Service;

.field protected final b:Landroid/app/Notification;

.field private final c:Landroid/app/NotificationManager;

.field private final d:Landroid/content/Intent;

.field private e:Z

.field private f:Landroid/app/PendingIntent;

.field private g:Ljava/lang/CharSequence;

.field private h:Ljava/lang/CharSequence;

.field private i:[Lu/P;

.field private j:I

.field private k:[Lu/b;


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cX;->a:Landroid/app/Service;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cX;->c:Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cX;->b:Landroid/app/Notification;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cX;->d:Landroid/content/Intent;

    return-void
.end method

.method private constructor <init>(Landroid/app/Service;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cX;->a:Landroid/app/Service;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cX;->c:Landroid/app/NotificationManager;

    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f020260

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cX;->b:Landroid/app/Notification;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cX;->b:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cX;->a:Landroid/app/Service;

    const-class v2, Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cX;->d:Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cX;->d:Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cX;->d:Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-void
.end method

.method private static a(Z)I
    .registers 2

    if-eqz p0, :cond_6

    const v0, 0x7f020260

    :goto_5
    return v0

    :cond_6
    const v0, 0x7f020261

    goto :goto_5
.end method

.method public static a(Landroid/app/Service;)Lcom/google/android/maps/driveabout/app/cX;
    .registers 2

    new-instance v0, Lcom/google/android/maps/driveabout/app/cX;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/cX;-><init>(Landroid/app/Service;)V

    return-object v0
.end method

.method private a([Lu/P;I[Lu/b;)Z
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cX;->i:[Lu/P;

    if-ne p1, v1, :cond_e

    iget v1, p0, Lcom/google/android/maps/driveabout/app/cX;->j:I

    if-ne p2, v1, :cond_e

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cX;->k:[Lu/b;

    if-ne p3, v1, :cond_e

    :goto_d
    return v0

    :cond_e
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cX;->d:Landroid/content/Intent;

    invoke-static {p1, p2, p3}, Lcom/google/android/maps/driveabout/app/bh;->a([Lu/P;I[Lu/b;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cX;->a:Landroid/app/Service;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/cX;->d:Landroid/content/Intent;

    const/high16 v3, 0x800

    invoke-static {v1, v0, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cX;->f:Landroid/app/PendingIntent;

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    invoke-static {}, Lcom/google/android/maps/driveabout/app/dA;->a()Lcom/google/android/maps/driveabout/app/dA;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/app/dA;->a(Lu/P;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cX;->g:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cX;->i:[Lu/P;

    iput p2, p0, Lcom/google/android/maps/driveabout/app/cX;->j:I

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/cX;->k:[Lu/b;

    const/4 v0, 0x1

    goto :goto_d
.end method


# virtual methods
.method public a()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/cX;->d()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cX;->c:Landroid/app/NotificationManager;

    const/16 v1, 0x174f

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cX;->d:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-void
.end method

.method public a([Lu/P;I[Lu/b;Ljava/lang/CharSequence;ZZ)V
    .registers 11

    invoke-static {p5}, Lcom/google/android/maps/driveabout/app/cX;->a(Z)I

    move-result v0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/app/cX;->a([Lu/P;I[Lu/b;)Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cX;->b:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    if-ne v0, v1, :cond_1c

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cX;->h:Ljava/lang/CharSequence;

    invoke-static {p4, v1}, Lcom/google/android/maps/driveabout/app/eG;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/app/cX;->e:Z

    if-eq p6, v1, :cond_3b

    :cond_1c
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cX;->b:Landroid/app/Notification;

    iput v0, v1, Landroid/app/Notification;->icon:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cX;->b:Landroid/app/Notification;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cX;->a:Landroid/app/Service;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/cX;->g:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/cX;->f:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, p4, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iput-object p4, p0, Lcom/google/android/maps/driveabout/app/cX;->h:Ljava/lang/CharSequence;

    if-eqz p6, :cond_3c

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/cX;->c()V

    :goto_32
    :try_start_32
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cX;->c:Landroid/app/NotificationManager;

    const/16 v1, 0x174f

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/cX;->b:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_3b
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_3b} :catch_40

    :cond_3b
    :goto_3b
    return-void

    :cond_3c
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/cX;->d()V

    goto :goto_32

    :catch_40
    move-exception v0

    goto :goto_3b
.end method

.method public b()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cX;->d:Landroid/content/Intent;

    return-object v0
.end method

.method public c()V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/cX;->e:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cX;->a:Landroid/app/Service;

    const/16 v1, 0x174f

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/cX;->b:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/cX;->e:Z

    goto :goto_4
.end method

.method public d()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/cX;->e:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cX;->a:Landroid/app/Service;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopForeground(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/cX;->e:Z

    goto :goto_4
.end method
