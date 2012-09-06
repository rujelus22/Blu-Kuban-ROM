.class Lcom/android/email/activity/MessageCompose$8;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


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
    .line 1851
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$8;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 3
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 1852
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 5
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 1857
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1858
    .local v0, action:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$8;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->setAction(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/email/activity/MessageCompose;->access$1400(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)V

    .line 1859
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 3
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 1853
    return-void
.end method
