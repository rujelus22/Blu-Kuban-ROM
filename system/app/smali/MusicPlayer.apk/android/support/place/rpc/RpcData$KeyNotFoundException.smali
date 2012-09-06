.class public Landroid/support/place/rpc/RpcData$KeyNotFoundException;
.super Ljava/lang/RuntimeException;
.source "RpcData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/place/rpc/RpcData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyNotFoundException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Landroid/support/place/rpc/RpcData;


# direct methods
.method public constructor <init>(Landroid/support/place/rpc/RpcData;)V
    .registers 2
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Landroid/support/place/rpc/RpcData$KeyNotFoundException;->this$0:Landroid/support/place/rpc/RpcData;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method
