.class Lcom/google/android/apps/plus/phone/InviteContactActivity$2;
.super Ljava/lang/Object;
.source "InviteContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/InviteContactActivity;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/InviteContactActivity;

.field final synthetic val$emails:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/InviteContactActivity;Ljava/util/ArrayList;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/InviteContactActivity$2;->this$0:Lcom/google/android/apps/plus/phone/InviteContactActivity;

    iput-object p2, p0, Lcom/google/android/apps/plus/phone/InviteContactActivity$2;->val$emails:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 204
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/InviteContactActivity$2;->this$0:Lcom/google/android/apps/plus/phone/InviteContactActivity;

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/InviteContactActivity$2;->val$emails:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/phone/InviteContactActivity;->showCirclePicker(Ljava/lang/String;)V

    .line 205
    return-void
.end method
