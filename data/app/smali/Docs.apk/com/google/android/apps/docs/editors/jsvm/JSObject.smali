.class public abstract Lcom/google/android/apps/docs/editors/jsvm/JSObject;
.super Ljava/lang/Object;
.source "JSObject.java"

# interfaces
.implements Lvr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lvo;",
        ">",
        "Ljava/lang/Object;",
        "Lvr;"
    }
.end annotation


# instance fields
.field private a:J

.field public a:Lvo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lvo;J)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-wide p2, p0, Lcom/google/android/apps/docs/editors/jsvm/JSObject;->a:J

    .line 21
    iput-object p1, p0, Lcom/google/android/apps/docs/editors/jsvm/JSObject;->a:Lvo;

    .line 22
    return-void
.end method

.method private native delete(J)V
.end method

.method private native detach(J)V
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/google/android/apps/docs/editors/jsvm/JSObject;->a:J

    return-wide v0
.end method

.method public a()Lvo;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/jsvm/JSObject;->a:Lvo;

    return-object v0
.end method

.method public a()V
    .registers 3

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/jsvm/JSObject;->a()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/editors/jsvm/JSObject;->delete(J)V

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/docs/editors/jsvm/JSObject;->a:J

    .line 28
    return-void
.end method

.method protected a(Lvp;Ljava/lang/Class;[J)[Ljava/lang/Object;
    .registers 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lvp",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;[J)[TT;"
        }
    .end annotation

    .prologue
    .line 122
    array-length v0, p3

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 123
    const/4 v1, 0x0

    :goto_a
    array-length v2, p3

    if-ge v1, v2, :cond_18

    .line 124
    aget-wide v2, p3, v1

    invoke-interface {p1, v2, v3}, Lvp;->a(J)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 126
    :cond_18
    return-object v0
.end method

.method public b()V
    .registers 3

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/jsvm/JSObject;->a()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/editors/jsvm/JSObject;->detach(J)V

    .line 33
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    .line 42
    instance-of v0, p1, Lcom/google/android/apps/docs/editors/jsvm/JSObject;

    if-eqz v0, :cond_12

    .line 43
    check-cast p1, Lcom/google/android/apps/docs/editors/jsvm/JSObject;

    iget-wide v0, p1, Lcom/google/android/apps/docs/editors/jsvm/JSObject;->a:J

    iget-wide v2, p0, Lcom/google/android/apps/docs/editors/jsvm/JSObject;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 45
    :goto_f
    return v0

    .line 43
    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    .line 45
    :cond_12
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_f
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/google/android/apps/docs/editors/jsvm/JSObject;->a:J

    iget-wide v2, p0, Lcom/google/android/apps/docs/editors/jsvm/JSObject;->a:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
