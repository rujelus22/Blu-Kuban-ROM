.class public final Lcom/google/api/services/plusi/model/SyncMobileContactsRequest;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "SyncMobileContactsRequest.java"


# instance fields
.field public commonFields:Lcom/google/api/services/plusi/model/ApiaryFields;

.field public contact:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/MobileContact;",
            ">;"
        }
    .end annotation
.end field

.field public device:Ljava/lang/String;

.field public enableTracing:Ljava/lang/Boolean;

.field public type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    const-class v0, Lcom/google/api/services/plusi/model/MobileContact;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
