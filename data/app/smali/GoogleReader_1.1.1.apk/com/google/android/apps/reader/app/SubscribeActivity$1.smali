.class Lcom/google/android/apps/reader/app/SubscribeActivity$1;
.super Ljava/lang/Object;
.source "SubscribeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/reader/app/SubscribeActivity;->createProgressDialog()Landroid/app/Dialog;
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
    .line 273
    iput-object p1, p0, Lcom/google/android/apps/reader/app/SubscribeActivity$1;->this$0:Lcom/google/android/apps/reader/app/SubscribeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscribeActivity$1;->this$0:Lcom/google/android/apps/reader/app/SubscribeActivity;

    #calls: Lcom/google/android/apps/reader/app/SubscribeActivity;->cancelTask()V
    invoke-static {v0}, Lcom/google/android/apps/reader/app/SubscribeActivity;->access$000(Lcom/google/android/apps/reader/app/SubscribeActivity;)V

    .line 277
    return-void
.end method
