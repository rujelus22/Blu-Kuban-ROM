.class public Lcom/google/android/apps/plus/api/WritePlusOneOperation;
.super Lcom/google/android/apps/plus/network/ApiaryOperation$PosOperation;
.source "WritePlusOneOperation.java"


# instance fields
.field private final mAdd:Z

.field private mPlusones:Lcom/google/api/services/pos/model/Plusones;

.field private final mToken:Ljava/lang/String;

.field private final mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "uri"
    .parameter "add"
    .parameter "token"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/network/ApiaryOperation$PosOperation;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p2, p0, Lcom/google/android/apps/plus/api/WritePlusOneOperation;->mUri:Ljava/lang/String;

    .line 26
    iput-boolean p3, p0, Lcom/google/android/apps/plus/api/WritePlusOneOperation;->mAdd:Z

    .line 27
    iput-object p4, p0, Lcom/google/android/apps/plus/api/WritePlusOneOperation;->mToken:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getPlusones()Lcom/google/api/services/pos/model/Plusones;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/plus/api/WritePlusOneOperation;->mPlusones:Lcom/google/api/services/pos/model/Plusones;

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
    .line 39
    iget-boolean v1, p0, Lcom/google/android/apps/plus/api/WritePlusOneOperation;->mAdd:Z

    if-eqz v1, :cond_30

    .line 40
    new-instance v1, Lcom/google/api/services/pos/model/Plusones;

    invoke-direct {v1}, Lcom/google/api/services/pos/model/Plusones;-><init>()V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/api/services/pos/model/Plusones;->setIsSetByViewer(Ljava/lang/Boolean;)Lcom/google/api/services/pos/model/Plusones;

    move-result-object v0

    .line 41
    .local v0, plusones:Lcom/google/api/services/pos/model/Plusones;
    iget-object v1, p0, Lcom/google/android/apps/plus/api/WritePlusOneOperation;->mToken:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 42
    iget-object v1, p0, Lcom/google/android/apps/plus/api/WritePlusOneOperation;->mToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/api/services/pos/model/Plusones;->setAbtk(Ljava/lang/String;)Lcom/google/api/services/pos/model/Plusones;

    .line 44
    :cond_1f
    invoke-virtual {p1}, Lcom/google/api/services/pos/Pos;->plusones()Lcom/google/api/services/pos/Pos$Plusones;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/api/WritePlusOneOperation;->mUri:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/google/api/services/pos/Pos$Plusones;->insert(Ljava/lang/String;Lcom/google/api/services/pos/model/Plusones;)Lcom/google/api/services/pos/Pos$Plusones$Insert;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/services/pos/Pos$Plusones$Insert;->execute()Lcom/google/api/services/pos/model/Plusones;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/api/WritePlusOneOperation;->mPlusones:Lcom/google/api/services/pos/model/Plusones;

    .line 48
    .end local v0           #plusones:Lcom/google/api/services/pos/model/Plusones;
    :goto_2f
    return-void

    .line 46
    :cond_30
    invoke-virtual {p1}, Lcom/google/api/services/pos/Pos;->plusones()Lcom/google/api/services/pos/Pos$Plusones;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/api/WritePlusOneOperation;->mUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/api/services/pos/Pos$Plusones;->delete(Ljava/lang/String;)Lcom/google/api/services/pos/Pos$Plusones$Delete;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/services/pos/Pos$Plusones$Delete;->execute()Lcom/google/api/services/pos/model/Plusones;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/api/WritePlusOneOperation;->mPlusones:Lcom/google/api/services/pos/model/Plusones;

    goto :goto_2f
.end method
