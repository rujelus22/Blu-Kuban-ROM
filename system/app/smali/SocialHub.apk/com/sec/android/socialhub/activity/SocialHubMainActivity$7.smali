.class Lcom/sec/android/socialhub/activity/SocialHubMainActivity$7;
.super Ljava/lang/Object;
.source "SocialHubMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubMainActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 692
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$7;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 696
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 697
    return-void
.end method
