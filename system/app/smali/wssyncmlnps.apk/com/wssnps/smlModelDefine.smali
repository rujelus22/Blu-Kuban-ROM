.class public Lcom/wssnps/smlModelDefine;
.super Ljava/lang/Object;
.source "smlModelDefine.java"


# static fields
.field public static deviceTable_CPU_BOOST:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static deviceTable_CalendarType:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static deviceTable_FM_Radio:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static deviceTable_Kor_Message:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static deviceTable_Kor_lunar:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static deviceTable_Kor_speeddial:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static deviceTable_MemoType:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static mDVFSLock:Landroid/os/PowerManager$DVFSLock;

.field public static mKiesDvfsOn:Z

.field public static mPowerManager:Landroid/os/PowerManager;

.field public static mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 23
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_speeddial:Ljava/util/Hashtable;

    .line 24
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_lunar:Ljava/util/Hashtable;

    .line 25
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_Message:Ljava/util/Hashtable;

    .line 26
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_CalendarType:Ljava/util/Hashtable;

    .line 27
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_MemoType:Ljava/util/Hashtable;

    .line 28
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_FM_Radio:Ljava/util/Hashtable;

    .line 29
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_CPU_BOOST:Ljava/util/Hashtable;

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/wssnps/smlModelDefine;->mKiesDvfsOn:Z

    .line 213
    sput-object v1, Lcom/wssnps/smlModelDefine;->mPowerManager:Landroid/os/PowerManager;

    .line 214
    sput-object v1, Lcom/wssnps/smlModelDefine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 215
    sput-object v1, Lcom/wssnps/smlModelDefine;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_speeddial:Ljava/util/Hashtable;

    const-string v1, "SHW-M250L"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_speeddial:Ljava/util/Hashtable;

    const-string v1, "SHW-M250S"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_speeddial:Ljava/util/Hashtable;

    const-string v1, "SHW-M250K"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_speeddial:Ljava/util/Hashtable;

    const-string v1, "SHV-E110S"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_speeddial:Ljava/util/Hashtable;

    const-string v1, "SHV-E120L"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_speeddial:Ljava/util/Hashtable;

    const-string v1, "SHV-E120S"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_speeddial:Ljava/util/Hashtable;

    const-string v1, "SHV-E120K"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_speeddial:Ljava/util/Hashtable;

    const-string v1, "SHV-E160L"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_speeddial:Ljava/util/Hashtable;

    const-string v1, "SHV-E160S"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_speeddial:Ljava/util/Hashtable;

    const-string v1, "SHV-E160K"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_lunar:Ljava/util/Hashtable;

    const-string v1, "SHW-M250L"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_lunar:Ljava/util/Hashtable;

    const-string v1, "SHW-M250S"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_lunar:Ljava/util/Hashtable;

    const-string v1, "SHW-M250K"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_lunar:Ljava/util/Hashtable;

    const-string v1, "SHV-E110S"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_lunar:Ljava/util/Hashtable;

    const-string v1, "SHV-E120L"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_lunar:Ljava/util/Hashtable;

    const-string v1, "SHV-E120S"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_lunar:Ljava/util/Hashtable;

    const-string v1, "SHV-E120K"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_lunar:Ljava/util/Hashtable;

    const-string v1, "SHV-E160L"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_lunar:Ljava/util/Hashtable;

    const-string v1, "SHV-E160S"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_lunar:Ljava/util/Hashtable;

    const-string v1, "SHV-E160K"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_lunar:Ljava/util/Hashtable;

    const-string v1, "SHW-M380S"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_lunar:Ljava/util/Hashtable;

    const-string v1, "SHW-M380K"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_lunar:Ljava/util/Hashtable;

    const-string v1, "SHW-M380W"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_lunar:Ljava/util/Hashtable;

    const-string v1, "SHW-M300S"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_lunar:Ljava/util/Hashtable;

    const-string v1, "SHW-M300W"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_lunar:Ljava/util/Hashtable;

    const-string v1, "SHW-M305W"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_lunar:Ljava/util/Hashtable;

    const-string v1, "SHV-E140L"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_lunar:Ljava/util/Hashtable;

    const-string v1, "SHV-E140S"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_lunar:Ljava/util/Hashtable;

    const-string v1, "SHV-E140K"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_lunar:Ljava/util/Hashtable;

    const-string v1, "SHV-E160L"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_lunar:Ljava/util/Hashtable;

    const-string v1, "SHV-E160S"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_lunar:Ljava/util/Hashtable;

    const-string v1, "SHV-E160K"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_Message:Ljava/util/Hashtable;

    const-string v1, "SHW-M250L"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_Message:Ljava/util/Hashtable;

    const-string v1, "SHW-M250S"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_Message:Ljava/util/Hashtable;

    const-string v1, "SHV-E110S"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_Message:Ljava/util/Hashtable;

    const-string v1, "SHV-E120L"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_Message:Ljava/util/Hashtable;

    const-string v1, "SHV-E120S"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_Message:Ljava/util/Hashtable;

    const-string v1, "SHW-M380S"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_Message:Ljava/util/Hashtable;

    const-string v1, "SHW-M300S"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_Message:Ljava/util/Hashtable;

    const-string v1, "SHV-E160L"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_Message:Ljava/util/Hashtable;

    const-string v1, "SHV-E160S"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_CalendarType:Ljava/util/Hashtable;

    const-string v1, "GT-I9220"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_CalendarType:Ljava/util/Hashtable;

    const-string v1, "SHV-E160L"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_CalendarType:Ljava/util/Hashtable;

    const-string v1, "SHV-E160S"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_CalendarType:Ljava/util/Hashtable;

    const-string v1, "SHV-E160K"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_CalendarType:Ljava/util/Hashtable;

    const-string v1, "GT-N7000"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_CalendarType:Ljava/util/Hashtable;

    const-string v1, "SGH-I717"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_MemoType:Ljava/util/Hashtable;

    const-string v1, "GT-I9220"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_MemoType:Ljava/util/Hashtable;

    const-string v1, "SHV-E160L"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_MemoType:Ljava/util/Hashtable;

    const-string v1, "SHV-E160S"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_MemoType:Ljava/util/Hashtable;

    const-string v1, "SHV-E160K"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_MemoType:Ljava/util/Hashtable;

    const-string v1, "GT-N7000"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_MemoType:Ljava/util/Hashtable;

    const-string v1, "SGH-I717"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_MemoType:Ljava/util/Hashtable;

    const-string v1, "GT-P7580"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_FM_Radio:Ljava/util/Hashtable;

    const-string v1, "GT-I9100"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_FM_Radio:Ljava/util/Hashtable;

    const-string v1, "GT-I9100G"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_FM_Radio:Ljava/util/Hashtable;

    const-string v1, "GT-I9100P"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_FM_Radio:Ljava/util/Hashtable;

    const-string v1, "GT-I9100T"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_FM_Radio:Ljava/util/Hashtable;

    const-string v1, "GT-I9103"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_FM_Radio:Ljava/util/Hashtable;

    const-string v1, "GT-I9220"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_FM_Radio:Ljava/util/Hashtable;

    const-string v1, "GT-N7000"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_CPU_BOOST:Ljava/util/Hashtable;

    const-string v1, "SHV-E110S"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_CPU_BOOST:Ljava/util/Hashtable;

    const-string v1, "SHV-E120S"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_CPU_BOOST:Ljava/util/Hashtable;

    const-string v1, "SHV-E120K"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_CPU_BOOST:Ljava/util/Hashtable;

    const-string v1, "SHV-E120L"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_CPU_BOOST:Ljava/util/Hashtable;

    const-string v1, "SHV-E160S"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_CPU_BOOST:Ljava/util/Hashtable;

    const-string v1, "SHV-E160K"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_CPU_BOOST:Ljava/util/Hashtable;

    const-string v1, "SHV-E160L"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_CPU_BOOST:Ljava/util/Hashtable;

    const-string v1, "SHV-E140S"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_CPU_BOOST:Ljava/util/Hashtable;

    const-string v1, "SHV-E140K"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_CPU_BOOST:Ljava/util/Hashtable;

    const-string v1, "SHV-E140L"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    return-void
