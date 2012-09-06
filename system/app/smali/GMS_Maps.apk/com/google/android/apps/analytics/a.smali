.class public Lcom/google/android/apps/analytics/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_4
    const-string v0, "com.google.ads.AdRequest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_d
    iput-boolean v0, p0, Lcom/google/android/apps/analytics/a;->a:Z
    :try_end_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_f} :catch_12

    :goto_f
    return-void

    :cond_10
    move v0, v1

    goto :goto_d

    :catch_12
    move-exception v0

    iput-boolean v1, p0, Lcom/google/android/apps/analytics/a;->a:Z

    goto :goto_f
.end method


# virtual methods
.method a()I
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/apps/analytics/a;->a:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    invoke-static {}, Lcom/google/android/apps/analytics/b;->a()Lcom/google/android/apps/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/b;->b()I

    move-result v0

    goto :goto_5
.end method
