.class Lcom/google/android/apps/googlevoice/SplashActivity$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/SignInStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/SplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/SplashActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/SplashActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/SplashActivity$1;->this$0:Lcom/google/android/apps/googlevoice/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignedIn()V
    .registers 1

    .prologue
    .line 115
    return-void
.end method

.method public onSigningOut()V
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SplashActivity$1;->this$0:Lcom/google/android/apps/googlevoice/SplashActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/SplashActivity;->finish()V

    .line 120
    return-void
.end method
