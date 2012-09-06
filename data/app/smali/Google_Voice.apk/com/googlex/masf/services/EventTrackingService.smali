.class public Lcom/googlex/masf/services/EventTrackingService;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlex/masf/services/EventTrackingService$EventTrackingRequest;
    }
.end annotation


# static fields
.field private static final DC:Ljava/lang/String; = "DistributionChannel"

.field private static final EVENT_TRACKING_SERVICE_URI:Ljava/lang/String; = "g:trk"

.field private static final INSTALL_NOTIFY:Ljava/lang/String; = "MIDlet-Install-Notify"

.field private static final LOCALE:Ljava/lang/String; = "DownloadLocale"

.field private static final LOG_EVENT_URI:Ljava/lang/String; = "g:trk/log"

.field private static final SESSION_PARAM:Ljava/lang/String; = "session"

.field private static logger:Lcom/googlex/debug/LogSource;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/googlex/masf/services/EventTrackingService;

    invoke-static {v0}, Lcom/googlex/debug/LogSource;->getLogSource(Ljava/lang/Class;)Lcom/googlex/debug/LogSource;

    move-result-object v0

    sput-object v0, Lcom/googlex/masf/services/EventTrackingService;->logger:Lcom/googlex/debug/LogSource;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/googlex/debug/LogSource;
    .registers 1

    sget-object v0, Lcom/googlex/masf/services/EventTrackingService;->logger:Lcom/googlex/debug/LogSource;

    return-object v0
.end method

.method public static trackActivation(I)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/googlex/masf/services/EventTrackingService;->trackActivation(ILcom/googlex/masf/ServiceCallback;)V

    return-void
.end method

.method public static trackActivation(ILcom/googlex/masf/ServiceCallback;)V
    .registers 5

    :try_start_0
    new-instance v0, Lcom/googlex/masf/services/EventTrackingService$EventTrackingRequest;

    invoke-direct {v0, p0, p1}, Lcom/googlex/masf/services/EventTrackingService$EventTrackingRequest;-><init>(ILcom/googlex/masf/ServiceCallback;)V

    invoke-virtual {v0}, Lcom/googlex/masf/services/EventTrackingService$EventTrackingRequest;->logActivation()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    :cond_8
    :goto_8
    return-void

    :catch_9
    move-exception v0

    sget-object v1, Lcom/googlex/masf/services/EventTrackingService;->logger:Lcom/googlex/debug/LogSource;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/googlex/debug/LogSource;->warning(Ljava/lang/Object;)V

    if-eqz p1, :cond_8

    invoke-interface {p1, v0}, Lcom/googlex/masf/ServiceCallback;->onRequestComplete(Ljava/lang/Object;)V

    goto :goto_8
.end method
