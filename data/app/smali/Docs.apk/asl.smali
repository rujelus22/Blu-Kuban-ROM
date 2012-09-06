.class public Lasl;
.super Ljava/lang/Object;
.source "BatchUtils.java"


# direct methods
.method private static a(Lase;)Lasi;
    .registers 2
    .parameter

    .prologue
    .line 85
    invoke-virtual {p0}, Lase;->a()Lasi;

    move-result-object v0

    .line 86
    if-nez v0, :cond_e

    .line 87
    new-instance v0, Lasi;

    invoke-direct {v0}, Lasi;-><init>()V

    .line 88
    invoke-virtual {p0, v0}, Lase;->a(Lasi;)V

    .line 90
    :cond_e
    return-object v0
.end method

.method public static a(Lase;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 27
    invoke-virtual {p0}, Lase;->a()Lasi;

    move-result-object v0

    .line 28
    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, v0, Lasi;->a:Ljava/lang/String;

    goto :goto_7
.end method

.method public static a(Lase;Lasj;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-static {p0}, Lasl;->a(Lase;)Lasi;

    move-result-object v0

    iput-object p1, v0, Lasi;->a:Lasj;

    .line 82
    return-void
.end method

.method public static a(Lase;Lask;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-static {p0}, Lasl;->a(Lase;)Lasi;

    move-result-object v0

    iput-object p1, v0, Lasi;->a:Lask;

    .line 66
    return-void
.end method

.method public static a(Lase;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-static {p0}, Lasl;->a(Lase;)Lasi;

    move-result-object v0

    iput-object p1, v0, Lasi;->a:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public static b(Lase;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 42
    invoke-virtual {p0}, Lase;->a()Lasi;

    move-result-object v0

    .line 43
    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, v0, Lasi;->b:Ljava/lang/String;

    goto :goto_7
.end method

.method public static b(Lase;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-static {p0}, Lasl;->a(Lase;)Lasi;

    move-result-object v0

    iput-object p1, v0, Lasi;->b:Ljava/lang/String;

    .line 51
    return-void
.end method
