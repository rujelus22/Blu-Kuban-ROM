.class final Lcom/google/android/finsky/utils/FinskyDebug$1;
.super Ljava/lang/Object;
.source "FinskyDebug.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/FinskyDebug;->buildSelectEnvironmentDialog(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/google/android/finsky/activities/AuthenticatedActivity;

.field final synthetic val$environments:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;Ljava/util/List;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/android/finsky/utils/FinskyDebug$1;->val$activity:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    iput-object p2, p0, Lcom/google/android/finsky/utils/FinskyDebug$1;->val$environments:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 69
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 70
    iget-object v0, p0, Lcom/google/android/finsky/utils/FinskyDebug$1;->val$activity:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    const-string v1, "Switching environment..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 73
    iget-object v1, p0, Lcom/google/android/finsky/utils/FinskyDebug$1;->val$activity:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    iget-object v0, p0, Lcom/google/android/finsky/utils/FinskyDebug$1;->val$environments:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/FinskyDebug$Environment;

    invoke-static {v1, v0}, Lcom/google/android/finsky/utils/FinskyDebug;->selectEnvironment(Landroid/content/Context;Lcom/google/android/finsky/utils/FinskyDebug$Environment;)V

    .line 76
    iget-object v0, p0, Lcom/google/android/finsky/utils/FinskyDebug$1;->val$activity:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->recreateDelayed(J)V

    .line 77
    return-void
.end method
