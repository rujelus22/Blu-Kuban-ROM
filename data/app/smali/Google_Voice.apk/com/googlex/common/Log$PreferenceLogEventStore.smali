.class Lcom/googlex/common/Log$PreferenceLogEventStore;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/googlex/common/Log$LogEventStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlex/common/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreferenceLogEventStore"
.end annotation


# instance fields
.field private final preference:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/googlex/common/Log$PreferenceLogEventStore;->preference:Ljava/lang/String;

    return-void
.end method

.method private static getPersistentStore()Lcom/googlex/common/io/PersistentStore;
    .registers 1

    invoke-static {}, Lcom/googlex/common/Config;->getInstance()Lcom/googlex/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/googlex/common/Config;->getPersistentStore()Lcom/googlex/common/io/PersistentStore;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public readEvents()[B
    .registers 3

    invoke-static {}, Lcom/googlex/common/Log$PreferenceLogEventStore;->getPersistentStore()Lcom/googlex/common/io/PersistentStore;

    move-result-object v0

    iget-object v1, p0, Lcom/googlex/common/Log$PreferenceLogEventStore;->preference:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/googlex/common/io/PersistentStore;->readPreference(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public writeEvents([B)V
    .registers 4

    invoke-static {}, Lcom/googlex/common/Log$PreferenceLogEventStore;->getPersistentStore()Lcom/googlex/common/io/PersistentStore;

    move-result-object v0

    iget-object v1, p0, Lcom/googlex/common/Log$PreferenceLogEventStore;->preference:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/googlex/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    return-void
.end method
