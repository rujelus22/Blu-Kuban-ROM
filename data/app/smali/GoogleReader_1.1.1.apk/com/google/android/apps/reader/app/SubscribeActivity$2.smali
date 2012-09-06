.class Lcom/google/android/apps/reader/app/SubscribeActivity$2;
.super Ljava/lang/Object;
.source "SubscribeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/reader/app/SubscribeActivity;->createWebfeedConfirmationDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/reader/app/SubscribeActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/reader/app/SubscribeActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/google/android/apps/reader/app/SubscribeActivity$2;->this$0:Lcom/google/android/apps/reader/app/SubscribeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscribeActivity$2;->this$0:Lcom/google/android/apps/reader/app/SubscribeActivity;

    #calls: Lcom/google/android/apps/reader/app/SubscribeActivity;->showWebfeedHelp()V
    invoke-static {v0}, Lcom/google/android/apps/reader/app/SubscribeActivity;->access$100(Lcom/google/android/apps/reader/app/SubscribeActivity;)V

    .line 302
    return-void
.end method
