.class final Lcom/google/android/finsky/utils/PurchaseInitiator$5;
.super Ljava/lang/Object;
.source "PurchaseInitiator.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/PurchaseInitiator;->createPurchaseErrorListener(Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/volley/Response$ErrorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
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
    .line 278
    iput-object p1, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$5;->val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iput-object p2, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$5;->val$docId:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$5;->val$docTitle:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$5;->val$offerType:I

    iput-object p5, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$5;->val$detailsUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 11
    .parameter "error"

    .prologue
    .line 281
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    const v1, 0x7f070156

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 283
    .local v5, title:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v6

    .line 284
    .local v6, errorMessage:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$5;->val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$5;->val$docId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$5;->val$docTitle:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$5;->val$offerType:I

    iget-object v4, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$5;->val$detailsUrl:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v7, v6

    #calls: Lcom/google/android/finsky/utils/PurchaseInitiator;->switchToError(Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v8}, Lcom/google/android/finsky/utils/PurchaseInitiator;->access$300(Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return-void
.end method
