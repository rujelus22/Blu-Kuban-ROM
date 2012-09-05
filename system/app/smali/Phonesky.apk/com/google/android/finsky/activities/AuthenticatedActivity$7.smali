.class Lcom/google/android/finsky/activities/AuthenticatedActivity$7;
.super Ljava/lang/Object;
.source "AuthenticatedActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/AuthenticatedActivity;->initializeAndContinue(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

.field final synthetic val$shouldHandleIntent:Z


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 776
    iput-object p1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$7;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    iput-boolean p2, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$7;->val$shouldHandleIntent:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 779
    iget-object v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$7;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$7;->val$shouldHandleIntent:Z

    #calls: Lcom/google/android/finsky/activities/AuthenticatedActivity;->loadTocAndContinue(Z)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->access$100(Lcom/google/android/finsky/activities/AuthenticatedActivity;Z)V

    .line 780
    return-void
.end method
