.class public Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;
.super Ljava/lang/Object;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PackageInfo"
.end annotation


# instance fields
.field private mAppInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mChanged:Z

.field private mPackageName:Ljava/lang/String;

.field private mResolveInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/LauncherModel;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/LauncherModel;)V
    .registers 3
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->mAppInfos:Ljava/util/List;

    .line 329
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->mChanged:Z

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 322
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->mPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->mResolveInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 322
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->mResolveInfos:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->mAppInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->mChanged:Z

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 322
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->mChanged:Z

    return p1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method