.end method

.method public static CpuBoostSet(Ljava/lang/String;)V
    .registers 7
    .parameter "BoostType"

    .prologue
    const/4 v4, 0x1

    .line 220
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    sput-object v2, Lcom/wssnps/smlModelDefine;->mPowerManager:Landroid/os/PowerManager;

    .line 221
    sget-object v2, Lcom/wssnps/smlModelDefine;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->getSupportedFrequency()[I

    move-result-object v1

    .line 223
    .local v1, supportedFreq:[I
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getCpuBoostType()I

    move-result v2

    if-ne v2, v4, :cond_44

    .line 225
    sget-object v2, Lcom/wssnps/smlModelDefine;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    if-nez v2, :cond_2b

    .line 228
    :try_start_1d
    sget-object v2, Lcom/wssnps/smlModelDefine;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x1

    const/4 v4, 0x0

    aget v4, v1, v4

    const-string v5, "wssnps"

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/PowerManager;->newDVFSLock(IILjava/lang/String;)Landroid/os/PowerManager$DVFSLock;

    move-result-object v2

    sput-object v2, Lcom/wssnps/smlModelDefine;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2b} :catch_45

    .line 234
    :cond_2b
    :goto_2b
    sget-object v2, Lcom/wssnps/smlModelDefine;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$DVFSLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_44

    .line 236
    if-eqz v1, :cond_44

    sget-object v2, Lcom/wssnps/smlModelDefine;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    if-eqz v2, :cond_44

    .line 238
    :try_start_39
    const-string v2, "UP"

    if-ne p0, v2, :cond_44

    .line 239
    sget-object v2, Lcom/wssnps/smlModelDefine;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$DVFSLock;->acquire(J)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_44} :catch_4a

    .line 247
    :cond_44
    :goto_44
    return-void

    .line 229
    :catch_45
    move-exception v0

    .line 230
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2b

    .line 241
    .end local v0           #e:Ljava/lang/Exception;
    :catch_4a
    move-exception v0

    .line 242
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_44
.end method

