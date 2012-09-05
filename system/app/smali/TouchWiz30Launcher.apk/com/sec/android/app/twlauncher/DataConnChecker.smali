.class public Lcom/sec/android/app/twlauncher/DataConnChecker;
.super Ljava/lang/Object;
.source "DataConnChecker.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DataConnChecker;->mContext:Landroid/content/Context;

    .line 12
    return-void
.end method


# virtual methods
.method public checkDataConnectionApp(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 15
    const/4 v0, 0x0

    .line 16
    .local v0, bRetVal:Z
    return v0
.end method
