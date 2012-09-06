.class Lcom/google/android/finsky/activities/AuthenticatedActivity$12;
.super Ljava/lang/Object;
.source "AuthenticatedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/AuthenticatedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 856
    iput-object p1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$12;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 859
    iget-object v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$12;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    #calls: Lcom/google/android/finsky/activities/AuthenticatedActivity;->addAccount()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->access$300(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V

    .line 860
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 861
    return-void
.end method
