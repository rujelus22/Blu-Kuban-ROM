.class public final Lln$a;
.super Ljava/lang/Object;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lln;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "a"
.end annotation


# instance fields
.field a:Lnd;


# direct methods
.method public constructor <init>(Lnd;)V
    .registers 2
    .parameter

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Lln$a;->a:Lnd;

    .line 195
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 204
    if-ne p1, p0, :cond_5

    const/4 v0, 0x1

    .line 207
    :goto_4
    return v0

    .line 205
    :cond_5
    if-nez p1, :cond_9

    move v0, v2

    goto :goto_4

    .line 206
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_15

    move v0, v2

    goto :goto_4

    .line 207
    :cond_15
    check-cast p1, Lln$a;

    iget-object v0, p1, Lln$a;->a:Lnd;

    iget-object v1, p0, Lln$a;->a:Lnd;

    invoke-virtual {v0, v1}, Lnd;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lln$a;->a:Lnd;

    invoke-virtual {v0}, Lnd;->hashCode()I

    move-result v0

    return v0
.end method
