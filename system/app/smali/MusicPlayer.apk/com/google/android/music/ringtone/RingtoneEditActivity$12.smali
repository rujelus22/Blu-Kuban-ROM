.class Lcom/google/android/music/ringtone/RingtoneEditActivity$12;
.super Ljava/lang/Object;
.source "RingtoneEditActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/ringtone/RingtoneEditActivity;->queryTrackInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/ringtone/RingtoneEditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1217
    iput-object p1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$12;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$12;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    #calls: Lcom/google/android/music/ringtone/RingtoneEditActivity;->updateInfoViews()V
    invoke-static {v0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->access$1800(Lcom/google/android/music/ringtone/RingtoneEditActivity;)V

    .line 1220
    return-void
.end method
