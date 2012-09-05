.class public Lcom/google/googlenav/android/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/android/k;
.implements Lcom/google/googlenav/ay;


# instance fields
.field private a:Lcom/google/googlenav/android/l;

.field private final b:Lcom/google/googlenav/android/k;

.field private c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/l;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/android/h;->c:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/google/googlenav/android/h;->a:Lcom/google/googlenav/android/l;

    iput-object p0, p0, Lcom/google/googlenav/android/h;->b:Lcom/google/googlenav/android/k;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/android/h;)Lcom/google/googlenav/android/l;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/h;->a:Lcom/google/googlenav/android/l;

    return-object v0
.end method

.method public static b(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2

    invoke-static {}, Laf/d;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "com.google.android.maps.IntentCatcher.CATEGORY"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_b
    return-object p0
.end method

.method private g(Ljava/lang/String;)Landroid/content/Intent;
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.im.category.GTALK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "im:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/h;->a:Lcom/google/googlenav/android/l;

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->h()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->finish()V

    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/android/h;->a:Lcom/google/googlenav/android/l;

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->h()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/MapsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/android/V;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/googlenav/android/a;->a()Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "vnd.android.cursor.dir/postal-address_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :goto_12
    invoke-static {}, Lcom/google/googlenav/android/U;->a()Lcom/google/googlenav/android/U;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/google/googlenav/android/U;->a(Landroid/content/Intent;Lcom/google/googlenav/android/V;)V

    return-void

    :cond_1a
    const-string v1, "vnd.android.cursor.dir/postal-address"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_12
.end method

.method public a(Lcom/google/googlenav/ui/at;)V
    .registers 4

    if-nez p1, :cond_d

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_9
    :try_start_9
    invoke-virtual {p0, v0}, Lcom/google/googlenav/android/h;->a(Landroid/content/Intent;)V
    :try_end_c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9 .. :try_end_c} :catch_23

    :goto_c
    return-void

    :cond_d
    invoke-virtual {p1}, Lcom/google/googlenav/ui/at;->E()Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :cond_1b
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :catch_23
    move-exception v0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_2b
    invoke-virtual {p0, v0}, Lcom/google/googlenav/android/h;->a(Landroid/content/Intent;)V
    :try_end_2e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_c

    :catch_2f
    move-exception v0

    goto :goto_c
.end method

