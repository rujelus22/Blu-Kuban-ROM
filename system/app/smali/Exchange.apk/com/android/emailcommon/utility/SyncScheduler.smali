.class public Lcom/android/emailcommon/utility/SyncScheduler;
.super Ljava/lang/Object;
.source "SyncScheduler.java"


# static fields
.field private static final sCalendar:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/utility/SyncScheduler;->sCalendar:Ljava/util/Calendar;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 159
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 161
    return-void
.end method
