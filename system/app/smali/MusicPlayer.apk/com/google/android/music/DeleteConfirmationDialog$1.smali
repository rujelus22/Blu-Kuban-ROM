.class Lcom/google/android/music/DeleteConfirmationDialog$1;
.super Ljava/lang/Object;
.source "DeleteConfirmationDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/DeleteConfirmationDialog;->performDelete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/DeleteConfirmationDialog;


# direct methods
.method constructor <init>(Lcom/google/android/music/DeleteConfirmationDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/android/music/DeleteConfirmationDialog$1;->this$0:Lcom/google/android/music/DeleteConfirmationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 135
    sget-object v2, Lcom/google/android/music/DeleteConfirmationDialog$2;->$SwitchMap$com$google$android$music$DeleteConfirmationDialog$DeletionType:[I

    iget-object v3, p0, Lcom/google/android/music/DeleteConfirmationDialog$1;->this$0:Lcom/google/android/music/DeleteConfirmationDialog;

    #getter for: Lcom/google/android/music/DeleteConfirmationDialog;->mType:Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;
    invoke-static {v3}, Lcom/google/android/music/DeleteConfirmationDialog;->access$000(Lcom/google/android/music/DeleteConfirmationDialog;)Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_44

    .line 145
    :goto_12
    return-void

    .line 137
    :pswitch_13
    iget-object v2, p0, Lcom/google/android/music/DeleteConfirmationDialog$1;->this$0:Lcom/google/android/music/DeleteConfirmationDialog;

    #getter for: Lcom/google/android/music/DeleteConfirmationDialog;->mPrimaryId:J
    invoke-static {v2}, Lcom/google/android/music/DeleteConfirmationDialog;->access$100(Lcom/google/android/music/DeleteConfirmationDialog;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/music/store/MusicContent$XAudio;->getAudioUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 138
    .local v1, songUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/google/android/music/DeleteConfirmationDialog$1;->this$0:Lcom/google/android/music/DeleteConfirmationDialog;

    #getter for: Lcom/google/android/music/DeleteConfirmationDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/android/music/DeleteConfirmationDialog;->access$200(Lcom/google/android/music/DeleteConfirmationDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_12

    .line 141
    .end local v1           #songUri:Landroid/net/Uri;
    :pswitch_2b
    iget-object v2, p0, Lcom/google/android/music/DeleteConfirmationDialog$1;->this$0:Lcom/google/android/music/DeleteConfirmationDialog;

    #getter for: Lcom/google/android/music/DeleteConfirmationDialog;->mPrimaryId:J
    invoke-static {v2}, Lcom/google/android/music/DeleteConfirmationDialog;->access$100(Lcom/google/android/music/DeleteConfirmationDialog;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/music/store/MusicContent$Playlists;->getPlaylistUri(J)Landroid/net/Uri;

    move-result-object v0

    .line 142
    .local v0, playListUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/google/android/music/DeleteConfirmationDialog$1;->this$0:Lcom/google/android/music/DeleteConfirmationDialog;

    #getter for: Lcom/google/android/music/DeleteConfirmationDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/android/music/DeleteConfirmationDialog;->access$200(Lcom/google/android/music/DeleteConfirmationDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_12

    .line 135
    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_13
        :pswitch_2b
    .end packed-switch
.end method
