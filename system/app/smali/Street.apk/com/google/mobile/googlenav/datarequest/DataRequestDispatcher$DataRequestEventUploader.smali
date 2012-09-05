.class public final Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DataRequestEventUploader;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/mobile/googlenav/common/ExceptionReporter$ExceptionSaver;
.implements Lcom/google/mobile/googlenav/common/UserEventReporter$LogSaver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataRequestEventUploader"
.end annotation


# instance fields
.field private final drd:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;


# direct methods
.method private constructor <init>(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DataRequestEventUploader;->drd:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DataRequestEventUploader;-><init>(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;)V

    return-void
.end method


# virtual methods
.method public uploadEventLog(ZLjava/lang/Object;[B)Ljava/lang/Object;
    .registers 12

    const/4 v7, 0x0

    if-eqz p3, :cond_23

    array-length v0, p3

    const/4 v1, 0x2

    if-le v0, v1, :cond_23

    invoke-static {}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->access$1400()Ljava/util/HashSet;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/google/mobile/googlenav/common/UserEventUtil;->userEventLogContainsEventType([BLjava/util/Set;)Z

    move-result v5

    new-instance v0, Lcom/google/mobile/googlenav/datarequest/SimpleDataRequest;

    const/16 v1, 0xa

    const/4 v4, 0x0

    move-object v2, p3

    move v3, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/mobile/googlenav/datarequest/SimpleDataRequest;-><init>(I[BZZZLjava/lang/Object;)V

    invoke-static {}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->getInstance()Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-virtual {v1, v0}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->addDataRequest(Lcom/google/mobile/googlenav/datarequest/DataRequest;)V

    :cond_23
    move-object v0, v7

    :goto_24
    return-object v0

    :cond_25
    move-object v0, v7

    goto :goto_24
.end method
