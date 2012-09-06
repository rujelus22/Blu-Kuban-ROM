.class Lcom/google/android/music/ringtone/RingtoneEditActivity$3$1;
.super Ljava/lang/Object;
.source "RingtoneEditActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/ringtone/RingtoneEditActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/ringtone/RingtoneEditActivity$3;


# direct methods
.method constructor <init>(Lcom/google/android/music/ringtone/RingtoneEditActivity$3;)V
    .registers 2
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$3$1;->this$1:Lcom/google/android/music/ringtone/RingtoneEditActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$3$1;->this$1:Lcom/google/android/music/ringtone/RingtoneEditActivity$3;

    iget-object v0, v0, Lcom/google/android/music/ringtone/RingtoneEditActivity$3;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    #calls: Lcom/google/android/music/ringtone/RingtoneEditActivity;->finishOpeningSoundFile()V
    invoke-static {v0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->access$1000(Lcom/google/android/music/ringtone/RingtoneEditActivity;)V

    .line 229
    return-void
.end method
