.class Lcom/google/android/apps/googlevoice/PhoneCallListActivity$8;
.super Ljava/lang/Object;
.source "PhoneCallListActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 499
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$8;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 4
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$8;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #calls: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->refreshSmsCostIfNecessary()V
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$800(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    .line 504
    return-void
.end method
