.class Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment$1;
.super Ljava/lang/Object;
.source "CirclePeopleListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;

.field final synthetic val$people:[Lcom/google/android/apps/plus/util/ParticipantParcelable;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;[Lcom/google/android/apps/plus/util/ParticipantParcelable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 532
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;

    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment$1;->val$people:[Lcom/google/android/apps/plus/util/ParticipantParcelable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 536
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment$1;->val$people:[Lcom/google/android/apps/plus/util/ParticipantParcelable;

    #calls: Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->doAddPeopleToCircle([Lcom/google/android/apps/plus/util/ParticipantParcelable;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->access$200(Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;[Lcom/google/android/apps/plus/util/ParticipantParcelable;)V

    .line 537
    return-void
.end method
