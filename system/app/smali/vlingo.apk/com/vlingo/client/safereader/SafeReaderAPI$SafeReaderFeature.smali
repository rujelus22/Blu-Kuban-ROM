.class Lcom/vlingo/client/safereader/SafeReaderAPI$SafeReaderFeature;
.super Ljava/lang/Object;
.source "SafeReaderAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/safereader/SafeReaderAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SafeReaderFeature"
.end annotation


# instance fields
.field OnOff:Z

.field What:I


# direct methods
.method constructor <init>(IZ)V
    .registers 3
    .parameter "what"
    .parameter "onOff"

    .prologue
    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    iput p1, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$SafeReaderFeature;->What:I

    .line 526
    iput-boolean p2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$SafeReaderFeature;->OnOff:Z

    .line 527
    return-void
.end method
