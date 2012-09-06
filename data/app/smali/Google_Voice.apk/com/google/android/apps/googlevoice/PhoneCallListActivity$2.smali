.class Lcom/google/android/apps/googlevoice/PhoneCallListActivity$2;
.super Ljava/lang/Object;
.source "PhoneCallListActivity.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/SignInStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$2;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignedIn()V
    .registers 1

    .prologue
    .line 416
    return-void
.end method

.method public onSigningOut()V
    .registers 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$2;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->finish()V

    .line 421
    return-void
.end method
