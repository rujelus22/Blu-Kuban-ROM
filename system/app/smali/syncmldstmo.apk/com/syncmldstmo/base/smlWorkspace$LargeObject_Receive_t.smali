.class public Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;
.super Ljava/lang/Object;
.source "smlWorkspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/smlWorkspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LargeObject_Receive_t"
.end annotation


# instance fields
.field bReceiving:Z

.field data:[C

.field guid:Ljava/lang/String;

.field metaType:Ljava/lang/String;

.field offset:I

.field pos:I

.field totalsize:I

.field writeBuf:[C

.field writeBufLen:I

.field writeBufOffset:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->bReceiving:Z

    .line 76
    return-void
.end method
