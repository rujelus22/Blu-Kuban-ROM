.class public Lcom/syncmldstmo/base/smlDebug$RefInt;
.super Ljava/lang/Object;
.source "smlDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/smlDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RefInt"
.end annotation


# instance fields
.field public val:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 465
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 467
    const/4 v0, 0x0

    iput v0, p0, Lcom/syncmldstmo/base/smlDebug$RefInt;->val:I

    .line 468
    return-void
.end method
