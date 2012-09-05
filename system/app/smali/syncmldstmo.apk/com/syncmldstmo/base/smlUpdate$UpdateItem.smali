.class public Lcom/syncmldstmo/base/smlUpdate$UpdateItem;
.super Ljava/lang/Object;
.source "smlUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/smlUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateItem"
.end annotation


# instance fields
.field public item:Ljava/lang/Object;

.field public luid:I

.field public status:I


# direct methods
.method public constructor <init>(IILjava/lang/Object;)V
    .registers 4
    .parameter "nluid"
    .parameter "nstatus"
    .parameter "pitem"

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/syncmldstmo/base/smlUpdate$UpdateItem;->luid:I

    .line 17
    iput p2, p0, Lcom/syncmldstmo/base/smlUpdate$UpdateItem;->status:I

    .line 18
    iput-object p3, p0, Lcom/syncmldstmo/base/smlUpdate$UpdateItem;->item:Ljava/lang/Object;

    .line 19
    return-void
.end method
