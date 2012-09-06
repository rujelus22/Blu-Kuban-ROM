.class Lcom/google/android/apps/plus/iu/UploadsManager$1;
.super Landroid/database/ContentObserver;
.source "UploadsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/iu/UploadsManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/iu/UploadsManager;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/iu/UploadsManager;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$1;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager$1;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->onFsIdChangedInternal()V
    invoke-static {v0}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$000(Lcom/google/android/apps/plus/iu/UploadsManager;)V

    .line 196
    return-void
.end method
