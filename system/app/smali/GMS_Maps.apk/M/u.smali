.class Lm/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method constructor <init>(II)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    iput p1, p0, Lm/u;->a:I

    .line 756
    iput p2, p0, Lm/u;->b:I

    .line 757
    return-void
.end method


# virtual methods
.method a()I
    .registers 2

    .prologue
    .line 760
    iget v0, p0, Lm/u;->a:I

    return v0
.end method

.method b()I
    .registers 2

    .prologue
    .line 763
    iget v0, p0, Lm/u;->b:I

    return v0
.end method
