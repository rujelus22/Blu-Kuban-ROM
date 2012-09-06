.class public final Lcom/google/android/location/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Lcom/google/android/location/internal/d;


# instance fields
.field public final a:Lcom/google/android/location/internal/e;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v2, -0x1

    .line 60
    new-instance v0, Lcom/google/android/location/internal/d;

    sget-object v1, Lcom/google/android/location/internal/e;->c:Lcom/google/android/location/internal/e;

    const/4 v5, 0x0

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/internal/d;-><init>(Lcom/google/android/location/internal/e;IIILandroid/content/Intent;)V

    sput-object v0, Lcom/google/android/location/internal/d;->f:Lcom/google/android/location/internal/d;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/location/internal/e;IIILandroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/google/android/location/internal/d;->a:Lcom/google/android/location/internal/e;

    .line 66
    iput p2, p0, Lcom/google/android/location/internal/d;->b:I

    .line 67
    iput p3, p0, Lcom/google/android/location/internal/d;->c:I

    .line 68
    iput p4, p0, Lcom/google/android/location/internal/d;->d:I

    .line 69
    iput-object p5, p0, Lcom/google/android/location/internal/d;->e:Landroid/content/Intent;

    .line 70
    return-void
.end method

.method public static a(Lcom/google/android/location/internal/e;Landroid/content/Context;)Lcom/google/android/location/internal/d;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 85
    sget-object v0, Lcom/google/android/location/internal/e;->c:Lcom/google/android/location/internal/e;

    if-ne p0, v0, :cond_7

    .line 86
    sget-object v0, Lcom/google/android/location/internal/d;->f:Lcom/google/android/location/internal/d;

    .line 105
    :goto_6
    return-object v0

    .line 88
    :cond_7
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/google/android/location/internal/e;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/location/internal/e;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 92
    const/16 v2, 0x80

    :try_start_16
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_19} :catch_48

    move-result-object v0

    .line 97
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 98
    if-eqz v0, :cond_4c

    .line 99
    const-string v1, "minProtocolVersion"

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 100
    const-string v1, "maxProtocolVersion"

    const/high16 v3, -0x8000

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 101
    const-string v1, "releaseVersion"

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 102
    new-instance v5, Landroid/content/Intent;

    const-string v1, "nlpServiceIntent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    new-instance v0, Lcom/google/android/location/internal/d;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/internal/d;-><init>(Lcom/google/android/location/internal/e;IIILandroid/content/Intent;)V

    goto :goto_6

    .line 93
    :catch_48
    move-exception v0

    .line 95
    sget-object v0, Lcom/google/android/location/internal/d;->f:Lcom/google/android/location/internal/d;

    goto :goto_6

    .line 105
    :cond_4c
    sget-object v0, Lcom/google/android/location/internal/d;->f:Lcom/google/android/location/internal/d;

    goto :goto_6
.end method


# virtual methods
.method public a(I)Z
    .registers 3
    .parameter

    .prologue
    .line 74
    iget v0, p0, Lcom/google/android/location/internal/d;->b:I

    if-gt v0, p1, :cond_a

    iget v0, p0, Lcom/google/android/location/internal/d;->c:I

    if-gt p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/location/internal/d;->a:Lcom/google/android/location/internal/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minProtocolVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/internal/d;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " maxProtocolVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/internal/d;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " releaseVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/internal/d;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
