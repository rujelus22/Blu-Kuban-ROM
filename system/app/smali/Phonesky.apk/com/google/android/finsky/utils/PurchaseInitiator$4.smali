.class final Lcom/google/android/finsky/utils/PurchaseInitiator$4;
.super Ljava/lang/Object;
.source "PurchaseInitiator.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/PurchaseInitiator;->createPurchaseStatusListener(Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/volley/Response$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$detailsUrl:Ljava/lang/String;

.field final synthetic val$docId:Ljava/lang/String;

.field final synthetic val$docTitle:Ljava/lang/String;

.field final synthetic val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field final synthetic val$offerType:I


# direct methods
.method constructor <init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$4;->val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iput-object p2, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$4;->val$docId:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$4;->val$docTitle:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$4;->val$offerType:I

    iput-object p5, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$4;->val$detailsUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;)V
    .registers 8
    .parameter "response"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$4;->val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$4;->val$docId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$4;->val$docTitle:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$4;->val$offerType:I

    iget-object v4, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$4;->val$detailsUrl:Ljava/lang/String;

    move-object v5, p1

    #calls: Lcom/google/android/finsky/utils/PurchaseInitiator;->handlePurchaseResponse(Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;)V
    invoke-static/range {v0 .. v5}, Lcom/google/android/finsky/utils/PurchaseInitiator;->access$200(Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;)V

    .line 231
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/utils/PurchaseInitiator$4;->onResponse(Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;)V

    return-void
.end method
