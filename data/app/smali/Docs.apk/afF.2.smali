.class final LafF;
.super LafD;
.source "Equivalences.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LafD",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final a:LafF;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 64
    new-instance v0, LafF;

    invoke-direct {v0}, LafF;-><init>()V

    sput-object v0, LafF;->a:LafF;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, LafD;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method protected b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
