.class public Lcom/google/googlenav/ui/android/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laz/m;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/app/NotificationManager;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/googlenav/ui/android/ak;->c:I

    .line 42
    iput-object p1, p0, Lcom/google/googlenav/ui/android/ak;->a:Landroid/content/Context;

    .line 43
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/ak;->b:Landroid/app/NotificationManager;

    .line 45
    return-void
.end method


# virtual methods
.method public onOfflineDataUpdate(Laz/l;)V
    .registers 11
    .parameter

    .prologue
    const v4, 0x1080082

    const/4 v1, 0x1

    const/16 v8, 0x33a

    const/4 v2, 0x0

    .line 51
    invoke-virtual {p1}, Laz/l;->j()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Laz/l;->k()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p1}, Laz/l;->l()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p1}, Laz/l;->m()Z

    move-result v0

    if-nez v0, :cond_20

    .line 134
    :cond_1f
    :goto_1f
    return-void

    .line 66
    :cond_20
    invoke-virtual {p1}, Laz/l;->k()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-virtual {p1}, Laz/l;->c()I

    move-result v0

    const/16 v3, 0x64

    if-ne v0, v3, :cond_3c

    move v0, v1

    .line 69
    :goto_2f
    invoke-virtual {p1}, Laz/l;->b()I

    move-result v3

    packed-switch v3, :pswitch_data_da

    .line 99
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ak;->b:Landroid/app/NotificationManager;

    invoke-virtual {v0, v8}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1f

    :cond_3c
    move v0, v2

    .line 66
    goto :goto_2f

    .line 71
    :pswitch_3e
    if-nez v0, :cond_c2

    .line 72
    const v4, 0x1080081

    .line 73
    invoke-static {v8}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-virtual {p1}, Laz/l;->k()Z

    move-result v1

    if-eqz v1, :cond_bf

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Laz/l;->c()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "%"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    :goto_68
    new-instance v5, Landroid/app/Notification;

    const-wide/16 v6, 0x0

    invoke-direct {v5, v4, v3, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 111
    new-instance v4, Landroid/content/Intent;

    iget-object v6, p0, Lcom/google/googlenav/ui/android/ak;->a:Landroid/content/Context;

    const-class v7, Lcom/google/android/maps/MapsActivity;

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    new-instance v6, Landroid/net/Uri$Builder;

    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    const-string v7, "http"

    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "maps.google.com"

    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "/my-places"

    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "offline"

    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 117
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 118
    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    iget-object v6, p0, Lcom/google/googlenav/ui/android/ak;->a:Landroid/content/Context;

    invoke-static {v6, v2, v4, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 122
    iget-object v4, p0, Lcom/google/googlenav/ui/android/ak;->a:Landroid/content/Context;

    invoke-virtual {v5, v4, v3, v1, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 126
    if-eqz v0, :cond_d8

    const/16 v0, 0x10

    :goto_b0
    iput v0, v5, Landroid/app/Notification;->flags:I

    .line 130
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ak;->b:Landroid/app/NotificationManager;

    invoke-virtual {v0, v8, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 133
    invoke-virtual {p1}, Laz/l;->b()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/ak;->c:I

    goto/16 :goto_1f

    .line 74
    :cond_bf
    const-string v1, ""

    goto :goto_68

    .line 79
    :cond_c2
    const/16 v1, 0x338

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 80
    const-string v1, ""

    goto :goto_68

    .line 85
    :pswitch_cb
    iget v3, p0, Lcom/google/googlenav/ui/android/ak;->c:I

    if-ne v3, v1, :cond_1f

    .line 93
    const/16 v1, 0x33b

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 94
    const-string v1, ""

    goto :goto_68

    .line 126
    :cond_d8
    const/4 v0, 0x2

    goto :goto_b0

    .line 69
    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_cb
        :pswitch_3e
    .end packed-switch
.end method
