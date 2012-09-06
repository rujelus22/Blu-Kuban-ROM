.class Lcom/google/android/apps/docs/utils/ToastErrorReporter$ErrorRetriever;
.super Ljava/lang/Object;
.source "ToastErrorReporter.java"


# annotations
.annotation build Lcom/google/android/apps/docs/KeepAfterProguard;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/utils/ToastErrorReporter;

.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/utils/ToastErrorReporter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/android/apps/docs/utils/ToastErrorReporter$ErrorRetriever;->a:Lcom/google/android/apps/docs/utils/ToastErrorReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p2, p0, Lcom/google/android/apps/docs/utils/ToastErrorReporter$ErrorRetriever;->a:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/google/android/apps/docs/utils/ToastErrorReporter$ErrorRetriever;->b:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .registers 2
    .annotation build Lcom/google/android/apps/docs/KeepAfterProguard;
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/apps/docs/utils/ToastErrorReporter$ErrorRetriever;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorTitle()Ljava/lang/String;
    .registers 2
    .annotation build Lcom/google/android/apps/docs/KeepAfterProguard;
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/docs/utils/ToastErrorReporter$ErrorRetriever;->b:Ljava/lang/String;

    return-object v0
.end method
