.class public final LH/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/File;)LH/f;
    .registers 2
    .parameter

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-static {p0, v0}, LH/c;->a(Ljava/io/File;Z)LH/f;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/File;Z)LH/f;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 128
    invoke-static {p0}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    new-instance v0, LH/d;

    invoke-direct {v0, p0, p1}, LH/d;-><init>(Ljava/io/File;Z)V

    return-object v0
.end method

.method public static a(LH/e;Ljava/io/File;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 231
    invoke-static {p1}, LH/c;->a(Ljava/io/File;)LH/f;

    move-result-object v0

    invoke-static {p0, v0}, LH/a;->a(LH/e;LH/f;)J

    .line 232
    return-void
.end method
