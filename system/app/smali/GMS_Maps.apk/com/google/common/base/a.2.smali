.class Lcom/google/common/base/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/z;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 186
    :try_start_1
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_e

    move-result-object v1

    .line 191
    if-eqz v1, :cond_d

    .line 193
    :try_start_7
    const-string v2, "com.google.common.base.internal.Finalizer"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_c} :catch_19

    move-result-object v0

    .line 199
    :cond_d
    :goto_d
    return-object v0

    .line 187
    :catch_e
    move-exception v1

    .line 188
    invoke-static {}, Lcom/google/common/base/w;->b()Ljava/util/logging/Logger;

    move-result-object v1

    const-string v2, "Not allowed to access system class loader."

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_d

    .line 194
    :catch_19
    move-exception v1

    goto :goto_d
.end method
