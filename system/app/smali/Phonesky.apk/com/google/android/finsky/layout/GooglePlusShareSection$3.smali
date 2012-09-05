.class Lcom/google/android/finsky/layout/GooglePlusShareSection$3;
.super Ljava/lang/Object;
.source "GooglePlusShareSection.java"

# interfaces
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/GooglePlusShareSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/GooglePlusShareSection;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/GooglePlusShareSection;)V
    .registers 2
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$3;->this$0:Lcom/google/android/finsky/layout/GooglePlusShareSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataChanged()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 239
    iget-object v6, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$3;->this$0:Lcom/google/android/finsky/layout/GooglePlusShareSection;

    #setter for: Lcom/google/android/finsky/layout/GooglePlusShareSection;->mDocumentToShare:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v6, v8}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->access$102(Lcom/google/android/finsky/layout/GooglePlusShareSection;Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/api/model/Document;

    .line 240
    const-wide/16 v1, 0x0

    .line 242
    .local v1, mostRecentPurchase:J
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getPurchaseStatusTracker()Lcom/google/android/finsky/model/PurchaseStatusTracker;

    move-result-object v5

    .line 243
    .local v5, tracker:Lcom/google/android/finsky/model/PurchaseStatusTracker;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    iget-object v6, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$3;->this$0:Lcom/google/android/finsky/layout/GooglePlusShareSection;

    #getter for: Lcom/google/android/finsky/layout/GooglePlusShareSection;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;
    invoke-static {v6}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->access$800(Lcom/google/android/finsky/layout/GooglePlusShareSection;)Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/DfeList;->getCount()I

    move-result v6

    if-ge v0, v6, :cond_56

    .line 244
    iget-object v6, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$3;->this$0:Lcom/google/android/finsky/layout/GooglePlusShareSection;

    #getter for: Lcom/google/android/finsky/layout/GooglePlusShareSection;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;
    invoke-static {v6}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->access$800(Lcom/google/android/finsky/layout/GooglePlusShareSection;)Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/android/finsky/api/model/DfeList;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/api/model/Document;

    .line 245
    .local v3, song:Lcom/google/android/finsky/api/model/Document;
    invoke-virtual {v3, v8}, Lcom/google/android/finsky/api/model/Document;->ownedByUser(Lcom/google/android/finsky/utils/PackageInfoCache;)Z

    move-result v6

    if-eqz v6, :cond_53

    .line 246
    iget-object v6, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$3;->this$0:Lcom/google/android/finsky/layout/GooglePlusShareSection;

    #getter for: Lcom/google/android/finsky/layout/GooglePlusShareSection;->mDocumentToShare:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v6}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->access$100(Lcom/google/android/finsky/layout/GooglePlusShareSection;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v6

    if-nez v6, :cond_3c

    .line 248
    iget-object v6, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$3;->this$0:Lcom/google/android/finsky/layout/GooglePlusShareSection;

    #setter for: Lcom/google/android/finsky/layout/GooglePlusShareSection;->mDocumentToShare:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v6, v3}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->access$102(Lcom/google/android/finsky/layout/GooglePlusShareSection;Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/api/model/Document;

    .line 252
    :cond_3c
    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/model/PurchaseStatusTracker;->getPurchaseStatus(Ljava/lang/String;)Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;

    move-result-object v4

    .line 253
    .local v4, status:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;
    if-eqz v4, :cond_53

    iget-wide v6, v4, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;->lastUpdate:J

    cmp-long v6, v6, v1

    if-lez v6, :cond_53

    .line 254
    iget-wide v1, v4, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;->lastUpdate:J

    .line 255
    iget-object v6, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$3;->this$0:Lcom/google/android/finsky/layout/GooglePlusShareSection;

    #setter for: Lcom/google/android/finsky/layout/GooglePlusShareSection;->mDocumentToShare:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v6, v3}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->access$102(Lcom/google/android/finsky/layout/GooglePlusShareSection;Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/api/model/Document;

    .line 243
    .end local v4           #status:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;
    :cond_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 260
    .end local v3           #song:Lcom/google/android/finsky/api/model/Document;
    :cond_56
    iget-object v6, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$3;->this$0:Lcom/google/android/finsky/layout/GooglePlusShareSection;

    #calls: Lcom/google/android/finsky/layout/GooglePlusShareSection;->updateWithDocument()V
    invoke-static {v6}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->access$700(Lcom/google/android/finsky/layout/GooglePlusShareSection;)V

    .line 261
    return-void
.end method
