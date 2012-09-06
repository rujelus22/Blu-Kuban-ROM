.class Lcom/google/android/finsky/activities/AuthenticatedActivity$8;
.super Ljava/lang/Object;
.source "AuthenticatedActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/AuthenticatedActivity;->getMarketMetadataAndLoadLibraries(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mFinished:I

.field final synthetic this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

.field final synthetic val$shouldHandleIntent:Z


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 803
    iput-object p1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$8;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    iput-boolean p2, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$8;->val$shouldHandleIntent:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 807
    iget v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$8;->mFinished:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$8;->mFinished:I

    .line 808
    iget v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$8;->mFinished:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_12

    .line 809
    iget-object v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$8;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$8;->val$shouldHandleIntent:Z

    #calls: Lcom/google/android/finsky/activities/AuthenticatedActivity;->loadTocAndContinue(Z)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->access$200(Lcom/google/android/finsky/activities/AuthenticatedActivity;Z)V

    .line 811
    :cond_12
    return-void
.end method
