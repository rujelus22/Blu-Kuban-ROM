.class Lcom/google/android/apps/plus/phone/InviteContactActivity$1;
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


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/InviteContactActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/InviteContactActivity$1;->this$0:Lcom/google/android/apps/plus/phone/InviteContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/InviteContactActivity$1;->this$0:Lcom/google/android/apps/plus/phone/InviteContactActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/InviteContactActivity;->showSearchActivity()V

    .line 197
    return-void
.end method
