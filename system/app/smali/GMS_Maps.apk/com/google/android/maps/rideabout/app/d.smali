.class Lcom/google/android/maps/rideabout/app/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/rideabout/app/y;


# static fields
.field private static final a:Lcom/google/android/maps/rideabout/app/x;


# instance fields
.field private volatile b:Lcom/google/android/maps/rideabout/app/x;

.field private c:Ljava/lang/String;

.field private d:J

.field private final e:Landroid/media/Ringtone;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    new-instance v0, Lcom/google/android/maps/rideabout/app/f;

    invoke-direct {v0}, Lcom/google/android/maps/rideabout/app/f;-><init>()V

    sput-object v0, Lcom/google/android/maps/rideabout/app/d;->a:Lcom/google/android/maps/rideabout/app/x;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Lcom/google/android/maps/rideabout/app/d;->a:Lcom/google/android/maps/rideabout/app/x;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/d;->b:Lcom/google/android/maps/rideabout/app/x;

    .line 45
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/d;->e:Landroid/media/Ringtone;

    .line 46
    return-void
.end method

.method private a(Ljava/lang/String;J)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/d;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-wide v0, p0, Lcom/google/android/maps/rideabout/app/d;->d:J

    sub-long v0, p2, v0

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method


# virtual methods
.method a()V
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/d;->b:Lcom/google/android/maps/rideabout/app/x;

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/app/x;->a()V

    .line 75
    return-void
.end method

.method public a(Lcom/google/android/maps/rideabout/app/x;)V
    .registers 2
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/android/maps/rideabout/app/d;->b:Lcom/google/android/maps/rideabout/app/x;

    .line 80
    return-void
.end method

.method a(Ljava/lang/String;Ljava/util/EnumSet;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 56
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/maps/rideabout/app/d;->a(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 67
    :cond_a
    :goto_a
    return-void

    .line 59
    :cond_b
    sget-object v2, Lcom/google/googlenav/ui/wizard/iv;->b:Lcom/google/googlenav/ui/wizard/iv;

    invoke-virtual {v2, p2}, Lcom/google/googlenav/ui/wizard/iv;->a(Ljava/util/EnumSet;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static {p1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 60
    iget-object v2, p0, Lcom/google/android/maps/rideabout/app/d;->b:Lcom/google/android/maps/rideabout/app/x;

    invoke-interface {v2, p1}, Lcom/google/android/maps/rideabout/app/x;->a(Ljava/lang/String;)V

    .line 61
    iput-object p1, p0, Lcom/google/android/maps/rideabout/app/d;->c:Ljava/lang/String;

    .line 62
    iput-wide v0, p0, Lcom/google/android/maps/rideabout/app/d;->d:J

    .line 64
    :cond_22
    sget-object v0, Lcom/google/googlenav/ui/wizard/iv;->c:Lcom/google/googlenav/ui/wizard/iv;

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/wizard/iv;->a(Ljava/util/EnumSet;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 65
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/d;->e:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    goto :goto_a
.end method
