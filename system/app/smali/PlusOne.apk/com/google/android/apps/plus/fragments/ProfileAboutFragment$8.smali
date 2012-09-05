.class Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$8;
.super Ljava/lang/Object;
.source "ProfileAboutFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

.field final synthetic val$imageBytes:[B


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;[B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1624
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$8;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$8;->val$imageBytes:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1627
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$8;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$8;->val$imageBytes:[B

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->setProfilePhoto([B)V

    .line 1628
    return-void
.end method
