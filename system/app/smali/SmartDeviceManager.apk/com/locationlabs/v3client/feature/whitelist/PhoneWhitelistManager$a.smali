.class final Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager$a;
.super Ljava/lang/Thread;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = "a"
.end annotation


# instance fields
.field private a:Z


# direct methods
.method synthetic constructor <init>()V
    .registers 2

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager$a;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .registers 3
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager$a;->a:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager$a;->a:Z

    .line 47
    :cond_3
    :goto_3
    iget-boolean v0, p0, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager$a;->a:Z

    if-eqz v0, :cond_39

    .line 49
    const/16 v0, 0x3e8

    .line 50
    invoke-static {}, Ld;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/locationlabs/v3client/util/HandsFree;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 52
    invoke-static {}, Ld;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;->a(Landroid/content/Context;)V

    .line 53
    invoke-static {}, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x3e8

    .line 58
    :cond_20
    :goto_20
    iget-boolean v1, p0, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager$a;->a:Z

    if-eqz v1, :cond_3

    .line 60
    int-to-long v0, v0

    :try_start_25
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_3

    .line 62
    :catch_29
    move-exception v0

    goto :goto_3

    .line 54
    :cond_2b
    invoke-static {}, Ld;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/locationlabs/v3client/util/HandsFree;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 56
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager$a;->a:Z

    goto :goto_20

    .line 65
    :cond_39
    invoke-static {}, Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager;->c()Lcom/locationlabs/v3client/feature/whitelist/PhoneWhitelistManager$a;

    .line 66
    return-void
.end method
