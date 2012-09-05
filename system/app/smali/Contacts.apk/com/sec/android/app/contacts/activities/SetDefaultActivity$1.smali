.class Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;
.super Ljava/lang/Object;
.source "SetDefaultActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->setupTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #calls: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->performSaveAction()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$000(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)V

    .line 167
    return-void
.end method
