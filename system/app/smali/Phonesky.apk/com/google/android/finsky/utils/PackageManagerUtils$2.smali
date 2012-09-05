.class Lcom/google/android/finsky/utils/PackageManagerUtils$2;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "PackageManagerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/PackageManagerUtils;->freeStorageAndNotify(Landroid/content/Context;JLcom/google/android/finsky/utils/PackageManagerUtils$FreeSpaceListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$listener:Lcom/google/android/finsky/utils/PackageManagerUtils$FreeSpaceListener;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/PackageManagerUtils$FreeSpaceListener;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/finsky/utils/PackageManagerUtils$2;->val$listener:Lcom/google/android/finsky/utils/PackageManagerUtils$FreeSpaceListener;

    .line 54
    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .registers 4
    .parameter "packageName"
    .parameter "succeeded"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageManagerUtils$2;->val$listener:Lcom/google/android/finsky/utils/PackageManagerUtils$FreeSpaceListener;

    invoke-interface {v0, p2}, Lcom/google/android/finsky/utils/PackageManagerUtils$FreeSpaceListener;->onComplete(Z)V

    .line 58
    return-void
.end method
