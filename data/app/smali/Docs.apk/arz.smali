.class public Larz;
.super Ljava/lang/Object;
.source "UserFeedbackReport.java"


# instance fields
.field private a:Z

.field public accounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field public board:Ljava/lang/String;

.field public brand:Ljava/lang/String;

.field public bucket:Ljava/lang/String;

.field public buildId:Ljava/lang/String;

.field public buildType:Ljava/lang/String;

.field public categoryTag:Ljava/lang/String;

.field public chosenAccount:Ljava/lang/String;

.field public codename:Ljava/lang/String;

.field public crashData:Lary;

.field public description:Ljava/lang/String;

.field public device:Ljava/lang/String;

.field public incremental:Ljava/lang/String;

.field public installedPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public installerPackageName:Ljava/lang/String;

.field public isSystemApp:Z

.field public model:Ljava/lang/String;

.field public networkName:Ljava/lang/String;

.field public networkType:I

.field public numGoogleAccounts:I

.field public packageName:Ljava/lang/String;

.field public packageVersion:I

.field public packageVersionName:Ljava/lang/String;

.field public phoneType:I

.field public processName:Ljava/lang/String;

.field public product:Ljava/lang/String;

.field public productSpecificBinaryData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Larc;",
            ">;"
        }
    .end annotation
.end field

.field public release:Ljava/lang/String;

.field public runningApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public screenshot:[B

.field public screenshotHeight:I

.field public screenshotWidth:I

.field public sdkInt:I

.field public systemLog:Ljava/lang/String;

.field public timestamp:J

.field public uiLanguage:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Larz;->installedPackages:Ljava/util/List;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Larz;->runningApplications:Ljava/util/List;

    .line 204
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Larz;->productSpecificBinaryData:Ljava/util/List;

    .line 226
    invoke-virtual {p0, v1}, Larz;->a(Z)V

    .line 227
    invoke-virtual {p0, v1}, Larz;->b(Z)V

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Larz;->crashData:Lary;

    .line 229
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 232
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Larz;->a:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 233
    monitor-exit p0

    return-void

    .line 232
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 240
    iget-boolean v0, p0, Larz;->a:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Larz;->b:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public declared-synchronized b(Z)V
    .registers 3
    .parameter

    .prologue
    .line 236
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Larz;->b:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 237
    monitor-exit p0

    return-void

    .line 236
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
