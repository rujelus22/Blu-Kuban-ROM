.class Lcom/google/android/apps/plus/phone/CircleActivity$2;
.super Ljava/lang/Object;
.source "CircleActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/CircleActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/CircleActivity;

.field final synthetic val$data:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/CircleActivity;Landroid/content/Intent;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 711
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/CircleActivity$2;->this$0:Lcom/google/android/apps/plus/phone/CircleActivity;

    iput-object p2, p0, Lcom/google/android/apps/plus/phone/CircleActivity$2;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 715
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/CircleActivity$2;->this$0:Lcom/google/android/apps/plus/phone/CircleActivity;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/CircleActivity$2;->val$data:Landroid/content/Intent;

    const-string v2, "person_ids"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/CircleActivity;->removePeopleFromCircle(Ljava/util/ArrayList;)V

    .line 716
    return-void
.end method
