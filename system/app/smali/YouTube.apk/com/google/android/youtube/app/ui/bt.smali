.class final Lcom/google/android/youtube/app/ui/bt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/youtube/app/ui/br;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/br;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/bt;->b:Lcom/google/android/youtube/app/ui/br;

    iput-object p2, p0, Lcom/google/android/youtube/app/ui/bt;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 105
    const-string v0, "Error downloading video info"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x1000

    .line 105
    check-cast p2, Lcom/google/android/youtube/core/model/Video;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bt;->b:Lcom/google/android/youtube/app/ui/br;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/br;->b(Lcom/google/android/youtube/app/ui/br;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f0200ed

    iget-object v4, p2, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0, v1}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget v0, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v2, Landroid/app/Notification;->flags:I

    iget v0, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, v2, Landroid/app/Notification;->flags:I

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bt;->b:Lcom/google/android/youtube/app/ui/br;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/br;->c(Lcom/google/android/youtube/app/ui/br;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f040031

    invoke-direct {v0, v1, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v1, 0x7f09001c

    iget-object v3, p2, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v1, 0x7f090067

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/bt;->b:Lcom/google/android/youtube/app/ui/br;

    invoke-static {v3}, Lcom/google/android/youtube/app/ui/br;->d(Lcom/google/android/youtube/app/ui/br;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iput-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://www.youtube.com/watch?v="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/youtube/app/ui/bt;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/bt;->b:Lcom/google/android/youtube/app/ui/br;

    invoke-static {v3}, Lcom/google/android/youtube/app/ui/br;->c(Lcom/google/android/youtube/app/ui/br;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    or-int/2addr v3, v6

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/bt;->b:Lcom/google/android/youtube/app/ui/br;

    invoke-static {v3}, Lcom/google/android/youtube/app/ui/br;->c(Lcom/google/android/youtube/app/ui/br;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bt;->b:Lcom/google/android/youtube/app/ui/br;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/br;->a(Lcom/google/android/youtube/app/ui/br;)Landroid/app/NotificationManager;

    move-result-object v1

    const/16 v3, 0x3e8

    invoke-virtual {v1, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bt;->b:Lcom/google/android/youtube/app/ui/br;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/br;->e(Lcom/google/android/youtube/app/ui/br;)Lcom/google/android/youtube/core/client/w;

    move-result-object v1

    iget-object v3, p2, Lcom/google/android/youtube/core/model/Video;->thumbnailUri:Landroid/net/Uri;

    new-instance v4, Lcom/google/android/youtube/app/ui/bu;

    invoke-direct {v4, p0, v0, v2}, Lcom/google/android/youtube/app/ui/bu;-><init>(Lcom/google/android/youtube/app/ui/bt;Landroid/widget/RemoteViews;Landroid/app/Notification;)V

    invoke-virtual {v1, v3, v4}, Lcom/google/android/youtube/core/client/w;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/async/g;)V

    return-void
.end method
