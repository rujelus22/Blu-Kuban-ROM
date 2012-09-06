.class public final Lcom/google/api/services/plusi/model/DataContactGroupMembershipJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "DataContactGroupMembershipJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/DataContactGroupMembership;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/DataContactGroupMembershipJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/DataContactGroupMembershipJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/DataContactGroupMembershipJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/DataContactGroupMembershipJson;->INSTANCE:Lcom/google/api/services/plusi/model/DataContactGroupMembershipJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/DataContactGroupMembership;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "groupId"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/DataContactGroupMembershipJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/DataContactGroupMembershipJson;->INSTANCE:Lcom/google/api/services/plusi/model/DataContactGroupMembershipJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/DataContactGroupMembership;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataContactGroupMembership;->groupId:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/DataContactGroupMembership;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/DataContactGroupMembershipJson;->getValues(Lcom/google/api/services/plusi/model/DataContactGroupMembership;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/DataContactGroupMembership;
    .registers 2

    .prologue
    .line 27
    new-instance v0, Lcom/google/api/services/plusi/model/DataContactGroupMembership;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/DataContactGroupMembership;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/DataContactGroupMembershipJson;->newInstance()Lcom/google/api/services/plusi/model/DataContactGroupMembership;

    move-result-object v0

    return-object v0
.end method
