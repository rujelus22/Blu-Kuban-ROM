.class public Lcom/vlingo/client/vvs/config/VLConfigManager;
.super Ljava/lang/Object;
.source "VLConfigManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static importConfig(Ljava/lang/String;Lcom/vlingo/client/core/vlservice/config/VLConfigParser;)V
    .registers 2
    .parameter "vlConfigXml"
    .parameter "configParser"

    .prologue
    .line 47
    invoke-static {p0, p1}, Lcom/vlingo/client/vvs/config/VLConfigImporter;->importSettings(Ljava/lang/String;Lcom/vlingo/client/core/vlservice/config/VLConfigParser;)V

    .line 48
    return-void
.end method
