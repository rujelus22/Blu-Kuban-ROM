.class Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$13;
.super Ljava/lang/Object;
.source "MusicSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 562
    iput-object p1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$13;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 565
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$13;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    const/16 v1, -0x3e7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->dismissDialog(I)V

    .line 566
    return-void
.end method
