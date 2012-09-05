.class Lcom/google/android/apps/plus/fragments/EsPeopleListFragment$3;
.super Ljava/lang/Object;
.source "EsPeopleListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;

.field final synthetic val$personId:Ljava/lang/String;

.field final synthetic val$personName:Ljava/lang/String;

.field final synthetic val$selectedCircleIds:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;

    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment$3;->val$personId:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment$3;->val$personName:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment$3;->val$selectedCircleIds:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment$3;->val$personId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment$3;->val$personName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment$3;->val$selectedCircleIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->addCircleMembership(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 324
    return-void
.end method
