.class public Lcom/google/android/maps/rideabout/app/NavigationService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static h:Lcom/google/android/maps/rideabout/app/o;

.field private static final o:Landroid/content/IntentFilter;


# instance fields
.field private b:Lcom/google/android/maps/rideabout/app/k;

.field private c:LaP/d;

.field private d:LC/q;

.field private e:LC/x;

.field private f:Lcom/google/android/maps/rideabout/view/c;

.field private g:LD/m;

.field private i:Ljava/util/EnumSet;

.field private j:Z

.field private final k:Landroid/os/IBinder;

.field private l:Z

.field private m:Z

.field private final n:Lcom/google/android/maps/rideabout/app/h;

.field private final p:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 70
    const-class v0, Lcom/google/android/maps/rideabout/app/NavigationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/rideabout/app/NavigationService;->a:Ljava/lang/String;

    .line 128
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.google.android.maps.driveabout.app.STARTING_NAVIGATION_INTENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/maps/rideabout/app/NavigationService;->o:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 107
    new-instance v0, Lcom/google/android/maps/rideabout/app/i;

    invoke-direct {v0, p0}, Lcom/google/android/maps/rideabout/app/i;-><init>(Lcom/google/android/maps/rideabout/app/NavigationService;)V

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->k:Landroid/os/IBinder;

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->m:Z

    .line 126
    new-instance v0, Lcom/google/android/maps/rideabout/app/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/rideabout/app/h;-><init>(Lcom/google/android/maps/rideabout/app/NavigationService;Lcom/google/android/maps/rideabout/app/g;)V

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->n:Lcom/google/android/maps/rideabout/app/h;

    .line 132
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.googlenav.STOP_TRANSIT_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->p:Landroid/content/Intent;

    .line 135
    return-void
.end method

.method private a(LH/e;DLaP/d;)LC/x;
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 334
    new-instance v6, LD/l;

    invoke-direct {v6, p1}, LD/l;-><init>(LH/e;)V

    .line 335
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 337
    invoke-virtual {v6}, LD/l;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 338
    invoke-virtual {v6}, LD/l;->b()LD/g;

    move-result-object v0

    iget-wide v2, v0, LD/g;->c:J

    .line 342
    :cond_15
    new-instance v0, LF/a;

    new-instance v1, LR/a;

    invoke-direct {v1}, LR/a;-><init>()V

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, LF/a;-><init>(Lcom/google/googlenav/common/a;JD)V

    .line 344
    new-instance v1, LF/b;

    invoke-direct {v1, v0}, LF/b;-><init>(LF/a;)V

    .line 345
    new-instance v2, LC/Q;

    invoke-direct {v2, p0, v6, v0}, LC/Q;-><init>(Landroid/content/Context;LD/l;LF/a;)V

    .line 347
    new-instance v3, LC/q;

    invoke-direct {v3, v2}, LC/q;-><init>(LC/u;)V

    iput-object v3, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->d:LC/q;

    .line 348
    new-instance v2, LC/C;

    iget-object v3, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->d:LC/q;

    invoke-direct {v2, p4, v3, v0, v1}, LC/C;-><init>(LaP/d;LC/q;Lcom/google/googlenav/common/a;LF/i;)V

    return-object v2
.end method

.method static synthetic a(Lcom/google/android/maps/rideabout/app/NavigationService;)Landroid/content/Intent;
    .registers 2
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->p:Landroid/content/Intent;

    return-object v0
.end method

.method private a(Lad/w;)V
    .registers 4
    .parameter

    .prologue
    .line 437
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 438
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 439
    invoke-virtual {p1, v1}, Lad/w;->b(Ljava/io/DataOutput;)V

    .line 440
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 441
    const-string v1, "directions"

    invoke-static {v0}, Lcom/google/googlenav/common/util/c;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, LF/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 172
    if-nez p1, :cond_3

    .line 189
    :cond_2
    :goto_2
    return-void

    .line 182
    :cond_3
    const-string v0, "com.google.android.maps.rideabout.START_SIMULATION"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    const-string v0, "event_log"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 184
    const-string v0, "event_log"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/rideabout/app/NavigationService;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 185
    :cond_21
    const-string v0, "mock_playback"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/NavigationService;->h()V

    goto :goto_2
.end method

