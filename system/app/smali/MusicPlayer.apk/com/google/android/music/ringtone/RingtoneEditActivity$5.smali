.class Lcom/google/android/music/ringtone/RingtoneEditActivity$5;
.super Ljava/lang/Object;
.source "RingtoneEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/ringtone/RingtoneEditActivity;->loadFromFile()V
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
    .line 708
    iput-object p1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$5;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 710
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$5;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/music/ringtone/RingtoneEditActivity;->mLoadingKeepGoing:Z
    invoke-static {v0, v1}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->access$202(Lcom/google/android/music/ringtone/RingtoneEditActivity;Z)Z

    .line 711
    return-void
.end method
