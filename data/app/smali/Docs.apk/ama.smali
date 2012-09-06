.class public final Lama;
.super LalG;
.source "SettableFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "LalG",
        "<TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, LalG;-><init>()V

    return-void
.end method

.method public static a()Lama;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lama",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lama;

    invoke-direct {v0}, Lama;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 53
    invoke-super {p0, p1}, LalG;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Throwable;)Z
    .registers 3
    .parameter

    .prologue
    .line 68
    invoke-super {p0, p1}, LalG;->a(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method
