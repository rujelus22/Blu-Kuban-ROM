.class public Lcom/estrongs/android/pop/d/a;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/estrongs/android/pop/d/a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/app/NotificationManager;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/estrongs/android/pop/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/app/Notification;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/d/a;->d:Lcom/estrongs/android/pop/d/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/d/a;->e:Landroid/app/Notification;

    iput-object p1, p0, Lcom/estrongs/android/pop/d/a;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/estrongs/android/pop/d/a;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/estrongs/android/pop/d/a;->b:Landroid/app/NotificationManager;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/d/a;->c:Ljava/util/HashMap;

    return-void
.end method

.method private a(Lcom/estrongs/android/pop/d/c;J)Landroid/app/Notification;
    .registers 13

    const v8, 0x7f070215

    const v7, 0x1080081

    const/4 v6, -0x1

    const/4 v5, 0x0

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iget v1, p1, Lcom/estrongs/android/pop/d/c;->f:I

    if-le v1, v6, :cond_6e

    iget v1, p1, Lcom/estrongs/android/pop/d/c;->f:I

    iput v1, v0, Landroid/app/Notification;->icon:I

    :goto_15
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/estrongs/android/pop/d/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f03004b

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-object v2, p1, Lcom/estrongs/android/pop/d/c;->d:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-static {v2}, Lcom/estrongs/android/pop/a/d;->H(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_71

    const-string v2, "/"

    :goto_35
    const v2, 0x7f07021c

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/estrongs/android/pop/d/c;->c:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget v2, p1, Lcom/estrongs/android/pop/d/c;->f:I

    if-le v2, v6, :cond_79

    iget v2, p1, Lcom/estrongs/android/pop/d/c;->f:I

    invoke-virtual {v1, v8, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_59
    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/estrongs/android/pop/d/a;->a:Landroid/content/Context;

    iget-object v2, p1, Lcom/estrongs/android/pop/d/c;->c:Ljava/lang/String;

    invoke-static {v1, v2, p2, p3}, Lcom/estrongs/android/pop/d/a;->a(Landroid/content/Context;Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/d/a;->a:Landroid/content/Context;

    const/high16 v3, 0x800

    invoke-static {v2, v5, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    return-object v0

    :cond_6e
    iput v7, v0, Landroid/app/Notification;->icon:I

    goto :goto_15

    :cond_71
    iget-object v2, p1, Lcom/estrongs/android/pop/d/c;->d:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-static {v2}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_35

    :cond_79
    invoke-virtual {v1, v8, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_59
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)Landroid/content/Intent;
    .registers 8

    const v3, 0x7f09017b

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    const-string v1, "title"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ok_label"

    const v2, 0x7f090149

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "cancel_label"

    const v2, 0x7f090148

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_45
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/a;
    .registers 2

    sget-object v0, Lcom/estrongs/android/pop/d/a;->d:Lcom/estrongs/android/pop/d/a;

    if-nez v0, :cond_e

    new-instance v0, Lcom/estrongs/android/pop/d/a;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/d/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/estrongs/android/pop/d/a;->d:Lcom/estrongs/android/pop/d/a;

    :goto_b
    sget-object v0, Lcom/estrongs/android/pop/d/a;->d:Lcom/estrongs/android/pop/d/a;

    return-object v0

    :cond_e
    sget-object v0, Lcom/estrongs/android/pop/d/a;->d:Lcom/estrongs/android/pop/d/a;

    iput-object p0, v0, Lcom/estrongs/android/pop/d/a;->a:Landroid/content/Context;

    goto :goto_b
.end method

.method private b(JJ)Ljava/lang/String;
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_9

    const-string v0, ""

    :goto_8
    return-object v0

    :cond_9
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p3

    div-long/2addr v0, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)J
    .registers 18

    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v9, p0, Lcom/estrongs/android/pop/d/a;->c:Ljava/util/HashMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    new-instance v0, Lcom/estrongs/android/pop/d/c;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide/from16 v4, p5

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-wide v7

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J
    .registers 16

    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/estrongs/android/pop/d/a;->c:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    new-instance v0, Lcom/estrongs/android/pop/d/c;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-wide v6

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(J)Lcom/estrongs/android/pop/d/c;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/d/a;->c:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/d/c;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(JJ)V
    .registers 16

    iget-object v0, p0, Lcom/estrongs/android/pop/d/a;->c:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/d/c;

    if-nez v0, :cond_f

    :goto_e
    return-void

    :cond_f
    invoke-virtual {v0, p3, p4}, Lcom/estrongs/android/pop/d/c;->a(J)V

    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    iget v1, v0, Lcom/estrongs/android/pop/d/c;->f:I

    const/4 v3, -0x1

    if-le v1, v3, :cond_106

    iget v1, v0, Lcom/estrongs/android/pop/d/c;->f:I

    iput v1, v2, Landroid/app/Notification;->icon:I

    :goto_20
    iget v1, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v2, Landroid/app/Notification;->flags:I

    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/estrongs/android/pop/d/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f03004a

    invoke-direct {v3, v1, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-object v1, v0, Lcom/estrongs/android/pop/d/c;->d:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v1, v1, v4

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->H(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10d

    const-string v1, "/"

    :goto_41
    const v4, 0x7f070219

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/estrongs/android/pop/d/c;->c:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v4, 0x7f070218

    invoke-virtual {v3, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-wide v4, v0, Lcom/estrongs/android/pop/d/c;->b:J

    const-wide/32 v6, -0x80000000

    cmp-long v1, v4, v6

    if-lez v1, :cond_11b

    const v4, 0x7f07021a

    iget-wide v5, v0, Lcom/estrongs/android/pop/d/c;->b:J

    const-wide/16 v7, 0x64

    div-long/2addr v5, v7

    long-to-int v5, v5

    iget-wide v6, v0, Lcom/estrongs/android/pop/d/c;->a:J

    const-wide/16 v8, 0x64

    div-long/2addr v6, v8

    long-to-int v6, v6

    iget-wide v7, v0, Lcom/estrongs/android/pop/d/c;->b:J

    const-wide/16 v9, -0x1

    cmp-long v1, v7, v9

    if-nez v1, :cond_118

    const/4 v1, 0x1

    :goto_83
    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    :goto_86
    const v1, 0x7f070216

    iget-wide v4, v0, Lcom/estrongs/android/pop/d/c;->b:J

    iget-wide v6, v0, Lcom/estrongs/android/pop/d/c;->a:J

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/estrongs/android/pop/d/a;->b(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v1, 0x7f070215

    const v4, 0x1080081

    invoke-virtual {v3, v1, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iput-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/pop/d/a;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "_id"

    invoke-virtual {v1, v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v0, v0, Lcom/estrongs/android/pop/d/c;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/pop/d/a;->a:Landroid/content/Context;

    const v4, 0x7f09017b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f3

    const-string v0, "title"

    iget-object v3, p0, Lcom/estrongs/android/pop/d/a;->a:Landroid/content/Context;

    const v4, 0x7f09017b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "ok_label"

    iget-object v3, p0, Lcom/estrongs/android/pop/d/a;->a:Landroid/content/Context;

    const v4, 0x7f090149

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "cancel_label"

    iget-object v3, p0, Lcom/estrongs/android/pop/d/a;->a:Landroid/content/Context;

    const v4, 0x7f090148

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_f3
    iget-object v0, p0, Lcom/estrongs/android/pop/d/a;->a:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {v0, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/estrongs/android/pop/d/a;->b:Landroid/app/NotificationManager;

    long-to-int v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_e

    :cond_106
    const v1, 0x1080081

    iput v1, v2, Landroid/app/Notification;->icon:I

    goto/16 :goto_20

    :cond_10d
    iget-object v1, v0, Lcom/estrongs/android/pop/d/c;->d:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v1, v1, v4

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_41

    :cond_118
    const/4 v1, 0x0

    goto/16 :goto_83

    :cond_11b
    const v4, 0x7f07021a

    iget-wide v5, v0, Lcom/estrongs/android/pop/d/c;->b:J

    long-to-int v5, v5

    iget-wide v6, v0, Lcom/estrongs/android/pop/d/c;->a:J

    long-to-int v6, v6

    iget-wide v7, v0, Lcom/estrongs/android/pop/d/c;->b:J

    const-wide/16 v9, -0x1

    cmp-long v1, v7, v9

    if-nez v1, :cond_132

    const/4 v1, 0x1

    :goto_12d
    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    goto/16 :goto_86

    :cond_132
    const/4 v1, 0x0

    goto :goto_12d
.end method

.method public a(JLjava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/estrongs/android/pop/d/a;->c:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/d/c;

    if-nez v0, :cond_f

    :goto_e
    return-void

    :cond_f
    invoke-direct {p0, v0, p1, p2}, Lcom/estrongs/android/pop/d/a;->a(Lcom/estrongs/android/pop/d/c;J)Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/d/a;->e:Landroid/app/Notification;

    iget-object v0, p0, Lcom/estrongs/android/pop/d/a;->e:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f07021d

    invoke-virtual {v0, v1, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/d/a;->b:Landroid/app/NotificationManager;

    long-to-int v1, p1

    iget-object v2, p0, Lcom/estrongs/android/pop/d/a;->e:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_e
.end method

.method public declared-synchronized a(JZ)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/d/a;->c:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/d/c;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_21

    if-nez v0, :cond_11

    :goto_f
    monitor-exit p0

    return-void

    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/estrongs/android/pop/d/a;->c:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/d/a;->b:Landroid/app/NotificationManager;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_20
    .catchall {:try_start_11 .. :try_end_20} :catchall_21

    goto :goto_f

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const/4 v2, 0x0

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/estrongs/android/pop/d/a;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_47

    move-result v0

    if-nez v0, :cond_16

    move v0, v2

    :goto_14
    monitor-exit p0

    return v0

    :cond_16
    :try_start_16
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/d/c;

    if-eqz v0, :cond_d

    iget-object v4, v0, Lcom/estrongs/android/pop/d/c;->c:Ljava/lang/String;

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, v0, Lcom/estrongs/android/pop/d/c;->d:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    if-eqz p2, :cond_d

    iget-object v4, v0, Lcom/estrongs/android/pop/d/c;->d:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_d

    iget-object v0, v0, Lcom/estrongs/android/pop/d/c;->d:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_42
    .catchall {:try_start_16 .. :try_end_42} :catchall_47

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_14

    :catchall_47
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(J)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/d/a;->c:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/d/c;

    if-eqz v0, :cond_37

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/estrongs/android/pop/d/c;->e:Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_5d

    :try_start_12
    iget-object v1, v0, Lcom/estrongs/android/pop/d/c;->h:Ljava/io/OutputStream;

    if-eqz v1, :cond_26

    iget-object v1, v0, Lcom/estrongs/android/pop/d/c;->h:Ljava/io/OutputStream;

    instance-of v1, v1, Lcom/estrongs/android/pop/fs/e;

    if-eqz v1, :cond_3f

    iget-object v1, v0, Lcom/estrongs/android/pop/d/c;->h:Ljava/io/OutputStream;

    invoke-static {v1}, Lcom/estrongs/android/pop/fs/d;->a(Ljava/io/OutputStream;)V

    :cond_21
    :goto_21
    iget-object v1, v0, Lcom/estrongs/android/pop/d/c;->h:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_26
    iget-object v1, v0, Lcom/estrongs/android/pop/d/c;->g:Ljava/io/InputStream;

    if-eqz v1, :cond_32

    new-instance v1, Lcom/estrongs/android/pop/d/b;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/pop/d/b;-><init>(Lcom/estrongs/android/pop/d/a;Lcom/estrongs/android/pop/d/c;)V

    invoke-virtual {v1}, Lcom/estrongs/android/pop/d/b;->start()V

    :cond_32
    iget-object v0, v0, Lcom/estrongs/android/pop/d/c;->i:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_37
    .catchall {:try_start_12 .. :try_end_37} :catchall_5d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_37} :catch_4d

    :cond_37
    :goto_37
    :try_start_37
    iget-object v0, p0, Lcom/estrongs/android/pop/d/a;->b:Landroid/app/NotificationManager;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_5d

    monitor-exit p0

    return-void

    :cond_3f
    :try_start_3f
    iget-object v1, v0, Lcom/estrongs/android/pop/d/c;->h:Ljava/io/OutputStream;

    instance-of v1, v1, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;

    if-eqz v1, :cond_4f

    iget-object v1, v0, Lcom/estrongs/android/pop/d/c;->h:Ljava/io/OutputStream;

    check-cast v1, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;->forceClose()V

    goto :goto_21

    :catch_4d
    move-exception v0

    goto :goto_37

    :cond_4f
    iget-object v1, v0, Lcom/estrongs/android/pop/d/c;->h:Ljava/io/OutputStream;

    instance-of v1, v1, Lcom/estrongs/android/pop/fs/p;

    if-eqz v1, :cond_21

    iget-object v1, v0, Lcom/estrongs/android/pop/d/c;->h:Ljava/io/OutputStream;

    check-cast v1, Lcom/estrongs/android/pop/fs/p;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/fs/p;->a()V
    :try_end_5c
    .catchall {:try_start_3f .. :try_end_5c} :catchall_5d
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_5c} :catch_4d

    goto :goto_21

    :catchall_5d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(J)V
    .registers 13

    const v9, 0x7f09017b

    const v8, 0x1080081

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/d/a;->c:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/d/c;

    if-nez v0, :cond_16

    :goto_15
    return-void

    :cond_16
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    iget v1, v0, Lcom/estrongs/android/pop/d/c;->f:I

    const/4 v3, -0x1

    if-le v1, v3, :cond_e6

    iget v1, v0, Lcom/estrongs/android/pop/d/c;->f:I

    iput v1, v2, Landroid/app/Notification;->icon:I

    :goto_24
    iget v1, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v2, Landroid/app/Notification;->flags:I

    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/estrongs/android/pop/d/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f03004a

    invoke-direct {v3, v1, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-object v1, v0, Lcom/estrongs/android/pop/d/c;->d:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->H(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ea

    const-string v1, "/"

    :goto_44
    const v4, 0x7f070219

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/estrongs/android/pop/d/c;->c:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v4, 0x7f070218

    invoke-virtual {v3, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v1, 0x7f07021a

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v7, v7, v4}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    const v1, 0x7f070216

    iget-wide v4, v0, Lcom/estrongs/android/pop/d/c;->b:J

    iget-wide v6, v0, Lcom/estrongs/android/pop/d/c;->a:J

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/estrongs/android/pop/d/a;->b(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v1, 0x7f070215

    invoke-virtual {v3, v1, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iput-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/pop/d/a;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "_id"

    invoke-virtual {v1, v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v0, v0, Lcom/estrongs/android/pop/d/c;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/pop/d/a;->a:Landroid/content/Context;

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d0

    const-string v0, "title"

    iget-object v3, p0, Lcom/estrongs/android/pop/d/a;->a:Landroid/content/Context;

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "ok_label"

    iget-object v3, p0, Lcom/estrongs/android/pop/d/a;->a:Landroid/content/Context;

    const v4, 0x7f090149

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "cancel_label"

    iget-object v3, p0, Lcom/estrongs/android/pop/d/a;->a:Landroid/content/Context;

    const v4, 0x7f090148

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_d0
    :try_start_d0
    iget-object v0, p0, Lcom/estrongs/android/pop/d/a;->a:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {v0, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/estrongs/android/pop/d/a;->b:Landroid/app/NotificationManager;

    long-to-int v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_e1
    .catch Ljava/lang/NullPointerException; {:try_start_d0 .. :try_end_e1} :catch_e3

    goto/16 :goto_15

    :catch_e3
    move-exception v0

    goto/16 :goto_15

    :cond_e6
    iput v8, v2, Landroid/app/Notification;->icon:I

    goto/16 :goto_24

    :cond_ea
    iget-object v1, v0, Lcom/estrongs/android/pop/d/c;->d:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_44
.end method
