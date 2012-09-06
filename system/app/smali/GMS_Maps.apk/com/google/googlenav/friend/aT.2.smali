.class public Lcom/google/googlenav/friend/aT;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/friend/aT;)I
    .registers 2
    .parameter

    .prologue
    .line 183
    iget v0, p0, Lcom/google/googlenav/friend/aT;->b:I

    return v0
.end method

.method static synthetic a(Lcom/google/googlenav/friend/aT;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 183
    iput p1, p0, Lcom/google/googlenav/friend/aT;->a:I

    return p1
.end method

.method static synthetic b(Lcom/google/googlenav/friend/aT;)I
    .registers 2
    .parameter

    .prologue
    .line 183
    iget v0, p0, Lcom/google/googlenav/friend/aT;->a:I

    return v0
.end method

.method static synthetic b(Lcom/google/googlenav/friend/aT;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 183
    iput p1, p0, Lcom/google/googlenav/friend/aT;->b:I

    return p1
.end method


# virtual methods
.method public a()Z
    .registers 2

    .prologue
    .line 190
    iget v0, p0, Lcom/google/googlenav/friend/aT;->a:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
