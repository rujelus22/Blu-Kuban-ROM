.class public abstract Lcom/google/android/apps/pos/network/PosClient$PosPlusoneRequest;
.super Lcom/google/android/apps/pos/network/PosClient$PosRequest;
.source "PosClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/pos/network/PosClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "PosPlusoneRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/apps/pos/model/PlusoneResponse;",
        ">",
        "Lcom/google/android/apps/pos/network/PosClient$PosRequest",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected ad:Ljava/lang/Boolean;

.field protected id:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/apps/pos/network/PosClient;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/pos/network/PosClient;)V
    .registers 2
    .parameter

    .prologue
    .line 1138
    .local p0, this:Lcom/google/android/apps/pos/network/PosClient$PosPlusoneRequest;,"Lcom/google/android/apps/pos/network/PosClient$PosPlusoneRequest<TT;>;"
    iput-object p1, p0, Lcom/google/android/apps/pos/network/PosClient$PosPlusoneRequest;->this$0:Lcom/google/android/apps/pos/network/PosClient;

    invoke-direct {p0, p1}, Lcom/google/android/apps/pos/network/PosClient$PosRequest;-><init>(Lcom/google/android/apps/pos/network/PosClient;)V

    return-void
.end method
