.class Lcom/google/android/music/tutorial/TutorialWelcomeActivity$1;
.super Ljava/lang/Object;
.source "TutorialWelcomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/tutorial/TutorialWelcomeActivity;->onNextClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/tutorial/TutorialWelcomeActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/tutorial/TutorialWelcomeActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/music/tutorial/TutorialWelcomeActivity$1;->this$0:Lcom/google/android/music/tutorial/TutorialWelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 58
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/music/tutorial/TutorialWelcomeActivity$1;->this$0:Lcom/google/android/music/tutorial/TutorialWelcomeActivity;

    const-class v2, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 61
    iget-object v1, p0, Lcom/google/android/music/tutorial/TutorialWelcomeActivity$1;->this$0:Lcom/google/android/music/tutorial/TutorialWelcomeActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/music/tutorial/TutorialWelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 62
    iget-object v0, p0, Lcom/google/android/music/tutorial/TutorialWelcomeActivity$1;->this$0:Lcom/google/android/music/tutorial/TutorialWelcomeActivity;

    invoke-virtual {v0}, Lcom/google/android/music/tutorial/TutorialWelcomeActivity;->finish()V

    .line 63
    return-void
.end method
