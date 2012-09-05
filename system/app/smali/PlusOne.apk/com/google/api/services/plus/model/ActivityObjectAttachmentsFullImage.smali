.class public final Lcom/google/api/services/plus/model/ActivityObjectAttachmentsFullImage;
.super Lcom/google/api/client/json/GenericJson;
.source "ActivityObjectAttachmentsFullImage.java"


# instance fields
.field private height:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "height"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "type"
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "url"
    .end annotation
.end field

.field private width:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "width"
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
