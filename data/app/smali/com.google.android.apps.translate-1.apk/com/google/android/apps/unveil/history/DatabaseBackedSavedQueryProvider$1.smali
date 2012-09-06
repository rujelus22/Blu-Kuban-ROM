.class Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider$1;
.super Ljava/lang/Object;
.source "DatabaseBackedSavedQueryProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider;->asyncNotifyListenersOfChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider;)V
    .registers 2
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider$1;->this$0:Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider$1;->this$0:Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider;->notifyListenersOfChange()V

    .line 87
    return-void
.end method
