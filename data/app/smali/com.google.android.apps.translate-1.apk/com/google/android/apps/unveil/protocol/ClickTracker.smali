.class public Lcom/google/android/apps/unveil/protocol/ClickTracker;
.super Ljava/lang/Object;
.source "ClickTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/protocol/ClickTracker$DefaultClickLogConnector;,
        Lcom/google/android/apps/unveil/protocol/ClickTracker$ClickLogConnector;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_PARALLEL_REQUESTS:I = 0x2

.field private static final TRACKING_ID_REQUIRED_CLICKS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private final clickTrackingPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final connector:Lcom/google/android/apps/unveil/protocol/ClickTracker$ClickLogConnector;

.field private final logRequestsWithoutTrackingIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final responseHandler:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler",
            "<",
            "Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;",
            ">;"
        }
    .end annotation
.end field

.field private sessionId:Ljava/lang/String;

.field private trackingId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 40
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/protocol/ClickTracker;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    .line 54
    sget-object v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->RESULT_CLICK_IN_RESULTS_LIST:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    const/16 v1, 0x26

    new-array v1, v1, [Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->BOUNDING_BOX_CLICK_ON_RESULTS_PAGE:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->RESULT_CLICK_VIA_SCROLL_BALL_ON_RESULTS_PAGE:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->BACK_BUTTON_FROM_RESULTS_LIST_PAGE:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->BACK_BUTTON_FROM_RESULT_PAGE:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->NEW_SEARCH_BUTTON_FROM_RESULT_PAGE:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->EYECANDY_RESULT_CLICK:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->RATINGS_OPENED_ON_RESULTS_LIST_PAGE:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->RATINGS_CLOSED_ON_RESULTS_LIST_PAGE:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->TAP_OUTSIDE_BOUNDING_BOX_HIDE_RESULTS_LIST:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->TAP_OUTSIDE_BOUNDING_BOX_SHOW_RESULTS_LIST:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->RESULT_HTML_CACHED:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->DRAWER_OPENED:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->DRAWER_SEMI:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->DRAWER_CLOSED:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->SHOW_FULL_SIMILAR_IMAGE:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->PUGGLE_CLICK_LIST_VIEW:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    sget-object v3, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->PUGGLE_CLICK_GRID_VIEW:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    sget-object v3, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->PUGGLE_REFINE_QUERY_SPEECH:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    sget-object v3, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->PUGGLE_REFINE_QUERY_TYPE:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    sget-object v3, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->PUGGLE_RESULT_CLICK_IN_RESULT_LIST:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    aput-object v3, v1, v2

    const/16 v2, 0x14

    sget-object v3, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->PUGGLE_EXTERNAL_CLICK_IN_RESULT_VIEW:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    aput-object v3, v1, v2

    const/16 v2, 0x15

    sget-object v3, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->BACK_BUTTON_FROM_PUGGLE_RESULT:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    aput-object v3, v1, v2

    const/16 v2, 0x16

    sget-object v3, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->SUGGEST_A_RESULT_BUTTON_CLICK:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    aput-object v3, v1, v2

    const/16 v2, 0x17

    sget-object v3, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->TAG_IMAGE_CONTINUE:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    aput-object v3, v1, v2

    const/16 v2, 0x18

    sget-object v3, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->TAG_IMAGE_CANCEL:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    aput-object v3, v1, v2

    const/16 v2, 0x19

    sget-object v3, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->TAG_IMAGE_BACK:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    sget-object v3, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->DESCRIBE_SUBMIT:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    sget-object v3, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->DESCRIBE_CANCEL:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    sget-object v3, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->DESCRIBE_BACK:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    sget-object v3, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->CONTINUOUS_TIMELINE_THUMBNAIL_TAP:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    sget-object v3, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->CONTINUOUS_TIMELINE_SWIPE:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    sget-object v3, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->CONTINUOUS_VIEW_ALL_RESULTS:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    aput-object v3, v1, v2

    const/16 v2, 0x20

    sget-object v3, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->CONTINUOUS_ALL_RESULTS_RESULT_ITEM_TAP:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    aput-object v3, v1, v2

    const/16 v2, 0x21

    sget-object v3, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->RESULT_SHOW_EXPANDED_RESULT:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    aput-object v3, v1, v2

    const/16 v2, 0x22

    sget-object v3, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->RESULT_DISMBIGUATION_ACTION:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    aput-object v3, v1, v2

    const/16 v2, 0x23

    sget-object v3, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->RESULT_EXPANDED_RESULT_ACTION:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    aput-object v3, v1, v2

    const/16 v2, 0x24

    sget-object v3, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->CONTINUOUS_CLICK_TO_PAUSE:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    aput-object v3, v1, v2

    const/16 v2, 0x25

    sget-object v3, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->CONTINUOUS_AUTOMATED_PAUSE:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/unveil/protocol/ClickTracker;->TRACKING_ID_REQUIRED_CLICKS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Landroid/content/res/Resources;Lcom/google/android/apps/unveil/protocol/ClickTracker$ClickLogConnector;)V
    .registers 5
    .parameter "preferences"
    .parameter "resources"
    .parameter "connector"

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Lcom/google/android/apps/unveil/protocol/ClickTracker$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/unveil/protocol/ClickTracker$1;-><init>(Lcom/google/android/apps/unveil/protocol/ClickTracker;)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/ClickTracker;->responseHandler:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;

    .line 182
    iput-object p3, p0, Lcom/google/android/apps/unveil/protocol/ClickTracker;->connector:Lcom/google/android/apps/unveil/protocol/ClickTracker$ClickLogConnector;

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/ClickTracker;->logRequestsWithoutTrackingIds:Ljava/util/ArrayList;

    .line 184
    new-instance v0, Lcom/google/android/apps/unveil/protocol/ClickTrackingPreferenceChangeListener;

    invoke-direct {v0, p0, p2}, Lcom/google/android/apps/unveil/protocol/ClickTrackingPreferenceChangeListener;-><init>(Lcom/google/android/apps/unveil/protocol/ClickTracker;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/ClickTracker;->clickTrackingPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 186
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/ClickTracker;->clickTrackingPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 187
    return-void
.end method

.method static synthetic access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/android/apps/unveil/protocol/ClickTracker;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-object v0
.end method

.method private addToRequests(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;)V
    .registers 4
    .parameter "logRequest"

    .prologue
    .line 261
    invoke-virtual {p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->hasClientClick()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 262
    sget-object v0, Lcom/google/android/apps/unveil/protocol/ClickTracker;->TRACKING_ID_REQUIRED_CLICKS:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->getClientClick()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->getClickTarget()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 263
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/protocol/ClickTracker;->maybeSendRequestWithTrackingId(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;)V

    .line 269
    :goto_19
    return-void

    .line 268
    :cond_1a
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/protocol/ClickTracker;->sendRequest(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;)V

    goto :goto_19
.end method

.method private static get(Landroid/content/Context;)Lcom/google/android/apps/unveil/protocol/ClickTracker;
    .registers 2
    .parameter "context"

    .prologue
    .line 177
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/UnveilContext;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/UnveilContext;->getClickTracker()Lcom/google/android/apps/unveil/protocol/ClickTracker;

    move-result-object v0

    return-object v0
.end method

.method public static logActionClick(Landroid/view/View;Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;Lcom/google/android/apps/unveil/results/ResultItem;I)V
    .registers 5
    .parameter "view"
    .parameter "clickTarget"
    .parameter "resultItem"
    .parameter "actionPosition"

    .prologue
    .line 365
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/unveil/protocol/ClickTracker;->get(Landroid/content/Context;)Lcom/google/android/apps/unveil/protocol/ClickTracker;

    move-result-object v0

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/apps/unveil/protocol/ClickTracker;->logActionClick(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;Lcom/google/android/apps/unveil/results/ResultItem;I)V

    .line 366
    return-void
.end method

.method private logActionClick(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;Lcom/google/android/apps/unveil/results/ResultItem;I)V
    .registers 7
    .parameter "clickTarget"
    .parameter "resultItem"
    .parameter "actionPosition"

    .prologue
    .line 370
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/ClickTracker;->newRequestBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    move-result-object v0

    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->setClickTarget(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/apps/unveil/results/ResultItem;->getResultPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->setResultPosition(I)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/apps/unveil/results/ResultItem;->getAnnotationResult()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getResultId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->setResultId(Ljava/lang/String;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->setActionPosition(I)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->setClientClick(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/unveil/protocol/ClickTracker;->addToRequests(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;)V

    .line 375
    return-void
.end method

.method public static logClick(Landroid/content/Context;Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;)V
    .registers 3
    .parameter "context"
    .parameter "clickTarget"

    .prologue
    .line 206
    invoke-static {p0}, Lcom/google/android/apps/unveil/protocol/ClickTracker;->get(Landroid/content/Context;)Lcom/google/android/apps/unveil/protocol/ClickTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/protocol/ClickTracker;->logClick(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;)V

    .line 207
    return-void
.end method

.method public static logClick(Landroid/view/View;Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;)V
    .registers 3
    .parameter "view"
    .parameter "clickTarget"

    .prologue
    .line 210
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/apps/unveil/protocol/ClickTracker;->logClick(Landroid/content/Context;Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;)V

    .line 211
    return-void
.end method

.method public static logResultClick(Landroid/content/Context;Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;Lcom/google/android/apps/unveil/results/ResultItem;I)V
    .registers 5
    .parameter "context"
    .parameter "clickTarget"
    .parameter "resultItem"
    .parameter "displayPosition"

    .prologue
    .line 347
    invoke-static {p0}, Lcom/google/android/apps/unveil/protocol/ClickTracker;->get(Landroid/content/Context;)Lcom/google/android/apps/unveil/protocol/ClickTracker;

    move-result-object v0

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/apps/unveil/protocol/ClickTracker;->logResultClick(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;Lcom/google/android/apps/unveil/results/ResultItem;I)V

    .line 348
    return-void
.end method

.method private logResultClick(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;Lcom/google/android/apps/unveil/results/ResultItem;I)V
    .registers 8
    .parameter "clickTarget"
    .parameter "resultItem"
    .parameter "displayPosition"

    .prologue
    .line 352
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->setClickTarget(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/apps/unveil/results/ResultItem;->getResultPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->setResultPosition(I)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/apps/unveil/results/ResultItem;->getAnnotationResult()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getResultId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->setResultId(Ljava/lang/String;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->setDisplayPosition(I)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    move-result-object v0

    .line 357
    .local v0, clientClick:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/ClickTracker;->newRequestBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    move-result-object v1

    .line 358
    .local v1, request:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;
    invoke-virtual {v1, v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->setClientClick(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    .line 359
    invoke-direct {p0, v1}, Lcom/google/android/apps/unveil/protocol/ClickTracker;->addToRequests(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;)V

    .line 360
    return-void
.end method

.method private maybeSendRequestWithTrackingId(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;)V
    .registers 3
    .parameter "logRequest"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/ClickTracker;->trackingId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 274
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/ClickTracker;->logRequestsWithoutTrackingIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    :goto_d
    return-void

    .line 276
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/ClickTracker;->trackingId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->setTrackingId(Ljava/lang/String;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    .line 277
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/protocol/ClickTracker;->sendRequest(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;)V

    goto :goto_d
.end method

.method public static newDefaultLogConnector(Lcom/google/android/apps/unveil/network/AbstractConnector;)Lcom/google/android/apps/unveil/protocol/ClickTracker$ClickLogConnector;
    .registers 3
    .parameter "connector"

    .prologue
    .line 160
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 161
    .local v0, executor:Ljava/util/concurrent/ExecutorService;
    new-instance v1, Lcom/google/android/apps/unveil/protocol/ClickTracker$DefaultClickLogConnector;

    invoke-direct {v1, p0, v0}, Lcom/google/android/apps/unveil/protocol/ClickTracker$DefaultClickLogConnector;-><init>(Lcom/google/android/apps/unveil/network/AbstractConnector;Ljava/util/concurrent/Executor;)V

    return-object v1
.end method

.method private static newRequestBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;
    .registers 3

    .prologue
    .line 165
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    move-result-object v0

    .line 166
    .local v0, builder:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->setMsSinceEpoch(J)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    .line 167
    return-object v0
.end method

.method private sendRequest(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;)V
    .registers 5
    .parameter "request"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/ClickTracker;->sessionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 283
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/ClickTracker;->sessionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->setSessionId(Ljava/lang/String;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    .line 285
    :cond_d
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/ClickTracker;->connector:Lcom/google/android/apps/unveil/protocol/ClickTracker$ClickLogConnector;

    invoke-virtual {p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->build()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/ClickTracker;->responseHandler:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/unveil/protocol/ClickTracker$ClickLogConnector;->sendRequest(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;)V

    .line 286
    return-void
.end method


# virtual methods
.method public clearTrackingId()V
    .registers 2

    .prologue
    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/ClickTracker;->trackingId:Ljava/lang/String;

    .line 332
    return-void
.end method

.method public getTrackingId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/ClickTracker;->trackingId:Ljava/lang/String;

    return-object v0
.end method

.method public logClick(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;)V
    .registers 8
    .parameter "clickTarget"

    .prologue
    .line 217
    sget-object v2, Lcom/google/android/apps/unveil/protocol/ClickTracker;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "Logging simple click: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/ClickTracker;->newRequestBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    move-result-object v1

    .line 220
    .local v1, clickRequest:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    move-result-object v0

    .line 221
    .local v0, click:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;
    invoke-virtual {v0, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->setClickTarget(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    .line 223
    invoke-virtual {v1, v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->setClientClick(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    .line 225
    invoke-direct {p0, v1}, Lcom/google/android/apps/unveil/protocol/ClickTracker;->addToRequests(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;)V

    .line 226
    return-void
.end method

.method public logClick(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;I)V
    .registers 5
    .parameter "clickTarget"
    .parameter "resultPosition"

    .prologue
    .line 232
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/ClickTracker;->newRequestBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    move-result-object v1

    .line 234
    .local v1, clickRequest:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    move-result-object v0

    .line 235
    .local v0, click:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;
    invoke-virtual {v0, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->setClickTarget(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    .line 236
    invoke-virtual {v0, p2}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->setResultPosition(I)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    .line 238
    invoke-virtual {v1, v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->setClientClick(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    .line 240
    invoke-direct {p0, v1}, Lcom/google/android/apps/unveil/protocol/ClickTracker;->addToRequests(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;)V

    .line 241
    return-void
.end method

.method public logClick(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;II)V
    .registers 6
    .parameter "clickTarget"
    .parameter "resultPosition"
    .parameter "resultsAboveFold"

    .prologue
    .line 248
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/ClickTracker;->newRequestBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    move-result-object v1

    .line 250
    .local v1, clickRequest:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    move-result-object v0

    .line 251
    .local v0, click:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;
    invoke-virtual {v0, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->setClickTarget(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    .line 252
    invoke-virtual {v0, p2}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->setResultPosition(I)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    .line 253
    invoke-virtual {v0, p3}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->setResultsShownAboveFold(I)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    .line 255
    invoke-virtual {v1, v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->setClientClick(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    .line 257
    invoke-direct {p0, v1}, Lcom/google/android/apps/unveil/protocol/ClickTracker;->addToRequests(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;)V

    .line 258
    return-void
.end method

.method public logInstall(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "oldPreviousVersion"
    .parameter "installedVersion"

    .prologue
    .line 296
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    move-result-object v1

    .line 298
    .local v1, logEventRequest:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->setMsSinceEpoch(J)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    .line 300
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    move-result-object v0

    .line 301
    .local v0, install:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;
    const-string v2, "0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 302
    invoke-virtual {v0, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->setUpgradeFrom(Ljava/lang/String;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    .line 304
    :cond_1a
    invoke-virtual {v0, p2}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->setInstalledVersion(Ljava/lang/String;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    .line 305
    invoke-virtual {v1, v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->setClientInstall(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    .line 307
    invoke-direct {p0, v1}, Lcom/google/android/apps/unveil/protocol/ClickTracker;->addToRequests(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;)V

    .line 308
    return-void
.end method

.method public logNotificationClick(I)V
    .registers 5
    .parameter "notificationCount"

    .prologue
    .line 193
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/ClickTracker;->newRequestBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    move-result-object v1

    .line 195
    .local v1, clickRequest:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    move-result-object v0

    .line 196
    .local v0, click:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;
    sget-object v2, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->SEARCH_FROM_CAMERA_GOGGLES_NOTIFICATION:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    invoke-virtual {v0, v2}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->setClickTarget(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    .line 197
    invoke-virtual {v0, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->setNotificationResultsCount(I)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    .line 199
    invoke-virtual {v1, v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->setClientClick(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    .line 201
    invoke-direct {p0, v1}, Lcom/google/android/apps/unveil/protocol/ClickTracker;->addToRequests(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;)V

    .line 202
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .registers 2
    .parameter "sessionId"

    .prologue
    .line 335
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/ClickTracker;->sessionId:Ljava/lang/String;

    .line 336
    return-void
.end method

.method public declared-synchronized setTrackingId(Ljava/lang/String;)V
    .registers 5
    .parameter "trackingId"

    .prologue
    .line 316
    monitor-enter p0

    if-eqz p1, :cond_26

    .line 317
    :try_start_3
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/ClickTracker;->trackingId:Ljava/lang/String;

    .line 318
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/ClickTracker;->logRequestsWithoutTrackingIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    .line 319
    .local v0, builder:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;
    invoke-virtual {v0, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->setTrackingId(Ljava/lang/String;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    .line 320
    invoke-direct {p0, v0}, Lcom/google/android/apps/unveil/protocol/ClickTracker;->sendRequest(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;)V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1e

    goto :goto_b

    .line 316
    .end local v0           #builder:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_1e
    move-exception v2

    monitor-exit p0

    throw v2

    .line 322
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_21
    :try_start_21
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/ClickTracker;->logRequestsWithoutTrackingIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_1e

    .line 324
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_26
    monitor-exit p0

    return-void
.end method
