.class final Lcom/android/athome/picker/b/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/rpc/RpcErrorHandler;


# instance fields
.field final synthetic a:Lcom/android/athome/picker/b/t;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/b/t;)V
    .registers 2
    .parameter

    .prologue
    .line 685
    iput-object p1, p0, Lcom/android/athome/picker/b/u;->a:Lcom/android/athome/picker/b/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/support/place/rpc/RpcError;)V
    .registers 4
    .parameter

    .prologue
    .line 688
    const-string v0, "AtHomeMediaRouter"

    const-string v1, "Error getting device name."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    return-void
.end method
