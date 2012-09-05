.class Lcom/google/android/music/ShopTutorialController$4;
.super Ljava/lang/Object;
.source "ShopTutorialController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/ShopTutorialController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/ShopTutorialController;


# direct methods
.method constructor <init>(Lcom/google/android/music/ShopTutorialController;)V
    .registers 2
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/android/music/ShopTutorialController$4;->this$0:Lcom/google/android/music/ShopTutorialController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 136
    iget-object v2, p0, Lcom/google/android/music/ShopTutorialController$4;->this$0:Lcom/google/android/music/ShopTutorialController;

    #getter for: Lcom/google/android/music/ShopTutorialController;->mContext:Landroid/app/Activity;
    invoke-static {v2}, Lcom/google/android/music/ShopTutorialController;->access$200(Lcom/google/android/music/ShopTutorialController;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "shopTutorial.pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 138
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 139
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/google/android/music/ShopTutorialController$4;->this$0:Lcom/google/android/music/ShopTutorialController;

    #getter for: Lcom/google/android/music/ShopTutorialController;->mShopTutorialViewed:Z
    invoke-static {v2}, Lcom/google/android/music/ShopTutorialController;->access$000(Lcom/google/android/music/ShopTutorialController;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 140
    const-string v2, "viewed"

    iget-object v3, p0, Lcom/google/android/music/ShopTutorialController$4;->this$0:Lcom/google/android/music/ShopTutorialController;

    #getter for: Lcom/google/android/music/ShopTutorialController;->mShopTutorialViewed:Z
    invoke-static {v3}, Lcom/google/android/music/ShopTutorialController;->access$000(Lcom/google/android/music/ShopTutorialController;)Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 144
    :goto_24
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 145
    return-void

    .line 142
    :cond_28
    const-string v2, "viewed"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_24
.end method
