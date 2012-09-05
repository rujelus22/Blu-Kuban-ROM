.class public Lcom/locationlabs/v3client/SparkleApplication;
.super Ld;
.source "a"


# static fields
.field public static a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ld;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 6

    .prologue
    .line 31
    const-string v0, "com.locationlabs.v3client"

    invoke-virtual {p0}, Lcom/locationlabs/v3client/SparkleApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    .line 32
    const-string v0, "V3ClientALT"

    sput-object v0, Lcom/locationlabs/v3client/SparkleApplication;->a:Ljava/lang/String;

    .line 37
    :goto_10
    sget-object v0, Lcom/locationlabs/v3client/SparkleApplication;->a:Ljava/lang/String;

    invoke-static {v0}, Li;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    invoke-super {p0}, Ld;->onCreate()V

    .line 42
    new-instance v0, Lak;

    invoke-direct {v0}, Lak;-><init>()V

    invoke-static {v0}, Ld;->a(Lb;)V

    .line 44
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    .line 46
    invoke-interface {v0}, Lw;->D()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/locationlabs/v3client/SparkleApplication;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8a

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    const-string v1, "Upgrade/downgrade, resetting data."

    invoke-static {v1}, Li;->c(Ljava/lang/String;)V

    :cond_3f
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_84

    invoke-static {v1}, Lo;->a(Ljava/io/File;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_69

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/shared_prefs"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lo;->a(Ljava/io/File;)Z

    :cond_84
    invoke-static {p0}, La;->a(Landroid/content/Context;)V

    invoke-interface {v0, v2}, Lw;->e(Ljava/lang/String;)V

    .line 48
    :cond_8a
    invoke-interface {v0}, Lw;->c()Lcz;

    move-result-object v0

    if-eqz v0, :cond_95

    iget-object v0, v0, Lcz;->b:Ljava/util/Map;

    invoke-static {v0}, Ln;->a(Ljava/util/Map;)V

    .line 49
    :cond_95
    return-void

    .line 35
    :cond_96
    const-string v0, "V3Client"

    sput-object v0, Lcom/locationlabs/v3client/SparkleApplication;->a:Ljava/lang/String;

    goto/16 :goto_10
.end method
