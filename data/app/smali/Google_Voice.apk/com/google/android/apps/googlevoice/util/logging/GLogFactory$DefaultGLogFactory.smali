.class public Lcom/google/android/apps/googlevoice/util/logging/GLogFactory$DefaultGLogFactory;
.super Lcom/google/android/apps/googlevoice/util/logging/GLogFactory;
.source "GLogFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/util/logging/GLogFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultGLogFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/util/logging/GLogFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createLog(Ljava/lang/Class;)Lcom/google/android/apps/common/log/GLog;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/android/apps/common/log/GLog;"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Lcom/google/android/apps/googlevoice/util/logging/GLogImpl;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/googlevoice/util/logging/GLogImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
