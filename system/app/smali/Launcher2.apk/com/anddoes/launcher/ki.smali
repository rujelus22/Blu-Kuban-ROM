.class public final Lcom/anddoes/launcher/ki;
.super Lcom/anddoes/launcher/ec;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/anddoes/launcher/ec;-><init>()V

    .line 11
    return-void
.end method

.method public static a()Lcom/anddoes/launcher/ki;
    .registers 2

    .prologue
    .line 14
    new-instance v0, Lcom/anddoes/launcher/ki;

    invoke-direct {v0}, Lcom/anddoes/launcher/ki;-><init>()V

    .line 15
    const/16 v1, 0x3e9

    iput v1, v0, Lcom/anddoes/launcher/ki;->i:I

    .line 16
    const/4 v1, 0x4

    iput v1, v0, Lcom/anddoes/launcher/ki;->n:I

    .line 17
    const/4 v1, 0x1

    iput v1, v0, Lcom/anddoes/launcher/ki;->o:I

    .line 18
    const v1, 0x7f030033

    iput v1, v0, Lcom/anddoes/launcher/ki;->b:I

    .line 19
    const v1, 0x7f06001c

    iput v1, v0, Lcom/anddoes/launcher/ki;->a:I

    .line 20
    const v1, 0x7f020033

    iput v1, v0, Lcom/anddoes/launcher/ki;->c:I

    .line 21
    const v1, 0x7f02007c

    iput v1, v0, Lcom/anddoes/launcher/ki;->d:I

    .line 22
    return-object v0
.end method


# virtual methods
.method public final bridge synthetic toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1
    invoke-super {p0}, Lcom/anddoes/launcher/ec;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
