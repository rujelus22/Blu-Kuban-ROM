.class public Lcom/google/android/maps/rideabout/app/NavigationService;
.super Landroid/app/Service;


# static fields
.field private static final a:Ljava/lang/String;

.field private static h:Lcom/google/android/maps/rideabout/app/q;

.field private static final o:Landroid/content/IntentFilter;


# instance fields
.field private b:Lcom/google/android/maps/rideabout/app/m;

.field private c:Lbc/d;

.field private d:LF/t;

.field private e:LF/A;

.field private f:Lcom/google/android/maps/rideabout/view/c;

.field private g:LG/m;

.field private i:Ljava/util/EnumSet;

.field private j:Z

.field private final k:Landroid/os/IBinder;

.field private l:Z

.field private m:Z

.field private final n:Lcom/google/android/maps/rideabout/app/j;

.field private final p:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/android/maps/rideabout/app/NavigationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/rideabout/app/NavigationService;->a:Ljava/lang/String;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.google.android.maps.driveabout.app.STARTING_NAVIGATION_INTENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/maps/rideabout/app/NavigationService;->o:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/google/android/maps/rideabout/app/k;

    invoke-direct {v0, p0}, Lcom/google/android/maps/rideabout/app/k;-><init>(Lcom/google/android/maps/rideabout/app/NavigationService;)V

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->k:Landroid/os/IBinder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->m:Z

    new-instance v0, Lcom/google/android/maps/rideabout/app/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/rideabout/app/j;-><init>(Lcom/google/android/maps/rideabout/app/NavigationService;Lcom/google/android/maps/rideabout/app/i;)V

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->n:Lcom/google/android/maps/rideabout/app/j;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.googlenav.STOP_TRANSIT_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->p:Landroid/content/Intent;

    return-void
.end method

.method private a(LL/e;DLbc/d;)LF/A;
    .registers 12

    new-instance v6, LG/l;

    invoke-direct {v6, p1}, LG/l;-><init>(LL/e;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v6}, LG/l;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v6}, LG/l;->b()LG/g;

    move-result-object v0

    iget-wide v2, v0, LG/g;->c:J

    :cond_15
    new-instance v0, LI/a;

    new-instance v1, Lag/a;

    invoke-direct {v1}, Lag/a;-><init>()V

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, LI/a;-><init>(Laf/a;JD)V

    new-instance v1, LI/b;

    invoke-direct {v1, v0}, LI/b;-><init>(LI/a;)V

    new-instance v2, LF/Q;

    invoke-direct {v2, p0, v6, v0}, LF/Q;-><init>(Landroid/content/Context;LG/l;LI/a;)V

    new-instance v3, LF/t;

    invoke-direct {v3, v2}, LF/t;-><init>(LF/x;)V

    iput-object v3, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->d:LF/t;

    new-instance v2, LF/F;

    iget-object v3, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->d:LF/t;

    invoke-direct {v2, p4, v3, v0, v1}, LF/F;-><init>(Lbc/d;LF/t;Laf/a;LI/i;)V

    return-object v2
.end method

.method static synthetic a(Lcom/google/android/maps/rideabout/app/NavigationService;)Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->p:Landroid/content/Intent;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .registers 4

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    const-string v0, "com.google.android.maps.rideabout.START_SIMULATION"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "event_log"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "event_log"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/rideabout/app/NavigationService;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_21
    const-string v0, "mock_playback"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/NavigationService;->h()V

    goto :goto_2
.end method

