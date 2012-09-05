.class public abstract Lcom/google/android/location/os/real/N;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/android/location/os/real/N;


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/google/android/location/os/real/N;
    .registers 3

    const-class v1, Lcom/google/android/location/os/real/N;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/location/os/real/N;->a:Lcom/google/android/location/os/real/N;

    if-nez v0, :cond_15

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_19

    const-string v0, "com.google.android.location.os.real.SdkSpecific11"

    invoke-static {v0}, Lcom/google/android/location/os/real/N;->a(Ljava/lang/String;)Lcom/google/android/location/os/real/N;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/os/real/N;->a:Lcom/google/android/location/os/real/N;

    :cond_15
    :goto_15
    sget-object v0, Lcom/google/android/location/os/real/N;->a:Lcom/google/android/location/os/real/N;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_26

    monitor-exit v1

    return-object v0

    :cond_19
    const/16 v2, 0x9

    if-lt v0, v2, :cond_29

    :try_start_1d
    const-string v0, "com.google.android.location.os.real.SdkSpecific9"

    invoke-static {v0}, Lcom/google/android/location/os/real/N;->a(Ljava/lang/String;)Lcom/google/android/location/os/real/N;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/os/real/N;->a:Lcom/google/android/location/os/real/N;
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_26

    goto :goto_15

    :catchall_26
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_29
    const/16 v2, 0x8

    if-lt v0, v2, :cond_36

    :try_start_2d
    const-string v0, "com.google.android.location.os.real.SdkSpecific8"

    invoke-static {v0}, Lcom/google/android/location/os/real/N;->a(Ljava/lang/String;)Lcom/google/android/location/os/real/N;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/os/real/N;->a:Lcom/google/android/location/os/real/N;

    goto :goto_15

    :cond_36
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Unsupported SDK"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3e
    .catchall {:try_start_2d .. :try_end_3e} :catchall_26
.end method

.method private static a(Ljava/lang/String;)Lcom/google/android/location/os/real/N;
    .registers 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/android/location/os/real/N;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/real/N;
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_10} :catch_11
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_10} :catch_18
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_10} :catch_1f

    return-object v0

    :catch_11
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_18
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1f
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public abstract a(Landroid/telephony/gsm/GsmCellLocation;)I
.end method

.method public abstract a(Ljava/io/File;)V
.end method

.method public abstract b()Z
.end method
