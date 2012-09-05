.class public Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Send_t;
.super Ljava/lang/Object;
.source "smlWorkspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/smlWorkspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LargeObject_Send_t"
.end annotation


# instance fields
.field bSending:Z

.field data:[C

.field pos:I

.field size:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Send_t;->bSending:Z

    .line 91
    return-void
.end method
