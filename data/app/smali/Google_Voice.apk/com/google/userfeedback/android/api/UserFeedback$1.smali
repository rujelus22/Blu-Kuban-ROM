.class Lcom/google/userfeedback/android/api/UserFeedback$1;
.super Ljava/lang/Object;
.source "UserFeedback.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/userfeedback/android/api/UserFeedback;->buildDialog(Landroid/app/Activity;ZZLjava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/userfeedback/android/api/UserFeedback;


# direct methods
.method constructor <init>(Lcom/google/userfeedback/android/api/UserFeedback;)V
    .registers 2
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedback$1;->this$0:Lcom/google/userfeedback/android/api/UserFeedback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 191
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 192
    return-void
.end method
