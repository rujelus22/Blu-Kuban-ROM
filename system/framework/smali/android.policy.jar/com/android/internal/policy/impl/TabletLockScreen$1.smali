.class Lcom/android/internal/policy/impl/TabletLockScreen$1;
.super Ljava/lang/Object;
.source "TabletLockscreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/TabletLockScreen;->requestUnlockScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/TabletLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/TabletLockScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/internal/policy/impl/TabletLockScreen$1;->this$0:Lcom/android/internal/policy/impl/TabletLockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/policy/impl/TabletLockScreen$1;->this$0:Lcom/android/internal/policy/impl/TabletLockScreen;

    #getter for: Lcom/android/internal/policy/impl/TabletLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/TabletLockScreen;->access$000(Lcom/android/internal/policy/impl/TabletLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 88
    return-void
.end method