.method private a(Lau/v;)V
    .registers 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1, v1}, Lau/v;->b(Ljava/io/DataOutput;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v1, "directions"

    invoke-static {v0}, Lar/b;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, LI/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/NavigationService;->i()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No log file provided. Received \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    invoke-static {p1}, LG/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_61

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Specified log file \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, LG/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' does not exist."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2d

    :cond_61
    invoke-static {p1}, LG/a;->a(Ljava/lang/String;)LL/e;

    move-result-object v0

    const-wide/high16 v1, 0x3ff0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/maps/rideabout/app/NavigationService;->a(LL/e;D)V

    goto :goto_2d
.end method

.method private b(Lbc/d;)LF/A;
    .registers 4

    new-instance v0, LF/P;

    invoke-direct {v0}, LF/P;-><init>()V

    new-instance v1, LF/t;

    invoke-direct {v1, v0}, LF/t;-><init>(LF/x;)V

    iput-object v1, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->d:LF/t;

    new-instance v0, LF/I;

    sget-object v1, LF/L;->b:LF/L;

    invoke-direct {v0, p1, v1, p0}, LF/I;-><init>(Lbc/d;LF/L;Landroid/content/Context;)V

    invoke-virtual {v0}, LF/I;->b()V

    return-object v0
.end method

.method private b(Lau/v;Lbc/d;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/NavigationService;->k()V

    iput-object p2, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->c:Lbc/d;

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/rideabout/app/NavigationService;->c(Lau/v;Lbc/d;)LF/A;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->e:LF/A;

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/NavigationService;->j()V

    invoke-static {}, Lcom/google/android/maps/rideabout/app/s;->z()LaN/b;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/google/android/maps/rideabout/app/s;->z()LaN/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LaN/b;->a(Z)V

    :cond_1c
    return-void
.end method

.method private c(Lau/v;Lbc/d;)LF/A;
    .registers 7

    new-instance v0, Lag/a;

    invoke-direct {v0}, Lag/a;-><init>()V

    new-instance v1, LF/y;

    invoke-direct {v1, p0, v0}, LF/y;-><init>(Landroid/content/Context;Laf/a;)V

    new-instance v2, LF/t;

    invoke-direct {v2, v1}, LF/t;-><init>(LF/x;)V

    iput-object v2, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->d:LF/t;

    new-instance v1, LF/F;

    iget-object v2, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->d:LF/t;

    new-instance v3, LI/h;

    invoke-direct {v3}, LI/h;-><init>()V

    invoke-direct {v1, p2, v2, v0, v3}, LF/F;-><init>(Lbc/d;LF/t;Laf/a;LI/i;)V

    return-object v1
.end method

.method private h()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/NavigationService;->i()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->c:Lbc/d;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/app/NavigationService;->a(Lbc/d;)V

    :cond_b
    return-void
.end method

.method private i()Z
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/NavigationService;->b()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->c:Lbc/d;

    if-nez v1, :cond_18

    :cond_b
    const-string v1, "Transit navigation should be running before performing simulation"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/NavigationService;->stopSelf()V

    const/4 v0, 0x0

    :cond_18
    return v0
.end method

.method private j()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->c:Lbc/d;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->e:LF/A;

    iget-object v2, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->b:Lcom/google/android/maps/rideabout/app/m;

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/rideabout/view/c;->a(Lbc/d;LF/A;Lcom/google/android/maps/rideabout/app/l;)Lcom/google/android/maps/rideabout/view/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->f:Lcom/google/android/maps/rideabout/view/c;

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->d:LF/t;

    invoke-virtual {v0}, LF/t;->a()V

    return-void
.end method

.method private k()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->e:LF/A;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->e:LF/A;

    invoke-interface {v0}, LF/A;->a()V

    iput-object v1, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->e:LF/A;

    :cond_c
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->f:Lcom/google/android/maps/rideabout/view/c;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->f:Lcom/google/android/maps/rideabout/view/c;

    invoke-static {v0}, Lcom/google/android/maps/rideabout/view/c;->a(Lcom/google/android/maps/rideabout/view/c;)V

    iput-object v1, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->f:Lcom/google/android/maps/rideabout/view/c;

    :cond_17
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->d:LF/t;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->d:LF/t;

    invoke-virtual {v0}, LF/t;->b()V

    iput-object v1, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->d:LF/t;

    :cond_22
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->g:LG/m;

    if-eqz v0, :cond_31

    iget-boolean v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->m:Z

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->g:LG/m;

    invoke-virtual {v0}, LG/m;->b()V

    :cond_2f
    iput-object v1, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->g:LG/m;

    :cond_31
    return-void
.end method

.method private l()Lau/v;
    .registers 5

    const/4 v0, 0x0

    const-string v1, "directions"

    const-string v2, ""

    invoke-static {p0, v1, v2}, LI/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    :goto_f
    return-object v0

    :cond_10
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-static {v1}, Lar/b;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2, v0}, Lau/v;->a(Ljava/io/DataInput;Lcom/google/googlenav/ui/x;)Lau/b;

    move-result-object v0

    check-cast v0, Lau/v;

    goto :goto_f
.end method


# virtual methods
.method public a()Lcom/google/android/maps/rideabout/view/c;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->f:Lcom/google/android/maps/rideabout/view/c;

    return-object v0
.end method

.method a(Landroid/content/Context;)Ljava/util/EnumSet;
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->i:Ljava/util/EnumSet;

    if-nez v0, :cond_3c

    const-class v0, Lcom/google/googlenav/ui/wizard/gJ;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    const-string v1, "NotificationVibration"

    invoke-static {p1, v1, v2}, LI/m;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_18

    sget-object v1, Lcom/google/googlenav/ui/wizard/gJ;->a:Lcom/google/googlenav/ui/wizard/gJ;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_18
    const-string v1, "NotificationVoice"

    invoke-static {p1, v1}, LI/m;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    const-string v1, "NotificationVoice"

    invoke-static {p1, v1, v2}, LI/m;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2d

    :cond_28
    sget-object v1, Lcom/google/googlenav/ui/wizard/gJ;->b:Lcom/google/googlenav/ui/wizard/gJ;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_2d
    const-string v1, "NotificationRingtone"

    invoke-static {p1, v1, v2}, LI/m;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3a

    sget-object v1, Lcom/google/googlenav/ui/wizard/gJ;->c:Lcom/google/googlenav/ui/wizard/gJ;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_3a
    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->i:Ljava/util/EnumSet;

    :cond_3c
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->i:Ljava/util/EnumSet;

    return-object v0
.end method

.method public a(LL/e;D)V
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->m:Z

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/NavigationService;->k()V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->c:Lbc/d;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/maps/rideabout/app/NavigationService;->a(LL/e;DLbc/d;)LF/A;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->e:LF/A;

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/NavigationService;->j()V

    return-void
.end method

.method a(Landroid/content/Context;Ljava/util/EnumSet;)V
    .registers 5

    iput-object p2, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->i:Ljava/util/EnumSet;

    const-string v0, "NotificationVibration"

    sget-object v1, Lcom/google/googlenav/ui/wizard/gJ;->a:Lcom/google/googlenav/ui/wizard/gJ;

    invoke-virtual {v1, p2}, Lcom/google/googlenav/ui/wizard/gJ;->a(Ljava/util/EnumSet;)Z

    move-result v1

    invoke-static {p1, v0, v1}, LI/m;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v0, "NotificationVoice"

    sget-object v1, Lcom/google/googlenav/ui/wizard/gJ;->b:Lcom/google/googlenav/ui/wizard/gJ;

    invoke-virtual {v1, p2}, Lcom/google/googlenav/ui/wizard/gJ;->a(Ljava/util/EnumSet;)Z

    move-result v1

    invoke-static {p1, v0, v1}, LI/m;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v0, "NotificationRingtone"

    sget-object v1, Lcom/google/googlenav/ui/wizard/gJ;->c:Lcom/google/googlenav/ui/wizard/gJ;

    invoke-virtual {v1, p2}, Lcom/google/googlenav/ui/wizard/gJ;->a(Ljava/util/EnumSet;)Z

    move-result v1

    invoke-static {p1, v0, v1}, LI/m;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Lau/v;Lbc/d;)V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->l:Z

    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/app/NavigationService;->a(Lau/v;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_a

    :goto_6
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/rideabout/app/NavigationService;->b(Lau/v;Lbc/d;)V

    return-void

    :catch_a
    move-exception v0

    goto :goto_6
.end method

.method public a(Lbc/d;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->c:Lbc/d;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->m:Z

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/NavigationService;->k()V

    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/app/NavigationService;->b(Lbc/d;)LF/A;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->e:LF/A;

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/NavigationService;->j()V

    return-void
.end method

.method a(Lcom/google/android/maps/rideabout/app/A;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/NavigationService;->f()Lcom/google/android/maps/rideabout/app/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/maps/rideabout/app/q;->a(Lcom/google/android/maps/rideabout/app/A;)V

    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->l:Z

    return v0
.end method

.method public c()V
    .registers 3

    const-string v0, "directions"

    const-string v1, ""

    invoke-static {p0, v0, v1}, LI/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->j:Z

    return v0
.end method

.method e()Ljava/util/EnumSet;
    .registers 3

    sget-object v0, Lcom/google/googlenav/ui/wizard/gJ;->c:Lcom/google/googlenav/ui/wizard/gJ;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->j:Z

    if-eqz v1, :cond_f

    sget-object v1, Lcom/google/googlenav/ui/wizard/gJ;->a:Lcom/google/googlenav/ui/wizard/gJ;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/NavigationService;->f()Lcom/google/android/maps/rideabout/app/q;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/maps/rideabout/app/q;->c()Z

    move-result v1

    if-eqz v1, :cond_1e

    sget-object v1, Lcom/google/googlenav/ui/wizard/gJ;->b:Lcom/google/googlenav/ui/wizard/gJ;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_1e
    return-object v0
.end method

.method f()Lcom/google/android/maps/rideabout/app/q;
    .registers 2

    sget-object v0, Lcom/google/android/maps/rideabout/app/NavigationService;->h:Lcom/google/android/maps/rideabout/app/q;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/google/android/maps/rideabout/app/r;->g()Lcom/google/android/maps/rideabout/app/r;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/rideabout/app/NavigationService;->h:Lcom/google/android/maps/rideabout/app/q;

    :cond_a
    sget-object v0, Lcom/google/android/maps/rideabout/app/NavigationService;->h:Lcom/google/android/maps/rideabout/app/q;

    return-object v0
.end method

.method g()V
    .registers 2

    invoke-static {}, Lcom/google/googlenav/android/a;->e()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/app/NavigationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->j:Z

    :goto_14
    return-void

    :cond_15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->j:Z

    goto :goto_14
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->k:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 5

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/google/android/maps/rideabout/app/m;->a(Landroid/app/Service;)Lcom/google/android/maps/rideabout/app/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->b:Lcom/google/android/maps/rideabout/app/m;

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->b:Lcom/google/android/maps/rideabout/app/m;

    const/16 v1, 0x3cc

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3ff

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/google/android/maps/rideabout/app/m;->a(ZZLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->b:Lcom/google/android/maps/rideabout/app/m;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/m;->b()V

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/NavigationService;->g()V

    const/4 v0, 0x0

    :try_start_21
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/NavigationService;->l()Lau/v;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_3b

    move-result-object v0

    :goto_25
    if-eqz v0, :cond_33

    new-instance v1, Lbc/e;

    invoke-direct {v1, v0}, Lbc/e;-><init>(Lau/v;)V

    invoke-virtual {v1}, Lbc/e;->a()Lbc/d;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/rideabout/app/NavigationService;->b(Lau/v;Lbc/d;)V

    :cond_33
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->n:Lcom/google/android/maps/rideabout/app/j;

    sget-object v1, Lcom/google/android/maps/rideabout/app/NavigationService;->o:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/rideabout/app/NavigationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :catch_3b
    move-exception v1

    goto :goto_25
.end method

.method public onDestroy()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/NavigationService;->k()V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->b:Lcom/google/android/maps/rideabout/app/m;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/m;->a()V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->n:Lcom/google/android/maps/rideabout/app/j;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/app/NavigationService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Lcom/google/android/maps/rideabout/app/s;->z()LaN/b;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/google/android/maps/rideabout/app/s;->z()LaN/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LaN/b;->a(Z)V

    :cond_1b
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/app/NavigationService;->a(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method