.method public static MountAsUsbStorage(Ljava/lang/String;)V
    .registers 1
    .parameter "mntType"

    .prologue
    .line 210
    return-void
.end method

.method public static getCaledarType()I
    .registers 2

    .prologue
    .line 150
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_CalendarType:Ljava/util/Hashtable;

    const-string v1, "SPH-D710"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 151
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_CalendarType:Ljava/util/Hashtable;

    const-string v1, "SPH-D710"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 153
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public static getCpuBoostType()I
    .registers 2

    .prologue
    .line 174
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_CPU_BOOST:Ljava/util/Hashtable;

    const-string v1, "SPH-D710"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 175
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_CPU_BOOST:Ljava/util/Hashtable;

    const-string v1, "SPH-D710"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 177
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public static getFmRadioType()I
    .registers 2

    .prologue
    .line 166
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_FM_Radio:Ljava/util/Hashtable;

    const-string v1, "SPH-D710"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 167
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_FM_Radio:Ljava/util/Hashtable;

    const-string v1, "SPH-D710"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 169
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public static getKorMessageType()I
    .registers 2

    .prologue
    .line 142
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_Message:Ljava/util/Hashtable;

    const-string v1, "SPH-D710"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 143
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_Message:Ljava/util/Hashtable;

    const-string v1, "SPH-D710"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 145
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public static getLunarType()I
    .registers 2

    .prologue
    .line 134
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_lunar:Ljava/util/Hashtable;

    const-string v1, "SPH-D710"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 135
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_Kor_lunar:Ljava/util/Hashtable;

    const-string v1, "SPH-D710"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 137
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public static getMemoType()I
    .registers 2

    .prologue
    .line 158
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_MemoType:Ljava/util/Hashtable;

    const-string v1, "SPH-D710"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 159
    sget-object v0, Lcom/wssnps/smlModelDefine;->deviceTable_MemoType:Ljava/util/Hashtable;

    const-string v1, "SPH-D710"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 161
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public static nps_wakeLock(I)V
    .registers 4
    .parameter "flag"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 253
    if-ne p0, v2, :cond_2d

    sget-boolean v0, Lcom/wssnps/smlNpsReceiver;->wifi_connected:Z

    if-ne v0, v2, :cond_2d

    .line 255
    sget-object v0, Lcom/wssnps/smlModelDefine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_2c

    .line 258
    const-string v0, "nps_wakeLock acquire"

    invoke-static {v2, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 259
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sput-object v0, Lcom/wssnps/smlModelDefine;->mPowerManager:Landroid/os/PowerManager;

    .line 260
    sget-object v0, Lcom/wssnps/smlModelDefine;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "wssnps"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/wssnps/smlModelDefine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 261
    sget-object v0, Lcom/wssnps/smlModelDefine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 287
    :cond_2c
    :goto_2c
    return-void

    .line 266
    :cond_2d
    sget-object v0, Lcom/wssnps/smlModelDefine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_45

    sget-object v0, Lcom/wssnps/smlModelDefine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-ne v0, v2, :cond_45

    .line 269
    const-string v0, "nps_wakeLock release"

    invoke-static {v2, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 270
    sget-object v0, Lcom/wssnps/smlModelDefine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 271
    sput-object v1, Lcom/wssnps/smlModelDefine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 275
    :cond_45
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getCpuBoostType()I

    move-result v0

    if-ne v0, v2, :cond_2c

    .line 277
    sget-object v0, Lcom/wssnps/smlModelDefine;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    if-eqz v0, :cond_2c

    sget-object v0, Lcom/wssnps/smlModelDefine;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$DVFSLock;->isHeld()Z

    move-result v0

    if-ne v0, v2, :cond_2c

    .line 279
    const-string v0, "mDVFSLock release"

    invoke-static {v2, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 280
    sget-object v0, Lcom/wssnps/smlModelDefine;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$DVFSLock;->release()V

    .line 281
    sput-object v1, Lcom/wssnps/smlModelDefine;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    goto :goto_2c
.end method
