.class Lcom/google/android/finsky/receivers/InstallerImpl$3;
.super Ljava/lang/Object;
.source "InstallerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/receivers/InstallerImpl;->kick(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

.field final synthetic val$hintPackage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/receivers/InstallerImpl;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 716
    iput-object p1, p0, Lcom/google/android/finsky/receivers/InstallerImpl$3;->this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

    iput-object p2, p0, Lcom/google/android/finsky/receivers/InstallerImpl$3;->val$hintPackage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 719
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl$3;->this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerImpl$3;->val$hintPackage:Ljava/lang/String;

    const/4 v2, 0x0

    #calls: Lcom/google/android/finsky/receivers/InstallerImpl;->kick(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerImpl;->access$400(Lcom/google/android/finsky/receivers/InstallerImpl;Ljava/lang/String;Z)V

    .line 720
    return-void
.end method
