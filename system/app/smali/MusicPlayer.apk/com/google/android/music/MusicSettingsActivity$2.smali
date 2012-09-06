.class Lcom/google/android/music/MusicSettingsActivity$2;
.super Ljava/lang/Object;
.source "MusicSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MusicSettingsActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MusicSettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicSettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 431
    iput-object p1, p0, Lcom/google/android/music/MusicSettingsActivity$2;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/google/android/music/MusicSettingsActivity$2;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    const/4 v1, 0x0

    #calls: Lcom/google/android/music/MusicSettingsActivity;->handleEnableDebugLogs(Z)V
    invoke-static {v0, v1}, Lcom/google/android/music/MusicSettingsActivity;->access$100(Lcom/google/android/music/MusicSettingsActivity;Z)V

    .line 434
    return-void
.end method
