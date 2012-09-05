.class public final Lcom/google/api/services/plus/model/ActivityObjectResharers;
.super Lcom/google/api/client/json/GenericJson;
.source "ActivityObjectResharers.java"


# instance fields
.field private selfLink:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "selfLink"
    .end annotation
.end field

.field private totalItems:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "totalItems"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method
