.class public final Lln$c;
.super Ljava/lang/Object;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lln;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "c"
.end annotation


# instance fields
.field a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field b:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    invoke-virtual {p0, p1}, Lln$c;->a(Ljava/lang/Class;)V

    .line 221
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 224
    iput-object p1, p0, Lln$c;->a:Ljava/lang/Class;

    .line 225
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lln$c;->b:I

    .line 226
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 231
    if-ne p1, p0, :cond_6

    move v0, v3

    .line 234
    :goto_5
    return v0

    .line 232
    :cond_6
    if-nez p1, :cond_a

    move v0, v2

    goto :goto_5

    .line 233
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_16

    move v0, v2

    goto :goto_5

    .line 234
    :cond_16
    check-cast p1, Lln$c;

    iget-object v0, p1, Lln$c;->a:Ljava/lang/Class;

    iget-object v1, p0, Lln$c;->a:Ljava/lang/Class;

    if-ne v0, v1, :cond_20

    move v0, v3

    goto :goto_5

    :cond_20
    move v0, v2

    goto :goto_5
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 237
    iget v0, p0, Lln$c;->b:I

    return v0
.end method
