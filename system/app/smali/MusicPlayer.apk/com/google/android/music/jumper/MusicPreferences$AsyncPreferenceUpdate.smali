.class Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;
.super Ljava/lang/Object;
.source "MusicPreferences.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/jumper/MusicPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncPreferenceUpdate"
.end annotation


# instance fields
.field private final mExtraTask:Ljava/lang/Runnable;

.field private final mKey:Ljava/lang/String;

.field private final mValue:Ljava/lang/Object;

.field final synthetic this$0:Lcom/google/android/music/jumper/MusicPreferences;


# direct methods
.method public constructor <init>(Lcom/google/android/music/jumper/MusicPreferences;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1008
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;-><init>(Lcom/google/android/music/jumper/MusicPreferences;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 1009
    return-void
.end method

.method public constructor <init>(Lcom/google/android/music/jumper/MusicPreferences;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Runnable;)V
    .registers 5
    .parameter
    .parameter "key"
    .parameter "value"
    .parameter "extraTask"

    .prologue
    .line 1011
    iput-object p1, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1012
    iput-object p2, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->mKey:Ljava/lang/String;

    .line 1013
    iput-object p3, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->mValue:Ljava/lang/Object;

    .line 1014
    iput-object p4, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->mExtraTask:Ljava/lang/Runnable;

    .line 1015
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 1018
    iget-object v1, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    #calls: Lcom/google/android/music/jumper/MusicPreferences;->hasPreferenceService()Z
    invoke-static {v1}, Lcom/google/android/music/jumper/MusicPreferences;->access$400(Lcom/google/android/music/jumper/MusicPreferences;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1021
    iget-object v1, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1, p0}, Lcom/google/android/music/jumper/MusicPreferences;->runWithPreferenceService(Ljava/lang/Runnable;)V

    .line 1044
    :cond_d
    :goto_d
    return-void

    .line 1025
    :cond_e
    :try_start_e
    iget-object v1, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->mValue:Ljava/lang/Object;

    if-nez v1, :cond_27

    .line 1026
    iget-object v1, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    #getter for: Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceService:Lcom/google/android/music/IPreferenceService;
    invoke-static {v1}, Lcom/google/android/music/jumper/MusicPreferences;->access$500(Lcom/google/android/music/jumper/MusicPreferences;)Lcom/google/android/music/IPreferenceService;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/android/music/IPreferenceService;->remove(Ljava/lang/String;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1d} :catch_41

    .line 1041
    :goto_1d
    iget-object v1, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->mExtraTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_d

    .line 1042
    iget-object v1, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->mExtraTask:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_d

    .line 1027
    :cond_27
    :try_start_27
    iget-object v1, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->mValue:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_5f

    .line 1028
    iget-object v1, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    #getter for: Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceService:Lcom/google/android/music/IPreferenceService;
    invoke-static {v1}, Lcom/google/android/music/jumper/MusicPreferences;->access$500(Lcom/google/android/music/jumper/MusicPreferences;)Lcom/google/android/music/IPreferenceService;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->mKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v3, v1}, Lcom/google/android/music/IPreferenceService;->setIntPreference(Ljava/lang/String;I)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_40} :catch_41

    goto :goto_1d

    .line 1038
    :catch_41
    move-exception v0

    .line 1039
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MusicPreferences"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error communicating to preference service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d

    .line 1029
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_5f
    :try_start_5f
    iget-object v1, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->mValue:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Long;

    if-eqz v1, :cond_79

    .line 1030
    iget-object v1, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    #getter for: Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceService:Lcom/google/android/music/IPreferenceService;
    invoke-static {v1}, Lcom/google/android/music/jumper/MusicPreferences;->access$500(Lcom/google/android/music/jumper/MusicPreferences;)Lcom/google/android/music/IPreferenceService;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->mKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/music/IPreferenceService;->setLongPreference(Ljava/lang/String;J)V

    goto :goto_1d

    .line 1031
    :cond_79
    iget-object v1, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->mValue:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_8f

    .line 1032
    iget-object v1, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    #getter for: Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceService:Lcom/google/android/music/IPreferenceService;
    invoke-static {v1}, Lcom/google/android/music/jumper/MusicPreferences;->access$500(Lcom/google/android/music/jumper/MusicPreferences;)Lcom/google/android/music/IPreferenceService;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->mKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/google/android/music/IPreferenceService;->setStringPreference(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 1033
    :cond_8f
    iget-object v1, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->mValue:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_aa

    .line 1034
    iget-object v1, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    #getter for: Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceService:Lcom/google/android/music/IPreferenceService;
    invoke-static {v1}, Lcom/google/android/music/jumper/MusicPreferences;->access$500(Lcom/google/android/music/jumper/MusicPreferences;)Lcom/google/android/music/IPreferenceService;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->mKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v2, v3, v1}, Lcom/google/android/music/IPreferenceService;->setBooleanPreference(Ljava/lang/String;Z)V

    goto/16 :goto_1d

    .line 1036
    :cond_aa
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown value type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->mValue:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_c5
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_c5} :catch_41
.end method
