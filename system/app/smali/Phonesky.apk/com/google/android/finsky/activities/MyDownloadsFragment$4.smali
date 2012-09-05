.class Lcom/google/android/finsky/activities/MyDownloadsFragment$4;
.super Ljava/lang/Object;
.source "MyDownloadsFragment.java"

# interfaces
.implements Lcom/google/android/finsky/receivers/Installer$InstallerRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/MyDownloadsFragment;->attachInstallerRequestListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/MyDownloadsFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/MyDownloadsFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$4;->this$0:Lcom/google/android/finsky/activities/MyDownloadsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate()V
    .registers 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$4;->this$0:Lcom/google/android/finsky/activities/MyDownloadsFragment;

    #calls: Lcom/google/android/finsky/activities/MyDownloadsFragment;->asyncRefreshAdapter()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->access$100(Lcom/google/android/finsky/activities/MyDownloadsFragment;)V

    .line 397
    return-void
.end method