.method private a(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 197
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/NavigationService;->i()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 199
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

    .line 215
    :cond_2d
    :goto_2d
    return-void

    .line 203
    :cond_2e
    invoke-static {p1}, LD/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_61

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Specified log file \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, LD/k;->a:Ljava/lang/String;

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

    .line 213
    :cond_61
    invoke-static {p1}, LD/a;->a(Ljava/lang/String;)LH/e;

    move-result-object v0

    const-wide/high16 v1, 0x3ff0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/maps/rideabout/app/NavigationService;->a(LH/e;D)V

    goto :goto_2d
.end method

.method private b(LaP/d;)LC/x;
    .registers 4
    .parameter

    .prologue
    .line 358
    new-instance v0, LC/P;

    invoke-direct {v0}, LC/P;-><init>()V

    .line 359
    new-instance v1, LC/q;

    invoke-direct {v1, v0}, LC/q;-><init>(LC/u;)V

    iput-object v1, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->d:LC/q;

    .line 360
    new-instance v0, LC/I;

    sget-object v1, LC/L;->b:LC/L;

    invoke-direct {v0, p1, v1, p0}, LC/I;-><init>(LaP/d;LC/L;Landroid/content/Context;)V

    .line 362
    invoke-virtual {v0}, LC/I;->b()V

    .line 363
    return-object v0
.end method

.method private b(Lad/w;LaP/d;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/NavigationService;->k()V

    .line 269
    iput-object p2, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->c:LaP/d;

    .line 270
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/rideabout/app/NavigationService;->c(Lad/w;LaP/d;)LC/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->e:LC/x;

    .line 271
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/NavigationService;->j()V

    .line 272
    invoke-static {}, Lcom/google/android/maps/rideabout/app/q;->z()Lay/a;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 273
    invoke-static {}, Lcom/google/android/maps/rideabout/app/q;->z()Lay/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lay/a;->a(Z)V

    .line 275
    :cond_1c
    return-void
.end method

.method private c(Lad/w;LaP/d;)LC/x;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 313
    new-instance v0, LR/a;

    invoke-direct {v0}, LR/a;-><init>()V

    .line 318
    new-instance v1, LC/v;

    invoke-direct {v1, p0, v0}, LC/v;-><init>(Landroid/content/Context;Lcom/google/googlenav/common/a;)V

    .line 320
    new-instance v2, LC/q;

    invoke-direct {v2, v1}, LC/q;-><init>(LC/u;)V

    iput-object v2, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->d:LC/q;

    .line 321
    new-instance v1, LC/C;

    iget-object v2, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->d:LC/q;

    new-instance v3, LF/h;

    invoke-direct {v3}, LF/h;-><init>()V

    invoke-direct {v1, p2, v2, v0, v3}, LC/C;-><init>(LaP/d;LC/q;Lcom/google/googlenav/common/a;LF/i;)V

    return-object v1
.end method

.method private h()V
    .registers 2

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/NavigationService;->i()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 222
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->c:LaP/d;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/app/NavigationService;->a(LaP/d;)V

    .line 224
    :cond_b
    return-void
.end method

.method private i()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 237
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/NavigationService;->b()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->c:LaP/d;

    if-nez v1, :cond_18

    .line 238
    :cond_b
    const-string v1, "Transit navigation should be running before performing simulation"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 240
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/NavigationService;->stopSelf()V

    .line 241
    const/4 v0, 0x0

    .line 243
    :cond_18
    return v0
.end method

.method private j()V
    .registers 4

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->c:LaP/d;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->e:LC/x;

    iget-object v2, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->b:Lcom/google/android/maps/rideabout/app/k;

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/rideabout/view/c;->a(LaP/d;LC/x;Lcom/google/android/maps/rideabout/app/j;)Lcom/google/android/maps/rideabout/view/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->f:Lcom/google/android/maps/rideabout/view/c;

    .line 283
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->d:LC/q;

    invoke-virtual {v0}, LC/q;->a()V

    .line 284
    return-void
.end method

.method private k()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 394
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->e:LC/x;

    if-eqz v0, :cond_c

    .line 395
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->e:LC/x;

    invoke-interface {v0}, LC/x;->a()V

    .line 396
    iput-object v1, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->e:LC/x;

    .line 398
    :cond_c
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->f:Lcom/google/android/maps/rideabout/view/c;

    if-eqz v0, :cond_17

    .line 399
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->f:Lcom/google/android/maps/rideabout/view/c;

    invoke-static {v0}, Lcom/google/android/maps/rideabout/view/c;->a(Lcom/google/android/maps/rideabout/view/c;)V

    .line 400
    iput-object v1, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->f:Lcom/google/android/maps/rideabout/view/c;

    .line 402
    :cond_17
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->d:LC/q;

    if-eqz v0, :cond_22

    .line 403
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->d:LC/q;

    invoke-virtual {v0}, LC/q;->b()V

    .line 404
    iput-object v1, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->d:LC/q;

    .line 406
    :cond_22
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->g:LD/m;

    if-eqz v0, :cond_31

    .line 407
    iget-boolean v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->m:Z

    if-eqz v0, :cond_2f

    .line 408
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->g:LD/m;

    invoke-virtual {v0}, LD/m;->b()V

    .line 410
    :cond_2f
    iput-object v1, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->g:LD/m;

    .line 412
    :cond_31
    return-void
.end method

.method private l()Lad/w;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 445
    const-string v1, "directions"

    const-string v2, ""

    invoke-static {p0, v1, v2}, LF/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 446
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 451
    :goto_f
    return-object v0

    .line 449
    :cond_10
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-static {v1}, Lcom/google/googlenav/common/util/c;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 451
    invoke-static {v2, v0}, Lad/w;->a(Ljava/io/DataInput;Lcom/google/googlenav/ui/p;)Lad/b;

    move-result-object v0

    check-cast v0, Lad/w;

    goto :goto_f
.end method


# virtual methods
.method public a()Lcom/google/android/maps/rideabout/view/c;
    .registers 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->f:Lcom/google/android/maps/rideabout/view/c;

    return-object v0
.end method

.method a(Landroid/content/Context;)Ljava/util/EnumSet;
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 496
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->i:Ljava/util/EnumSet;

    if-nez v0, :cond_3c

    .line 497
    const-class v0, Lcom/google/googlenav/ui/wizard/iv;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 498
    const-string v1, "NotificationVibration"

    invoke-static {p1, v1, v2}, LF/m;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 499
    sget-object v1, Lcom/google/googlenav/ui/wizard/iv;->a:Lcom/google/googlenav/ui/wizard/iv;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 501
    :cond_18
    const-string v1, "NotificationVoice"

    invoke-static {p1, v1}, LF/m;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    const-string v1, "NotificationVoice"

    invoke-static {p1, v1, v2}, LF/m;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 503
    :cond_28
    sget-object v1, Lcom/google/googlenav/ui/wizard/iv;->b:Lcom/google/googlenav/ui/wizard/iv;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 505
    :cond_2d
    const-string v1, "NotificationRingtone"

    invoke-static {p1, v1, v2}, LF/m;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 506
    sget-object v1, Lcom/google/googlenav/ui/wizard/iv;->c:Lcom/google/googlenav/ui/wizard/iv;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 508
    :cond_3a
    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->i:Ljava/util/EnumSet;

    .line 510
    :cond_3c
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->i:Ljava/util/EnumSet;

    return-object v0
.end method

.method public a(LH/e;D)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->m:Z

    .line 292
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/NavigationService;->k()V

    .line 293
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->c:LaP/d;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/maps/rideabout/app/NavigationService;->a(LH/e;DLaP/d;)LC/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->e:LC/x;

    .line 294
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/NavigationService;->j()V

    .line 295
    return-void
.end method

.method public a(LaP/d;)V
    .registers 3
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->c:LaP/d;

    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->m:Z

    .line 303
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/NavigationService;->k()V

    .line 304
    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/app/NavigationService;->b(LaP/d;)LC/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->e:LC/x;

    .line 305
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/NavigationService;->j()V

    .line 306
    return-void
.end method

.method public a(Lad/w;LaP/d;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->l:Z

    .line 259
    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/app/NavigationService;->a(Lad/w;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_a

    .line 263
    :goto_6
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/rideabout/app/NavigationService;->b(Lad/w;LaP/d;)V

    .line 264
    return-void

    .line 260
    :catch_a
    move-exception v0

    goto :goto_6
.end method

.method a(Landroid/content/Context;Ljava/util/EnumSet;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 514
    iput-object p2, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->i:Ljava/util/EnumSet;

    .line 515
    const-string v0, "NotificationVibration"

    sget-object v1, Lcom/google/googlenav/ui/wizard/iv;->a:Lcom/google/googlenav/ui/wizard/iv;

    invoke-virtual {v1, p2}, Lcom/google/googlenav/ui/wizard/iv;->a(Ljava/util/EnumSet;)Z

    move-result v1

    invoke-static {p1, v0, v1}, LF/m;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 516
    const-string v0, "NotificationVoice"

    sget-object v1, Lcom/google/googlenav/ui/wizard/iv;->b:Lcom/google/googlenav/ui/wizard/iv;

    invoke-virtual {v1, p2}, Lcom/google/googlenav/ui/wizard/iv;->a(Ljava/util/EnumSet;)Z

    move-result v1

    invoke-static {p1, v0, v1}, LF/m;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 517
    const-string v0, "NotificationRingtone"

    sget-object v1, Lcom/google/googlenav/ui/wizard/iv;->c:Lcom/google/googlenav/ui/wizard/iv;

    invoke-virtual {v1, p2}, Lcom/google/googlenav/ui/wizard/iv;->a(Ljava/util/EnumSet;)Z

    move-result v1

    invoke-static {p1, v0, v1}, LF/m;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 518
    return-void
.end method

.method a(Lcom/google/android/maps/rideabout/app/y;)V
    .registers 3
    .parameter

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/NavigationService;->f()Lcom/google/android/maps/rideabout/app/o;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/maps/rideabout/app/o;->a(Lcom/google/android/maps/rideabout/app/y;)V

    .line 475
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 433
    iget-boolean v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->l:Z

    return v0
.end method

.method public c()V
    .registers 3

    .prologue
    .line 459
    const-string v0, "directions"

    const-string v1, ""

    invoke-static {p0, v0, v1}, LF/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    return-void
.end method

.method d()Z
    .registers 2

    .prologue
    .line 470
    iget-boolean v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->j:Z

    return v0
.end method

.method e()Ljava/util/EnumSet;
    .registers 3

    .prologue
    .line 478
    sget-object v0, Lcom/google/googlenav/ui/wizard/iv;->c:Lcom/google/googlenav/ui/wizard/iv;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 479
    iget-boolean v1, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->j:Z

    if-eqz v1, :cond_f

    .line 480
    sget-object v1, Lcom/google/googlenav/ui/wizard/iv;->a:Lcom/google/googlenav/ui/wizard/iv;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 482
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/NavigationService;->f()Lcom/google/android/maps/rideabout/app/o;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/maps/rideabout/app/o;->c()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 483
    sget-object v1, Lcom/google/googlenav/ui/wizard/iv;->b:Lcom/google/googlenav/ui/wizard/iv;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 485
    :cond_1e
    return-object v0
.end method

.method f()Lcom/google/android/maps/rideabout/app/o;
    .registers 2

    .prologue
    .line 489
    sget-object v0, Lcom/google/android/maps/rideabout/app/NavigationService;->h:Lcom/google/android/maps/rideabout/app/o;

    if-nez v0, :cond_a

    .line 490
    invoke-static {}, Lcom/google/android/maps/rideabout/app/p;->g()Lcom/google/android/maps/rideabout/app/p;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/rideabout/app/NavigationService;->h:Lcom/google/android/maps/rideabout/app/o;

    .line 492
    :cond_a
    sget-object v0, Lcom/google/android/maps/rideabout/app/NavigationService;->h:Lcom/google/android/maps/rideabout/app/o;

    return-object v0
.end method

.method g()V
    .registers 2

    .prologue
    .line 521
    invoke-static {}, Lcom/google/googlenav/android/a;->b()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 522
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/app/NavigationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 523
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->j:Z

    .line 527
    :goto_14
    return-void

    .line 525
    :cond_15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->j:Z

    goto :goto_14
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter

    .prologue
    .line 429
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->k:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 144
    invoke-static {p0}, Lcom/google/android/maps/rideabout/app/k;->a(Landroid/app/Service;)Lcom/google/android/maps/rideabout/app/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->b:Lcom/google/android/maps/rideabout/app/k;

    .line 145
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->b:Lcom/google/android/maps/rideabout/app/k;

    const/16 v1, 0x4ab

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4eb

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/google/android/maps/rideabout/app/k;->a(ZZLjava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->b:Lcom/google/android/maps/rideabout/app/k;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/k;->b()V

    .line 148
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/NavigationService;->g()V

    .line 149
    const/4 v0, 0x0

    .line 151
    :try_start_21
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/NavigationService;->l()Lad/w;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_3b

    move-result-object v0

    .line 155
    :goto_25
    if-eqz v0, :cond_33

    .line 156
    new-instance v1, LaP/e;

    invoke-direct {v1, v0}, LaP/e;-><init>(Lad/w;)V

    invoke-virtual {v1}, LaP/e;->a()LaP/d;

    move-result-object v1

    .line 157
    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/rideabout/app/NavigationService;->b(Lad/w;LaP/d;)V

    .line 159
    :cond_33
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->n:Lcom/google/android/maps/rideabout/app/h;

    sget-object v1, Lcom/google/android/maps/rideabout/app/NavigationService;->o:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/rideabout/app/NavigationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    return-void

    .line 152
    :catch_3b
    move-exception v1

    goto :goto_25
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 416
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/NavigationService;->k()V

    .line 420
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->b:Lcom/google/android/maps/rideabout/app/k;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/k;->a()V

    .line 421
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->n:Lcom/google/android/maps/rideabout/app/h;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/app/NavigationService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 422
    invoke-static {}, Lcom/google/android/maps/rideabout/app/q;->z()Lay/a;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 423
    invoke-static {}, Lcom/google/android/maps/rideabout/app/q;->z()Lay/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lay/a;->a(Z)V

    .line 425
    :cond_1b
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/app/NavigationService;->a(Landroid/content/Intent;)V

    .line 168
    const/4 v0, 0x1

    return v0
.end method
