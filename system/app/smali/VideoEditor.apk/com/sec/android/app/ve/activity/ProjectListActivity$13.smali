.class Lcom/sec/android/app/ve/activity/ProjectListActivity$13;
.super Ljava/lang/Object;
.source "ProjectListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/activity/ProjectListActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$13;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    .line 1994
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1997
    const/4 v0, 0x4

    if-ne p2, v0, :cond_16

    .line 1998
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$13;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->removeDialog(I)V

    .line 1999
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$13;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    const/16 v1, -0x6f

    #setter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->dialogID:I
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$34(Lcom/sec/android/app/ve/activity/ProjectListActivity;I)V

    .line 2000
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$13;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->finish()V

    .line 2002
    :cond_16
    const/16 v0, 0x54

    if-ne p2, v0, :cond_1c

    .line 2003
    const/4 v0, 0x1

    .line 2005
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method
