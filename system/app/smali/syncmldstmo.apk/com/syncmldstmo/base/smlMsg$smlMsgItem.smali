.class public Lcom/syncmldstmo/base/smlMsg$smlMsgItem;
.super Ljava/lang/Object;
.source "smlMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/smlMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "smlMsgItem"
.end annotation


# instance fields
.field public param:Lcom/syncmldstmo/base/smlMsg$smlMsgParam;

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
