.class public final Lcom/google/api/services/plus/model/PersonEmails;
.super Lcom/google/api/client/json/GenericJson;
.source "PersonEmails.java"


# instance fields
.field private primary:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "primary"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "type"
    .end annotation
.end field

.field private value:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "value"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method