.method public a(Ljava/lang/Class;)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/android/h;->a:Lcom/google/googlenav/android/l;

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->h()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/google/googlenav/android/h;->a:Lcom/google/googlenav/android/l;

    invoke-virtual {v2}, Lcom/google/googlenav/android/l;->h()Lcom/google/android/maps/MapsActivity;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 9

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v0}, Lcom/google/googlenav/android/h;->b(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    :try_start_f
    iget-object v2, p0, Lcom/google/googlenav/android/h;->b:Lcom/google/googlenav/android/k;

    invoke-interface {v2, v0}, Lcom/google/googlenav/android/k;->a(Landroid/content/Intent;)V
    :try_end_14
    .catch Landroid/content/ActivityNotFoundException; {:try_start_f .. :try_end_14} :catch_28

    :goto_14
    invoke-static {}, Laf/d;->a()Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "launchUrl"

    invoke-static {v0, p1}, Laf/m;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_27
    return-void

    :catch_28
    move-exception v0

    iget-object v2, p0, Lcom/google/googlenav/android/h;->a:Lcom/google/googlenav/android/l;

    invoke-virtual {v2}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v2

    const/16 v3, 0x1d

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/D;->b(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APS-URL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14
.end method

.method public a(Ljava/lang/String;Lcom/google/googlenav/az;Z)V
    .registers 7

    const/4 v2, 0x0

    const-string v0, "tel"

    invoke-static {v0, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz p2, :cond_11

    new-instance v0, Lcom/google/googlenav/android/j;

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/google/googlenav/android/j;-><init>(Lcom/google/googlenav/android/h;Ljava/lang/String;Lcom/google/googlenav/az;Lcom/google/googlenav/android/i;)V

    invoke-static {v0}, Lcom/google/googlenav/android/j;->a(Lcom/google/googlenav/android/j;)V

    :cond_11
    new-instance v2, Landroid/content/Intent;

    if-eqz p3, :cond_24

    const-string v0, "android.intent.action.CALL"

    :goto_17
    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v2}, Lcom/google/googlenav/android/h;->b(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/android/h;->b:Lcom/google/googlenav/android/k;

    invoke-interface {v1, v0}, Lcom/google/googlenav/android/k;->a(Landroid/content/Intent;)V

    return-void

    :cond_24
    const-string v0, "android.intent.action.DIAL"

    goto :goto_17
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "sms_body"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/googlenav/android/h;->b:Lcom/google/googlenav/android/k;

    invoke-interface {v0, v1}, Lcom/google/googlenav/android/k;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p3, :cond_c

    const-string v1, "searchUiSource"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    if-eqz p2, :cond_13

    const-string v1, "searchNearBy"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    iget-object v1, p0, Lcom/google/googlenav/android/h;->a:Lcom/google/googlenav/android/l;

    invoke-virtual {v1}, Lcom/google/googlenav/android/l;->h()Lcom/google/android/maps/MapsActivity;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/google/android/maps/MapsActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    return-void
.end method

.method public a([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "message/rfc822"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/android/h;->b:Lcom/google/googlenav/android/k;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/googlenav/android/k;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    invoke-static {}, Laf/b;->D()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 9

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v0}, Lcom/google/googlenav/android/h;->b(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    :try_start_f
    iget-object v2, p0, Lcom/google/googlenav/android/h;->b:Lcom/google/googlenav/android/k;

    invoke-interface {v2, v0}, Lcom/google/googlenav/android/k;->a(Landroid/content/Intent;)V
    :try_end_14
    .catch Landroid/content/ActivityNotFoundException; {:try_start_f .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    invoke-static {}, Laf/d;->a()Z

    move-result v2

    if-eqz v2, :cond_42

    iget-object v2, p0, Lcom/google/googlenav/android/h;->a:Lcom/google/googlenav/android/l;

    invoke-virtual {v2}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v2

    const-string v3, "Using Navigation requires a build that includes DriveAbout."

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/D;->b(Ljava/lang/String;)V

    :goto_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APS-URL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14

    :cond_42
    iget-object v2, p0, Lcom/google/googlenav/android/h;->a:Lcom/google/googlenav/android/l;

    invoke-virtual {v2}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v2

    const/16 v3, 0x1d

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/D;->b(Ljava/lang/String;)V

    goto :goto_27
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "full_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "postal"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "postal_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "phone"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "phone_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/android/h;->b:Lcom/google/googlenav/android/k;

    invoke-interface {v1, v0}, Lcom/google/googlenav/android/k;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/h;->a:Lcom/google/googlenav/android/l;

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->h()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->finish()V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 9

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v0}, Lcom/google/googlenav/android/h;->b(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    const-string v4, "instrumentation_entrance_time"

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :try_start_1c
    iget-object v2, p0, Lcom/google/googlenav/android/h;->b:Lcom/google/googlenav/android/k;

    invoke-interface {v2, v0}, Lcom/google/googlenav/android/k;->a(Landroid/content/Intent;)V
    :try_end_21
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1c .. :try_end_21} :catch_22

    :goto_21
    return-void

    :catch_22
    move-exception v0

    iget-object v2, p0, Lcom/google/googlenav/android/h;->a:Lcom/google/googlenav/android/l;

    invoke-virtual {v2}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v2

    const/16 v3, 0x1d

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/D;->b(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APS-SV"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_21
.end method

.method public d()V
    .registers 1

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/google/googlenav/android/a;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/googlenav/android/h;->a:Lcom/google/googlenav/android/l;

    invoke-static {v0, p1}, Lcom/google/googlenav/android/H;->a(Lcom/google/googlenav/android/l;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0, v0}, Lcom/google/googlenav/android/h;->a(Landroid/content/Intent;)V

    :goto_11
    return-void

    :cond_12
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mailto"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/android/h;->a(Landroid/content/Intent;)V

    goto :goto_11
.end method

.method public e()Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/android/h;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_18

    invoke-static {}, Lcom/google/googlenav/capabilities/a;->a()Lcom/google/googlenav/capabilities/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/android/h;->a:Lcom/google/googlenav/android/l;

    invoke-virtual {v1}, Lcom/google/googlenav/android/l;->h()Lcom/google/android/maps/MapsActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/capabilities/a;->b(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/android/h;->c:Ljava/lang/Boolean;

    :cond_18
    iget-object v0, p0, Lcom/google/googlenav/android/h;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/google/googlenav/android/h;->g(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/android/h;->a:Lcom/google/googlenav/android/l;

    invoke-virtual {v2}, Lcom/google/googlenav/android/l;->h()Lcom/google/android/maps/MapsActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/MapsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    return v0
.end method

.method public f()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/android/h;->a:Lcom/google/googlenav/android/l;

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->f()Lcom/google/googlenav/android/AndroidGmmApplication;

    move-result-object v0

    const-string v1, "search"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/AndroidGmmApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/app/SearchManager;->stopSearch()V

    :cond_13
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/googlenav/android/h;->g(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/android/h;->b:Lcom/google/googlenav/android/k;

    invoke-interface {v1, v0}, Lcom/google/googlenav/android/k;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public g()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/h;->a:Lcom/google/googlenav/android/l;

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->f()Lcom/google/googlenav/android/AndroidGmmApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/AndroidGmmApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/android/Y;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public h()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/android/h;->b:Lcom/google/googlenav/android/k;

    const-class v1, Lcom/google/googlenav/settings/SettingsPreferenceActivity;

    invoke-interface {v0, v1}, Lcom/google/googlenav/android/k;->a(Ljava/lang/Class;)V
    :try_end_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    iget-object v0, p0, Lcom/google/googlenav/android/h;->a:Lcom/google/googlenav/android/l;

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    const/16 v1, 0x1d

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-class v4, Lcom/google/googlenav/settings/SettingsPreferenceActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->b(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public i()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/android/h;->b:Lcom/google/googlenav/android/k;

    const-class v1, Lcom/google/googlenav/settings/MapTileSettingsActivity;

    invoke-interface {v0, v1}, Lcom/google/googlenav/android/k;->a(Ljava/lang/Class;)V
    :try_end_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    iget-object v0, p0, Lcom/google/googlenav/android/h;->a:Lcom/google/googlenav/android/l;

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    const/16 v1, 0x1d

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-class v4, Lcom/google/googlenav/settings/MapTileSettingsActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->b(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public j()V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BUG_REPORT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/googlenav/android/i;

    invoke-direct {v1, p0}, Lcom/google/googlenav/android/i;-><init>(Lcom/google/googlenav/android/h;)V

    iget-object v2, p0, Lcom/google/googlenav/android/h;->a:Lcom/google/googlenav/android/l;

    invoke-virtual {v2}, Lcom/google/googlenav/android/l;->h()Lcom/google/android/maps/MapsActivity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/maps/MapsActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public k()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/android/h;->a:Lcom/google/googlenav/android/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/l;->a(Lcom/google/android/maps/t;)V

    return-void
.end method

.method public l()V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/googlenav/android/h;->b(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.google.android.apps.maps"

    const-string v3, "com.google.android.maps.driveabout.app.DestinationActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_17
    iget-object v1, p0, Lcom/google/googlenav/android/h;->b:Lcom/google/googlenav/android/k;

    invoke-interface {v1, v0}, Lcom/google/googlenav/android/k;->a(Landroid/content/Intent;)V
    :try_end_1c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_17 .. :try_end_1c} :catch_1d

    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    iget-object v0, p0, Lcom/google/googlenav/android/h;->a:Lcom/google/googlenav/android/l;

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    const-string v1, "Using Navigation requires a build that includes DriveAbout."

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->b(Ljava/lang/String;)V

    goto :goto_1c
.end method
