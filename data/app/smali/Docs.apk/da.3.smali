.class public final Lda;
.super Ljava/lang/Object;
.source "R.java"


# static fields
.field public static final CustomButton:[I = null

.field public static final CustomButton_layout:I = 0x0

.field public static final DroppableNavigationEntryRow:[I = null

.field public static final DroppableNavigationEntryRow_entryLayout:I = 0x0

.field public static final HomeScreenEntry:[I = null

.field public static final HomeScreenEntry_icon:I = 0x1

.field public static final HomeScreenEntry_title:I = 0x0

.field public static final LinearLayoutListView:[I = null

.field public static final LinearLayoutListView_childWidth:I = 0x0

.field public static final Theme:[I = null

.field public static final Theme_scrubberBackgroundDrawable:I = 0x0

.field public static final Theme_scrubberCalloutDrawable:I = 0x2

.field public static final Theme_scrubberDrawable:I = 0x1

.field public static final Theme_scrubberTrackDrawable:I = 0x3

.field public static final Theme_scrubberUndoDrawable:I = 0x4

.field public static final TitleBarEntry:[I

.field public static final TitleBarEntry_controls_enabled:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3647
    new-array v0, v3, [I

    const v1, 0x7f010008

    aput v1, v0, v2

    sput-object v0, Lda;->CustomButton:[I

    .line 3670
    new-array v0, v3, [I

    const v1, 0x7f010009

    aput v1, v0, v2

    sput-object v0, Lda;->DroppableNavigationEntryRow:[I

    .line 3695
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_38

    sput-object v0, Lda;->HomeScreenEntry:[I

    .line 3732
    new-array v0, v3, [I

    const v1, 0x7f01000a

    aput v1, v0, v2

    sput-object v0, Lda;->LinearLayoutListView:[I

    .line 3769
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_40

    sput-object v0, Lda;->Theme:[I

    .line 3833
    new-array v0, v3, [I

    const v1, 0x7f010002

    aput v1, v0, v2

    sput-object v0, Lda;->TitleBarEntry:[I

    return-void

    .line 3695
    nop

    :array_38
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
    .end array-data

    .line 3769
    :array_40
    .array-data 0x4
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
        0x7t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
