.class Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$4;
.super Ljava/lang/Object;
.source "MusicSettingsEqEffect.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->createCustomEqDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)V
    .registers 2
    .parameter

    .prologue
    .line 554
    iput-object p1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$4;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 556
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$4;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;

    #calls: Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->doCancelCustomEqDialog()V
    invoke-static {v0}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->access$300(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)V

    .line 557
    return-void
.end method
