.class final Lcom/google/android/youtube/app/ui/cl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/cj;

.field private final b:Landroid/app/NotificationManager;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/ui/cj;)V
    .registers 4
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/cl;->a:Lcom/google/android/youtube/app/ui/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    invoke-static {p1}, Lcom/google/android/youtube/app/ui/cj;->f(Lcom/google/android/youtube/app/ui/cj;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/cl;->b:Landroid/app/NotificationManager;

    .line 251
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/cl;->c:Ljava/lang/String;

    .line 292
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cl;->b:Landroid/app/NotificationManager;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 293
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cl;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 288
    :goto_8
    return-void

    .line 258
    :cond_9
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/cl;->c:Ljava/lang/String;

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 263
    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f0200d1

    invoke-direct {v2, v3, p2, v0, v1}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 264
    iget v0, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v2, Landroid/app/Notification;->flags:I

    .line 265
    iget v0, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, v2, Landroid/app/Notification;->flags:I

    .line 267
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cl;->a:Lcom/google/android/youtube/app/ui/cj;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/cj;->f(Lcom/google/android/youtube/app/ui/cj;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f040055

    invoke-direct {v0, v1, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 269
    const v1, 0x7f080024

    invoke-virtual {v0, v1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 270
    const v1, 0x7f0800b0

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/cl;->a:Lcom/google/android/youtube/app/ui/cj;

    invoke-static {v3}, Lcom/google/android/youtube/app/ui/cj;->g(Lcom/google/android/youtube/app/ui/cj;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 272
    iput-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 274
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://www.youtube.com/watch?v="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 277
    iget-object v3, p0, Lcom/google/android/youtube/app/ui/cl;->a:Lcom/google/android/youtube/app/ui/cj;

    invoke-static {v3}, Lcom/google/android/youtube/app/ui/cj;->f(Lcom/google/android/youtube/app/ui/cj;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x2000

    or-int/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 280
    iget-object v3, p0, Lcom/google/android/youtube/app/ui/cl;->a:Lcom/google/android/youtube/app/ui/cj;

    invoke-static {v3}, Lcom/google/android/youtube/app/ui/cj;->f(Lcom/google/android/youtube/app/ui/cj;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x1000

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 283
    iput-object v1, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 284
    if-eqz p3, :cond_b3

    .line 285
    const v1, 0x7f080023

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    invoke-static {p3, v4, v5, v3, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 287
    :cond_b3
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cl;->b:Landroid/app/NotificationManager;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_8
.end method
