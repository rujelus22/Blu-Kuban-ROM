.class public LtM;
.super Ljava/lang/Object;
.source "UploadProgressNotifier.java"

# interfaces
.implements Lua;


# instance fields
.field private a:J

.field private final a:LHW;

.field private final a:LLh;

.field private a:Landroid/app/Notification;

.field private final a:Landroid/app/PendingIntent;

.field private final a:Landroid/content/Context;

.field private final a:Landroid/content/res/Resources;

.field private final a:Landroid/widget/RemoteViews;

.field private final a:Ljava/lang/String;

.field private final a:Llu;

.field private b:J

.field private final b:Landroid/app/PendingIntent;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/app/PendingIntent;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;LtB;LLh;Ljava/lang/String;Llu;LHW;Landroid/content/Context;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LtM;->a:J

    .line 49
    iput-object p1, p0, LtM;->a:Landroid/app/PendingIntent;

    .line 50
    iput-object p2, p0, LtM;->b:Landroid/app/PendingIntent;

    .line 51
    iput-object p3, p0, LtM;->c:Landroid/app/PendingIntent;

    .line 52
    invoke-virtual {p9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, LtM;->a:Landroid/content/res/Resources;

    .line 53
    iget-object v0, p0, LtM;->a:Landroid/content/res/Resources;

    sget v1, LcY;->upload_notification_started_ticker_drivev2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LtM;->a:Ljava/lang/String;

    .line 54
    invoke-virtual {p4}, LtB;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LtM;->b:Ljava/lang/String;

    .line 55
    iput-object p5, p0, LtM;->a:LLh;

    .line 56
    iput-object p6, p0, LtM;->d:Ljava/lang/String;

    .line 57
    iput-object p7, p0, LtM;->a:Llu;

    .line 58
    iput-object p8, p0, LtM;->a:LHW;

    .line 59
    iput-object p9, p0, LtM;->a:Landroid/content/Context;

    .line 60
    invoke-virtual {p4}, LtB;->a()Landroid/net/Uri;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LtM;->c:Ljava/lang/String;

    .line 62
    iget-object v0, p0, LtM;->b:Ljava/lang/String;

    invoke-static {p9, v0}, LtM;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, LtM;->a:Landroid/widget/RemoteViews;

    .line 63
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/RemoteViews;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 71
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, LcU;->progress_notification:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 73
    sget v1, LcS;->notification_title:I

    sget v2, LcY;->upload_notification_started_title_drivev2:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 75
    sget v1, LcS;->notification_progressbar:I

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 76
    sget v1, LcS;->notification_icon:I

    sget v2, LcR;->notification_icon:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 77
    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 6

    .prologue
    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LtM;->b:J

    .line 83
    new-instance v0, Landroid/app/Notification;

    const v1, 0x1080088

    iget-object v2, p0, LtM;->a:Ljava/lang/String;

    iget-wide v3, p0, LtM;->b:J

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v0, p0, LtM;->a:Landroid/app/Notification;

    .line 85
    iget-object v0, p0, LtM;->a:Landroid/app/Notification;

    iget-object v1, p0, LtM;->a:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 86
    iget-object v0, p0, LtM;->a:Landroid/app/Notification;

    iget-object v1, p0, LtM;->b:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 87
    iget-object v0, p0, LtM;->a:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 88
    iget-object v0, p0, LtM;->a:LLh;

    const/4 v1, 0x1

    iget-object v2, p0, LtM;->a:Landroid/app/Notification;

    invoke-interface {v0, v1, v2}, LLh;->a(ILandroid/app/Notification;)V

    .line 89
    return-void
.end method

.method public a(JJ)V
    .registers 14
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 125
    iget-object v0, p0, LtM;->a:Landroid/app/Notification;

    if-eqz v0, :cond_38

    move v0, v1

    :goto_7
    invoke-static {v0}, LafQ;->b(Z)V

    .line 126
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 127
    iget-wide v5, p0, LtM;->a:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0x3e8

    cmp-long v0, v5, v7

    if-lez v0, :cond_37

    .line 128
    iput-wide v3, p0, LtM;->a:J

    .line 129
    iget-object v0, p0, LtM;->a:Landroid/widget/RemoteViews;

    sget v3, LcS;->notification_progressbar:I

    const/16 v4, 0x64

    const-wide/16 v5, 0x64

    mul-long/2addr v5, p1

    div-long/2addr v5, p3

    long-to-int v5, v5

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 131
    iget-object v0, p0, LtM;->a:Landroid/app/Notification;

    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0xa

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 133
    iget-object v0, p0, LtM;->a:LLh;

    iget-object v2, p0, LtM;->a:Landroid/app/Notification;

    invoke-interface {v0, v1, v2}, LLh;->a(ILandroid/app/Notification;)V

    .line 135
    :cond_37
    return-void

    :cond_38
    move v0, v2

    .line 125
    goto :goto_7
.end method

.method public a(LtH;)V
    .registers 7
    .parameter

    .prologue
    .line 110
    new-instance v0, Landroid/app/Notification;

    const v1, 0x1080078

    iget-object v2, p0, LtM;->a:Landroid/content/res/Resources;

    sget v3, LcY;->upload_notification_failure_ticker:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, LtM;->b:J

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 112
    iget-object v1, p0, LtM;->a:Landroid/content/Context;

    iget-object v2, p0, LtM;->a:Landroid/content/res/Resources;

    sget v3, LcY;->upload_notification_failure_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, LtM;->b:Ljava/lang/String;

    iget-object v4, p0, LtM;->c:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 114
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 115
    iget-object v1, p0, LtM;->a:LLh;

    iget-object v2, p0, LtM;->c:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3, v0}, LLh;->a(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 116
    return-void
.end method

.method public b()V
    .registers 6

    .prologue
    .line 93
    new-instance v0, Landroid/app/Notification;

    const v1, 0x1080089

    iget-object v2, p0, LtM;->a:Landroid/content/res/Resources;

    sget v3, LcY;->upload_notification_success_ticker:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, LtM;->b:J

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 95
    iget-object v1, p0, LtM;->a:Landroid/content/Context;

    iget-object v2, p0, LtM;->a:Landroid/content/res/Resources;

    sget v3, LcY;->upload_notification_success_title_drivev2:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, LtM;->b:Ljava/lang/String;

    iget-object v4, p0, LtM;->a:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 98
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 99
    iget-object v1, p0, LtM;->a:LLh;

    iget-object v2, p0, LtM;->c:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3, v0}, LLh;->a(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 102
    iget-object v0, p0, LtM;->a:Llu;

    iget-object v1, p0, LtM;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_40

    .line 104
    iget-object v1, p0, LtM;->a:LHW;

    invoke-interface {v1, v0}, LHW;->a(LkG;)V

    .line 106
    :cond_40
    return-void
.end method

.method public c()V
    .registers 4

    .prologue
    .line 120
    iget-object v0, p0, LtM;->a:LLh;

    iget-object v1, p0, LtM;->c:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, LLh;->a(Ljava/lang/String;I)V

    .line 121
    return-void
.end method
