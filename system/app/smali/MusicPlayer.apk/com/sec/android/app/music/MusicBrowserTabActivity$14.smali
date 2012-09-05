.class Lcom/sec/android/app/music/MusicBrowserTabActivity$14;
.super Ljava/lang/Object;
.source "MusicBrowserTabActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/MusicBrowserTabActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

.field final synthetic val$itemsId:[I


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/MusicBrowserTabActivity;[I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1087
    iput-object p1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$14;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    iput-object p2, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$14;->val$itemsId:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "optionPopupDialogId"
    .parameter "position"

    .prologue
    .line 1091
    invoke-static {}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SET_AS position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$14;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    iget-object v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$14;->val$itemsId:[I

    #calls: Lcom/sec/android/app/music/MusicBrowserTabActivity;->setTone([II)V
    invoke-static {v0, v1, p2}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$1700(Lcom/sec/android/app/music/MusicBrowserTabActivity;[II)V

    .line 1094
    return-void
.end method
