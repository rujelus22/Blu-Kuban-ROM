.class public Lcom/google/android/apps/plus/api/GetPlusOneOperation;
.super Lcom/google/android/apps/plus/network/ApiaryOperation$PosOperation;
.source "GetPlusOneOperation.java"


# instance fields
.field private mPlusones:Lcom/google/api/services/pos/model/Plusones;

.field private final mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/network/ApiaryOperation$PosOperation;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p2, p0, Lcom/google/android/apps/plus/api/GetPlusOneOperation;->mUri:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getPlusones()Lcom/google/api/services/pos/model/Plusones;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/apps/plus/api/GetPlusOneOperation;->mPlusones:Lcom/google/api/services/pos/model/Plusones;

    return-object v0
.end method

.method public performApiaryCalls(Lcom/google/api/services/pos/Pos;Lcom/google/android/apps/plus/network/ApiaryApiInfo;)V
    .registers 6
    .parameter "pos"
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p1}, Lcom/google/api/services/pos/Pos;->plusones()Lcom/google/api/services/pos/Pos$Plusones;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/api/GetPlusOneOperation;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/api/services/pos/Pos$Plusones;->get(Ljava/lang/String;)Lcom/google/api/services/pos/Pos$Plusones$Get;

    move-result-object v0

    const-wide/16 v1, 0xa

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/services/pos/Pos$Plusones$Get;->setMaxPeople(Ljava/lang/Long;)Lcom/google/api/services/pos/Pos$Plusones$Get;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/pos/Pos$Plusones$Get;->execute()Lcom/google/api/services/pos/model/Plusones;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/api/GetPlusOneOperation;->mPlusones:Lcom/google/api/services/pos/model/Plusones;

    .line 41
    return-void
.end method
