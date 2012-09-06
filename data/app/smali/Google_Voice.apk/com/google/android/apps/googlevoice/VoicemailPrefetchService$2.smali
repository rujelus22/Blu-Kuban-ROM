.class Lcom/google/android/apps/googlevoice/VoicemailPrefetchService$2;
.super Ljava/lang/Object;
.source "VoicemailPrefetchService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/VoicemailPrefetchService;->download(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/VoicemailPrefetchService;

.field final synthetic val$finished:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/VoicemailPrefetchService;Landroid/os/ConditionVariable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/VoicemailPrefetchService$2;->this$0:Lcom/google/android/apps/googlevoice/VoicemailPrefetchService;

    iput-object p2, p0, Lcom/google/android/apps/googlevoice/VoicemailPrefetchService$2;->val$finished:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/VoicemailPrefetchService$2;->val$finished:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 71
    return-void
.end method
