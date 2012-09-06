.class Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$4;
.super Ljava/lang/Object;
.source "AuthenticationHelperEclairAndLater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->postActivityResult(Landroid/app/Activity;IILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$requestCode:I

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;Landroid/app/Activity;IILandroid/os/Bundle;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$4;->this$0:Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;

    iput-object p2, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$4;->val$activity:Landroid/app/Activity;

    iput p3, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$4;->val$requestCode:I

    iput p4, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$4;->val$resultCode:I

    iput-object p5, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$4;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$4;->this$0:Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$4;->val$activity:Landroid/app/Activity;

    iget v2, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$4;->val$requestCode:I

    iget v3, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$4;->val$resultCode:I

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$4;->val$bundle:Landroid/os/Bundle;

    #calls: Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->sendActivityResult(Landroid/app/Activity;IILandroid/os/Bundle;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->access$500(Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;Landroid/app/Activity;IILandroid/os/Bundle;)V

    .line 265
    return-void
.end method
