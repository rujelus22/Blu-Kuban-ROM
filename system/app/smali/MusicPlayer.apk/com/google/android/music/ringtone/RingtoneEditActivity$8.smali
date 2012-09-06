.class Lcom/google/android/music/ringtone/RingtoneEditActivity$8;
.super Ljava/lang/Object;
.source "RingtoneEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/ringtone/RingtoneEditActivity;->showFinalAlert(Ljava/lang/Exception;Ljava/lang/CharSequence;)V
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
    .line 1059
    iput-object p1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$8;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$8;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    invoke-virtual {v0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->finish()V

    .line 1063
    return-void
.end method
