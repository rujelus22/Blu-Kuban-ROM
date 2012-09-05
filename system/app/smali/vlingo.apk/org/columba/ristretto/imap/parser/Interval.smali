.class Lorg/columba/ristretto/imap/parser/Interval;
.super Ljava/lang/Object;
.source "MimeTreeParser.java"


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 567
    iput v0, p0, Lorg/columba/ristretto/imap/parser/Interval;->a:I

    .line 568
    iput v0, p0, Lorg/columba/ristretto/imap/parser/Interval;->b:I

    .line 569
    return-void
.end method

.method public constructor <init>(II)V
    .registers 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    iput p1, p0, Lorg/columba/ristretto/imap/parser/Interval;->a:I

    .line 560
    iput p2, p0, Lorg/columba/ristretto/imap/parser/Interval;->b:I

    .line 561
    return-void
.end method


# virtual methods
.method public reset()V
    .registers 2

    .prologue
    .line 575
    const/4 v0, -0x1

    iput v0, p0, Lorg/columba/ristretto/imap/parser/Interval;->a:I

    .line 576
    const/4 v0, -0x2

    iput v0, p0, Lorg/columba/ristretto/imap/parser/Interval;->b:I

    .line 577
    return-void
.end method
