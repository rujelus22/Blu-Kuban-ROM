.class Lcom/google/android/finsky/activities/DebugActivity$1$1;
.super Ljava/lang/Object;
.source "DebugActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/DebugActivity$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/activities/DebugActivity$1;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/DebugActivity$1;)V
    .registers 2
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/google/android/finsky/activities/DebugActivity$1$1;->this$1:Lcom/google/android/finsky/activities/DebugActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/finsky/activities/DebugActivity$1$1;->this$1:Lcom/google/android/finsky/activities/DebugActivity$1;

    iget-object v0, v0, Lcom/google/android/finsky/activities/DebugActivity$1;->this$0:Lcom/google/android/finsky/activities/DebugActivity;

    #calls: Lcom/google/android/finsky/activities/DebugActivity;->clearCacheAndQuit()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/DebugActivity;->access$000(Lcom/google/android/finsky/activities/DebugActivity;)V

    .line 238
    return-void
.end method
