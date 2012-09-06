.class Lby;
.super Ljava/lang/Object;

# interfaces
.implements LbR;


# instance fields
.field private a:J

.field private final a:Landroid/content/pm/PackageManager;

.field private final a:Ljava/lang/String;

.field private a:Z

.field private final b:J


# direct methods
.method constructor <init>(Landroid/content/pm/PackageManager;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lby;->a:Landroid/content/pm/PackageManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lby;->a:Z

    const-string v0, "com.google.analytics.optout"

    iput-object v0, p0, Lby;->a:Ljava/lang/String;

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lby;->b:J

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 8

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lby;->a:J

    iget-wide v4, p0, Lby;->b:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_1b

    :try_start_e
    iget-object v2, p0, Lby;->a:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lby;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lby;->a:Z
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_19} :catch_1e

    :goto_19
    iput-wide v0, p0, Lby;->a:J

    :cond_1b
    iget-boolean v0, p0, Lby;->a:Z

    return v0

    :catch_1e
    move-exception v2

    iput-boolean v6, p0, Lby;->a:Z

    goto :goto_19
.end method
