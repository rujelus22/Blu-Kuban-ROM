.class Laog;
.super Ljava/lang/ClassLoader;
.source "BytecodeGen.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    .line 297
    return-void
.end method

.method constructor <init>(Ljava/lang/ClassLoader;)V
    .registers 2
    .parameter

    .prologue
    .line 300
    invoke-direct {p0, p1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 301
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Z)Ljava/lang/Class;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 333
    invoke-super {p0, p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 306
    const-string v0, "sun.reflect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 308
    sget-object v0, Laoh;->a:Laog;

    invoke-virtual {v0, p1, p2}, Laog;->a(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    .line 327
    :cond_e
    :goto_e
    return-object v0

    .line 311
    :cond_f
    sget-object v0, Laod;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 312
    :cond_1f
    sget-object v0, Laod;->a:Ljava/lang/ClassLoader;

    if-nez v0, :cond_2a

    .line 314
    sget-object v0, Laoh;->a:Laog;

    invoke-virtual {v0, p1, p2}, Laog;->a(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    goto :goto_e

    .line 317
    :cond_2a
    :try_start_2a
    sget-object v0, Laod;->a:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 318
    if-eqz p2, :cond_e

    .line 319
    invoke-virtual {p0, v0}, Laog;->resolveClass(Ljava/lang/Class;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_35} :catch_36

    goto :goto_e

    .line 322
    :catch_36
    move-exception v0

    .line 327
    :cond_37
    invoke-virtual {p0, p1, p2}, Laog;->a(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    goto :goto_e
.end method
