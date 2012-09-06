.class public Lcom/google/android/apps/unveil/env/Providers;
.super Ljava/lang/Object;
.source "Providers.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static staticProvider(Ljava/lang/Object;)Lcom/google/android/apps/unveil/env/Provider;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/apps/unveil/env/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, value:Ljava/lang/Object;,"TT;"
    new-instance v0, Lcom/google/android/apps/unveil/env/Providers$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/unveil/env/Providers$1;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
