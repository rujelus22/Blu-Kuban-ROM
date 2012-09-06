.class public abstract Lbk/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbk/p;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method


# virtual methods
.method public r()[B
    .registers 4

    .prologue
    .line 34
    :try_start_0
    invoke-virtual {p0}, Lbk/a;->g()I

    move-result v0

    new-array v0, v0, [B

    .line 35
    invoke-static {v0}, Lbk/g;->a([B)Lbk/g;

    move-result-object v1

    .line 36
    invoke-virtual {p0, v1}, Lbk/a;->a(Lbk/g;)V

    .line 37
    invoke-virtual {v1}, Lbk/g;->b()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_11

    .line 38
    return-object v0

    .line 39
    :catch_11
    move-exception v0

    .line 40
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
