.class Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$3;
.super Ljava/lang/Object;
.source "PeopleSearchAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->continueLoadingPublicProfiles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 579
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$3;->this$0:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$3;->this$0:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;

    #calls: Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->doContinueLoadingPublicProfiles()V
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->access$100(Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;)V

    .line 584
    return-void
.end method
