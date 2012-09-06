.class Lcom/google/android/music/ringtone/RingtoneEditActivity$10;
.super Ljava/lang/Object;
.source "RingtoneEditActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/ringtone/RingtoneEditActivity;->afterSavingRingtone(Ljava/lang/String;Ljava/io/File;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/music/ringtone/RingtoneEditActivity;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1120
    iput-object p1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$10;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    iput-object p2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$10;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1122
    iget-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$10;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    invoke-virtual {v1}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0184

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$10;->val$title:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1125
    .local v0, toast:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$10;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1126
    return-void
.end method
