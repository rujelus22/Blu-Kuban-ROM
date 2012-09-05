.class public abstract Lcom/google/googlenav/android/X;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/googlenav/android/X;


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/googlenav/android/X;
    .registers 1

    sget-object v0, Lcom/google/googlenav/android/X;->a:Lcom/google/googlenav/android/X;

    if-nez v0, :cond_12

    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "com.google.googlenav.android.MonkeyManagerSdk8"

    :goto_c
    invoke-static {v0}, Lcom/google/googlenav/android/X;->a(Ljava/lang/String;)Lcom/google/googlenav/android/X;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/android/X;->a:Lcom/google/googlenav/android/X;

    :cond_12
    sget-object v0, Lcom/google/googlenav/android/X;->a:Lcom/google/googlenav/android/X;

    return-object v0

    :cond_15
    const-string v0, "com.google.googlenav.android.MonkeyManagerSdk7"

    goto :goto_c
.end method

.method private static a(Ljava/lang/String;)Lcom/google/googlenav/android/X;
    .registers 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/googlenav/android/X;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/android/X;
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
.method public abstract b()Z
.end method
