.class Lcom/sec/android/mimage/photoretouching/LauncherActivity$3;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/LauncherActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/LauncherActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/LauncherActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/LauncherActivity$3;->this$0:Lcom/sec/android/mimage/photoretouching/LauncherActivity;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/LauncherActivity$3;->this$0:Lcom/sec/android/mimage/photoretouching/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->finish()V

    .line 118
    return-void
.end method
