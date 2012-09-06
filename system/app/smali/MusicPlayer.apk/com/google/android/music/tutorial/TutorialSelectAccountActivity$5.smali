.class Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$5;
.super Ljava/lang/Object;
.source "TutorialSelectAccountActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->authenticationSuccess(Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$5;->this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 280
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$5;->this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;

    const-class v2, Lcom/google/android/music/tutorial/TutorialFreeMusicActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 282
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 283
    iget-object v1, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$5;->this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->startActivity(Landroid/content/Intent;)V

    .line 284
    iget-object v0, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$5;->this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;

    invoke-virtual {v0}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->finish()V

    .line 285
    return-void
.end method
