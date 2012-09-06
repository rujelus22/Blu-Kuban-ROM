.class public Lcom/google/android/apps/googlevoice/system/KeyguardManagerProxyImpl;
.super Ljava/lang/Object;
.source "KeyguardManagerProxyImpl.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/system/KeyguardManagerProxy;


# instance fields
.field private keyguardManager:Landroid/app/KeyguardManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/system/KeyguardManagerProxyImpl;->keyguardManager:Landroid/app/KeyguardManager;

    .line 18
    return-void
.end method


# virtual methods
.method public inKeyguardRestrictedInputMode()Z
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/KeyguardManagerProxyImpl;->keyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    return v0
.end method
