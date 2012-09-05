.class Lcom/samsung/map/EmailInfo;
.super Ljava/lang/Object;
.source "EmailObserver.java"


# instance fields
.field public box:I

.field public flag:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .parameter "box"
    .parameter "flag"

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/samsung/map/EmailInfo;->box:I

    .line 55
    iput p2, p0, Lcom/samsung/map/EmailInfo;->flag:I

    .line 56
    return-void
.end method
