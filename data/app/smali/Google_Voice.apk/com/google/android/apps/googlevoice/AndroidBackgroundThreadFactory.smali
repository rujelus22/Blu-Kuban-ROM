.class public Lcom/google/android/apps/googlevoice/AndroidBackgroundThreadFactory;
.super Ljava/lang/Object;
.source "AndroidBackgroundThreadFactory.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/BackgroundThreadFactory;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createBackgroundThread()Lcom/google/android/apps/googlevoice/BackgroundThread;
    .registers 2

    .prologue
    .line 13
    new-instance v0, Lcom/google/android/apps/googlevoice/AndroidBackgroundThread;

    invoke-direct {v0}, Lcom/google/android/apps/googlevoice/AndroidBackgroundThread;-><init>()V

    .line 14
    .local v0, backgroundThread:Lcom/google/android/apps/googlevoice/AndroidBackgroundThread;
    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/AndroidBackgroundThread;->start()V

    .line 15
    return-object v0
.end method
