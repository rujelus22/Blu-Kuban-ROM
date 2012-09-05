.class Lcom/sec/android/app/ve/activity/ProjectEditActivity$15;
.super Ljava/lang/Object;
.source "ProjectEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/activity/ProjectEditActivity;->launchImageDurDilaog(Lcom/sec/android/app/ve/activity/ProjectEditActivity$DialogCallbackInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

.field private final synthetic val$callback:Lcom/sec/android/app/ve/activity/ProjectEditActivity$DialogCallbackInterface;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;Lcom/sec/android/app/ve/activity/ProjectEditActivity$DialogCallbackInterface;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$15;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    iput-object p2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$15;->val$callback:Lcom/sec/android/app/ve/activity/ProjectEditActivity$DialogCallbackInterface;

    .line 1686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "position"

    .prologue
    const/4 v2, 0x3

    .line 1689
    if-nez p2, :cond_c

    .line 1690
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$15;->val$callback:Lcom/sec/android/app/ve/activity/ProjectEditActivity$DialogCallbackInterface;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$DialogCallbackInterface;->run(Ljava/lang/Object;)V

    .line 1691
    :cond_c
    const/4 v0, 0x1

    if-ne p2, v0, :cond_19

    .line 1692
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$15;->val$callback:Lcom/sec/android/app/ve/activity/ProjectEditActivity$DialogCallbackInterface;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$DialogCallbackInterface;->run(Ljava/lang/Object;)V

    .line 1693
    :cond_19
    const/4 v0, 0x2

    if-ne p2, v0, :cond_27

    .line 1694
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$15;->val$callback:Lcom/sec/android/app/ve/activity/ProjectEditActivity$DialogCallbackInterface;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$DialogCallbackInterface;->run(Ljava/lang/Object;)V

    .line 1695
    :cond_27
    if-ne p2, v2, :cond_34

    .line 1696
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$15;->val$callback:Lcom/sec/android/app/ve/activity/ProjectEditActivity$DialogCallbackInterface;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$DialogCallbackInterface;->run(Ljava/lang/Object;)V

    .line 1697
    :cond_34
    const/4 v0, 0x4

    if-ne p2, v0, :cond_42

    .line 1698
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$15;->val$callback:Lcom/sec/android/app/ve/activity/ProjectEditActivity$DialogCallbackInterface;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$DialogCallbackInterface;->run(Ljava/lang/Object;)V

    .line 1699
    :cond_42
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1700
    return-void
.end method
