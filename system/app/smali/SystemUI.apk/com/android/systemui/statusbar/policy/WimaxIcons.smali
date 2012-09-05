.class Lcom/android/systemui/statusbar/policy/WimaxIcons;
.super Ljava/lang/Object;
.source "WimaxIcons.java"


# static fields
.field static final DATA_IN:I = 0x7f0200a0

.field static final DATA_INOUT:I = 0x7f020092

.field static final DATA_NONE:I = 0x7f02009f

.field static final DATA_OUT:I = 0x7f0200ab

#the value of this static final field might be set in the static constructor
.field static final WIFI_LEVEL_COUNT:I = 0x0

.field static final WIMAX_DISCONNECTED:I = 0x7f02009e

.field static final WIMAX_IDLE:I = 0x7f0200a8

.field static final WIMAX_SCANNING_ANIM:I = 0x7f020184

.field static final WIMAX_SIGNAL_STRENGTH:[[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_1e

    aput-object v1, v0, v3

    const/4 v1, 0x1

    new-array v2, v2, [I

    fill-array-data v2, :array_2a

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_SIGNAL_STRENGTH:[[I

    .line 43
    sget-object v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_SIGNAL_STRENGTH:[[I

    aget-object v0, v0, v3

    array-length v0, v0

    sput v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIFI_LEVEL_COUNT:I

    return-void

    .line 23
    :array_1e
    .array-data 0x4
        0x85t 0x1t 0x2t 0x7ft
        0x88t 0x1t 0x2t 0x7ft
        0x89t 0x1t 0x2t 0x7ft
        0x86t 0x1t 0x2t 0x7ft
    .end array-data

    :array_2a
    .array-data 0x4
        0x85t 0x1t 0x2t 0x7ft
        0x88t 0x1t 0x2t 0x7ft
        0x89t 0x1t 0x2t 0x7ft
        0x86t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
