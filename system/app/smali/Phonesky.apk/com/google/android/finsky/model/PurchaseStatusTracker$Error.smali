.class public Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;
.super Ljava/lang/Object;
.source "PurchaseStatusTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/model/PurchaseStatusTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Error"
.end annotation


# instance fields
.field public briefMessage:Ljava/lang/String;

.field public detailedMessage:Ljava/lang/String;

.field public detailsUrl:Ljava/lang/String;

.field public docTitle:Ljava/lang/String;

.field public sourceUrl:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 58
    const-string v0, "Error{title=\'%s\', docTitle=\'%s\', briefMessage=\'%s\', detailedMessage=\'%s\', sourceUrl=\'%s\', detailsUrl=\'%s\'}"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;->title:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;->docTitle:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;->briefMessage:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;->detailedMessage:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;->sourceUrl:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;->detailsUrl:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
