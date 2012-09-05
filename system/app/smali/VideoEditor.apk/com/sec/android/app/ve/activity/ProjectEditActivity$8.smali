.class Lcom/sec/android/app/ve/activity/ProjectEditActivity$8;
.super Ljava/lang/Object;
.source "ProjectEditActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/activity/ProjectEditActivity;->validateVideoEditIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$8;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    .line 713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 717
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$8;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->finish()V

    .line 718
    return-void
.end method
