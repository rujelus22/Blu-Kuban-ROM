.class Lcom/google/android/apps/plus/fragments/ParticipantListFragment$ServiceListener;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "ParticipantListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/ParticipantListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/ParticipantListFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/fragments/ParticipantListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/ParticipantListFragment;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/fragments/ParticipantListFragment;Lcom/google/android/apps/plus/fragments/ParticipantListFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/ParticipantListFragment$ServiceListener;-><init>(Lcom/google/android/apps/plus/fragments/ParticipantListFragment;)V

    return-void
.end method


# virtual methods
.method public onAddPeopleToCirclesComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/ParticipantListFragment;

    invoke-virtual {v0, p1, p3}, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 102
    return-void
.end method
