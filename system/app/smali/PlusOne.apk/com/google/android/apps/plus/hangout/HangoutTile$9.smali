.class Lcom/google/android/apps/plus/hangout/HangoutTile$9;
.super Ljava/lang/Object;
.source "HangoutTile.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/HangoutTile;->setInHangoutState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutTile;)V
    .registers 2
    .parameter

    .prologue
    .line 1061
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$9;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

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

    .line 1064
    sget-object v1, Lcom/google/android/apps/plus/util/Property;->NATIVE_HANGOUT_LOG:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "TRUE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 1078
    :cond_14
    :goto_14
    return v2

    .line 1068
    :cond_15
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_14

    .line 1069
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$9;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$9;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$300(Lcom/google/android/apps/plus/hangout/HangoutTile;)Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    move-result-object v1

    sget-object v5, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->IN_MEETING_WITH_SELF_VIDEO_INSET:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    if-ne v1, v5, :cond_50

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->IN_MEETING_WITH_FILM_STRIP:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    :goto_29
    #calls: Lcom/google/android/apps/plus/hangout/HangoutTile;->setState(Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V
    invoke-static {v4, v1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$500(Lcom/google/android/apps/plus/hangout/HangoutTile;Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V

    .line 1072
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$9;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "com.google.android.apps.plus.hangout.HangoutTile"

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1074
    .local v0, prefs:Landroid/content/SharedPreferences$Editor;
    const-string v4, "filmStrip_"

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$9;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$300(Lcom/google/android/apps/plus/hangout/HangoutTile;)Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    move-result-object v1

    sget-object v5, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->IN_MEETING_WITH_FILM_STRIP:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    if-ne v1, v5, :cond_53

    move v1, v2

    :goto_49
    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1076
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_14

    .line 1069
    .end local v0           #prefs:Landroid/content/SharedPreferences$Editor;
    :cond_50
    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->IN_MEETING_WITH_SELF_VIDEO_INSET:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    goto :goto_29

    .restart local v0       #prefs:Landroid/content/SharedPreferences$Editor;
    :cond_53
    move v1, v3

    .line 1074
    goto :goto_49
.end method
