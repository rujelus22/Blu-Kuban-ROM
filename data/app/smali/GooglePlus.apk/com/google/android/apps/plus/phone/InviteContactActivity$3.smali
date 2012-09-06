.class Lcom/google/android/apps/plus/phone/InviteContactActivity$3;
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
    .line 208
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/InviteContactActivity$3;->this$0:Lcom/google/android/apps/plus/phone/InviteContactActivity;

    iput-object p2, p0, Lcom/google/android/apps/plus/phone/InviteContactActivity$3;->val$emails:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/InviteContactActivity$3;->this$0:Lcom/google/android/apps/plus/phone/InviteContactActivity;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/InviteContactActivity$3;->val$emails:Ljava/util/ArrayList;

    #calls: Lcom/google/android/apps/plus/phone/InviteContactActivity;->showEmailPicker(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/InviteContactActivity;->access$000(Lcom/google/android/apps/plus/phone/InviteContactActivity;Ljava/util/ArrayList;)V

    .line 213
    return-void
.end method
