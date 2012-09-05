.class public abstract Lcom/google/googlenav/capabilities/a;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/google/googlenav/capabilities/a;


# instance fields
.field private volatile b:Ljava/lang/Boolean;


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/capabilities/a;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public static a()Lcom/google/googlenav/capabilities/a;
    .registers 1

    sget-object v0, Lcom/google/googlenav/capabilities/a;->a:Lcom/google/googlenav/capabilities/a;

    if-nez v0, :cond_12

    invoke-static {}, Lcom/google/googlenav/android/a;->e()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "com.google.googlenav.capabilities.CapabilitiesControllerSdk11"

    :goto_c
    invoke-static {v0}, Lcom/google/googlenav/capabilities/a;->a(Ljava/lang/String;)Lcom/google/googlenav/capabilities/a;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/capabilities/a;->a:Lcom/google/googlenav/capabilities/a;

    :cond_12
    sget-object v0, Lcom/google/googlenav/capabilities/a;->a:Lcom/google/googlenav/capabilities/a;

    return-object v0

    :cond_15
    invoke-static {}, Lcom/google/googlenav/android/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "com.google.googlenav.capabilities.CapabilitiesControllerSdk7"

    goto :goto_c

    :cond_1e
    const-string v0, "com.google.googlenav.capabilities.CapabilitiesControllerSdk6"

    goto :goto_c
.end method

.method private static a(Ljava/lang/String;)Lcom/google/googlenav/capabilities/a;
    .registers 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/googlenav/capabilities/a;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/capabilities/a;
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
.method public abstract a(Landroid/content/Context;)Z
.end method

.method public b()Z
    .registers 7

    iget-object v0, p0, Lcom/google/googlenav/capabilities/a;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/googlenav/capabilities/a;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    :try_start_b
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "wifi-only"

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ro.carrier"

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/capabilities/a;->b:Ljava/lang/Boolean;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_38} :catch_3f

    :goto_38
    iget-object v0, p0, Lcom/google/googlenav/capabilities/a;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_a

    :catch_3f
    move-exception v0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/googlenav/capabilities/a;->b:Ljava/lang/Boolean;

    goto :goto_38
.end method

.method public abstract b(Landroid/content/Context;)Z
.end method

.method public c(Landroid/content/Context;)Z
    .registers 4

    invoke-virtual {p0, p1}, Lcom/google/googlenav/capabilities/a;->d(Landroid/content/Context;)I

    move-result v0

    const/high16 v1, 0x2

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected d(Landroid/content/Context;)I
    .registers 3

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    return v0
.end method
