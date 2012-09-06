.class public Lt/q;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Lt/s;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 154
    new-instance v0, Lt/s;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lt/s;-><init>(Landroid/content/Context;Ljava/lang/String;ZLt/r;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lt/q;->b(Landroid/content/Context;Ljava/lang/String;)Lt/s;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lt/s;->a(Ljava/lang/String;Ljava/lang/Object;)Lt/s;

    .line 110
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lt/q;->b(Landroid/content/Context;Ljava/lang/String;)Lt/s;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lt/s;->a(Ljava/lang/String;Ljava/lang/Object;)Lt/s;

    .line 115
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lt/q;->b(Landroid/content/Context;Ljava/lang/String;)Lt/s;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lt/s;->a(Ljava/lang/String;Ljava/lang/Object;)Lt/s;

    .line 105
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lt/q;->a(Landroid/content/Context;Ljava/lang/String;)Lt/s;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lt/s;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Lt/s;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 168
    new-instance v0, Lt/s;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lt/s;-><init>(Landroid/content/Context;Ljava/lang/String;ZLt/r;)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lt/q;->b(Landroid/content/Context;Ljava/lang/String;)Lt/s;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lt/s;->c(Ljava/lang/String;Ljava/lang/String;)Lt/s;

    .line 120
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lt/q;->a(Landroid/content/Context;Ljava/lang/String;)Lt/s;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lt/s;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lt/q;->a(Landroid/content/Context;Ljava/lang/String;)Lt/s;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lt/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lt/q;->a(Landroid/content/Context;Ljava/lang/String;)Lt/s;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lt/s;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
