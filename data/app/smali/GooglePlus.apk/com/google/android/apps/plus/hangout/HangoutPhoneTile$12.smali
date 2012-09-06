.class Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$12;
.super Ljava/lang/Object;
.source "HangoutPhoneTile.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->setInHangoutState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)V
    .registers 2
    .parameter

    .prologue
    .line 1225
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$12;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1228
    sget-object v1, Lcom/google/android/apps/plus/util/Property;->NATIVE_HANGOUT_LOG:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/util/Property;->getBoolean()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1242
    :cond_a
    :goto_a
    return v2

    .line 1232
    :cond_b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_a

    .line 1233
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$12;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$12;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mState:Lcom/google/android/apps/plus/hangout/HangoutTile$State;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$200(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    move-result-object v1

    sget-object v5, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->IN_MEETING_WITH_SELF_VIDEO_INSET:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    if-ne v1, v5, :cond_46

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->IN_MEETING_WITH_FILM_STRIP:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    :goto_1f
    #calls: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->setState(Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V
    invoke-static {v4, v1}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$400(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V

    .line 1236
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$12;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "com.google.android.apps.plus.hangout.HangoutTile"

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1238
    .local v0, prefs:Landroid/content/SharedPreferences$Editor;
    const-string v4, "filmStrip_"

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$12;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mState:Lcom/google/android/apps/plus/hangout/HangoutTile$State;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$200(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    move-result-object v1

    sget-object v5, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->IN_MEETING_WITH_FILM_STRIP:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    if-ne v1, v5, :cond_49

    move v1, v2

    :goto_3f
    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1240
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_a

    .line 1233
    .end local v0           #prefs:Landroid/content/SharedPreferences$Editor;
    :cond_46
    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->IN_MEETING_WITH_SELF_VIDEO_INSET:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    goto :goto_1f

    .restart local v0       #prefs:Landroid/content/SharedPreferences$Editor;
    :cond_49
    move v1, v3

    .line 1238
    goto :goto_3f
.end method
