.class Lcom/google/android/music/AccountSettings$5;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/AccountSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/AccountSettings;


# direct methods
.method constructor <init>(Lcom/google/android/music/AccountSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/google/android/music/AccountSettings$5;->this$0:Lcom/google/android/music/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/android/music/AccountSettings$5;->this$0:Lcom/google/android/music/AccountSettings;

    #getter for: Lcom/google/android/music/AccountSettings;->mTracker:Lcom/google/android/music/MusicEventLogger;
    invoke-static {v0}, Lcom/google/android/music/AccountSettings;->access$200(Lcom/google/android/music/AccountSettings;)Lcom/google/android/music/MusicEventLogger;

    move-result-object v0

    const-string v1, "cancelSelectAccount"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "actionArea"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/music/AccountSettings$5;->this$0:Lcom/google/android/music/AccountSettings;

    invoke-virtual {v4}, Lcom/google/android/music/AccountSettings;->getPageUrlForTracking()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    return-void
.end method
