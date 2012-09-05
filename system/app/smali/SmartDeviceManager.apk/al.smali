.class public final Lal;
.super Ljava/lang/Object;
.source "a"


# static fields
.field private static a:Let;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lal;->a:Let;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 19
    const-string v0, "base_url"

    invoke-static {v0}, Ln;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lw;
    .registers 3
    .parameter

    .prologue
    .line 35
    new-instance v0, Lai;

    sget-object v1, Lcom/locationlabs/v3client/SparkleApplication;->a:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lai;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    .prologue
    .line 23
    const-string v0, "consumer_key"

    invoke-static {v0}, Ln;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 39
    const-string v0, "phonenumber"

    invoke-static {v0}, Ln;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_1f

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOTE: Overriding phone number to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Li;->c(Ljava/lang/String;)V

    .line 44
    :goto_1e
    return-object v0

    :cond_1f
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    goto :goto_1e
.end method

.method public static c(Landroid/content/Context;)Ldd;
    .registers 3
    .parameter

    .prologue
    .line 56
    new-instance v0, Lx;

    sget-object v1, Lcom/locationlabs/v3client/SparkleApplication;->a:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lx;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    .prologue
    .line 27
    const-string v0, "consumer_secret"

    invoke-static {v0}, Ln;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .registers 1

    .prologue
    .line 31
    const-string v0, "c2dm_sender"

    invoke-static {v0}, Ln;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
