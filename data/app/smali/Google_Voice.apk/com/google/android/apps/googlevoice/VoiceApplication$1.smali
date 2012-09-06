.class final Lcom/google/android/apps/googlevoice/VoiceApplication$1;
.super Ljava/lang/Object;
.source "VoiceApplication.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/SignInStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/VoiceApplication;->registerSignInStatusListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignedIn()V
    .registers 1

    .prologue
    .line 231
    #calls: Lcom/google/android/apps/googlevoice/VoiceApplication;->setStatusConfigured()V
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->access$200()V

    .line 232
    return-void
.end method

.method public onSigningOut()V
    .registers 2

    .prologue
    .line 223
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->access$000()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicemailProviderHelper()Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;->deleteAll()I

    .line 225
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->access$000()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getSyncState()Lcom/google/android/apps/googlevoice/vvm/database/SyncState;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/vvm/database/SyncState;->deleteAllConversations()V

    .line 226
    #calls: Lcom/google/android/apps/googlevoice/VoiceApplication;->setStatusNotConfigured()V
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->access$100()V

    .line 227
    return-void
.end method
