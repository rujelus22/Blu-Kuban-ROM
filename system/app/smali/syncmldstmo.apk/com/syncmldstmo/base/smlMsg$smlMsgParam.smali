.class public Lcom/syncmldstmo/base/smlMsg$smlMsgParam;
.super Ljava/lang/Object;
.source "smlMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/smlMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "smlMsgParam"
.end annotation


# instance fields
.field public param:Ljava/lang/Object;

.field public paramFree:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
