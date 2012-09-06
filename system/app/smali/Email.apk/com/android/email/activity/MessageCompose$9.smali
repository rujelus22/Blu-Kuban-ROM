.class Lcom/android/email/activity/MessageCompose$9;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .registers 2
    .parameter

    .prologue
    .line 1862
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(IJ)Z
    .registers 6
    .parameter "itemPosition"
    .parameter "itemId"

    .prologue
    .line 1865
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {p1}, Lcom/android/email/activity/MessageCompose$ActionSpinnerAdapter;->getAction(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/email/activity/MessageCompose;->setAction(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$1400(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)V

    .line 1866
    const/4 v0, 0x1

    return v0
.end method
