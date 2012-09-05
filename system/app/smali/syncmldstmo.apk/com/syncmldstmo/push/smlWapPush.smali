.class public Lcom/syncmldstmo/push/smlWapPush;
.super Ljava/lang/Object;
.source "smlWapPush.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public pBody:[B

.field public tWapPushInfo:Lcom/syncmldstmo/push/smlWapPushInfo;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/syncmldstmo/push/smlWapPushInfo;

    invoke-direct {v0}, Lcom/syncmldstmo/push/smlWapPushInfo;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/push/smlWapPush;->tWapPushInfo:Lcom/syncmldstmo/push/smlWapPushInfo;

    .line 15
    return-void
.end method
