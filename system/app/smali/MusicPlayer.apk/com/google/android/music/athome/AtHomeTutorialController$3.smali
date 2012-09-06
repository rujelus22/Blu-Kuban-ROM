.class Lcom/google/android/music/athome/AtHomeTutorialController$3;
.super Ljava/lang/Object;
.source "AtHomeTutorialController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/AtHomeTutorialController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/athome/AtHomeTutorialController;


# direct methods
.method constructor <init>(Lcom/google/android/music/athome/AtHomeTutorialController;)V
    .registers 2
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeTutorialController$3;->this$0:Lcom/google/android/music/athome/AtHomeTutorialController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 110
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeTutorialController$3;->this$0:Lcom/google/android/music/athome/AtHomeTutorialController;

    #getter for: Lcom/google/android/music/athome/AtHomeTutorialController;->mContext:Landroid/app/Activity;
    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeTutorialController;->access$200(Lcom/google/android/music/athome/AtHomeTutorialController;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "atHomeTutorial.pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 112
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 113
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeTutorialController$3;->this$0:Lcom/google/android/music/athome/AtHomeTutorialController;

    #getter for: Lcom/google/android/music/athome/AtHomeTutorialController;->mAtHomeTutorialViewed:Z
    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeTutorialController;->access$000(Lcom/google/android/music/athome/AtHomeTutorialController;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 114
    const-string v2, "viewed"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 118
    :goto_1f
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 119
    return-void

    .line 116
    :cond_23
    const-string v2, "viewed"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1f
.end method
