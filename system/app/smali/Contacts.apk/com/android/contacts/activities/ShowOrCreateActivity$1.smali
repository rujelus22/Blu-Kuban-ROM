.class Lcom/android/contacts/activities/ShowOrCreateActivity$1;
.super Ljava/lang/Object;
.source "ShowOrCreateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ShowOrCreateActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ShowOrCreateActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ShowOrCreateActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/contacts/activities/ShowOrCreateActivity$1;->this$0:Lcom/android/contacts/activities/ShowOrCreateActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity$1;->this$0:Lcom/android/contacts/activities/ShowOrCreateActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ShowOrCreateActivity;->finish()V

    .line 268
    return-void
.end method