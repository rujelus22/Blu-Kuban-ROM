.class Lcom/sec/android/app/music/AudioPreview$23;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/AudioPreview;)V
    .registers 2
    .parameter

    .prologue
    .line 3660
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview$23;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "optionPopupDialogId"
    .parameter "position"

    .prologue
    .line 3664
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$23;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOptionPopupSelectedListener:onClick(position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3665
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$23;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #calls: Lcom/sec/android/app/music/AudioPreview;->setRingtone(I)Landroid/net/Uri;
    invoke-static {v0, p2}, Lcom/sec/android/app/music/AudioPreview;->access$3800(Lcom/sec/android/app/music/AudioPreview;I)Landroid/net/Uri;

    .line 3666
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3668
    :try_start_28
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$23;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/AudioPreview;->dismissDialog(I)V
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_2e} :catch_2f

    .line 3671
    :goto_2e
    return-void

    .line 3669
    :catch_2f
    move-exception v0

    goto :goto_2e
.end method
