.class final Lcom/google/android/youtube/app/ui/bu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Landroid/widget/RemoteViews;

.field final synthetic b:Landroid/app/Notification;

.field final synthetic c:Lcom/google/android/youtube/app/ui/bt;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/bt;Landroid/widget/RemoteViews;Landroid/app/Notification;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/bu;->c:Lcom/google/android/youtube/app/ui/bt;

    iput-object p2, p0, Lcom/google/android/youtube/app/ui/bu;->a:Landroid/widget/RemoteViews;

    iput-object p3, p0, Lcom/google/android/youtube/app/ui/bu;->b:Landroid/app/Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 137
    const-string v0, "Error downloading thumbnai"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 137
    check-cast p2, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bu;->a:Landroid/widget/RemoteViews;

    const v1, 0x7f09001b

    invoke-virtual {v0, v1, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bu;->c:Lcom/google/android/youtube/app/ui/bt;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/bt;->b:Lcom/google/android/youtube/app/ui/br;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/br;->a(Lcom/google/android/youtube/app/ui/br;)Landroid/app/NotificationManager;

    move-result-object v0

    const/16 v1, 0x3e8

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/bu;->b:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
