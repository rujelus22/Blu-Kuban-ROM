.class public Lcom/google/android/apps/googlevoice/system/KeyguardHelper;
.super Ljava/lang/Object;
.source "KeyguardHelper.java"


# static fields
.field private static final LOCK_TAG:Ljava/lang/String; = "GoogleVoice"


# instance fields
.field private final keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private final keyguardManager:Landroid/app/KeyguardManager;

.field private final logger:Lcom/google/android/apps/common/log/GLog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/common/log/GLog;)V
    .registers 5
    .parameter "context"
    .parameter "logger"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/system/KeyguardHelper;->logger:Lcom/google/android/apps/common/log/GLog;

    .line 25
    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/system/KeyguardHelper;->keyguardManager:Landroid/app/KeyguardManager;

    .line 26
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/KeyguardHelper;->keyguardManager:Landroid/app/KeyguardManager;

    const-string v1, "GoogleVoice"

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/system/KeyguardHelper;->keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 27
    return-void
.end method


# virtual methods
.method public disableKeyguard()V
    .registers 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/KeyguardHelper;->logger:Lcom/google/android/apps/common/log/GLog;

    const-string v1, "keyguard disabled"

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/KeyguardHelper;->keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 37
    return-void
.end method

.method public enableKeyguard()V
    .registers 3

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/KeyguardHelper;->logger:Lcom/google/android/apps/common/log/GLog;

    const-string v1, "keyguard reenabled"

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/KeyguardHelper;->keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 32
    return-void
.end method
