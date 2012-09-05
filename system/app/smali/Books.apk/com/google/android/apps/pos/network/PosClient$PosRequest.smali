.class public abstract Lcom/google/android/apps/pos/network/PosClient$PosRequest;
.super Ljava/lang/Object;
.source "PosClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/pos/network/PosClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "PosRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/apps/pos/model/PlusoneResponse;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/pos/network/PosClient;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/pos/network/PosClient;)V
    .registers 2
    .parameter

    .prologue
    .line 1166
    .local p0, this:Lcom/google/android/apps/pos/network/PosClient$PosRequest;,"Lcom/google/android/apps/pos/network/PosClient$PosRequest<TT;>;"
    iput-object p1, p0, Lcom/google/android/apps/pos/network/PosClient$PosRequest;->this$0:Lcom/google/android/apps/pos/network/PosClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract execute()Lcom/google/android/apps/pos/model/PlusoneResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/apps/pos/network/PosException;,
            Lcom/google/android/apps/pos/network/PosAuthorizationException;
        }
    .end annotation
.end method
