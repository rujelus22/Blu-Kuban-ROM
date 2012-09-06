.class Lcom/google/android/apps/googlevoice/PhoneCallListActivity$3;
.super Ljava/lang/Object;
.source "PhoneCallListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 434
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$3;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 437
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$3;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #calls: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->disableDoNotDisturb()V
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$500(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    .line 438
    return-void
.end method
