.class Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$7;
.super Ljava/lang/Object;
.source "ProfileAboutFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

.field final synthetic val$originalCircleIds:Ljava/util/ArrayList;

.field final synthetic val$selectedCircleIds:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1605
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$7;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$7;->val$originalCircleIds:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$7;->val$selectedCircleIds:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1608
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$7;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$7;->val$originalCircleIds:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$7;->val$selectedCircleIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->setCircleMembership(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1609
    return-void
.end method
