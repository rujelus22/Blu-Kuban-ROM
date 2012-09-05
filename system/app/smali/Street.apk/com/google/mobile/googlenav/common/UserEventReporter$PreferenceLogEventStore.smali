.class Lcom/google/mobile/googlenav/common/UserEventReporter$PreferenceLogEventStore;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/mobile/googlenav/common/UserEventReporter$LogEventStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mobile/googlenav/common/UserEventReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PreferenceLogEventStore"
.end annotation


# instance fields
.field private final preference:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mobile/googlenav/common/UserEventReporter$PreferenceLogEventStore;->preference:Ljava/lang/String;

    return-void
.end method

.method private static getPersistentStore()Lcom/google/mobile/googlenav/common/io/PersistentStore;
    .registers 1

    invoke-static {}, Lcom/google/mobile/googlenav/common/Config;->getInstance()Lcom/google/mobile/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mobile/googlenav/common/Config;->getPersistentStore()Lcom/google/mobile/googlenav/common/io/PersistentStore;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public readEvents()[B
    .registers 3

    invoke-static {}, Lcom/google/mobile/googlenav/common/UserEventReporter$PreferenceLogEventStore;->getPersistentStore()Lcom/google/mobile/googlenav/common/io/PersistentStore;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mobile/googlenav/common/UserEventReporter$PreferenceLogEventStore;->preference:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/mobile/googlenav/common/io/PersistentStore;->readPreference(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public writeEvents([B)V
    .registers 4

    invoke-static {}, Lcom/google/mobile/googlenav/common/UserEventReporter$PreferenceLogEventStore;->getPersistentStore()Lcom/google/mobile/googlenav/common/io/PersistentStore;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mobile/googlenav/common/UserEventReporter$PreferenceLogEventStore;->preference:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/google/mobile/googlenav/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    return-void
.end method
