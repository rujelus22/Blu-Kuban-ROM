.class final Lcom/google/android/finsky/FinskyApp$1;
.super Ljava/lang/Object;
.source "FinskyApp.java"

# interfaces
.implements Lcom/android/volley/RequestQueue$RequestFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/FinskyApp;->drain(Lcom/android/volley/RequestQueue;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$seq:I


# direct methods
.method constructor <init>(I)V
    .registers 2
    .parameter

    .prologue
    .line 191
    iput p1, p0, Lcom/google/android/finsky/FinskyApp$1;->val$seq:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/volley/Request;)Z
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, request:Lcom/android/volley/Request;,"Lcom/android/volley/Request<*>;"
    const/4 v2, 0x0

    .line 196
    instance-of v3, p1, Lcom/google/android/finsky/api/DfeRequest;

    if-eqz v3, :cond_f

    move-object v0, p1

    .line 197
    check-cast v0, Lcom/google/android/finsky/api/DfeRequest;

    .line 198
    .local v0, dfeRequest:Lcom/google/android/finsky/api/DfeRequest;,"Lcom/google/android/finsky/api/DfeRequest<*>;"
    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeRequest;->getAvoidBulkCancel()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 209
    .end local v0           #dfeRequest:Lcom/google/android/finsky/api/DfeRequest;,"Lcom/google/android/finsky/api/DfeRequest<*>;"
    :cond_e
    :goto_e
    return v2

    .line 201
    :cond_f
    instance-of v3, p1, Lcom/google/android/vending/remoting/api/VendingRequest;

    if-eqz v3, :cond_26

    move-object v1, p1

    .line 202
    check-cast v1, Lcom/google/android/vending/remoting/api/VendingRequest;

    .line 203
    .local v1, vendingRequest:Lcom/google/android/vending/remoting/api/VendingRequest;,"Lcom/google/android/vending/remoting/api/VendingRequest<**>;"
    invoke-virtual {v1}, Lcom/google/android/vending/remoting/api/VendingRequest;->getAvoidBulkCancel()Z

    move-result v3

    if-nez v3, :cond_e

    .line 209
    .end local v1           #vendingRequest:Lcom/google/android/vending/remoting/api/VendingRequest;,"Lcom/google/android/vending/remoting/api/VendingRequest<**>;"
    :cond_1c
    invoke-virtual {p1}, Lcom/android/volley/Request;->getSequence()I

    move-result v3

    iget v4, p0, Lcom/google/android/finsky/FinskyApp$1;->val$seq:I

    if-ge v3, v4, :cond_e

    const/4 v2, 0x1

    goto :goto_e

    .line 206
    :cond_26
    instance-of v3, p1, Lcom/google/android/finsky/billing/creditcard/EscrowRequest;

    if-eqz v3, :cond_1c

    goto :goto_e
.end method
