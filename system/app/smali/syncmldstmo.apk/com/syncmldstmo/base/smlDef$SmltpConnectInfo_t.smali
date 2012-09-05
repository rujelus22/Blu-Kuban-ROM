.class public Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;
.super Ljava/lang/Object;
.source "smlDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/smlDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmltpConnectInfo_t"
.end annotation


# instance fields
.field public sinfo:Lcom/syncmldstmo/base/smlDef$SmltpServerInfo_t;

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 488
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 492
    new-instance v0, Lcom/syncmldstmo/base/smlDef$SmltpServerInfo_t;

    invoke-direct {v0}, Lcom/syncmldstmo/base/smlDef$SmltpServerInfo_t;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;->sinfo:Lcom/syncmldstmo/base/smlDef$SmltpServerInfo_t;

    .line 488
    return-void
.end method
