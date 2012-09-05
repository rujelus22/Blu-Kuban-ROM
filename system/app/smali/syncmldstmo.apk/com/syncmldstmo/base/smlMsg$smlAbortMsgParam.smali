.class public Lcom/syncmldstmo/base/smlMsg$smlAbortMsgParam;
.super Ljava/lang/Object;
.source "smlMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/smlMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "smlAbortMsgParam"
.end annotation


# instance fields
.field public abortCode:I

.field public userReq:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
