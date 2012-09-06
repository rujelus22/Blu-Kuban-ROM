.class public final Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;
.super Ljava/lang/Object;
.source "ShadowNumberMapping.java"


# instance fields
.field private final apiMappingBuilder:Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;


# direct methods
.method public constructor <init>(Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;)V
    .registers 3
    .parameter "apiMapping"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "apiMapping"

    invoke-static {p1, v0}, Lcom/google/android/apps/common/base/Preconditions;->checkArgumentIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;)Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;->apiMappingBuilder:Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;

    .line 19
    return-void
.end method


# virtual methods
.method public getDestinationNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;->apiMappingBuilder:Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->getDestinationNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShadowNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;->apiMappingBuilder:Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->getShadowNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDestinationNumber(Ljava/lang/String;)V
    .registers 3
    .parameter "destinationNumber"

    .prologue
    .line 30
    const-string v0, "destinationNumber"

    invoke-static {p1, v0}, Lcom/google/android/apps/common/base/Preconditions;->checkArgumentIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;->apiMappingBuilder:Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->setDestinationNumber(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;

    .line 32
    return-void
.end method

.method public setShadowNumber(Ljava/lang/String;)V
    .registers 3
    .parameter "shadowNumber"

    .prologue
    .line 35
    const-string v0, "shadowNumber"

    invoke-static {p1, v0}, Lcom/google/android/apps/common/base/Preconditions;->checkArgumentIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;->apiMappingBuilder:Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->setShadowNumber(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;

    .line 37
    return-void
.end method
