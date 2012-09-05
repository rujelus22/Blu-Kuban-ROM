.class Lcom/google/android/location/internal/server/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Ljava/util/HashMap;

.field private final c:Ljava/util/HashSet;

.field private d:I


# direct methods
.method constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/location/internal/server/a;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/location/internal/server/a;->c:Ljava/util/HashSet;

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/location/internal/server/a;->d:I

    iput p1, p0, Lcom/google/android/location/internal/server/a;->a:I

    return-void
.end method

.method private b()Landroid/content/Intent;
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.location.internal.EXTRA_RELEASE_VERSION"

    iget v2, p0, Lcom/google/android/location/internal/server/a;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method private c()V
    .registers 4

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/location/internal/server/a;->d:I

    iget-object v0, p0, Lcom/google/android/location/internal/server/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/internal/server/c;

    iget v2, p0, Lcom/google/android/location/internal/server/a;->d:I

    iget v0, v0, Lcom/google/android/location/internal/server/c;->b:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/location/internal/server/a;->d:I

    goto :goto_f

    :cond_2c
    iget-object v0, p0, Lcom/google/android/location/internal/server/a;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/internal/server/b;

    iget v2, p0, Lcom/google/android/location/internal/server/a;->d:I

    iget v0, v0, Lcom/google/android/location/internal/server/b;->b:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/location/internal/server/a;->d:I

    goto :goto_32

    :cond_49
    return-void
.end method


# virtual methods
.method a()I
    .registers 2

    iget v0, p0, Lcom/google/android/location/internal/server/a;->d:I

    return v0
.end method

.method a(Landroid/content/Context;Landroid/app/PendingIntent;ILandroid/location/Location;)V
    .registers 9

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NLP PendingIntent client in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    new-instance v1, Lcom/google/android/location/internal/server/b;

    invoke-direct {v1, p2, p3, v0}, Lcom/google/android/location/internal/server/b;-><init>(Landroid/app/PendingIntent;ILandroid/os/PowerManager$WakeLock;)V

    iget-object v0, p0, Lcom/google/android/location/internal/server/a;->c:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_3c

    invoke-direct {p0}, Lcom/google/android/location/internal/server/a;->b()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "location"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/location/internal/server/b;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_3c
    invoke-direct {p0}, Lcom/google/android/location/internal/server/a;->c()V

    return-void
.end method

.method a(Landroid/content/Context;Landroid/location/Location;)V
    .registers 8

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/location/internal/server/a;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/internal/server/c;

    :try_start_1f
    iget-object v0, v0, Lcom/google/android/location/internal/server/c;->a:Lcom/google/android/location/internal/a;

    invoke-interface {v0, p2}, Lcom/google/android/location/internal/a;->a(Landroid/location/Location;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_27

    move v0, v1

    :goto_25
    move v1, v0

    goto :goto_d

    :catch_27
    move-exception v0

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    move v0, v2

    goto :goto_25

    :cond_2d
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/location/internal/server/a;->c:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v1

    :goto_35
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    if-nez v0, :cond_46

    invoke-direct {p0}, Lcom/google/android/location/internal/server/a;->b()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_46
    move-object v1, v0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/internal/server/b;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/location/internal/server/b;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_60

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    move v0, v2

    :goto_57
    move v3, v0

    move-object v0, v1

    goto :goto_35

    :cond_5a
    if-eqz v3, :cond_5f

    invoke-direct {p0}, Lcom/google/android/location/internal/server/a;->c()V

    :cond_5f
    return-void

    :cond_60
    move v0, v3

    goto :goto_57
.end method

.method a(Landroid/content/Context;Z)V
    .registers 8

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/location/internal/server/a;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/internal/server/c;

    if-eqz p2, :cond_29

    :try_start_21
    iget-object v0, v0, Lcom/google/android/location/internal/server/c;->a:Lcom/google/android/location/internal/a;

    invoke-interface {v0}, Lcom/google/android/location/internal/a;->a()V

    :goto_26
    move v0, v1

    :goto_27
    move v1, v0

    goto :goto_d

    :cond_29
    iget-object v0, v0, Lcom/google/android/location/internal/server/c;->a:Lcom/google/android/location/internal/a;

    invoke-interface {v0}, Lcom/google/android/location/internal/a;->b()V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2e} :catch_2f

    goto :goto_26

    :catch_2f
    move-exception v0

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    move v0, v2

    goto :goto_27

    :cond_35
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/location/internal/server/a;->c:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v1

    :goto_3d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_62

    if-nez v0, :cond_4e

    invoke-direct {p0}, Lcom/google/android/location/internal/server/a;->b()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "providerEnabled"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_4e
    move-object v1, v0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/internal/server/b;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/location/internal/server/b;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_68

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    move v0, v2

    :goto_5f
    move v3, v0

    move-object v0, v1

    goto :goto_3d

    :cond_62
    if-eqz v3, :cond_67

    invoke-direct {p0}, Lcom/google/android/location/internal/server/a;->c()V

    :cond_67
    return-void

    :cond_68
    move v0, v3

    goto :goto_5f
.end method

.method a(Lcom/google/android/location/internal/a;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/location/internal/server/a;->b:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/google/android/location/internal/a;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/location/internal/server/a;->c()V

    return-void
.end method

.method a(Lcom/google/android/location/internal/a;I)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/location/internal/server/a;->b:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/google/android/location/internal/a;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/google/android/location/internal/server/c;

    invoke-direct {v2, p1, p2}, Lcom/google/android/location/internal/server/c;-><init>(Lcom/google/android/location/internal/a;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/location/internal/server/a;->c()V

    return-void
.end method
