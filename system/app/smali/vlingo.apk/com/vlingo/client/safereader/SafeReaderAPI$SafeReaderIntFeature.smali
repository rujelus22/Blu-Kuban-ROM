.class Lcom/vlingo/client/safereader/SafeReaderAPI$SafeReaderIntFeature;
.super Ljava/lang/Object;
.source "SafeReaderAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/safereader/SafeReaderAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SafeReaderIntFeature"
.end annotation


# instance fields
.field Value:I

.field What:I


# direct methods
.method constructor <init>(II)V
    .registers 3
    .parameter "what"
    .parameter "value"

    .prologue
    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    iput p1, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$SafeReaderIntFeature;->What:I

    .line 535
    iput p2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$SafeReaderIntFeature;->Value:I

    .line 536
    return-void
.end method
