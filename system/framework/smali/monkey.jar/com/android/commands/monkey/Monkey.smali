.class public Lcom/android/commands/monkey/Monkey;
.super Ljava/lang/Object;
.source "Monkey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/monkey/Monkey$1;,
        Lcom/android/commands/monkey/Monkey$ActivityController;
    }
.end annotation


# static fields
.field private static final DEBUG_ALLOW_ANY_RESTARTS:I

.field private static final DEBUG_ALLOW_ANY_STARTS:I

.field private static final TOMBSTONES_PATH:Ljava/io/File;

.field public static currentIntent:Landroid/content/Intent;

.field public static currentPackage:Ljava/lang/String;


# instance fields
.field private mAbort:Z

.field private mAm:Landroid/app/IActivityManager;

.field private mArgs:[Ljava/lang/String;

.field private mBugreportFrequency:J

.field mCount:I

.field private mCountEvents:Z

.field private mCurArgData:Ljava/lang/String;

.field mDeviceSleepTime:J

.field mDroppedFlipEvents:J

.field mDroppedKeyEvents:J

.field mDroppedPointerEvents:J

.field mDroppedTrackballEvents:J

.field mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

.field mFactors:[F

.field private mGenerateHprof:Z

.field private mGetPeriodicBugreport:Z

.field private mIgnoreCrashes:Z

.field private mIgnoreNativeCrashes:Z

.field private mIgnoreSecurityExceptions:Z

.field private mIgnoreTimeouts:Z

.field private mInvalidPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKillProcessAfterError:Z

.field private mMainApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mMainCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMonitorNativeCrashes:Z

.field private mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

.field private mNextArg:I

.field private mPkgBlacklistFile:Ljava/lang/String;

.field private mPkgWhitelistFile:Ljava/lang/String;

.field private mPm:Landroid/content/pm/IPackageManager;

.field mProfileWaitTime:J

.field mRandom:Ljava/util/Random;

.field mRandomizeScript:Z

.field mRandomizeThrottle:Z

.field private mReportProcessName:Ljava/lang/String;

.field private mRequestAnrBugreport:Z

.field private mRequestAnrTraces:Z

.field private mRequestAppCrashBugreport:Z

.field private mRequestBugreport:Z

.field private mRequestDumpsysMemInfo:Z

.field private mRequestPeriodicBugreport:Z

.field private mRequestProcRank:Z

.field private mScriptFileNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mScriptLog:Z

.field mSeed:J

.field private mSendNoEvents:Z

.field private mServerPort:I

.field private mSetupFileName:Ljava/lang/String;

.field mThrottle:J

.field private mTombstones:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mValidPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVerbose:I

.field private mWm:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 228
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/tombstones"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/commands/monkey/Monkey;->TOMBSTONES_PATH:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mCountEvents:Z

    .line 119
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    .line 125
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    .line 131
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z

    .line 137
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z

    .line 140
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mGetPeriodicBugreport:Z

    .line 145
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestPeriodicBugreport:Z

    .line 148
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/android/commands/monkey/Monkey;->mBugreportFrequency:J

    .line 156
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestProcRank:Z

    .line 171
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    .line 174
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mInvalidPackages:Ljava/util/HashSet;

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mMainApps:Ljava/util/ArrayList;

    .line 183
    iput-wide v3, p0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    .line 186
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    .line 189
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/commands/monkey/Monkey;->mCount:I

    .line 192
    iput-wide v3, p0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    .line 195
    iput-object v5, p0, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    .line 198
    iput-wide v3, p0, Lcom/android/commands/monkey/Monkey;->mDroppedKeyEvents:J

    .line 200
    iput-wide v3, p0, Lcom/android/commands/monkey/Monkey;->mDroppedPointerEvents:J

    .line 202
    iput-wide v3, p0, Lcom/android/commands/monkey/Monkey;->mDroppedTrackballEvents:J

    .line 204
    iput-wide v3, p0, Lcom/android/commands/monkey/Monkey;->mDroppedFlipEvents:J

    .line 207
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/commands/monkey/Monkey;->mProfileWaitTime:J

    .line 210
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/android/commands/monkey/Monkey;->mDeviceSleepTime:J

    .line 212
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRandomizeScript:Z

    .line 214
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mScriptLog:Z

    .line 217
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z

    .line 220
    iput-object v5, p0, Lcom/android/commands/monkey/Monkey;->mSetupFileName:Ljava/lang/String;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    .line 226
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/commands/monkey/Monkey;->mServerPort:I

    .line 230
    iput-object v5, p0, Lcom/android/commands/monkey/Monkey;->mTombstones:Ljava/util/HashSet;

    .line 232
    const/16 v0, 0xa

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    .line 236
    new-instance v0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    invoke-direct {v0}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    .line 265
    return-void
.end method

.method static synthetic access$000(Lcom/android/commands/monkey/Monkey;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/commands/monkey/Monkey;->checkEnteringPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/commands/monkey/Monkey;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/commands/monkey/Monkey;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestProcRank:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/commands/monkey/Monkey;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/commands/monkey/Monkey;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreTimeouts:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/commands/monkey/Monkey;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreCrashes:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/commands/monkey/Monkey;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/commands/monkey/Monkey;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mAbort:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/commands/monkey/Monkey;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/commands/monkey/Monkey;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/commands/monkey/Monkey;->mReportProcessName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/commands/monkey/Monkey;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mKillProcessAfterError:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/commands/monkey/Monkey;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/commands/monkey/Monkey;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    return p1
.end method

.method private checkEnteringPackage(Ljava/lang/String;)Z
    .registers 4
    .parameter "pkg"

    .prologue
    const/4 v0, 0x0

    .line 250
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mInvalidPackages:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_12

    .line 251
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mInvalidPackages:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 259
    :cond_11
    :goto_11
    return v0

    .line 254
    :cond_12
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_22

    .line 255
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 259
    :cond_22
    const/4 v0, 0x1

    goto :goto_11
.end method

.method private checkInternalConfiguration()Z
    .registers 2

    .prologue
    .line 881
    const/4 v0, 0x1

    return v0
.end method

.method private checkNativeCrashes()Z
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 1145
    sget-object v7, Lcom/android/commands/monkey/Monkey;->TOMBSTONES_PATH:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 1149
    .local v5, tombstones:[Ljava/lang/String;
    if-eqz v5, :cond_c

    array-length v7, v5

    if-nez v7, :cond_10

    .line 1150
    :cond_c
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/commands/monkey/Monkey;->mTombstones:Ljava/util/HashSet;

    .line 1165
    :goto_f
    return v4

    .line 1155
    :cond_10
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1156
    .local v3, newStones:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_18
    if-ge v1, v2, :cond_22

    aget-object v6, v0, v1

    .line 1157
    .local v6, x:Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1156
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 1160
    .end local v6           #x:Ljava/lang/String;
    :cond_22
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mTombstones:Ljava/util/HashSet;

    if-eqz v7, :cond_2e

    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mTombstones:Ljava/util/HashSet;

    invoke-virtual {v7, v3}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_2f

    :cond_2e
    const/4 v4, 0x1

    .line 1163
    .local v4, result:Z
    :cond_2f
    iput-object v3, p0, Lcom/android/commands/monkey/Monkey;->mTombstones:Ljava/util/HashSet;

    goto :goto_f
.end method

.method private commandLineReport(Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .parameter "reportName"
    .parameter "command"

    .prologue
    .line 398
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 399
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    .line 400
    .local v7, rt:Ljava/lang/Runtime;
    const/4 v4, 0x0

    .line 405
    .local v4, logOutput:Ljava/io/Writer;
    :try_start_1d
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 407
    .local v6, p:Ljava/lang/Process;
    iget-boolean v10, p0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z

    if-eqz v10, :cond_3e

    .line 408
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v10, Ljava/io/FileWriter;

    new-instance v11, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    invoke-direct {v11, v12, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v12, 0x1

    invoke-direct {v10, v11, v12}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v5, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .end local v4           #logOutput:Ljava/io/Writer;
    .local v5, logOutput:Ljava/io/Writer;
    move-object v4, v5

    .line 413
    .end local v5           #logOutput:Ljava/io/Writer;
    .restart local v4       #logOutput:Ljava/io/Writer;
    :cond_3e
    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 414
    .local v3, inStream:Ljava/io/InputStream;
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 415
    .local v2, inReader:Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 417
    .local v1, inBuffer:Ljava/io/BufferedReader;
    :goto_4c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, s:Ljava/lang/String;
    if-eqz v8, :cond_8e

    .line 418
    iget-boolean v10, p0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z

    if-eqz v10, :cond_88

    .line 419
    invoke-virtual {v4, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 420
    const-string v10, "\n"

    invoke-virtual {v4, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_5e} :catch_5f

    goto :goto_4c

    .line 432
    .end local v1           #inBuffer:Ljava/io/BufferedReader;
    .end local v2           #inReader:Ljava/io/InputStreamReader;
    .end local v3           #inStream:Ljava/io/InputStream;
    .end local v6           #p:Ljava/lang/Process;
    .end local v8           #s:Ljava/lang/String;
    :catch_5f
    move-exception v0

    .line 433
    .local v0, e:Ljava/lang/Exception;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "// Exception from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 434
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 436
    .end local v0           #e:Ljava/lang/Exception;
    :cond_87
    :goto_87
    return-void

    .line 422
    .restart local v1       #inBuffer:Ljava/io/BufferedReader;
    .restart local v2       #inReader:Ljava/io/InputStreamReader;
    .restart local v3       #inStream:Ljava/io/InputStream;
    .restart local v6       #p:Ljava/lang/Process;
    .restart local v8       #s:Ljava/lang/String;
    :cond_88
    :try_start_88
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v10, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4c

    .line 426
    :cond_8e
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    move-result v9

    .line 427
    .local v9, status:I
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "// "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " status was "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 429
    if-eqz v4, :cond_87

    .line 430
    invoke-virtual {v4}, Ljava/io/Writer;->close()V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_b9} :catch_5f

    goto :goto_87
.end method

.method private getBugreport(Ljava/lang/String;)V
    .registers 6
    .parameter "reportName"

    .prologue
    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/commands/monkey/MonkeyUtils;->toCalendarTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 455
    const-string v1, "[ ,:]"

    const-string v2, "_"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, bugreportName:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bugreport"

    invoke-direct {p0, v1, v2}, Lcom/android/commands/monkey/Monkey;->commandLineReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method private getMainApps()Z
    .registers 16

    .prologue
    const/4 v14, 0x2

    const/4 v10, 0x0

    .line 931
    :try_start_2
    iget-object v11, p0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 932
    .local v0, N:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_9
    if-ge v5, v0, :cond_ff

    .line 933
    new-instance v6, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 934
    .local v6, intent:Landroid/content/Intent;
    iget-object v11, p0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 935
    .local v3, category:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_23

    .line 936
    invoke-virtual {v6, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 938
    :cond_23
    iget-object v11, p0, Lcom/android/commands/monkey/Monkey;->mPm:Landroid/content/pm/IPackageManager;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-interface {v11, v6, v12, v13}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v7

    .line 939
    .local v7, mainApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v7, :cond_33

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_4e

    .line 940
    :cond_33
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "// Warning: no activities found for category "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 932
    :cond_4b
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 943
    :cond_4e
    iget v11, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    if-lt v11, v14, :cond_6a

    .line 944
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "// Selecting main activities from category "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 946
    :cond_6a
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    .line 947
    .local v1, NA:I
    const/4 v2, 0x0

    .local v2, a:I
    :goto_6f
    if-ge v2, v1, :cond_4b

    .line 948
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 949
    .local v9, r:Landroid/content/pm/ResolveInfo;
    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 950
    .local v8, packageName:Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->checkEnteringPackage(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c4

    .line 951
    iget v11, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    if-lt v11, v14, :cond_b3

    .line 952
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "//   + Using main activity "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " (from package "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 955
    :cond_b3
    iget-object v11, p0, Lcom/android/commands/monkey/Monkey;->mMainApps:Ljava/util/ArrayList;

    new-instance v12, Landroid/content/ComponentName;

    iget-object v13, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v12, v8, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 947
    :cond_c1
    :goto_c1
    add-int/lit8 v2, v2, 0x1

    goto :goto_6f

    .line 957
    :cond_c4
    iget v11, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    const/4 v12, 0x3

    if-lt v11, v12, :cond_c1

    .line 958
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "//   - NOT USING main activity "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " (from package "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_f5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_f5} :catch_f6

    goto :goto_c1

    .line 964
    .end local v0           #N:I
    .end local v1           #NA:I
    .end local v2           #a:I
    .end local v3           #category:Ljava/lang/String;
    .end local v5           #i:I
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #mainApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8           #packageName:Ljava/lang/String;
    .end local v9           #r:Landroid/content/pm/ResolveInfo;
    :catch_f6
    move-exception v4

    .line 965
    .local v4, e:Landroid/os/RemoteException;
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v12, "** Failed talking with package manager!"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 974
    .end local v4           #e:Landroid/os/RemoteException;
    :goto_fe
    return v10

    .line 969
    .restart local v0       #N:I
    .restart local v5       #i:I
    :cond_ff
    iget-object v11, p0, Lcom/android/commands/monkey/Monkey;->mMainApps:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_10f

    .line 970
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "** No activities found to run, monkey aborted."

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_fe

    .line 974
    :cond_10f
    const/4 v10, 0x1

    goto :goto_fe
.end method

.method private getSystemInterfaces()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 890
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    .line 891
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    if-nez v2, :cond_13

    .line 892
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "** Error: Unable to connect to activity manager; is the system running?"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 919
    :goto_12
    return v1

    .line 897
    :cond_13
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/commands/monkey/Monkey;->mWm:Landroid/view/IWindowManager;

    .line 898
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mWm:Landroid/view/IWindowManager;

    if-nez v2, :cond_2b

    .line 899
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "** Error: Unable to connect to window manager; is the system running?"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_12

    .line 904
    :cond_2b
    const-string v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/commands/monkey/Monkey;->mPm:Landroid/content/pm/IPackageManager;

    .line 905
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mPm:Landroid/content/pm/IPackageManager;

    if-nez v2, :cond_43

    .line 906
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "** Error: Unable to connect to package manager; is the system running?"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_12

    .line 912
    :cond_43
    :try_start_43
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    new-instance v3, Lcom/android/commands/monkey/Monkey$ActivityController;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/commands/monkey/Monkey$ActivityController;-><init>(Lcom/android/commands/monkey/Monkey;Lcom/android/commands/monkey/Monkey$1;)V

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;)V

    .line 913
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    iget-object v3, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    invoke-virtual {v2, v3}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->register(Landroid/app/IActivityManager;)V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_55} :catch_57

    .line 919
    const/4 v1, 0x1

    goto :goto_12

    .line 914
    :catch_57
    move-exception v0

    .line 915
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "** Failed talking with activity manager!"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_12
.end method

.method private static loadPackageListFromFile(Ljava/lang/String;Ljava/util/HashSet;)Z
    .registers 8
    .parameter "fileName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 827
    .local p1, list:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 829
    .local v1, reader:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_4b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_5c

    .line 831
    .end local v1           #reader:Ljava/io/BufferedReader;
    .local v2, reader:Ljava/io/BufferedReader;
    :cond_b
    :goto_b
    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, s:Ljava/lang/String;
    if-eqz v3, :cond_35

    .line 832
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 833
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_b

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 834
    invoke-virtual {p1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catchall {:try_start_b .. :try_end_26} :catchall_59
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_26} :catch_27

    goto :goto_b

    .line 837
    .end local v3           #s:Ljava/lang/String;
    :catch_27
    move-exception v0

    move-object v1, v2

    .line 838
    .end local v2           #reader:Ljava/io/BufferedReader;
    .local v0, ioe:Ljava/io/IOException;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    :goto_29
    :try_start_29
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_4b

    .line 839
    const/4 v4, 0x0

    .line 841
    if-eqz v1, :cond_34

    .line 843
    :try_start_31
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_44

    .line 849
    .end local v0           #ioe:Ljava/io/IOException;
    :cond_34
    :goto_34
    return v4

    .line 841
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    .restart local v3       #s:Ljava/lang/String;
    :cond_35
    if-eqz v2, :cond_3a

    .line 843
    :try_start_37
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3d

    .line 849
    :cond_3a
    :goto_3a
    const/4 v4, 0x1

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_34

    .line 844
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catch_3d
    move-exception v0

    .line 845
    .restart local v0       #ioe:Ljava/io/IOException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_3a

    .line 844
    .end local v2           #reader:Ljava/io/BufferedReader;
    .end local v3           #s:Ljava/lang/String;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    :catch_44
    move-exception v0

    .line 845
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_34

    .line 841
    .end local v0           #ioe:Ljava/io/IOException;
    :catchall_4b
    move-exception v4

    :goto_4c
    if-eqz v1, :cond_51

    .line 843
    :try_start_4e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    .line 846
    :cond_51
    :goto_51
    throw v4

    .line 844
    :catch_52
    move-exception v0

    .line 845
    .restart local v0       #ioe:Ljava/io/IOException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_51

    .line 841
    .end local v0           #ioe:Ljava/io/IOException;
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catchall_59
    move-exception v4

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_4c

    .line 837
    :catch_5c
    move-exception v0

    goto :goto_29
.end method

.method private loadPackageLists()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 858
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mPkgWhitelistFile:Ljava/lang/String;

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_19

    :cond_d
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mPkgBlacklistFile:Ljava/lang/String;

    if-eqz v1, :cond_19

    .line 860
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "** Error: you can not specify a package blacklist together with a whitelist or individual packages (via -p)."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 872
    :cond_18
    :goto_18
    return v0

    .line 864
    :cond_19
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mPkgWhitelistFile:Ljava/lang/String;

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mPkgWhitelistFile:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    invoke-static {v1, v2}, Lcom/android/commands/monkey/Monkey;->loadPackageListFromFile(Ljava/lang/String;Ljava/util/HashSet;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 868
    :cond_27
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mPkgBlacklistFile:Ljava/lang/String;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mPkgBlacklistFile:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mInvalidPackages:Ljava/util/HashSet;

    invoke-static {v1, v2}, Lcom/android/commands/monkey/Monkey;->loadPackageListFromFile(Ljava/lang/String;Ljava/util/HashSet;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 872
    :cond_35
    const/4 v0, 0x1

    goto :goto_18
.end method

.method public static main([Ljava/lang/String;)V
    .registers 3
    .parameter "args"

    .prologue
    .line 466
    const-string v1, "com.android.commands.monkey"

    invoke-static {v1}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 468
    new-instance v1, Lcom/android/commands/monkey/Monkey;

    invoke-direct {v1}, Lcom/android/commands/monkey/Monkey;-><init>()V

    invoke-direct {v1, p0}, Lcom/android/commands/monkey/Monkey;->run([Ljava/lang/String;)I

    move-result v0

    .line 469
    .local v0, resultCode:I
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 470
    return-void
.end method

.method private nextArg()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1252
    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_9

    .line 1253
    const/4 v0, 0x0

    .line 1257
    :goto_8
    return-object v0

    .line 1255
    :cond_9
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    aget-object v0, v1, v2

    .line 1256
    .local v0, arg:Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    goto :goto_8
.end method

.method private nextOption()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 1187
    iget v2, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    iget-object v3, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    array-length v3, v3

    if-lt v2, v3, :cond_c

    move-object v0, v1

    .line 1208
    :goto_b
    return-object v0

    .line 1190
    :cond_c
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    iget v3, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    aget-object v0, v2, v3

    .line 1191
    .local v0, arg:Ljava/lang/String;
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    move-object v0, v1

    .line 1192
    goto :goto_b

    .line 1194
    :cond_1c
    iget v2, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    .line 1195
    const-string v2, "--"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    move-object v0, v1

    .line 1196
    goto :goto_b

    .line 1198
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_4f

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_4f

    .line 1199
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_4c

    .line 1200
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    .line 1201
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1203
    :cond_4c
    iput-object v1, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    goto :goto_b

    .line 1207
    :cond_4f
    iput-object v1, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    goto :goto_b
.end method

.method private nextOptionData()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1217
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 1218
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    .line 1225
    :goto_6
    return-object v0

    .line 1220
    :cond_7
    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_10

    .line 1221
    const/4 v0, 0x0

    goto :goto_6

    .line 1223
    :cond_10
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    aget-object v0, v1, v2

    .line 1224
    .local v0, data:Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    goto :goto_6
.end method

.method private nextOptionLong(Ljava/lang/String;)J
    .registers 8
    .parameter "opt"

    .prologue
    .line 1238
    :try_start_0
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-wide v1

    .line 1243
    .local v1, result:J
    return-wide v1

    .line 1239
    .end local v1           #result:J
    :catch_9
    move-exception v0

    .line 1240
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "** Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not a number"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1241
    throw v0
.end method

.method private processOptions()Z
    .registers 11

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 689
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    array-length v7, v7

    if-ge v7, v6, :cond_b

    .line 690
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    .line 816
    :goto_a
    return v5

    .line 696
    :cond_b
    :goto_b
    :try_start_b
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOption()Ljava/lang/String;

    move-result-object v4

    .local v4, opt:Ljava/lang/String;
    if-eqz v4, :cond_2cc

    .line 697
    const-string v7, "-s"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_43

    .line 698
    const-string v7, "Seed"

    invoke-direct {p0, v7}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/commands/monkey/Monkey;->mSeed:J
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_21} :catch_22

    goto :goto_b

    .line 791
    .end local v4           #opt:Ljava/lang/String;
    :catch_22
    move-exception v2

    .line 792
    .local v2, ex:Ljava/lang/RuntimeException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "** Error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 793
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    goto :goto_a

    .line 699
    .end local v2           #ex:Ljava/lang/RuntimeException;
    .restart local v4       #opt:Ljava/lang/String;
    :cond_43
    :try_start_43
    const-string v7, "-p"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_55

    .line 700
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 701
    :cond_55
    const-string v7, "-c"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_67

    .line 702
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 703
    :cond_67
    const-string v7, "-v"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_76

    .line 704
    iget v7, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    goto :goto_b

    .line 705
    :cond_76
    const-string v7, "--ignore-crashes"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_82

    .line 706
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreCrashes:Z

    goto :goto_b

    .line 707
    :cond_82
    const-string v7, "--ignore-timeouts"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8f

    .line 708
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreTimeouts:Z

    goto/16 :goto_b

    .line 709
    :cond_8f
    const-string v7, "--ignore-security-exceptions"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9c

    .line 710
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreSecurityExceptions:Z

    goto/16 :goto_b

    .line 711
    :cond_9c
    const-string v7, "--monitor-native-crashes"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a9

    .line 712
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mMonitorNativeCrashes:Z

    goto/16 :goto_b

    .line 713
    :cond_a9
    const-string v7, "--ignore-native-crashes"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b6

    .line 714
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreNativeCrashes:Z

    goto/16 :goto_b

    .line 715
    :cond_b6
    const-string v7, "--kill-process-after-error"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c3

    .line 716
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mKillProcessAfterError:Z

    goto/16 :goto_b

    .line 717
    :cond_c3
    const-string v7, "--hprof"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d0

    .line 718
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mGenerateHprof:Z

    goto/16 :goto_b

    .line 719
    :cond_d0
    const-string v7, "--pct-touch"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e7

    .line 720
    const/4 v3, 0x0

    .line 721
    .local v3, i:I
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v8, "touch events percentage"

    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    neg-long v8, v8

    long-to-float v8, v8

    aput v8, v7, v3

    goto/16 :goto_b

    .line 722
    .end local v3           #i:I
    :cond_e7
    const-string v7, "--pct-motion"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_fe

    .line 723
    const/4 v3, 0x1

    .line 724
    .restart local v3       #i:I
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v8, "motion events percentage"

    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    neg-long v8, v8

    long-to-float v8, v8

    aput v8, v7, v3

    goto/16 :goto_b

    .line 725
    .end local v3           #i:I
    :cond_fe
    const-string v7, "--pct-trackball"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_115

    .line 726
    const/4 v3, 0x3

    .line 727
    .restart local v3       #i:I
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v8, "trackball events percentage"

    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    neg-long v8, v8

    long-to-float v8, v8

    aput v8, v7, v3

    goto/16 :goto_b

    .line 728
    .end local v3           #i:I
    :cond_115
    const-string v7, "--pct-syskeys"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12c

    .line 729
    const/4 v3, 0x6

    .line 730
    .restart local v3       #i:I
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v8, "system (key) operations percentage"

    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    neg-long v8, v8

    long-to-float v8, v8

    aput v8, v7, v3

    goto/16 :goto_b

    .line 731
    .end local v3           #i:I
    :cond_12c
    const-string v7, "--pct-nav"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_143

    .line 732
    const/4 v3, 0x4

    .line 733
    .restart local v3       #i:I
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v8, "nav events percentage"

    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    neg-long v8, v8

    long-to-float v8, v8

    aput v8, v7, v3

    goto/16 :goto_b

    .line 734
    .end local v3           #i:I
    :cond_143
    const-string v7, "--pct-majornav"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15a

    .line 735
    const/4 v3, 0x5

    .line 736
    .restart local v3       #i:I
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v8, "major nav events percentage"

    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    neg-long v8, v8

    long-to-float v8, v8

    aput v8, v7, v3

    goto/16 :goto_b

    .line 737
    .end local v3           #i:I
    :cond_15a
    const-string v7, "--pct-appswitch"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_171

    .line 738
    const/4 v3, 0x7

    .line 739
    .restart local v3       #i:I
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v8, "app switch events percentage"

    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    neg-long v8, v8

    long-to-float v8, v8

    aput v8, v7, v3

    goto/16 :goto_b

    .line 740
    .end local v3           #i:I
    :cond_171
    const-string v7, "--pct-flip"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_189

    .line 741
    const/16 v3, 0x8

    .line 742
    .restart local v3       #i:I
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v8, "keyboard flip percentage"

    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    neg-long v8, v8

    long-to-float v8, v8

    aput v8, v7, v3

    goto/16 :goto_b

    .line 743
    .end local v3           #i:I
    :cond_189
    const-string v7, "--pct-anyevent"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a1

    .line 744
    const/16 v3, 0x9

    .line 745
    .restart local v3       #i:I
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v8, "any events percentage"

    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    neg-long v8, v8

    long-to-float v8, v8

    aput v8, v7, v3

    goto/16 :goto_b

    .line 746
    .end local v3           #i:I
    :cond_1a1
    const-string v7, "--pct-pinchzoom"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b8

    .line 747
    const/4 v3, 0x2

    .line 748
    .restart local v3       #i:I
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v8, "pinch zoom events percentage"

    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    neg-long v8, v8

    long-to-float v8, v8

    aput v8, v7, v3

    goto/16 :goto_b

    .line 749
    .end local v3           #i:I
    :cond_1b8
    const-string v7, "--pkg-blacklist-file"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c8

    .line 750
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/commands/monkey/Monkey;->mPkgBlacklistFile:Ljava/lang/String;

    goto/16 :goto_b

    .line 751
    :cond_1c8
    const-string v7, "--pkg-whitelist-file"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d8

    .line 752
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/commands/monkey/Monkey;->mPkgWhitelistFile:Ljava/lang/String;

    goto/16 :goto_b

    .line 753
    :cond_1d8
    const-string v7, "--throttle"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1ea

    .line 754
    const-string v7, "delay (in milliseconds) to wait between events"

    invoke-direct {p0, v7}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    goto/16 :goto_b

    .line 755
    :cond_1ea
    const-string v7, "--randomize-throttle"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f7

    .line 756
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    goto/16 :goto_b

    .line 757
    :cond_1f7
    const-string v7, "--wait-dbg"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 759
    const-string v7, "--dbg-no-events"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20c

    .line 760
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mSendNoEvents:Z

    goto/16 :goto_b

    .line 761
    :cond_20c
    const-string v7, "--port"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21f

    .line 762
    const-string v7, "Server port to listen on for commands"

    invoke-direct {p0, v7}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v7

    long-to-int v7, v7

    iput v7, p0, Lcom/android/commands/monkey/Monkey;->mServerPort:I

    goto/16 :goto_b

    .line 763
    :cond_21f
    const-string v7, "--setup"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22f

    .line 764
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/commands/monkey/Monkey;->mSetupFileName:Ljava/lang/String;

    goto/16 :goto_b

    .line 765
    :cond_22f
    const-string v7, "-f"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_242

    .line 766
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 767
    :cond_242
    const-string v7, "--profile-wait"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_254

    .line 768
    const-string v7, "Profile delay (in milliseconds) to wait between user action"

    invoke-direct {p0, v7}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/commands/monkey/Monkey;->mProfileWaitTime:J

    goto/16 :goto_b

    .line 770
    :cond_254
    const-string v7, "--device-sleep-time"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_266

    .line 771
    const-string v7, "Device sleep time(in milliseconds)"

    invoke-direct {p0, v7}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/commands/monkey/Monkey;->mDeviceSleepTime:J

    goto/16 :goto_b

    .line 773
    :cond_266
    const-string v7, "--randomize-script"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_273

    .line 774
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mRandomizeScript:Z

    goto/16 :goto_b

    .line 775
    :cond_273
    const-string v7, "--script-log"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_280

    .line 776
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mScriptLog:Z

    goto/16 :goto_b

    .line 777
    :cond_280
    const-string v7, "--bugreport"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28d

    .line 778
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z

    goto/16 :goto_b

    .line 779
    :cond_28d
    const-string v7, "--periodic-bugreport"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a2

    .line 780
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mGetPeriodicBugreport:Z

    .line 781
    const-string v7, "Number of iterations"

    invoke-direct {p0, v7}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/commands/monkey/Monkey;->mBugreportFrequency:J

    goto/16 :goto_b

    .line 782
    :cond_2a2
    const-string v6, "-h"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2af

    .line 783
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    goto/16 :goto_a

    .line 786
    :cond_2af
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "** Error: Unknown option: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 787
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V
    :try_end_2ca
    .catch Ljava/lang/RuntimeException; {:try_start_43 .. :try_end_2ca} :catch_22

    goto/16 :goto_a

    .line 799
    :cond_2cc
    iget v7, p0, Lcom/android/commands/monkey/Monkey;->mServerPort:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2e9

    .line 800
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 801
    .local v0, countStr:Ljava/lang/String;
    if-nez v0, :cond_2e3

    .line 802
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "** Error: Count not specified"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 803
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    goto/16 :goto_a

    .line 808
    :cond_2e3
    :try_start_2e3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/commands/monkey/Monkey;->mCount:I
    :try_end_2e9
    .catch Ljava/lang/NumberFormatException; {:try_start_2e3 .. :try_end_2e9} :catch_2ec

    .end local v0           #countStr:Ljava/lang/String;
    :cond_2e9
    move v5, v6

    .line 816
    goto/16 :goto_a

    .line 809
    .restart local v0       #countStr:Ljava/lang/String;
    :catch_2ec
    move-exception v1

    .line 810
    .local v1, e:Ljava/lang/NumberFormatException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "** Error: Count is not a number"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 811
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    goto/16 :goto_a
.end method

.method private reportAnrTraces()V
    .registers 3

    .prologue
    .line 370
    const-wide/16 v0, 0x1388

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_d

    .line 373
    :goto_5
    const-string v0, "anr traces"

    const-string v1, "cat /data/anr/traces.txt"

    invoke-direct {p0, v0, v1}, Lcom/android/commands/monkey/Monkey;->commandLineReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    return-void

    .line 371
    :catch_d
    move-exception v0

    goto :goto_5
.end method

.method private reportDumpsysMemInfo()V
    .registers 3

    .prologue
    .line 384
    const-string v0, "meminfo"

    const-string v1, "dumpsys meminfo"

    invoke-direct {p0, v0, v1}, Lcom/android/commands/monkey/Monkey;->commandLineReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method private reportProcRank()V
    .registers 3

    .prologue
    .line 361
    const-string v0, "procrank"

    const-string v1, "procrank"

    invoke-direct {p0, v0, v1}, Lcom/android/commands/monkey/Monkey;->commandLineReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method private run([Ljava/lang/String;)I
    .registers 24
    .parameter "args"

    .prologue
    .line 480
    move-object/from16 v14, p1

    .local v14, arr$:[Ljava/lang/String;
    array-length v0, v14

    move/from16 v20, v0

    .local v20, len$:I
    const/16 v18, 0x0

    .local v18, i$:I
    :goto_7
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_1f

    aget-object v21, v14, v18

    .line 481
    .local v21, s:Ljava/lang/String;
    const-string v2, "--wait-dbg"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 482
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 480
    :cond_1c
    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    .line 487
    .end local v21           #s:Ljava/lang/String;
    :cond_1f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    .line 488
    const/16 v2, 0x3e8

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    .line 489
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    .line 490
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    .line 493
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    .line 494
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    .line 497
    const/16 v17, 0x0

    .local v17, i:I
    :goto_43
    const/16 v2, 0xa

    move/from16 v0, v17

    if-ge v0, v2, :cond_54

    .line 498
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const/high16 v3, 0x3f80

    aput v3, v2, v17

    .line 497
    add-int/lit8 v17, v17, 0x1

    goto :goto_43

    .line 501
    :cond_54
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->processOptions()Z

    move-result v2

    if-nez v2, :cond_5c

    .line 502
    const/4 v15, -0x1

    .line 678
    :goto_5b
    return v15

    .line 505
    :cond_5c
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->loadPackageLists()Z

    move-result v2

    if-nez v2, :cond_64

    .line 506
    const/4 v15, -0x1

    goto :goto_5b

    .line 510
    :cond_64
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_80

    .line 511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    const-string v3, "android.intent.category.MONKEY"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    :cond_80
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    if-lez v2, :cond_155

    .line 516
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":Monkey: seed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_e7

    .line 518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 519
    .local v19, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_c2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e7

    .line 520
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":AllowPackage: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_c2

    .line 523
    .end local v19           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_e7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mInvalidPackages:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_11e

    .line 524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mInvalidPackages:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 525
    .restart local v19       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_f9
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11e

    .line 526
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":DisallowPackage: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_f9

    .line 529
    .end local v19           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_11e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_155

    .line 530
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 531
    .restart local v19       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_130
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_155

    .line 532
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":IncludeCategory: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_130

    .line 537
    .end local v19           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_155
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->checkInternalConfiguration()Z

    move-result v2

    if-nez v2, :cond_15e

    .line 538
    const/4 v15, -0x2

    goto/16 :goto_5b

    .line 541
    :cond_15e
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->getSystemInterfaces()Z

    move-result v2

    if-nez v2, :cond_167

    .line 542
    const/4 v15, -0x3

    goto/16 :goto_5b

    .line 545
    :cond_167
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->getMainApps()Z

    move-result v2

    if-nez v2, :cond_170

    .line 546
    const/4 v15, -0x4

    goto/16 :goto_5b

    .line 549
    :cond_170
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    .line 550
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    const-wide/16 v5, 0x0

    cmp-long v2, v2, v5

    if-nez v2, :cond_1e2

    const-wide/16 v2, -0x1

    :goto_189
    invoke-virtual {v4, v2, v3}, Ljava/util/Random;->setSeed(J)V

    .line 552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    if-eqz v2, :cond_1e7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e7

    .line 554
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/commands/monkey/Monkey;->mProfileWaitTime:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/commands/monkey/Monkey;->mDeviceSleepTime:J

    invoke-direct/range {v2 .. v11}, Lcom/android/commands/monkey/MonkeySourceScript;-><init>(Ljava/util/Random;Ljava/lang/String;JZJJ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    .line 556
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    invoke-interface {v2, v3}, Lcom/android/commands/monkey/MonkeyEventSource;->setVerbose(I)V

    .line 558
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mCountEvents:Z

    .line 599
    :goto_1d5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    invoke-interface {v2}, Lcom/android/commands/monkey/MonkeyEventSource;->validate()Z

    move-result v2

    if-nez v2, :cond_309

    .line 600
    const/4 v15, -0x5

    goto/16 :goto_5b

    .line 550
    :cond_1e2
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    goto :goto_189

    .line 559
    :cond_1e7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    if-eqz v2, :cond_268

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_268

    .line 560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mSetupFileName:Ljava/lang/String;

    if-eqz v2, :cond_242

    .line 561
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceRandomScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/commands/monkey/Monkey;->mSetupFileName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/android/commands/monkey/Monkey;->mProfileWaitTime:J

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/commands/monkey/Monkey;->mDeviceSleepTime:J

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/commands/monkey/Monkey;->mRandomizeScript:Z

    invoke-direct/range {v2 .. v13}, Lcom/android/commands/monkey/MonkeySourceRandomScript;-><init>(Ljava/lang/String;Ljava/util/ArrayList;JZLjava/util/Random;JJZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    .line 564
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    .line 570
    :goto_231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    invoke-interface {v2, v3}, Lcom/android/commands/monkey/MonkeyEventSource;->setVerbose(I)V

    .line 571
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mCountEvents:Z

    goto :goto_1d5

    .line 566
    :cond_242
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceRandomScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/commands/monkey/Monkey;->mProfileWaitTime:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/commands/monkey/Monkey;->mDeviceSleepTime:J

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/commands/monkey/Monkey;->mRandomizeScript:Z

    invoke-direct/range {v2 .. v12}, Lcom/android/commands/monkey/MonkeySourceRandomScript;-><init>(Ljava/util/ArrayList;JZLjava/util/Random;JJZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    goto :goto_231

    .line 572
    :cond_268
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/commands/monkey/Monkey;->mServerPort:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_290

    .line 574
    :try_start_26f
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/commands/monkey/Monkey;->mServerPort:I

    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;
    :try_end_27c
    .catch Ljava/io/IOException; {:try_start_26f .. :try_end_27c} :catch_285

    .line 579
    const v2, 0x7fffffff

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    goto/16 :goto_1d5

    .line 575
    :catch_285
    move-exception v16

    .line 576
    .local v16, e:Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Error binding to network socket."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 577
    const/4 v15, -0x5

    goto/16 :goto_5b

    .line 582
    .end local v16           #e:Ljava/io/IOException;
    :cond_290
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2b3

    .line 583
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "// Seeded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 585
    :cond_2b3
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceRandom;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/commands/monkey/Monkey;->mMainApps:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    invoke-direct/range {v2 .. v7}, Lcom/android/commands/monkey/MonkeySourceRandom;-><init>(Ljava/util/Random;Ljava/util/ArrayList;JZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    .line 586
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    invoke-interface {v2, v3}, Lcom/android/commands/monkey/MonkeyEventSource;->setVerbose(I)V

    .line 588
    const/16 v17, 0x0

    :goto_2d9
    const/16 v2, 0xa

    move/from16 v0, v17

    if-ge v0, v2, :cond_2fe

    .line 589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    aget v2, v2, v17

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2fb

    .line 590
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    check-cast v2, Lcom/android/commands/monkey/MonkeySourceRandom;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    aget v3, v3, v17

    move/from16 v0, v17

    invoke-virtual {v2, v0, v3}, Lcom/android/commands/monkey/MonkeySourceRandom;->setFactors(IF)V

    .line 588
    :cond_2fb
    add-int/lit8 v17, v17, 0x1

    goto :goto_2d9

    .line 595
    :cond_2fe
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    check-cast v2, Lcom/android/commands/monkey/MonkeySourceRandom;

    invoke-virtual {v2}, Lcom/android/commands/monkey/MonkeySourceRandom;->generateActivity()V

    goto/16 :goto_1d5

    .line 605
    :cond_309
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mGenerateHprof:Z

    if-eqz v2, :cond_312

    .line 606
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->signalPersistentProcesses()V

    .line 609
    :cond_312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    invoke-virtual {v2}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->start()V

    .line 610
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->runMonkeyCycles()I

    move-result v15

    .line 611
    .local v15, crashedAtCycle:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    invoke-virtual {v2}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->stop()V

    .line 613
    monitor-enter p0

    .line 614
    :try_start_325
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    if-eqz v2, :cond_333

    .line 615
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->reportAnrTraces()V

    .line 616
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    .line 618
    :cond_333
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z

    if-eqz v2, :cond_367

    .line 619
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Print the anr report"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 620
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "anr_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/commands/monkey/Monkey;->mReportProcessName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 621
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z

    .line 623
    :cond_367
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z

    if-eqz v2, :cond_394

    .line 624
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app_crash"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/commands/monkey/Monkey;->mReportProcessName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 625
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z

    .line 627
    :cond_394
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    if-eqz v2, :cond_3a2

    .line 628
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->reportDumpsysMemInfo()V

    .line 629
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    .line 631
    :cond_3a2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mRequestPeriodicBugreport:Z

    if-eqz v2, :cond_3b4

    .line 632
    const-string v2, "Bugreport_"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 633
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mRequestPeriodicBugreport:Z

    .line 635
    :cond_3b4
    monitor-exit p0
    :try_end_3b5
    .catchall {:try_start_325 .. :try_end_3b5} :catchall_469

    .line 637
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mGenerateHprof:Z

    if-eqz v2, :cond_3cb

    .line 638
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->signalPersistentProcesses()V

    .line 639
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    if-lez v2, :cond_3cb

    .line 640
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "// Generated profiling reports in /data/misc"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 645
    :cond_3cb
    :try_start_3cb
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;)V

    .line 646
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    invoke-virtual {v2, v3}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->unregister(Landroid/app/IActivityManager;)V
    :try_end_3de
    .catch Landroid/os/RemoteException; {:try_start_3cb .. :try_end_3de} :catch_46c

    .line 656
    :cond_3de
    :goto_3de
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    if-lez v2, :cond_424

    .line 657
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, ":Dropped: keys="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 658
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/commands/monkey/Monkey;->mDroppedKeyEvents:J

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintStream;->print(J)V

    .line 659
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, " pointers="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 660
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/commands/monkey/Monkey;->mDroppedPointerEvents:J

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintStream;->print(J)V

    .line 661
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, " trackballs="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 662
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/commands/monkey/Monkey;->mDroppedTrackballEvents:J

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintStream;->print(J)V

    .line 663
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, " flips="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 664
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/commands/monkey/Monkey;->mDroppedFlipEvents:J

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintStream;->println(J)V

    .line 668
    :cond_424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    invoke-virtual {v2}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->dump()V

    .line 670
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v15, v2, :cond_47b

    .line 671
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "** System appears to have crashed at event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " using seed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_5b

    .line 635
    :catchall_469
    move-exception v2

    :try_start_46a
    monitor-exit p0
    :try_end_46b
    .catchall {:try_start_46a .. :try_end_46b} :catchall_469

    throw v2

    .line 647
    :catch_46c
    move-exception v16

    .line 650
    .local v16, e:Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    if-lt v15, v2, :cond_3de

    .line 651
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    add-int/lit8 v15, v2, -0x1

    goto/16 :goto_3de

    .line 675
    .end local v16           #e:Landroid/os/RemoteException;
    :cond_47b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    if-lez v2, :cond_488

    .line 676
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "// Monkey finished"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 678
    :cond_488
    const/4 v15, 0x0

    goto/16 :goto_5b
.end method

.method private runMonkeyCycles()I
    .registers 16

    .prologue
    .line 986
    const/4 v3, 0x0

    .line 987
    .local v3, eventCounter:I
    const/4 v1, 0x0

    .line 989
    .local v1, cycleCounter:I
    const/4 v6, 0x0

    .line 990
    .local v6, shouldReportAnrTraces:Z
    const/4 v7, 0x0

    .line 991
    .local v7, shouldReportDumpsysMemInfo:Z
    const/4 v5, 0x0

    .line 992
    .local v5, shouldAbort:Z
    const/4 v8, 0x0

    .line 995
    .local v8, systemCrashed:Z
    :cond_6
    :goto_6
    if-nez v8, :cond_1c3

    iget v11, p0, Lcom/android/commands/monkey/Monkey;->mCount:I

    if-ge v1, v11, :cond_1c3

    .line 996
    monitor-enter p0

    .line 997
    :try_start_d
    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mRequestProcRank:Z

    if-eqz v11, :cond_17

    .line 998
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->reportProcRank()V

    .line 999
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mRequestProcRank:Z

    .line 1001
    :cond_17
    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    if-eqz v11, :cond_1f

    .line 1002
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    .line 1003
    const/4 v6, 0x1

    .line 1005
    :cond_1f
    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z

    if-eqz v11, :cond_44

    .line 1006
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "anr_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/commands/monkey/Monkey;->mReportProcessName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 1007
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z

    .line 1009
    :cond_44
    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z

    if-eqz v11, :cond_69

    .line 1010
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "app_crash"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/commands/monkey/Monkey;->mReportProcessName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 1011
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z

    .line 1013
    :cond_69
    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mRequestPeriodicBugreport:Z

    if-eqz v11, :cond_75

    .line 1014
    const-string v11, "Bugreport_"

    invoke-direct {p0, v11}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 1015
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mRequestPeriodicBugreport:Z

    .line 1017
    :cond_75
    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    if-eqz v11, :cond_7d

    .line 1018
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    .line 1019
    const/4 v7, 0x1

    .line 1021
    :cond_7d
    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mMonitorNativeCrashes:Z

    if-eqz v11, :cond_a8

    .line 1024
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->checkNativeCrashes()Z

    move-result v11

    if-eqz v11, :cond_a8

    if-lez v3, :cond_a8

    .line 1025
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "** New native crash detected."

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1026
    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z

    if-eqz v11, :cond_99

    .line 1027
    const-string v11, "native_crash_"

    invoke-direct {p0, v11}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 1029
    :cond_99
    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mAbort:Z

    if-nez v11, :cond_a5

    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreNativeCrashes:Z

    if-eqz v11, :cond_a5

    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mKillProcessAfterError:Z

    if-eqz v11, :cond_dd

    :cond_a5
    const/4 v11, 0x1

    :goto_a6
    iput-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mAbort:Z

    .line 1032
    :cond_a8
    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mAbort:Z

    if-eqz v11, :cond_ad

    .line 1033
    const/4 v5, 0x1

    .line 1035
    :cond_ad
    monitor-exit p0
    :try_end_ae
    .catchall {:try_start_d .. :try_end_ae} :catchall_df

    .line 1039
    if-eqz v6, :cond_b4

    .line 1040
    const/4 v6, 0x0

    .line 1041
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->reportAnrTraces()V

    .line 1044
    :cond_b4
    if-eqz v7, :cond_ba

    .line 1045
    const/4 v7, 0x0

    .line 1046
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->reportDumpsysMemInfo()V

    .line 1049
    :cond_ba
    if-eqz v5, :cond_e2

    .line 1050
    const/4 v5, 0x0

    .line 1051
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "** Monkey aborted due to error."

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1052
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Events injected: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1118
    :goto_dc
    return v3

    .line 1029
    :cond_dd
    const/4 v11, 0x0

    goto :goto_a6

    .line 1035
    :catchall_df
    move-exception v11

    :try_start_e0
    monitor-exit p0
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_df

    throw v11

    .line 1059
    :cond_e2
    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mSendNoEvents:Z

    if-eqz v11, :cond_ec

    .line 1060
    add-int/lit8 v3, v3, 0x1

    .line 1061
    add-int/lit8 v1, v1, 0x1

    .line 1062
    goto/16 :goto_6

    .line 1065
    :cond_ec
    iget v11, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    if-lez v11, :cond_142

    rem-int/lit8 v11, v3, 0x64

    if-nez v11, :cond_142

    if-eqz v3, :cond_142

    .line 1066
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/android/commands/monkey/MonkeyUtils;->toCalendarTime(J)Ljava/lang/String;

    move-result-object v0

    .line 1067
    .local v0, calendarTime:Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 1068
    .local v9, systemUpTime:J
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "    //[calendar_time:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " system_uptime:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1070
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "    // Sending event #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1073
    .end local v0           #calendarTime:Ljava/lang/String;
    .end local v9           #systemUpTime:J
    :cond_142
    iget-object v11, p0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    invoke-interface {v11}, Lcom/android/commands/monkey/MonkeyEventSource;->getNextEvent()Lcom/android/commands/monkey/MonkeyEvent;

    move-result-object v2

    .line 1074
    .local v2, ev:Lcom/android/commands/monkey/MonkeyEvent;
    if-eqz v2, :cond_1a7

    .line 1075
    iget-object v11, p0, Lcom/android/commands/monkey/Monkey;->mWm:Landroid/view/IWindowManager;

    iget-object v12, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    iget v13, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    invoke-virtual {v2, v11, v12, v13}, Lcom/android/commands/monkey/MonkeyEvent;->injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I

    move-result v4

    .line 1076
    .local v4, injectCode:I
    if-nez v4, :cond_187

    .line 1077
    instance-of v11, v2, Lcom/android/commands/monkey/MonkeyKeyEvent;

    if-eqz v11, :cond_16f

    .line 1078
    iget-wide v11, p0, Lcom/android/commands/monkey/Monkey;->mDroppedKeyEvents:J

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    iput-wide v11, p0, Lcom/android/commands/monkey/Monkey;->mDroppedKeyEvents:J

    .line 1095
    :cond_161
    :goto_161
    instance-of v11, v2, Lcom/android/commands/monkey/MonkeyThrottleEvent;

    if-nez v11, :cond_6

    .line 1096
    add-int/lit8 v3, v3, 0x1

    .line 1097
    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mCountEvents:Z

    if-eqz v11, :cond_6

    .line 1098
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 1079
    :cond_16f
    instance-of v11, v2, Lcom/android/commands/monkey/MonkeyMotionEvent;

    if-eqz v11, :cond_17b

    .line 1080
    iget-wide v11, p0, Lcom/android/commands/monkey/Monkey;->mDroppedPointerEvents:J

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    iput-wide v11, p0, Lcom/android/commands/monkey/Monkey;->mDroppedPointerEvents:J

    goto :goto_161

    .line 1081
    :cond_17b
    instance-of v11, v2, Lcom/android/commands/monkey/MonkeyFlipEvent;

    if-eqz v11, :cond_161

    .line 1082
    iget-wide v11, p0, Lcom/android/commands/monkey/Monkey;->mDroppedFlipEvents:J

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    iput-wide v11, p0, Lcom/android/commands/monkey/Monkey;->mDroppedFlipEvents:J

    goto :goto_161

    .line 1084
    :cond_187
    const/4 v11, -0x1

    if-ne v4, v11, :cond_193

    .line 1085
    const/4 v8, 0x1

    .line 1086
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v12, "** Error: RemoteException while injecting event."

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_161

    .line 1087
    :cond_193
    const/4 v11, -0x2

    if-ne v4, v11, :cond_161

    .line 1088
    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreSecurityExceptions:Z

    if-nez v11, :cond_1a5

    const/4 v8, 0x1

    .line 1089
    :goto_19b
    if-eqz v8, :cond_161

    .line 1090
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v12, "** Error: SecurityException while injecting event."

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_161

    .line 1088
    :cond_1a5
    const/4 v8, 0x0

    goto :goto_19b

    .line 1102
    .end local v4           #injectCode:I
    :cond_1a7
    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mCountEvents:Z

    if-nez v11, :cond_1c3

    .line 1103
    add-int/lit8 v1, v1, 0x1

    .line 1104
    invoke-direct {p0, v1}, Lcom/android/commands/monkey/Monkey;->writeScriptLog(I)V

    .line 1106
    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mGetPeriodicBugreport:Z

    if-eqz v11, :cond_6

    .line 1107
    int-to-long v11, v1

    iget-wide v13, p0, Lcom/android/commands/monkey/Monkey;->mBugreportFrequency:J

    rem-long/2addr v11, v13

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_6

    .line 1108
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mRequestPeriodicBugreport:Z

    goto/16 :goto_6

    .line 1117
    .end local v2           #ev:Lcom/android/commands/monkey/MonkeyEvent;
    :cond_1c3
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Events injected: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_dc
.end method

.method private showUsage()V
    .registers 4

    .prologue
    .line 1264
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1265
    .local v0, usage:Ljava/lang/StringBuffer;
    const-string v1, "usage: monkey [-p ALLOWED_PACKAGE [-p ALLOWED_PACKAGE] ...]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1266
    const-string v1, "              [-c MAIN_CATEGORY [-c MAIN_CATEGORY] ...]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1267
    const-string v1, "              [--ignore-crashes] [--ignore-timeouts]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1268
    const-string v1, "              [--ignore-security-exceptions]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1269
    const-string v1, "              [--monitor-native-crashes] [--ignore-native-crashes]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1270
    const-string v1, "              [--kill-process-after-error] [--hprof]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1271
    const-string v1, "              [--pct-touch PERCENT] [--pct-motion PERCENT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1272
    const-string v1, "              [--pct-trackball PERCENT] [--pct-syskeys PERCENT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1273
    const-string v1, "              [--pct-nav PERCENT] [--pct-majornav PERCENT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1274
    const-string v1, "              [--pct-appswitch PERCENT] [--pct-flip PERCENT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1275
    const-string v1, "              [--pct-anyevent PERCENT] [--pct-pinchzoom PERCENT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1276
    const-string v1, "              [--pkg-blacklist-file PACKAGE_BLACKLIST_FILE]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1277
    const-string v1, "              [--pkg-whitelist-file PACKAGE_WHITELIST_FILE]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1278
    const-string v1, "              [--wait-dbg] [--dbg-no-events]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1279
    const-string v1, "              [--setup scriptfile] [-f scriptfile [-f scriptfile] ...]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1280
    const-string v1, "              [--port port]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1281
    const-string v1, "              [-s SEED] [-v [-v] ...]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1282
    const-string v1, "              [--throttle MILLISEC] [--randomize-throttle]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1283
    const-string v1, "              [--profile-wait MILLISEC]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1284
    const-string v1, "              [--device-sleep-time MILLISEC]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1285
    const-string v1, "              [--randomize-script]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1286
    const-string v1, "              [--script-log]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1287
    const-string v1, "              [--bugreport]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1288
    const-string v1, "              [--periodic-bugreport]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1289
    const-string v1, "              COUNT\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1290
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1291
    return-void
.end method

.method private signalPersistentProcesses()V
    .registers 4

    .prologue
    .line 1127
    :try_start_0
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->signalPersistentProcesses(I)V

    .line 1129
    monitor-enter p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_12
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_8} :catch_1b

    .line 1130
    const-wide/16 v1, 0x7d0

    :try_start_a
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 1131
    monitor-exit p0

    .line 1136
    :goto_e
    return-void

    .line 1131
    :catchall_f
    move-exception v1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_f

    :try_start_11
    throw v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_12} :catch_12
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_12} :catch_1b

    .line 1132
    :catch_12
    move-exception v0

    .line 1133
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "** Failed talking with activity manager!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_e

    .line 1134
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1b
    move-exception v1

    goto :goto_e
.end method

.method private writeScriptLog(I)V
    .registers 8
    .parameter "count"

    .prologue
    .line 442
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "scriptlog.txt"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 444
    .local v1, output:Ljava/io/Writer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iteration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/commands/monkey/MonkeyUtils;->toCalendarTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 446
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_47} :catch_48

    .line 450
    .end local v1           #output:Ljava/io/Writer;
    :goto_47
    return-void

    .line 447
    :catch_48
    move-exception v0

    .line 448
    .local v0, e:Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_47
.end method
